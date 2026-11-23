#!/usr/bin/env python3
"""Real SIGKILL smoke with synthetic temp data only; no app/media paths."""
import os
from pathlib import Path
import select
import subprocess
import sys
import tempfile


def run(binary, mode, directory, *, expect_success=True):
    result = subprocess.run(
        [str(binary), mode, str(directory)],
        capture_output=True,
        text=True,
        timeout=15,
        check=False,
    )
    if expect_success and result.returncode != 0:
        raise AssertionError(f"{mode} failed: {result.stderr[-1200:]}")
    if not expect_success and result.returncode == 0:
        raise AssertionError(f"{mode}: second owner unexpectedly acquired lock")
    return result.stdout


def spawn_marker(binary, mode, directory, marker):
    process = subprocess.Popen(
        [str(binary), mode, str(directory)],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        bufsize=1,
    )
    try:
        ready, _, _ = select.select([process.stdout], [], [], 15)
        if not ready:
            raise AssertionError(f"{mode}: missing marker, status={process.poll()}")
        line = process.stdout.readline().strip()
        if line != marker:
            raise AssertionError(f"{mode}: expected {marker!r}, got {line!r}")
        if process.poll() is not None:
            raise AssertionError(f"{mode}: process unexpectedly exited")
        return process
    except BaseException:
        process.kill()
        process.communicate(timeout=10)
        raise


def kill_and_wait(process):
    process.kill()  # SIGKILL on Linux: skips Rust Drop, releases kernel flock.
    status = process.wait(timeout=15)
    if status == 0:
        raise AssertionError("process unexpectedly exited cleanly")
    process.stdout.close()
    process.stderr.close()


def main():
    if len(sys.argv) != 2:
        raise SystemExit("usage: test_sigkill.py path_to_r2_fixture_worker")
    binary = Path(sys.argv[1]).resolve()
    if not binary.is_file():
        raise FileNotFoundError(binary)
    with tempfile.TemporaryDirectory(prefix="cp-r2-sigkill-") as temporary:
        directory = Path(temporary)
        before = spawn_marker(binary, "hold_before_commit", directory, "LOCK_HELD")
        try:
            run(binary, "verify_empty", directory, expect_success=False)
        finally:
            kill_and_wait(before)
        assert "EMPTY_OK" in run(binary, "verify_empty", directory)
        after = spawn_marker(binary, "hold_after_commit", directory, "COMMITTED 500")
        try:
            run(binary, "verify", directory, expect_success=False)
        finally:
            kill_and_wait(after)
        assert "REPLAY_OK 500" in run(binary, "verify", directory)
        assert not (directory / "rust-fixture.pending").exists()
    print("CP_R2_SIGKILL_PASS before_commit=0 after_commit=500 lock_released=1 replay=1")


if __name__ == "__main__":
    main()
