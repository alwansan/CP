//! Synthetic private-directory process fixture. Never pass any user/media paths.
use cp_rust_core::durable_fixture::DurableFixture;
use cp_rust_core::TaskKey;
use std::env;
use std::io::{self, Write};
use std::path::PathBuf;
use std::thread;
use std::time::Duration;

fn synthetic_keys() -> Vec<TaskKey> {
    (0..500)
        .map(|n| TaskKey::new("synthetic", &format!("episode-{n}"), "720p", "mkv"))
        .collect()
}

fn main() {
    let args: Vec<String> = env::args().collect();
    assert_eq!(args.len(), 3, "mode and synthetic test directory required");
    let dir = PathBuf::from(&args[2]);
    let name = dir.file_name().and_then(|n| n.to_str()).unwrap_or("");
    assert!(
        dir.starts_with(env::temp_dir()) && name.starts_with("cp-r2-sigkill-"),
        "refusing anything outside a synthetic temporary test directory"
    );
    let mut fixture = DurableFixture::open(&dir).expect("single fixture owner");
    match args[1].as_str() {
        "hold_before_commit" => {
            assert_eq!(fixture.task_count(), 0);
            println!("LOCK_HELD");
        }
        "hold_after_commit" => {
            let receipt = fixture
                .accept_batch("synthetic-500", &synthetic_keys())
                .expect("durable commit");
            assert_eq!(receipt.accepted_unique, 500);
            println!("COMMITTED 500");
        }
        "verify_empty" => {
            assert_eq!(fixture.task_count(), 0);
            assert_eq!(fixture.batch_count(), 0);
            println!("EMPTY_OK");
            return;
        }
        "verify" => {
            assert_eq!(fixture.task_count(), 500);
            assert_eq!(fixture.batch_count(), 1);
            let replay = fixture
                .accept_batch("synthetic-500", &synthetic_keys())
                .expect("idempotent replay");
            assert_eq!(replay.accepted_unique, 500);
            println!("REPLAY_OK 500");
            return;
        }
        _ => panic!("unknown synthetic mode"),
    }
    io::stdout().flush().expect("flush barrier marker");
    loop {
        thread::sleep(Duration::from_secs(30));
    }
}
