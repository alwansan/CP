package com.shabakaty.cinemana.ca1;
final class Continue106 {
    static int recoveryCalls;
    static boolean recover, checkedFailure, runtimeFailure;
    static Object call(Object target, String name, Object... args) throws Exception {
        if ("str".equals(name)) {
            if (checkedFailure) throw new Exception("simulated checked failure");
            if (runtimeFailure) throw new IllegalArgumentException("simulated runtime failure");
            return String.valueOf(args[0]);
        }
        if ("loadNames".equals(name)) return null;
        if ("lambda$resolveName$13".equals(name)) {
            recoveryCalls++;
            if (recover) Enhancements.ROOTS.put(String.valueOf(args[1]), "Recovered Title");
        }
        return null;
    }
    static Object get(Object target, String name) {
        return "ROOTS".equals(name) ? Enhancements.ROOTS : null;
    }
    static Object app() { return null; }
    static String text(Object object, String name) { return ""; }
}
