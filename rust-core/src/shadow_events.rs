//! R2 passive composite-identity event model. SYNTHETIC events only.
//! Immutable task_id + external_id is Room Downloads' *row key*, NOT a
//! globally stable episode identity. No I/O, networking, scheduling or ACK.
//! Generation protects late observations, not transfers.
use std::collections::HashMap;

pub const MAX_EVENTS: usize = 1_000;
pub const MAX_EXTERNAL_ID_BYTES: usize = 128;
const COUNTER_BITS: u32 = 12; // 5 counters use 60 bits; MAX_EVENTS < 4096.

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct ShadowEvent {
    pub task_id: i32,
    pub external_id: String,
    pub generation: i64,
    /// 0=main, 1=:filedownloader; diagnostic caller asserts the role.
    pub process_role: u8,
}

#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct EventCounts {
    pub first_seen: u32,
    pub mirrored: u32,
    pub repeated: u32,
    pub stale: u32,
    pub advanced: u32,
}

impl EventCounts {
    /// 5 * 12-bit counters, always below i64::MAX; read-only diagnostic.
    pub fn pack(self) -> i64 {
        (u64::from(self.first_seen) << (COUNTER_BITS * 4)
            | u64::from(self.mirrored) << (COUNTER_BITS * 3)
            | u64::from(self.repeated) << (COUNTER_BITS * 2)
            | u64::from(self.stale) << COUNTER_BITS
            | u64::from(self.advanced)) as i64
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum EventError {
    InvalidInput,
}

fn valid(event: &ShadowEvent) -> bool {
    event.task_id > 0
        && event.generation >= 0
        && event.process_role < 2
        && !event.external_id.is_empty()
        && event.external_id.len() <= MAX_EXTERNAL_ID_BYTES
        && !event.external_id.contains('\0')
        && !event.external_id.contains("://")
}

/// Counts in arrival order. Same Room row and generation on another process
/// is a mirror, NOT a new transfer. An older generation is stale. This is
/// *not* a cross-process persistent state store and cannot dedupe real tasks.
pub fn inspect(events: &[ShadowEvent]) -> Result<EventCounts, EventError> {
    if events.len() > MAX_EVENTS || events.iter().any(|event| !valid(event)) {
        return Err(EventError::InvalidInput);
    }
    let mut seen: HashMap<(i32, &str), (i64, u8)> = HashMap::new();
    let mut counts = EventCounts::default();
    for event in events {
        let key = (event.task_id, event.external_id.as_str());
        let role_bit = 1u8 << event.process_role;
        match seen.get_mut(&key) {
            None => {
                seen.insert(key, (event.generation, role_bit));
                counts.first_seen += 1;
            }
            Some((generation, role_mask)) => {
                if event.generation < *generation {
                    counts.stale += 1;
                } else if event.generation > *generation {
                    *generation = event.generation;
                    *role_mask = role_bit;
                    counts.advanced += 1;
                } else if *role_mask & role_bit != 0 {
                    counts.repeated += 1;
                } else {
                    *role_mask |= role_bit;
                    counts.mirrored += 1;
                }
            }
        }
    }
    Ok(counts)
}

#[cfg(test)]
mod tests {
    use super::*;

    fn event(task_id: i32, external_id: &str, generation: i64, process_role: u8) -> ShadowEvent {
        ShadowEvent {
            task_id,
            external_id: external_id.into(),
            generation,
            process_role,
        }
    }

    #[test]
    fn five_hundred_cross_process_events() {
        let mut events: Vec<ShadowEvent> = (1..=300)
            .map(|id| event(id, &format!("synthetic-external-{id}"), 5, 0))
            .collect();
        for id in 1..=100 {
            events.push(event(id, &format!("synthetic-external-{id}"), 5, 1));
        }
        for id in 101..=150 {
            events.push(event(id, &format!("synthetic-external-{id}"), 5, 0));
        }
        for id in 151..=200 {
            events.push(event(id, &format!("synthetic-external-{id}"), 4, 0));
        }
        assert_eq!(events.len(), 500);
        let counts = inspect(&events).unwrap();
        assert_eq!(
            counts,
            EventCounts {
                first_seen: 300,
                mirrored: 100,
                repeated: 50,
                stale: 50,
                advanced: 0
            }
        );
        assert_eq!(
            counts.pack(),
            (300i64 << 48) | (100i64 << 36) | (50i64 << 24) | (50i64 << 12)
        );
    }

    #[test]
    fn same_integer_different_external_key_is_distinct() {
        let counts = inspect(&[event(10, "a", 2, 0), event(10, "b", 2, 0)]).unwrap();
        assert_eq!(counts.first_seen, 2);
        assert_eq!(counts.mirrored, 0);
    }

    #[test]
    fn generation_advancement_fences_older_observations() {
        let counts = inspect(&[
            event(10, "a", 1, 0),
            event(10, "a", 2, 1),
            event(10, "a", 1, 0),
            event(10, "a", 2, 0),
            event(10, "a", 2, 0),
        ])
        .unwrap();
        assert_eq!(
            counts,
            EventCounts {
                first_seen: 1,
                mirrored: 1,
                repeated: 1,
                stale: 1,
                advanced: 1
            }
        );
    }

    #[test]
    fn invalid_production_like_inputs_are_rejected() {
        for invalid in [
            event(0, "x", 0, 0),
            event(-1, "x", 0, 0),
            event(1, "", 0, 0),
            event(1, "x", -1, 0),
            event(1, "x", 0, 2),
            event(1, "https://example.invalid/token", 0, 0),
            event(1, "secret\0x", 0, 0),
            event(1, &"x".repeat(MAX_EXTERNAL_ID_BYTES + 1), 0, 0),
        ] {
            assert_eq!(inspect(&[invalid]), Err(EventError::InvalidInput));
        }
    }

    #[test]
    fn oversized_and_empty_events_do_not_mutate_global_state() {
        assert_eq!(
            inspect(&vec![event(1, "a", 0, 0); MAX_EVENTS + 1]),
            Err(EventError::InvalidInput)
        );
        assert_eq!(inspect(&[]).unwrap(), EventCounts::default());
        let one = inspect(&[event(1, "a", 0, 0)]).unwrap();
        assert_eq!(inspect(&[event(1, "a", 0, 0)]).unwrap(), one);
    }
}
