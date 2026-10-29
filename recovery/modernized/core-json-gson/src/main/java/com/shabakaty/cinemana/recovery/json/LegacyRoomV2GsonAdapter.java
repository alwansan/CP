package com.shabakaty.cinemana.recovery.json;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Diagnostic-only adapter for jt2's relocated Gson-style videoFile parser.
 * It neither opens user databases nor authorizes Room migration writes.
 * The original parser's exact version/leniency is still unknown; this is
 * intentionally not a production-equivalent replacement for jt2.
 */
public final class LegacyRoomV2GsonAdapter {
    private LegacyRoomV2GsonAdapter() {}

    public static final int MAX_SOURCE_CHARS = 262144;
    public static final int MAX_NESTING = 48;

    public enum ParseStatus { PARSED, REJECTED_SYNTAX, REJECTED_LIMIT }

    public static final class Inspection {
        public final ParseStatus parseStatus;
        public final LegacyRoomV2EpisodeMetadata.Result metadata;

        private Inspection(ParseStatus parseStatus,
                           LegacyRoomV2EpisodeMetadata.Result metadata) {
            this.parseStatus = parseStatus;
            this.metadata = metadata;
        }

        /** Selection is diagnostic evidence, not a database write permit. */
        public boolean selected() {
            return parseStatus == ParseStatus.PARSED
                    && metadata != null && metadata.selected();
        }
    }

    private static Inspection reject(ParseStatus status) {
        return new Inspection(status, null);
    }

    /**
     * Reject oversized/deep input before allocating a Gson tree.
     * Delimiters inside strings (including escaped quotes) are ignored;
     * Gson remains responsible for checking full JSON syntax.
     */
    private static boolean withinLimits(String raw) {
        if (raw == null || raw.isEmpty() || raw.length() > MAX_SOURCE_CHARS) return false;
        int depth = 0;
        boolean quoted = false, escaped = false;
        for (int i = 0; i < raw.length(); i++) {
            char c = raw.charAt(i);
            if (quoted) {
                if (escaped) escaped = false;
                else if (c == '\\') escaped = true;
                else if (c == '"') quoted = false;
            } else if (c == '"') {
                quoted = true;
            } else if (c == '{' || c == '[') {
                if (++depth > MAX_NESTING) return false;
            } else if (c == '}' || c == ']') {
                if (--depth < 0) return true; // Delegate malformed structure to Gson.
            }
        }
        return true;
    }

    /** Preserve Gson JsonPrimitive.getAsString() numeric/boolean spelling. */
    private static Object scalar(JsonElement element) {
        if (element == null || element.isJsonNull()) return null;
        if (element.isJsonPrimitive()) return element.getAsString();
        return new Object(); // Deliberate fail-closed array/object marker.
    }

    private static void copyScalar(JsonObject source, Map<String, Object> target,
                                   String key) {
        if (source.has(key)) target.put(key, scalar(source.get(key)));
    }

    public static Inspection inspect(String raw) {
        if (!withinLimits(raw)) return reject(ParseStatus.REJECTED_LIMIT);
        final JsonElement parsed;
        try {
            parsed = JsonParser.parseString(raw);
        } catch (JsonParseException | IllegalStateException exception) {
            return reject(ParseStatus.REJECTED_SYNTAX);
        }
        if (!parsed.isJsonObject()) {
            return new Inspection(ParseStatus.PARSED,
                    LegacyRoomV2EpisodeMetadata.select(null));
        }
        JsonObject json = parsed.getAsJsonObject();
        Map<String, Object> fields = new LinkedHashMap<>();
        copyScalar(json, fields, "title");
        JsonElement model = json.get("videoModel");
        if (model != null && model.isJsonObject()) {
            JsonObject video = model.getAsJsonObject();
            Map<String, Object> videoFields = new LinkedHashMap<>();
            for (String key : new String[] {
                    "kind", "nb", "episodeNummer", "season", "rootSeries"
            }) copyScalar(video, videoFields, key);
            fields.put("videoModel", videoFields);
        } else if (json.has("videoModel")) {
            fields.put("videoModel", new Object());
        }
        return new Inspection(ParseStatus.PARSED,
                LegacyRoomV2EpisodeMetadata.select(fields));
    }
}
