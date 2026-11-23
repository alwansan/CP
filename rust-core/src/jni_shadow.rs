//! Isolated R2 JNI bridge for an offline, read-only synthetic ID comparison.
//! No queue injection, filesystem, Room, HTTP, logging of IDs, or native task ownership.
//! A JNI exception is raised on validation or access failure; -1 is not an ACK.
use crate::shadow_audit::{self, ShadowError, MAX_KNOWN, MAX_SELECTED};
use crate::shadow_events::{self, ShadowEvent, MAX_EVENTS};
use jni::objects::{JClass, JIntArray, JLongArray, JObjectArray, JString};
use jni::sys::jlong;
use jni::JNIEnv;
use std::panic::{catch_unwind, AssertUnwindSafe};

fn read_bounded(
    env: &mut JNIEnv<'_>,
    array: &JIntArray<'_>,
    max: usize,
) -> Result<Vec<i32>, ShadowError> {
    let size = env
        .get_array_length(array)
        .map_err(|_| ShadowError::JniAccess)?;
    let len = usize::try_from(size).map_err(|_| ShadowError::InvalidInput)?;
    if len > max {
        return Err(ShadowError::InvalidInput);
    }
    let mut result = vec![0i32; len];
    env.get_int_array_region(array, 0, &mut result)
        .map_err(|_| ShadowError::JniAccess)?;
    Ok(result)
}

fn reject(env: &mut JNIEnv<'_>, error: ShadowError) -> jlong {
    // Never override a pending VM exception, e.g., invalid raw JNI array.
    if !env.exception_check().unwrap_or(true) {
        let (class, message) = match error {
            ShadowError::InvalidInput => (
                "java/lang/IllegalArgumentException",
                "CP Rust shadow audit rejected invalid or oversized synthetic IDs",
            ),
            ShadowError::JniAccess => (
                "java/lang/IllegalStateException",
                "CP Rust shadow audit could not read JNI test arrays",
            ),
        };
        let _ = env.throw_new(class, message);
    }
    -1
}

/// Returns packed counts, *not* a durable receipt or a stable download identity.
/// JNI is invoked only by isolated ART instrumentation in this phase.
#[no_mangle]
pub extern "system" fn Java_com_shabakaty_cinemana_local_RustAbiProbe_nativeShadowAudit(
    mut env: JNIEnv<'_>,
    _class: JClass<'_>,
    selected: JIntArray<'_>,
    known: JIntArray<'_>,
) -> jlong {
    let result = catch_unwind(AssertUnwindSafe(|| {
        let selected_ids = read_bounded(&mut env, &selected, MAX_SELECTED)?;
        let known_ids = read_bounded(&mut env, &known, MAX_KNOWN)?;
        shadow_audit::audit(&selected_ids, &known_ids).map(|receipt| receipt.pack())
    }));
    match result {
        Ok(Ok(packed)) => packed,
        Ok(Err(error)) => reject(&mut env, error),
        Err(_) => reject(&mut env, ShadowError::JniAccess),
    }
}

fn read_events(
    env: &mut JNIEnv<'_>,
    task_ids: &JIntArray<'_>,
    external_ids: &JObjectArray<'_>,
    generations: &JLongArray<'_>,
    process_roles: &JIntArray<'_>,
) -> Result<Vec<ShadowEvent>, ShadowError> {
    let count = env
        .get_array_length(task_ids)
        .map_err(|_| ShadowError::JniAccess)?;
    let len = usize::try_from(count).map_err(|_| ShadowError::InvalidInput)?;
    if len > MAX_EVENTS {
        return Err(ShadowError::InvalidInput);
    }
    for length in [
        env.get_array_length(external_ids),
        env.get_array_length(generations),
        env.get_array_length(process_roles),
    ] {
        if length.map_err(|_| ShadowError::JniAccess)? != count {
            return Err(ShadowError::InvalidInput);
        }
    }
    let ids = read_bounded(env, task_ids, MAX_EVENTS)?;
    let roles = read_bounded(env, process_roles, MAX_EVENTS)?;
    let mut gens = vec![0i64; len];
    env.get_long_array_region(generations, 0, &mut gens)
        .map_err(|_| ShadowError::JniAccess)?;

    let mut events = Vec::with_capacity(len);
    for index in 0..len {
        let raw = env
            .get_object_array_element(external_ids, index as i32)
            .map_err(|_| ShadowError::JniAccess)?;
        if raw.is_null() {
            return Err(ShadowError::InvalidInput);
        }
        let java_string = JString::from(raw);
        let external: String = env
            .get_string(&java_string)
            .map_err(|_| ShadowError::JniAccess)?
            .into();
        // Avoid exhausting the Android JNI local reference table on 500+ rows.
        env.delete_local_ref(java_string)
            .map_err(|_| ShadowError::JniAccess)?;
        events.push(ShadowEvent {
            task_id: ids[index],
            external_id: external,
            generation: gens[index],
            process_role: u8::try_from(roles[index]).map_err(|_| ShadowError::InvalidInput)?,
        });
    }
    Ok(events)
}

/// Diagnostic Java-only worker calls this on its own non-UI thread.
/// This function makes *no* DB changes and returns diagnostic counts only.
#[no_mangle]
pub extern "system" fn Java_com_shabakaty_cinemana_local_RustShadowEventWorker_nativeAudit(
    mut env: JNIEnv<'_>,
    _class: JClass<'_>,
    task_ids: JIntArray<'_>,
    external_ids: JObjectArray<'_>,
    generations: JLongArray<'_>,
    process_roles: JIntArray<'_>,
) -> jlong {
    let result = catch_unwind(AssertUnwindSafe(|| {
        let events = read_events(
            &mut env,
            &task_ids,
            &external_ids,
            &generations,
            &process_roles,
        )?;
        shadow_events::inspect(&events)
            .map(|counts| counts.pack())
            .map_err(|_| ShadowError::InvalidInput)
    }));
    match result {
        Ok(Ok(packed)) => packed,
        Ok(Err(error)) => reject(&mut env, error),
        Err(_) => reject(&mut env, ShadowError::JniAccess),
    }
}
