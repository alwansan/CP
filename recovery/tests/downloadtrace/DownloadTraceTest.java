package com.shabakaty.cinemana.features;

import android.content.Context;
import android.os.Environment;
import com.shabakaty.cinemana.ca1.Log94;
import java.io.File;
import java.lang.reflect.Field;
import java.nio.file.Files;

public final class DownloadTraceTest {
    private static int tests;
    private static void check(boolean value, String description) {
        tests++;
        if (!value) throw new AssertionError(description);
    }
    private static void enable(boolean value) throws Exception {
        Field f = Log94.class.getDeclaredField("enabled");
        f.setAccessible(true);
        f.set(null, value);
    }
    public static void main(String[] args) throws Exception {
        File external = Files.createTempDirectory("downloadtrace-external").toFile();
        File privateDir = Files.createTempDirectory("downloadtrace-internal").toFile();
        Environment.externalDir = external;
        Context context = new Context(privateDir);
        File journal = new File(external, "Cinemana/work/log/downloads.log");
        File diagnostic = new File(external, "Cinemana/work/log/diagnostics.log");

        enable(true);
        DownloadTrace.log(context, "DOWNLOAD_STARTED");
        check(journal.isFile(), "main journal created");
        check(diagnostic.isFile(), "diagnostics created");
        String text = Files.readString(journal.toPath());
        check(text.contains(" DOWNLOAD_STARTED"), "timestamp-prefixed event");
        check(text.trim().matches("[0-9]+ DOWNLOAD_STARTED"), "correct event format");
        check(Files.readString(diagnostic.toPath()).contains("MESSAGE="), "diagnostic receives event");

        DownloadTrace.log(null, "SHOULD_NOT_WRITE");
        check(Files.readString(journal.toPath()).equals(text), "null context ignored");

        enable(false);
        DownloadTrace.log(context, "DISABLED_EVENT");
        check(Files.readString(journal.toPath()).equals(text), "disabled journal ignored");

        enable(true);
        DownloadTrace.log(context, "DOWNLOAD_FINISHED");
        String updated = Files.readString(journal.toPath());
        check(updated.contains(" DOWNLOAD_FINISHED"), "second event appended");
        check(updated.split("\n").length == 2, "exactly two lines appended");

        // Bad filesystem path should never crash the caller.
        Environment.externalDir = new File(external, "Cinemana/work/log/downloads.log");
        DownloadTrace.log(context, "BEST_EFFORT");

        System.out.println("PASS: " + tests + " DownloadTrace Smali/REA-recovery tests");
    }
}
