//! Isolated R2 JNI bridge for an offline, read-only synthetic ID comparison.
//! No queue injection, filesystem, Room, HTTP, logging of IDs, or native task ownership.
//! A JNI exception is raised on validation or access failure; -1 is not an ACK.
use crate::shadow_audit::{self, ShadowError, MAX_KNOWN, MAX_SELECTED};
use jni::objects::{JClass, JIntArray};
use jni::sys::jlong;
use jni::JNIEnv;
use std::panic::{catch_unwind, AssertUnwindSafe};

fn read_bounded(
    env: &mut JNIEnv<'_>,
    array: &JIntArray<'_>,
    max: usize,
) -> Result<Vec<i32>, ShadowError> {
    let size = env.get_array_length(array).map_err(|_| ShadowError::JniAccess)?;
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
