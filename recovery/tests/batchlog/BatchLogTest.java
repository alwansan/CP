package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.lang.reflect.Field;
import java.nio.file.Files;
import java.util.concurrent.atomic.AtomicInteger;

public final class BatchLogTest {
    private static int tests;

    private static void check(boolean condition, String name) {
        tests++;
        if (!condition) throw new AssertionError(name);
    }

    public static void main(String[] args) throws Exception {
        File temp = Files.createTempDirectory("batchlog-test-").toFile();
        File internal = new File(temp, "private");
        File external = new File(temp, "sdcard");
        internal.mkdirs();
        external.mkdirs();
        Environment.externalDir = external;

        Field contextField = BatchLog.class.getDeclaredField("context");
        contextField.setAccessible(true);
        Context context = new Context(internal);
        contextField.set(null, context);

        BatchDownload.activeScreen = new BatchDownload.Screen("player-session");
        Thread current = Thread.currentThread();
        RuntimeException failure = new RuntimeException("https://example.org/test?secret=123");
        AtomicInteger delegated = new AtomicInteger();
        Thread.UncaughtExceptionHandler prior = (thread, error) -> {
            if (thread != current || error != failure) throw new AssertionError("wrong error delegated");
            delegated.incrementAndGet();
        };
        BatchLog.lambda$init$1(prior, current, failure);
        check(delegated.get() == 1, "prior uncaught handler invoked once");
        File privateLog = new File(internal, "log/ca1_batch.jsonl");
        File externalLog = new File(external, "Cinemana/work/log/ca1_batch.jsonl");
        check(privateLog.isFile(), "private JSONL file created");
        check(externalLog.isFile(), "external JSONL file created");
        String saved = Files.readString(privateLog.toPath());
        check(saved.contains("uncaught_exception"), "correct stage logged");
        check(saved.contains("player-session"), "session logged");
        check(saved.contains(current.getName()), "thread name logged");
        check(!saved.contains("secret=123"), "URL query credentials redacted");

        context.fail = true;
        BatchLog.lambda$init$1(prior, current, failure);
        check(delegated.get() == 2, "prior handler always invoked when logging fails");
        check(Files.readString(privateLog.toPath()).equals(saved),
                "failed logging did not corrupt existing journal");
        context.fail = false;

        AtomicInteger fallbackCalls = new AtomicInteger();
        ThreadGroup group = new ThreadGroup("test-crash-delegation") {
            @Override
            public void uncaughtException(Thread thread, Throwable error) {
                if (error != failure) throw new AssertionError("wrong error sent to thread group");
                fallbackCalls.incrementAndGet();
            }
        };
        Thread grouped = new Thread(group, () -> {}, "grouped");
        BatchLog.lambda$init$1(null, grouped, failure);
        check(fallbackCalls.get() == 1, "fallback thread-group handler invoked");

        System.out.println("PASS: " + tests + " BatchLog Smali-reconstruction tests");
    }
}
