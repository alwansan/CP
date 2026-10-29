package com.shabakaty.cinemana.recovery.downloads;

import java.util.LinkedHashMap;
import java.util.Map;
import static com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2RowWriteGuard.*;

/** Pure JDK tests: no Android, Room, user files, or database writes. */
public final class LegacyRoomV2RowWriteGuardTest {
    private static int assertions;

    private static void expect(Reason reason, Row src,
                               LegacyRoomV2EpisodeMetadata.Result projection,
                               Target target) {
        assertions++;
        Reason actual = inspect(src, projection, target);
        if (actual != reason)
            throw new AssertionError("expected " + reason + " but was " + actual);
    }

    private static LegacyRoomV2EpisodeMetadata.Result projection(String id, String kind) {
        Map<String, Object> video = new LinkedHashMap<>();
        video.put("kind", kind);
        video.put("nb", id);
        video.put("rootSeries", "17");
        video.put("season", "1");
        video.put("episodeNummer", "4");
        Map<String, Object> json = new LinkedHashMap<>();
        json.put("title", "Season 1 Episode 4");
        json.put("videoModel", video);
        return LegacyRoomV2EpisodeMetadata.select(json);
    }

    public static void main(String[] args) {
        Row src = new Row("episode-17", 17, true);
        Target copied = new Target("episode-17", 17);
        LegacyRoomV2EpisodeMetadata.Result selected = projection("episode-17", "2");
        expect(Reason.READY, src, selected, copied);
        expect(Reason.SOURCE_MISSING, null, selected, copied);
        expect(Reason.INVALID_SOURCE_IDENTITY, new Row(null, 17, true), selected, copied);
        expect(Reason.INVALID_SOURCE_IDENTITY, new Row("", 17, true), selected, copied);
        expect(Reason.INVALID_SOURCE_IDENTITY, new Row("episode-17", 0, true), selected, copied);
        expect(Reason.INVALID_SOURCE_IDENTITY, new Row("episode-17", -1, true), selected, copied);
        expect(Reason.SOURCE_NOT_COPIED, new Row("episode-17", 17, false), selected, copied);
        expect(Reason.PROJECTION_NOT_SELECTED, src, null, copied);
        expect(Reason.PROJECTION_NOT_SELECTED, src, projection("episode-17", "1"), copied);
        expect(Reason.JSON_ID_MISMATCH, src, projection("other", "2"), copied);
        expect(Reason.JSON_ID_MISMATCH, src, projection("", "2"), copied);
        expect(Reason.JSON_ID_MISMATCH, src,
                projection("episode-17' OR 1=1--", "2"), copied);
        expect(Reason.TARGET_ROW_MISSING, src, selected, null);
        expect(Reason.TARGET_ID_MISMATCH, src, selected, new Target("other", 17));
        expect(Reason.TARGET_TASK_MISMATCH, src, selected, new Target("episode-17", 18));
        expect(Reason.READY, new Row("episode-'17", 17, true),
                projection("episode-'17", "2"), new Target("episode-'17", 17));
        // Guard never changes caller's projection or keys.
        if (!"episode-17".equals(src.id) || !"episode-17".equals(selected.projection.id))
            throw new AssertionError("nonmutating identity inspection changed objects");
        assertions++;
        System.out.println("ROOM_V2_ROW_GUARD_PASS: " + assertions
                + " source/JSON/copied-row identity cases");
    }
}
