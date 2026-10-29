package com.shabakaty.cinemana.recovery.json;

import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata;
import static com.shabakaty.cinemana.recovery.json.LegacyRoomV2GsonAdapter.*;

public final class LegacyRoomV2GsonAdapterTest {
    private static int checks;

    private static void ok(boolean yes, String message) {
        checks++;
        if (!yes) throw new AssertionError(message);
    }

    private static Inspection parsed(String json,
                                     LegacyRoomV2EpisodeMetadata.Status status) {
        Inspection r = inspect(json);
        ok(r.parseStatus == ParseStatus.PARSED, "parse status: " + json);
        ok(r.metadata != null && r.metadata.status == status, "metadata status: " + json);
        ok(r.selected() == (status == LegacyRoomV2EpisodeMetadata.Status.SELECTED),
                "selection: " + json);
        return r;
    }

    private static void refused(String json, ParseStatus status) {
        Inspection r = inspect(json);
        ok(r.parseStatus == status, "rejection status");
        ok(r.metadata == null && !r.selected(), "no writable projection after rejection");
    }

    public static void main(String[] args) {
        Inspection series = parsed("{\"title\":\"The\\nWitcher , حلقة ، Seven\","
                + "\"videoModel\":{\"kind\":\"2\",\"nb\":\"007\","
                + "\"season\":\"01\",\"episodeNummer\":\"07\",\"rootSeries\":\"42\"}}",
                LegacyRoomV2EpisodeMetadata.Status.SELECTED);
        ok("The Witcher حلقة Seven".equals(series.metadata.projection.title),
                "title normalized without losing Arabic");
        ok("007".equals(series.metadata.projection.id), "leading zeros retained");
        ok("01".equals(series.metadata.projection.season), "season retained");
        ok("07".equals(series.metadata.projection.episodeNumber), "episode retained");
        ok(series.metadata.projection.collectionId == 42, "numeric root read");

        series = parsed("{\"title\":\"عنوان عربي\","
                + "\"videoModel\":{\"kind\":2,\"nb\":88,\"rootSeries\":0}}",
                LegacyRoomV2EpisodeMetadata.Status.SELECTED);
        ok("88".equals(series.metadata.projection.rootEpisode), "numeric zero root fallback");
        ok("عنوان عربي".equals(series.metadata.projection.title), "Unicode retained");

        parsed("{\"videoModel\":{\"kind\":\"1\"}}",
                LegacyRoomV2EpisodeMetadata.Status.IGNORED_NON_SERIES);
        parsed("{\"videoModel\":{\"kind\":true}}",
                LegacyRoomV2EpisodeMetadata.Status.IGNORED_NON_SERIES);
        parsed("{\"videoModel\":{\"kind\":\"2.0\"}}",
                LegacyRoomV2EpisodeMetadata.Status.IGNORED_NON_SERIES);
        parsed("{\"title\":\"Episode\"}",
                LegacyRoomV2EpisodeMetadata.Status.IGNORED_NOT_OBJECT);
        parsed("[]", LegacyRoomV2EpisodeMetadata.Status.IGNORED_NOT_OBJECT);
        parsed("null", LegacyRoomV2EpisodeMetadata.Status.IGNORED_NOT_OBJECT);
        parsed("{\"title\":\"Episode\",\"videoModel\":[]}",
                LegacyRoomV2EpisodeMetadata.Status.IGNORED_NOT_OBJECT);
        parsed("{\"title\":\"Episode\",\"videoModel\":{\"kind\":null}}",
                LegacyRoomV2EpisodeMetadata.Status.REJECTED_SHAPE);
        parsed("{\"title\":null,\"videoModel\":{\"kind\":\"2\"}}",
                LegacyRoomV2EpisodeMetadata.Status.REJECTED_SHAPE);
        parsed("{\"title\":\"Episode\",\"videoModel\":{\"kind\":\"2\",\"nb\":[]}}",
                LegacyRoomV2EpisodeMetadata.Status.REJECTED_SHAPE);
        parsed("{\"title\":\"Episode\",\"videoModel\":{\"kind\":\"2\",\"rootSeries\":{}}}",
                LegacyRoomV2EpisodeMetadata.Status.REJECTED_SHAPE);

        series = parsed("{\"title\":\"A \\\"bracket [ { ]\\\"\","
                + "\"videoModel\":{\"kind\":\"2\",\"nb\":\"3\",\"rootSeries\":\"0\"}}",
                LegacyRoomV2EpisodeMetadata.Status.SELECTED);
        ok("A \"bracket [ { ]\"".equals(series.metadata.projection.title),
                "scanner ignores brackets inside quoted strings");

        series = parsed("{\"title\":\"S\",\"videoModel\":{"
                + "\"kind\":\"2\",\"nb\":\"999\",\"rootSeries\":\"2147483648\"}}",
                LegacyRoomV2EpisodeMetadata.Status.SELECTED);
        ok(series.metadata.projection.collectionId == 0,
                "overflow cannot fabricate collection identity");

        refused(null, ParseStatus.REJECTED_LIMIT);
        refused("", ParseStatus.REJECTED_LIMIT);
        refused(" ".repeat(MAX_SOURCE_CHARS + 1), ParseStatus.REJECTED_LIMIT);
        refused("{".repeat(MAX_NESTING + 1), ParseStatus.REJECTED_LIMIT);
        refused("{\"title\":", ParseStatus.REJECTED_SYNTAX);
        refused("{\"title\":\"Episode\"} garbage", ParseStatus.REJECTED_SYNTAX);
        refused("}{", ParseStatus.REJECTED_SYNTAX);

        series = parsed("{\"title\":\"S\",\"videoModel\":{\"kind\":\"2\"}}",
                LegacyRoomV2EpisodeMetadata.Status.SELECTED);
        ok(series.metadata.projection.id.isEmpty(), "missing nb not invented");
        System.out.println("GSON_JSON_ADAPTER_PASS: " + checks
                + " parser/projection assertions (diagnostic only)");
    }
}
