//! Read-only R2 shadow audit for synthetic, opaque native-style IDs.
//!
//! **Not** the canonical episode identity and **not** a durable admission ACK.
//! This never enqueues, persists, downloads, writes Room, or invokes FFmpeg.
//! Only bounded primitive arrays enter this module; no user URLs or accounts.

use std::collections::HashSet;

pub const MAX_SELECTED: usize = 1_000;
pub const MAX_KNOWN: usize = 4_096;
const COUNT_BITS: u64 = 20;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ShadowReceipt {
    pub new_unique: u32,
    pub existing_unique: u32,
    pub duplicates_in_selection: u32,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ShadowError {
    InvalidInput,
    JniAccess,
}

impl ShadowReceipt {
    /// 3 unsigned 20-bit counters (new, existing, duplicate); never a state token.
    pub fn pack(self) -> i64 {
        let result = (u64::from(self.new_unique) << (COUNT_BITS * 2))
            | (u64::from(self.existing_unique) << COUNT_BITS)
            | u64::from(self.duplicates_in_selection);
        result as i64
    }
}

/// Strictly observational: no global state, no task lifecycle side effects.
pub fn audit(selected: &[i32], already_known: &[i32]) -> Result<ShadowReceipt, ShadowError> {
    if selected.len() > MAX_SELECTED
        || already_known.len() > MAX_KNOWN
        || selected.iter().chain(already_known).any(|id| *id <= 0)
    {
        return Err(ShadowError::InvalidInput);
    }
    let known: HashSet<i32> = already_known.iter().copied().collect();
    let unique: HashSet<i32> = selected.iter().copied().collect();
    let existing = unique.iter().filter(|id| known.contains(id)).count();
    let new = unique.len() - existing;
    Ok(ShadowReceipt {
        new_unique: new as u32,
        existing_unique: existing as u32,
        duplicates_in_selection: (selected.len() - unique.len()) as u32,
    })
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn five_hundred_selected_with_hundred_duplicates() {
        let mut selected: Vec<i32> = (1..=400).collect();
        selected.extend(1..=100);
        let known: Vec<i32> = (1..=200).collect();
        let receipt = audit(&selected, &known).unwrap();
        assert_eq!(
            receipt,
            ShadowReceipt {
                new_unique: 200,
                existing_unique: 200,
                duplicates_in_selection: 100,
            }
        );
        assert_eq!(receipt.pack(), (200i64 << 40) | (200i64 << 20) | 100);
    }

    #[test]
    fn entirely_new_batch_is_only_observational() {
        let selected: Vec<i32> = (1..=500).collect();
        let first = audit(&selected, &[]).unwrap();
        assert_eq!(first.new_unique, 500);
        assert_eq!(audit(&selected, &[]).unwrap(), first);
    }

    #[test]
    fn repeated_known_ids_are_ignored() {
        assert_eq!(
            audit(&[1, 1, 2, 3], &[1, 1, 1, 3]).unwrap(),
            ShadowReceipt {
                new_unique: 1,
                existing_unique: 2,
                duplicates_in_selection: 1,
            }
        );
    }

    #[test]
    fn invalid_ids_and_oversized_arrays_fail_closed() {
        assert_eq!(audit(&[0], &[]), Err(ShadowError::InvalidInput));
        assert_eq!(audit(&[-1], &[]), Err(ShadowError::InvalidInput));
        assert_eq!(audit(&[1], &[0]), Err(ShadowError::InvalidInput));
        assert_eq!(audit(&vec![1; MAX_SELECTED + 1], &[]), Err(ShadowError::InvalidInput));
        assert_eq!(audit(&[], &vec![1; MAX_KNOWN + 1]), Err(ShadowError::InvalidInput));
    }

    #[test]
    fn empty_selection_is_zero_not_a_durable_receipt() {
        assert_eq!(audit(&[], &[]).unwrap().pack(), 0);
    }
}
