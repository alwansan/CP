package com.shabakaty.cinemana.recovery.downloads;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import static com.shabakaty.cinemana.recovery.downloads.LegacyDownloadIdentityResolver.*;

public final class LegacyDownloadIdentityResolverTest {
    private static int checks;
    private static final String PATH = "/diagnostic/Episode.mp4";

    private static Candidate row(int task, String ext, String path, String title) {
        return new Candidate(task, ext, path, title, 4200000L);
    }
    private static void ok(boolean yes, String description) {
        checks++;
        if (!yes) throw new AssertionError(description);
    }
    private static void rejected(Reason expected, List<Candidate> rows) {
        Selection selection = resolve(17, "external1", PATH, rows);
        ok(selection.reason == expected,
                "reason " + expected + ", got " + selection.reason);
        ok(!selection.canWrite(), "rejected selection never authorizes a write");
        ok(selection.selected == null, "no rejected write target exposed");
    }

    public static void main(String[] args) {
        Candidate exact = row(17, "external1", PATH, "Episode");
        Selection selected = resolve(17, "external1", PATH,
                Collections.singletonList(exact));
        ok(selected.canWrite(), "exact task + external + path can write");
        ok(selected.selected == exact, "same candidate selected");
        ok(selected.reason == Reason.EXACT_IDENTITY, "exact reason");
        ok(selected.possibleRecovery.isEmpty(), "no recovery advice on exact");

        selected = resolve(17, "external1", PATH, Arrays.asList(exact,
                row(17, "other", "/diagnostic/Other.mp4", "Episode")));
        ok(selected.canWrite(), "neighbor sharing task ID but different external is safe");

        selected = resolve(17, "external1", PATH, Arrays.asList(exact,
                row(44, "other", "/other/Episode.mp4", "Episode")));
        ok(selected.canWrite(), "same basename in different directory is not collision");

        rejected(Reason.DUPLICATE_COMPOSITE_KEY, Arrays.asList(exact, exact));
        rejected(Reason.SOURCE_PATH_COLLISION, Arrays.asList(exact,
                row(44, "other", PATH, "Episode")));
        rejected(Reason.SOURCE_PATH_MISMATCH, Collections.singletonList(
                row(17, "external1", "/other/Episode.mp4", "Episode")));

        selected = resolve(17, "external1", PATH, Collections.singletonList(
                row(99, "external1", PATH, "Episode")));
        ok(selected.reason == Reason.POSSIBLE_RECOVERY_REQUIRES_REVIEW,
                "possible recovered task ID needs explicit review");
        ok(!selected.canWrite() && selected.possibleRecovery.size() == 1,
                "no automatic task rewrite");

        selected = resolve(17, "external1", PATH, Collections.singletonList(
                row(17, "other", PATH, "Episode")));
        ok(selected.reason == Reason.POSSIBLE_RECOVERY_REQUIRES_REVIEW,
                "different external needs review");
        ok(!selected.canWrite(), "no automatic external rewrite");

        rejected(Reason.AMBIGUOUS_RECOVERY, Arrays.asList(
                row(17, "other1", PATH, "Episode"),
                row(18, "other2", PATH, "Episode")));
        rejected(Reason.NOT_FOUND, Collections.emptyList());
        rejected(Reason.NOT_FOUND, Collections.singletonList(
                row(99, "other", "/other/Episode.mp4", "Episode")));
        rejected(Reason.POSSIBLE_RECOVERY_REQUIRES_REVIEW,
                Collections.singletonList(row(22, "external1",
                        "/other/Other.mp4", "Other")));

        ok(resolve(-1, "external1", PATH, Collections.singletonList(exact)).reason
                == Reason.INVALID_REQUEST, "invalid task");
        ok(resolve(17, "", PATH, Collections.singletonList(exact)).reason
                == Reason.INVALID_REQUEST, "missing external");
        ok(resolve(17, "external1", " ", Collections.singletonList(exact)).reason
                == Reason.INVALID_REQUEST, "missing path");
        ok(resolve(17, "external1", PATH, null).reason
                == Reason.INVALID_REQUEST, "missing snapshot");
        ok(resolve(17, "external1", PATH, Arrays.asList(null, exact)).canWrite(),
                "null row cannot produce a phantom collision");
        System.out.println("PASS: " + checks + " fail-closed legacy Downloads selection checks");
    }
}
