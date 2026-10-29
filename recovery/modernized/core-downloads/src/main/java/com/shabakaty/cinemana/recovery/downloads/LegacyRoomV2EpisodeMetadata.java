package com.shabakaty.cinemana.recovery.downloads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * A dependency-free, source-first recovery of the per-video JSON projection
 * performed by AppDatabase Room migration 2->3 (jt2.smali, Migrations.kt).
 *
 * Input is a parsed JSON object hierarchy. A JSON parser adapter MUST be
 * supplied separately; this class does not parse raw videoFile strings.
 * It does not open SQLite or mutate Android content.
 *
 * Unlike the original migration, which may throw for malformed JSON, this
 * isolated diagnostic returns REJECTED_SHAPE for unsupported values.
 * Do NOT wire this to production Room: SQL writes, exact Gson semantics,
 * historical Room schemas and subsequent collection writes remain unported.
 */
public final class LegacyRoomV2EpisodeMetadata {
    private LegacyRoomV2EpisodeMetadata() {}

    public enum Status {
        SELECTED,
        IGNORED_NOT_OBJECT,
        IGNORED_NON_SERIES,
        REJECTED_SHAPE
    }

    public static final class Projection {
        public final String id;
        public final String title;
        public final String season;
        public final String episodeNumber;
        public final String rootEpisode;
        public final int collectionId;

        private Projection(String id, String title, String season,
                           String episodeNumber, String rootEpisode) {
            this.id = id;
            this.title = title;
            this.season = season;
            this.episodeNumber = episodeNumber;
            this.rootEpisode = rootEpisode;
            // vd5.B() uses Kotlin's toIntOrNull() with a zero fallback.
            this.collectionId = toIntOrZero(rootEpisode);
        }
    }

    public static final class Result {
        public final Status status;
        public final Projection projection;

        private Result(Status status, Projection projection) {
            this.status = status;
            this.projection = projection;
        }

        /** This is NOT a database write authorization. */
        public boolean selected() {
            return status == Status.SELECTED && projection != null;
        }
    }

    private static Result result(Status status, Projection item) {
        return new Result(status, item);
    }

    private static boolean scalarOrMissing(Map<?, ?> map, String key) {
        if (!map.containsKey(key)) return true;
        Object value = map.get(key);
        // Deliberately fail closed on JSON null, arrays, and objects.
        return value instanceof String || value instanceof Number || value instanceof Boolean;
    }

    private static String scalar(Map<?, ?> map, String key) {
        Object value = map.get(key);
        return value == null ? "" : String.valueOf(value);
    }

    /**
     * Consume a single *already parsed* DownloadItem.videoFile object.
     * The original checks videoModel.kind == "2" using Gson getAsString(),
     * not the parent DownloadItem.finished or the title's filename.
     */
    public static Result select(Map<?, ?> jsonObject) {
        if (jsonObject == null) {
            return result(Status.IGNORED_NOT_OBJECT, null);
        }
        if (!scalarOrMissing(jsonObject, "title")) {
            return result(Status.REJECTED_SHAPE, null);
        }
        Object model = jsonObject.get("videoModel");
        if (!(model instanceof Map<?, ?>)) {
            return result(Status.IGNORED_NOT_OBJECT, null);
        }
        Map<?, ?> video = (Map<?, ?>) model;
        if (!scalarOrMissing(video, "kind")) {
            return result(Status.REJECTED_SHAPE, null);
        }
        if (!"2".equals(scalar(video, "kind"))) {
            return result(Status.IGNORED_NON_SERIES, null);
        }
        for (String key : new String[]{"nb", "episodeNummer", "season", "rootSeries"}) {
            if (!scalarOrMissing(video, key)) {
                return result(Status.REJECTED_SHAPE, null);
            }
        }
        String id = scalar(video, "nb");
        String root = scalar(video, "rootSeries");
        // Directly from jt2: the literal string "0" means use nb.
        String rootEpisode = "0".equals(root) ? id : root;
        String normalizedTitle = scalar(jsonObject, "title")
                .replace('\n', ' ')
                .replace(" , ", " ")
                .replace(" ، ", " ");
        return result(Status.SELECTED, new Projection(
                id, normalizedTitle, scalar(video, "season"),
                scalar(video, "episodeNummer"), rootEpisode));
    }

    /** Model the source's distinctBy(rootEpisode) before collection creation. */
    public static List<Projection> distinctCollectionRoots(List<Projection> items) {
        if (items == null) return Collections.emptyList();
        LinkedHashMap<String, Projection> distinct = new LinkedHashMap<>();
        for (Projection item : items) {
            if (item == null || "0".equals(item.rootEpisode)) continue;
            distinct.putIfAbsent(item.rootEpisode, item);
        }
        return Collections.unmodifiableList(new ArrayList<>(distinct.values()));
    }

    /** Exact int parsing semantics for valid decimal identifiers; invalid => 0. */
    public static int toIntOrZero(String text) {
        if (text == null) return 0;
        try {
            return Integer.parseInt(text);
        } catch (NumberFormatException ignored) {
            return 0;
        }
    }

    /**
     * jt2 calls Kotlin split(" "), then CollectionsKt.dropLast(4), then joins
     * with " ". This odd title behavior is retained for diagnosis only.
     */
    public static String legacyCollectionTitle(String normalizedTitle) {
        if (normalizedTitle == null) return "";
        String[] words = normalizedTitle.split(" ", -1);
        int keep = Math.max(0, words.length - 4);
        StringBuilder output = new StringBuilder();
        for (int i = 0; i < keep; i++) {
            if (i > 0) output.append(' ');
            output.append(words[i]);
        }
        return output.toString();
    }
}
