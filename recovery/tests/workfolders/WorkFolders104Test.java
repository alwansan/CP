package com.shabakaty.cinemana.ca1;

public final class WorkFolders104Test {
    private static int tests;
    private static void same(Object expected, Object actual, String name) {
        tests++;
        if (!expected.equals(actual)) throw new AssertionError(name + ": expected=" + expected + " actual=" + actual);
    }
    private static void yes(boolean result, String name) {
        tests++;
        if (!result) throw new AssertionError(name);
    }
    private static void reset() {
        WorkFolders104.attempted.clear();
        WorkFolders104.resolving.clear();
        Enhancements.ROOTS.clear();
        Continue106.recover = false;
        Continue106.recoveryCalls = 0;
        Continue106.checkedFailure = false;
        Continue106.runtimeFailure = false;
        Restart108.context = null;
    }
    public static void main(String[] args) {
        reset();
        same("Fallback", WorkFolders104.name("", "Fallback"), "empty root");
        same("Fallback", WorkFolders104.name("0", "Fallback"), "zero root");
        reset();
        Enhancements.ROOTS.put("123", "Cached");
        same("Cached", WorkFolders104.name("123", "Fallback"), "cached name");
        same(0, Continue106.recoveryCalls, "cached no retry");
        reset();
        Continue106.recover = true;
        same("Recovered Title", WorkFolders104.name("777", "Fallback"), "fallback resolve");
        same(1, Continue106.recoveryCalls, "resolved once");
        yes(!WorkFolders104.resolving.contains("777"), "cleanup");
        same("Recovered Title", WorkFolders104.name("777", "Fallback"), "second cached read");
        same(1, Continue106.recoveryCalls, "no second resolve");
        reset();
        try {
            WorkFolders104.name("888", "Fallback");
            throw new AssertionError("expected pending");
        } catch (IllegalStateException e) {
            same("WORK_TITLE_PENDING root=888", e.getMessage(), "pending error");
        }
        same(1, Continue106.recoveryCalls, "first attempt");
        try {
            WorkFolders104.name("888", "Fallback");
            throw new AssertionError("expected throttled pending");
        } catch (IllegalStateException e) {
            same("WORK_TITLE_PENDING root=888", e.getMessage(), "throttled pending");
        }
        same(1, Continue106.recoveryCalls, "prevent retry within 20 seconds");
        WorkFolders104.attempted.put("888", System.currentTimeMillis() - 25_000L);
        Continue106.recover = true;
        same("Recovered Title", WorkFolders104.name("888", "Fallback"), "retry after 20s");
        same(2, Continue106.recoveryCalls, "retry once");
        yes(WorkFolders104.resolving.isEmpty(), "no resolving leak");
        reset();
        Continue106.checkedFailure = true;
        try {
            WorkFolders104.name("112", "Fallback");
            throw new AssertionError("expected exception wrapper");
        } catch (IllegalStateException e) {
            same("WORK_TITLE_RECOVERY_ERROR", e.getMessage(), "checked error");
            yes(e.getCause() instanceof Exception, "checked cause");
        }
        reset();
        Continue106.runtimeFailure = true;
        try {
            WorkFolders104.name("112", "Fallback");
            throw new AssertionError("expected runtime failure");
        } catch (IllegalArgumentException e) {
            same("simulated runtime failure", e.getMessage(), "runtime passthrough");
        }
        System.out.println("PASS: " + tests + " WorkFolders104 Smali-reconstruction tests");
    }
}
