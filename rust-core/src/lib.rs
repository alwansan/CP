//! Experimental, in-memory task-intent ledger.
//! This is NOT the app downloader and provides NO persistence, network, DB, or FFmpeg.
//! Never replace Queue110/MkvExporter until a durable Android adapter is tested.
use std::collections::{HashMap, HashSet};

pub mod durable_fixture;
pub mod shadow_audit;

#[derive(Clone, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
pub struct TaskKey {
    pub source: String,
    pub episode_id: String,
    pub quality: String,
    pub output_profile: String,
}
impl TaskKey {
    pub fn new(source: &str, episode_id: &str, quality: &str, output_profile: &str) -> Self {
        Self {
            source: source.into(),
            episode_id: episode_id.into(),
            quality: quality.into(),
            output_profile: output_profile.into(),
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Stage {
    IntentSaved,
    Resolving,
    Ready,
    Transferring,
    SourceVerified,
    MuxReady,
    MuxRunning,
    OutputVerified,
    DbCommitted,
    Done,
    Cancelled,
}

impl Stage {
    fn can_move_to(self, next: Self) -> bool {
        use Stage::*;
        matches!(
            (self, next),
            (IntentSaved, Resolving)
                | (Resolving, Ready)
                | (Ready, Transferring)
                | (Transferring, SourceVerified)
                | (SourceVerified, MuxReady)
                | (MuxReady, MuxRunning)
                | (MuxRunning, OutputVerified)
                | (OutputVerified, DbCommitted)
                | (DbCommitted, Done)
        ) || (next == Cancelled && self != Cancelled && self != Done)
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TaskState {
    pub stage: Stage,
    pub generation: u64,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct BatchReceipt {
    pub accepted_unique: usize,
    pub existing_unique: usize,
    pub duplicates_in_request: usize,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum LedgerError {
    EmptyBatchId,
    BatchIdConflict,
    MissingTask,
    StaleGeneration,
    InvalidTransition,
    GenerationExhausted,
}
struct Batch {
    keys: HashSet<TaskKey>,
    receipt: BatchReceipt,
}

/// Simulation ledger, not durable ACK. Owner must be serialized by Android adapter.
#[derive(Default)]
pub struct Ledger {
    tasks: HashMap<TaskKey, TaskState>,
    batches: HashMap<String, Batch>,
}
impl Ledger {
    /// Replays an identical batch ID without reinserting tasks; rejects ID reuse
    /// with a different payload. Results only attest to in-memory acceptance.
    pub fn accept_batch(
        &mut self,
        batch_id: &str,
        requested: &[TaskKey],
    ) -> Result<BatchReceipt, LedgerError> {
        if batch_id.is_empty() {
            return Err(LedgerError::EmptyBatchId);
        }
        let unique: HashSet<TaskKey> = requested.iter().cloned().collect();
        if let Some(previous) = self.batches.get(batch_id) {
            return if previous.keys == unique {
                Ok(previous.receipt.clone())
            } else {
                Err(LedgerError::BatchIdConflict)
            };
        }
        let mut accepted_unique = 0;
        for key in &unique {
            if let std::collections::hash_map::Entry::Vacant(entry) = self.tasks.entry(key.clone())
            {
                entry.insert(TaskState {
                    stage: Stage::IntentSaved,
                    generation: 0,
                });
                accepted_unique += 1;
            }
        }
        let receipt = BatchReceipt {
            accepted_unique,
            existing_unique: unique.len() - accepted_unique,
            duplicates_in_request: requested.len() - unique.len(),
        };
        self.batches.insert(
            batch_id.to_owned(),
            Batch {
                keys: unique,
                receipt: receipt.clone(),
            },
        );
        Ok(receipt)
    }

    pub fn state(&self, key: &TaskKey) -> Option<TaskState> {
        self.tasks.get(key).copied()
    }

    /// Rejects stale callbacks and unsafe stage skips.
    pub fn transition(
        &mut self,
        key: &TaskKey,
        expected_generation: u64,
        next: Stage,
    ) -> Result<(), LedgerError> {
        let state = self.tasks.get_mut(key).ok_or(LedgerError::MissingTask)?;
        if state.generation != expected_generation {
            return Err(LedgerError::StaleGeneration);
        }
        if !state.stage.can_move_to(next) {
            return Err(LedgerError::InvalidTransition);
        }
        state.stage = next;
        Ok(())
    }

    /// Explicit replay after cancellation. Old callbacks stay fenced out.
    pub fn restart_cancelled(
        &mut self,
        key: &TaskKey,
        expected_generation: u64,
    ) -> Result<u64, LedgerError> {
        let state = self.tasks.get_mut(key).ok_or(LedgerError::MissingTask)?;
        if state.generation != expected_generation {
            return Err(LedgerError::StaleGeneration);
        }
        if state.stage != Stage::Cancelled {
            return Err(LedgerError::InvalidTransition);
        }
        state.generation = state
            .generation
            .checked_add(1)
            .ok_or(LedgerError::GenerationExhausted)?;
        state.stage = Stage::IntentSaved;
        Ok(state.generation)
    }
}

/// ABI smoke version only: no downloader/network/FFmpeg/DB state.
#[no_mangle]
pub extern "C" fn cp_rust_core_abi_version() -> u32 {
    1
}

/// Read-only JNI entrypoint. No dereference of JNIEnv or class pointers.
/// Deliberately no JNI crate dependency until a stateful bridge is designed.
#[allow(non_snake_case)]
#[no_mangle]
pub extern "system" fn Java_com_shabakaty_cinemana_local_RustAbiProbe_nativeVersion(
    _env: *mut std::ffi::c_void,
    _class: *mut std::ffi::c_void,
) -> i32 {
    cp_rust_core_abi_version() as i32
}

#[cfg(test)]
mod tests {
    use super::*;
    fn key(id: usize) -> TaskKey {
        TaskKey::new("authorized-service", &format!("ep-{id}"), "720p", "mkv")
    }

    #[test]
    fn bulk_four_hundred_and_retry_are_idempotent() {
        let mut ledger = Ledger::default();
        let keys: Vec<_> = (0..400).map(key).collect();
        let first = ledger.accept_batch("request-1", &keys).unwrap();
        assert_eq!(first.accepted_unique, 400);
        assert_eq!(ledger.accept_batch("request-1", &keys).unwrap(), first);
        assert_eq!(
            ledger
                .accept_batch("request-2", &keys)
                .unwrap()
                .existing_unique,
            400
        );
    }

    #[test]
    fn conflicting_request_id_is_rejected_without_mutation() {
        let mut ledger = Ledger::default();
        ledger.accept_batch("same", &[key(1)]).unwrap();
        assert_eq!(
            ledger.accept_batch("same", &[key(2)]),
            Err(LedgerError::BatchIdConflict)
        );
        assert_eq!(ledger.state(&key(2)), None);
    }

    #[test]
    fn duplicate_keys_counted_without_extra_work() {
        let mut ledger = Ledger::default();
        let receipt = ledger.accept_batch("duplicate", &[key(1), key(1)]).unwrap();
        assert_eq!(receipt.duplicates_in_request, 1);
        assert_eq!(receipt.accepted_unique, 1);
    }

    #[test]
    fn canceled_work_fences_late_callback_after_restart() {
        let mut ledger = Ledger::default();
        ledger.accept_batch("one", &[key(1)]).unwrap();
        ledger.transition(&key(1), 0, Stage::Cancelled).unwrap();
        let new_generation = ledger.restart_cancelled(&key(1), 0).unwrap();
        assert_eq!(new_generation, 1);
        assert_eq!(
            ledger.transition(&key(1), 0, Stage::Resolving),
            Err(LedgerError::StaleGeneration)
        );
        ledger.transition(&key(1), 1, Stage::Resolving).unwrap();
    }

    #[test]
    fn cannot_skip_verification_or_cancel_done_work() {
        let mut ledger = Ledger::default();
        ledger.accept_batch("one", &[key(1)]).unwrap();
        assert_eq!(
            ledger.transition(&key(1), 0, Stage::Done),
            Err(LedgerError::InvalidTransition)
        );
        let path = [
            Stage::Resolving,
            Stage::Ready,
            Stage::Transferring,
            Stage::SourceVerified,
            Stage::MuxReady,
            Stage::MuxRunning,
            Stage::OutputVerified,
            Stage::DbCommitted,
            Stage::Done,
        ];
        for stage in path {
            ledger.transition(&key(1), 0, stage).unwrap();
        }
        assert_eq!(
            ledger.transition(&key(1), 0, Stage::Cancelled),
            Err(LedgerError::InvalidTransition)
        );
    }
}
