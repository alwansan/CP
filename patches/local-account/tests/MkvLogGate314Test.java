package com.shabakaty.cinemana.local;

/** Real pure-JVM contract for the exact success-debug-only sampling policy. */
public final class MkvLogGate314Test {
    private static void check(boolean got, boolean expected, String name) {
        if (got != expected) throw new AssertionError(name);
    }
    public static void main(String[] args) {
        String[] signatures = {
            "DB_PROMOTE_DOWNLOADS_DB_NAME=shabakaty.pro.downloads.database",
            "DB_PROMOTE_DOWNLOADS_DB_CLASS=com.example.DownloadsDatabase_Impl",
            "DB_PROMOTE_DOWNLOADS_DAO=com.example.DAO"
        };
        for (String signature : signatures) {
            check(MkvLogGate314.shouldWrite(signature), true, "first");
            for (int n = 2; n < 128; n++)
                check(MkvLogGate314.shouldWrite(signature), false, "suppressed " + n);
            check(MkvLogGate314.shouldWrite(signature), true, "sample 128");
            check(MkvLogGate314.shouldWrite(signature), false, "sample 129");
        }
        for (int n = 0; n < 2000; n++) {
            check(MkvLogGate314.shouldWrite("DB_PROMOTE_FAIL: DownloadsDao unavailable"), true, "failure");
            check(MkvLogGate314.shouldWrite("DB_PROMOTE_SUCCESS path=[redacted]"), true, "success");
            check(MkvLogGate314.shouldWrite("DB_PROMOTE_DOWNLOADS_DAO_EXTRA"), true, "exact prefix");
            check(MkvLogGate314.shouldWrite("MKV_FFMPEG_SLOT_ACQUIRED"), true, "FFmpeg");
            check(MkvLogGate314.shouldWrite("WAITING_PLAN_OR_SUBTITLES"), true, "subtitle");
        }
        check(MkvLogGate314.shouldWrite(null), true, "null");
        System.out.println("PASS PATCH314 sampled DAO identity logs; all error and result logs retained");
    }
}
