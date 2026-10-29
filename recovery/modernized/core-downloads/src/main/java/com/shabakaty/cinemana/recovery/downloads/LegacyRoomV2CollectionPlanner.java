package com.shabakaty.cinemana.recovery.downloads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * Read-only plan for legacy Room AppDatabase 2->3 download collections.
 *
 * jt2 selects distinct rootEpisode strings, parses them to INTEGER via
 * vd5.B(), and inserts into DownloadsCollectionItem with SQLite's
 * CONFLICT_IGNORE. Because multiple strings can collapse to the same
 * numeric id, a robust *diagnostic* write plan must discard ambiguous,
 * nonpositive, pre-existing, and nameless candidates.
 *
 * This is intentionally stricter than original jt2 and is NOT production
 * migration code. Only caller-approved projections should be passed here
 * after source JSON and copied-row identities have been verified.
 */
public final class LegacyRoomV2CollectionPlanner {
    private LegacyRoomV2CollectionPlanner() {}

    public static final class CollectionCandidate {
        public final int id;
        public final String rootEpisode;
        public final String name;
        public final String sourceItemId;

        private CollectionCandidate(LegacyRoomV2EpisodeMetadata.Projection projection) {
            this.id = projection.collectionId;
            this.rootEpisode = projection.rootEpisode;
            this.name = LegacyRoomV2EpisodeMetadata.legacyCollectionTitle(projection.title);
            this.sourceItemId = projection.id;
        }
    }

    public static final class Plan {
        public final List<CollectionCandidate> candidates;
        public final int duplicateRoots;
        public final int invalidIdentifiers;
        public final int numericCollisions;
        public final int alreadyPresent;
        public final int emptyNames;

        private Plan(List<CollectionCandidate> items, int duplicateRoots,
                     int invalidIdentifiers, int numericCollisions,
                     int alreadyPresent, int emptyNames) {
            this.candidates = Collections.unmodifiableList(items);
            this.duplicateRoots = duplicateRoots;
            this.invalidIdentifiers = invalidIdentifiers;
            this.numericCollisions = numericCollisions;
            this.alreadyPresent = alreadyPresent;
            this.emptyNames = emptyNames;
        }
    }

    public static Plan prepare(List<LegacyRoomV2EpisodeMetadata.Projection> approved,
                               Set<Integer> existingIds) {
        if (existingIds == null) {
            throw new IllegalArgumentException("explicit existing collection-ID snapshot required");
        }
        if (approved == null || approved.isEmpty()) {
            return new Plan(new ArrayList<>(), 0, 0, 0, 0, 0);
        }
        Set<Integer> knownIds = new HashSet<>(existingIds);
        Set<String> encounteredRoots = new LinkedHashSet<>();
        Set<Integer> plannedIds = new HashSet<>();
        List<CollectionCandidate> output = new ArrayList<>();
        int repeated = 0, invalid = 0, collided = 0, occupied = 0, nameless = 0;

        for (LegacyRoomV2EpisodeMetadata.Projection projection : approved) {
            if (projection == null) continue;
            String root = projection.rootEpisode;
            // Original jt2 excludes literal zero root; safety additionally
            // refuses invalid, empty, negative or overflowing numeric IDs.
            if (root == null || "0".equals(root) || root.isEmpty()) {
                invalid++;
                continue;
            }
            if (!encounteredRoots.add(root)) {
                repeated++;
                continue;
            }
            CollectionCandidate candidate = new CollectionCandidate(projection);
            if (candidate.id <= 0) {
                invalid++;
            } else if (knownIds.contains(candidate.id)) {
                occupied++;
            } else if (!plannedIds.add(candidate.id)) {
                // e.g. "001" and "1" are different roots but both map to 1.
                collided++;
            } else if (candidate.name.trim().isEmpty()) {
                nameless++;
                plannedIds.remove(candidate.id);
            } else {
                output.add(candidate);
            }
        }
        return new Plan(output, repeated, invalid, collided, occupied, nameless);
    }
}
