//! R2 synthetic transactional batch fixture, NOT an Android/Room adapter.
//! No media, network, FFmpeg, production downloads or account data is touched.
//! One writer owns a private test directory, held with an advisory OS flock.
//! The state is atomically replaced before a receipt is acknowledged.
use crate::{BatchReceipt, TaskKey};
use std::collections::{BTreeMap, BTreeSet};
use std::fs::{self, File, OpenOptions};
use std::io::{self, Read, Write};
use std::os::fd::AsRawFd;
use std::path::{Path, PathBuf};

const MAGIC: &[u8; 8] = b"CPRUSTD2";
const VERSION: u32 = 1;
const MAX_BATCH_ROWS: usize = 1000;
const MAX_BATCHES: usize = 256;
const MAX_UNIQUE: usize = 4096;
const MAX_SNAPSHOT: usize = 16 * 1024 * 1024;
const MAX_ID: usize = 128;
const MAX_FIELD: usize = 512;
const LOCK_EX: i32 = 2;
const LOCK_NB: i32 = 4;

unsafe extern "C" {
    fn flock(fd: i32, operation: i32) -> i32;
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum AdmissionError {
    InvalidInput,
    Conflict,
    CapacityExceeded,
    Io,
    Unavailable,
}

impl From<io::Error> for AdmissionError {
    fn from(_: io::Error) -> Self {
        Self::Io
    }
}

#[derive(Clone, Default)]
struct Snapshot {
    batches: BTreeMap<String, Batch>,
    tasks: BTreeSet<TaskKey>,
}

#[derive(Clone)]
struct Batch {
    ordered: Vec<TaskKey>,
    receipt: BatchReceipt,
}

/// Fixture only. File paths are fixed inside a caller-owned PRIVATE directory.
/// NEVER pass real Cinemana app/download directories into this experimental API.
pub struct DurableFixture {
    dir: PathBuf,
    // Lifetime-held lock: never delete the lock file or try two owners.
    _lock: File,
    snapshot: Snapshot,
    poisoned: bool,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum Fault {
    None,
    BeforeRename,
    AfterRename,
}

impl DurableFixture {
    pub fn open(dir: &Path) -> io::Result<Self> {
        fs::create_dir_all(dir)?;
        let lock = OpenOptions::new()
            .create(true)
            .read(true)
            .write(true)
            .truncate(false)
            .open(dir.join("rust-fixture.lock"))?;
        // Safe: OS file descriptor belongs to File; kernel releases on drop/process exit.
        // Non-blocking lock makes a second writer fail rather than hang.
        let acquired = unsafe { flock(lock.as_raw_fd(), LOCK_EX | LOCK_NB) };
        if acquired != 0 {
            return Err(io::Error::last_os_error());
        }
        let main = dir.join("rust-fixture.snapshot");
        let snapshot = if main.exists() {
            let file = File::open(&main)?;
            if file.metadata()?.len() > MAX_SNAPSHOT as u64 {
                return Err(invalid("oversized snapshot file"));
            }
            let mut bytes = Vec::new();
            file.take((MAX_SNAPSHOT + 1) as u64).read_to_end(&mut bytes)?;
            decode(&bytes)?
        } else {
            Snapshot::default()
        };
        // Pending never takes precedence over main. It was not acknowledged.
        let pending = dir.join("rust-fixture.pending");
        if pending.exists() {
            fs::remove_file(pending)?;
        }
        Ok(Self {
            dir: dir.to_path_buf(),
            _lock: lock,
            snapshot,
            poisoned: false,
        })
    }

    pub fn task_count(&self) -> usize {
        self.snapshot.tasks.len()
    }

    pub fn batch_count(&self) -> usize {
        self.snapshot.batches.len()
    }

    /// ACK only after file fsync + rename + directory fsync succeed.
    /// On any failed/ambiguous I/O, the handle is poisoned until reopen.
    pub fn accept_batch(
        &mut self,
        batch_id: &str,
        requested: &[TaskKey],
    ) -> Result<BatchReceipt, AdmissionError> {
        self.accept_with_fault(batch_id, requested, Fault::None)
    }

    fn accept_with_fault(
        &mut self,
        batch_id: &str,
        requested: &[TaskKey],
        fault: Fault,
    ) -> Result<BatchReceipt, AdmissionError> {
        if self.poisoned {
            return Err(AdmissionError::Unavailable);
        }
        if batch_id.is_empty()
            || batch_id.len() > MAX_ID
            || requested.len() > MAX_BATCH_ROWS
            || requested.iter().any(|k| !valid_key(k))
        {
            return Err(AdmissionError::InvalidInput);
        }
        if let Some(saved) = self.snapshot.batches.get(batch_id) {
            return if saved.ordered == requested {
                Ok(saved.receipt.clone())
            } else {
                Err(AdmissionError::Conflict)
            };
        }
        if self.snapshot.batches.len() >= MAX_BATCHES {
            return Err(AdmissionError::CapacityExceeded);
        }
        let unique: BTreeSet<TaskKey> = requested.iter().cloned().collect();
        if self.snapshot.tasks.union(&unique).count() > MAX_UNIQUE {
            return Err(AdmissionError::CapacityExceeded);
        }
        let newly_accepted = unique.difference(&self.snapshot.tasks).count();
        let receipt = BatchReceipt {
            accepted_unique: newly_accepted,
            existing_unique: unique.len() - newly_accepted,
            duplicates_in_request: requested.len() - unique.len(),
        };
        let mut next = self.snapshot.clone();
        next.tasks.extend(unique);
        next.batches.insert(
            batch_id.to_owned(),
            Batch {
                ordered: requested.to_vec(),
                receipt: receipt.clone(),
            },
        );
        let bytes = encode(&next).map_err(|_| AdmissionError::CapacityExceeded)?;
        if bytes.len() > MAX_SNAPSHOT {
            return Err(AdmissionError::CapacityExceeded);
        }
        match self.commit(&bytes, fault) {
            Ok(()) => {
                self.snapshot = next;
                Ok(receipt)
            }
            Err(_) => {
                self.poisoned = true;
                Err(AdmissionError::Io)
            }
        }
    }

    fn commit(&self, bytes: &[u8], fault: Fault) -> io::Result<()> {
        let pending = self.dir.join("rust-fixture.pending");
        let main = self.dir.join("rust-fixture.snapshot");
        let mut file = OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(&pending)?;
        file.write_all(bytes)?;
        file.sync_all()?;
        drop(file);
        if fault == Fault::BeforeRename {
            return Err(io::Error::other("injected crash before rename"));
        }
        fs::rename(&pending, &main)?;
        if fault == Fault::AfterRename {
            return Err(io::Error::other("injected crash after rename"));
        }
        File::open(&self.dir)?.sync_all()?;
        Ok(())
    }
}

fn valid_key(k: &TaskKey) -> bool {
    [
        &k.source,
        &k.episode_id,
        &k.quality,
        &k.output_profile,
    ]
    .iter()
    .all(|s| !s.is_empty() && s.len() <= MAX_FIELD)
}

fn crc32(bytes: &[u8]) -> u32 {
    let mut crc: u32 = !0;
    for &byte in bytes {
        crc ^= u32::from(byte);
        for _ in 0..8 {
            crc = if crc & 1 != 0 {
                (crc >> 1) ^ 0xedb8_8320
            } else {
                crc >> 1
            };
        }
    }
    !crc
}

fn write_u32(bytes: &mut Vec<u8>, n: usize) -> io::Result<()> {
    let value = u32::try_from(n).map_err(|_| invalid("number exceeds u32"))?;
    if bytes.len() > MAX_SNAPSHOT.saturating_sub(4) {
        return Err(invalid("snapshot capacity exceeded"));
    }
    bytes.extend_from_slice(&value.to_le_bytes());
    Ok(())
}

fn write_string(bytes: &mut Vec<u8>, value: &str) -> io::Result<()> {
    if value.len() > MAX_SNAPSHOT.saturating_sub(bytes.len() + 4) {
        return Err(invalid("snapshot capacity exceeded"));
    }
    write_u32(bytes, value.len())?;
    bytes.extend_from_slice(value.as_bytes());
    Ok(())
}

fn write_key(bytes: &mut Vec<u8>, k: &TaskKey) -> io::Result<()> {
    write_string(bytes, &k.source)?;
    write_string(bytes, &k.episode_id)?;
    write_string(bytes, &k.quality)?;
    write_string(bytes, &k.output_profile)
}

fn encode(snapshot: &Snapshot) -> io::Result<Vec<u8>> {
    let mut body = Vec::new();
    write_u32(&mut body, snapshot.tasks.len())?;
    for key in &snapshot.tasks {
        write_key(&mut body, key)?;
    }
    write_u32(&mut body, snapshot.batches.len())?;
    for (id, batch) in &snapshot.batches {
        write_string(&mut body, id)?;
        write_u32(&mut body, batch.ordered.len())?;
        for key in &batch.ordered {
            write_key(&mut body, key)?;
        }
        write_u32(&mut body, batch.receipt.accepted_unique)?;
        write_u32(&mut body, batch.receipt.existing_unique)?;
        write_u32(&mut body, batch.receipt.duplicates_in_request)?;
    }
    let mut bytes = Vec::with_capacity(20 + body.len());
    bytes.extend_from_slice(MAGIC);
    bytes.extend_from_slice(&VERSION.to_le_bytes());
    write_u32(&mut bytes, body.len())?;
    bytes.extend_from_slice(&crc32(&body).to_le_bytes());
    bytes.extend_from_slice(&body);
    Ok(bytes)
}

fn invalid(message: &str) -> io::Error {
    io::Error::new(io::ErrorKind::InvalidData, message.to_owned())
}

struct Reader<'a> {
    bytes: &'a [u8],
    pos: usize,
}

impl<'a> Reader<'a> {
    fn take(&mut self, len: usize) -> io::Result<&'a [u8]> {
        if len > self.bytes.len().saturating_sub(self.pos) {
            return Err(invalid("truncated snapshot"));
        }
        let slice = &self.bytes[self.pos..self.pos + len];
        self.pos += len;
        Ok(slice)
    }

    fn read_u32(&mut self) -> io::Result<usize> {
        let bytes: [u8; 4] = self.take(4)?.try_into().map_err(|_| invalid("u32"))?;
        Ok(u32::from_le_bytes(bytes) as usize)
    }

    fn read_string(&mut self, max: usize) -> io::Result<String> {
        let len = self.read_u32()?;
        if len > max {
            return Err(invalid("oversized string"));
        }
        let raw = self.take(len)?;
        String::from_utf8(raw.to_vec()).map_err(|_| invalid("invalid utf-8"))
    }

    fn read_key(&mut self) -> io::Result<TaskKey> {
        let key = TaskKey::new(
            &self.read_string(MAX_FIELD)?,
            &self.read_string(MAX_FIELD)?,
            &self.read_string(MAX_FIELD)?,
            &self.read_string(MAX_FIELD)?,
        );
        if !valid_key(&key) {
            return Err(invalid("invalid key"));
        }
        Ok(key)
    }
}

