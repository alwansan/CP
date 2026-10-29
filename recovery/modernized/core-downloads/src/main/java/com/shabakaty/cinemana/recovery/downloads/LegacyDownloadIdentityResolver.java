package com.shabakaty.cinemana.recovery.downloads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Source-first, fail-closed reconstruction of the Downloads selection stage in
 * MkvExporter.promoteDatabase. Decompiled legacy code scores DownloadItem
 * r/s/x/u/y (task/external/path/title/size), sometimes selecting a different
 * task ID by title/path. This class NEVER silently repairs an identity.
 *
 * Only a unique (taskId, externalId) pair with the EXACT source path and no
 * competing row at that path permits a write. All candidate rows must be read
 * under a consistent DAO snapshot; locking and on-disk journals are separate.
 */
public final class LegacyDownloadIdentityResolver {
    private LegacyDownloadIdentityResolver() {}

    public enum Reason {
        EXACT_IDENTITY,
        INVALID_REQUEST,
        DUPLICATE_COMPOSITE_KEY,
        SOURCE_PATH_MISMATCH,
        SOURCE_PATH_COLLISION,
        POSSIBLE_RECOVERY_REQUIRES_REVIEW,
        AMBIGUOUS_RECOVERY,
        NOT_FOUND
    }

    public static final class Candidate {
        public final int taskId;
        public final String externalId;
        public final String path;
        public final String title;
        public final long sizeBytes;

        public Candidate(int taskId, String externalId, String path,
                         String title, long sizeBytes) {
            this.taskId = taskId;
            this.externalId = externalId;
            this.path = path;
            this.title = title;
            this.sizeBytes = sizeBytes;
        }
    }

    public static final class Selection {
        public final Reason reason;
        public final Candidate selected;
        public final List<Candidate> possibleRecovery;

        private Selection(Reason reason, Candidate selected, List<Candidate> possible) {
            this.reason = reason;
            this.selected = selected;
            this.possibleRecovery = Collections.unmodifiableList(new ArrayList<>(possible));
        }

        /** The ONLY state permitted to authorize a database mutation. */
        public boolean canWrite() {
            return reason == Reason.EXACT_IDENTITY && selected != null;
        }
    }

    private static Selection result(Reason reason, Candidate selected, List<Candidate> possible) {
        return new Selection(reason, selected, possible);
    }

    private static boolean hasText(String value) {
        return value != null && !value.trim().isEmpty();
    }

    /**
     * Uses exact full path equality, never just basename/title equivalence.
     * A potential recovered ID is informational only and cannot write data.
     */
    public static Selection resolve(int taskId, String externalId,
                                    String expectedSourcePath, List<Candidate> allRows) {
        if (taskId < 0 || !hasText(externalId) || !hasText(expectedSourcePath)
                || allRows == null) {
            return result(Reason.INVALID_REQUEST, null, Collections.emptyList());
        }
        Candidate exact = null;
        int exactCount = 0;
        List<Candidate> samePath = new ArrayList<>();
        List<Candidate> sameExternal = new ArrayList<>();
        for (Candidate row : allRows) {
            if (row == null) continue;
            if (taskId == row.taskId && externalId.equals(row.externalId)) {
                exact = row;
                exactCount++;
            }
            if (expectedSourcePath.equals(row.path)) samePath.add(row);
            if (externalId.equals(row.externalId)) sameExternal.add(row);
        }
        if (exactCount > 1) {
            return result(Reason.DUPLICATE_COMPOSITE_KEY, null, samePath);
        }
        if (exactCount == 1) {
            if (!expectedSourcePath.equals(exact.path)) {
                return result(Reason.SOURCE_PATH_MISMATCH, null, samePath);
            }
            if (samePath.size() != 1) {
                return result(Reason.SOURCE_PATH_COLLISION, null, samePath);
            }
            return result(Reason.EXACT_IDENTITY, exact, Collections.emptyList());
        }
        // No fuzzy scoring may silently rewrite taskId or externalId.
        List<Candidate> possible = new ArrayList<>();
        for (Candidate row : samePath) {
            if (externalId.equals(row.externalId)) possible.add(row);
        }
        if (possible.isEmpty()) possible.addAll(samePath);
        if (possible.isEmpty()) possible.addAll(sameExternal);
        if (possible.size() == 1) {
            return result(Reason.POSSIBLE_RECOVERY_REQUIRES_REVIEW, null, possible);
        }
        if (possible.size() > 1) {
            return result(Reason.AMBIGUOUS_RECOVERY, null, possible);
        }
        return result(Reason.NOT_FOUND, null, Collections.emptyList());
    }
}