fn decode(bytes: &[u8]) -> io::Result<Snapshot> {
    if bytes.len() > MAX_SNAPSHOT || bytes.len() < 20 {
        return Err(invalid("invalid snapshot size"));
    }
    let mut header = Reader { bytes, pos: 0 };
    if header.take(8)? != MAGIC || header.read_u32()? != VERSION as usize {
        return Err(invalid("snapshot format mismatch"));
    }
    let body_size = header.read_u32()?;
    let checksum = header.read_u32()? as u32;
    if body_size != bytes.len() - 20 || crc32(&bytes[20..]) != checksum {
        return Err(invalid("snapshot checksum mismatch"));
    }
    let mut reader = Reader {
        bytes: &bytes[20..],
        pos: 0,
    };
    let task_count = reader.read_u32()?;
    if task_count > MAX_UNIQUE {
        return Err(invalid("too many tasks"));
    }
    let mut tasks = BTreeSet::new();
    for _ in 0..task_count {
        if !tasks.insert(reader.read_key()?) {
            return Err(invalid("duplicate task"));
        }
    }
    let batch_count = reader.read_u32()?;
    if batch_count > MAX_BATCHES {
        return Err(invalid("too many batches"));
    }
    let mut batches = BTreeMap::new();
    let mut union = BTreeSet::new();
    for _ in 0..batch_count {
        let id = reader.read_string(MAX_ID)?;
        if id.is_empty() {
            return Err(invalid("empty batch id"));
        }
        let count = reader.read_u32()?;
        if count > MAX_BATCH_ROWS {
            return Err(invalid("too many requests"));
        }
        let mut ordered = Vec::with_capacity(count);
        for _ in 0..count {
            ordered.push(reader.read_key()?);
        }
        let unique: BTreeSet<TaskKey> = ordered.iter().cloned().collect();
        union.extend(unique.iter().cloned());
        let receipt = BatchReceipt {
            accepted_unique: reader.read_u32()?,
            existing_unique: reader.read_u32()?,
            duplicates_in_request: reader.read_u32()?,
        };
        if receipt.accepted_unique.checked_add(receipt.existing_unique) != Some(unique.len())
            || receipt.duplicates_in_request != count - unique.len()
        {
            return Err(invalid("invalid batch receipt"));
        }
        if batches.insert(id, Batch { ordered, receipt }).is_some() {
            return Err(invalid("duplicate batch ID"));
        }
    }
    if reader.pos != reader.bytes.len() || union != tasks {
        return Err(invalid("snapshot trailing or mismatched data"));
    }
    Ok(Snapshot { batches, tasks })
}
