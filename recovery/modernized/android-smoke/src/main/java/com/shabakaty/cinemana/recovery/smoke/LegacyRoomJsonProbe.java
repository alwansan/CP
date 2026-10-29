package com.shabakaty.cinemana.recovery.smoke;

import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata.Projection;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata.Result;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata.Status;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Test only: use Android org.json to decode synthetic DownloadItem.videoFile
 * strings into the isolated, source-first JDK projection.
 *
 * Original jt2 used a relocated Gson-style parser, NOT org.json. This
 * executable adapter demonstrates a working Android integration boundary,
 * but does not claim exact Gson parsing/error equivalence. No user DB opened.
 */
public final class LegacyRoomJsonProbe {
    private LegacyRoomJsonProbe() {}

    private static void need(boolean condition, String message) {
        if (!condition) throw new IllegalStateException("legacy JSON probe: " + message);
    }

    private static Object convert(Object value, int depth) throws JSONException {
        if (depth > 12) throw new JSONException("synthetic JSON nesting limit");
        if (value == null || value == JSONObject.NULL) return null;
        if (value instanceof JSONObject) {
            JSONObject obj = (JSONObject) value;
            Map<String, Object> result = new LinkedHashMap<>();
            java.util.Iterator<String> keys = obj.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                result.put(key, convert(obj.get(key), depth + 1));
            }
            return result;
        }
        if (value instanceof JSONArray) {
            JSONArray array = (JSONArray) value;
            List<Object> result = new ArrayList<>();
            for (int i = 0; i < array.length(); i++) {
                result.add(convert(array.get(i), depth + 1));
            }
            return result;
        }
        return value;
    }

    private static Result inspect(String raw) throws JSONException {
        Object parsed = new JSONObject(raw);
        Object converted = convert(parsed, 0);
        need(converted instanceof Map, "expected decoded JSONObject");
        return LegacyRoomV2EpisodeMetadata.select((Map<?, ?>) converted);
    }

    public static String run() throws Exception {
        int cases = 0;
        Result series = inspect("{\"title\":\"Witcher\\n S01 , E07 ، Episode\","
                + "\"videoModel\":{\"kind\":\"2\",\"nb\":\"17\","
                + "\"rootSeries\":\"91\",\"season\":\"1\",\"episodeNummer\":\"7\"}}");
        need(series.selected(), "series selected");
        need("Witcher  S01 E07 Episode".equals(series.projection.title),
                "title cleaned without collapsing whitespace");
        need("17".equals(series.projection.id)
                && "1".equals(series.projection.season)
                && "7".equals(series.projection.episodeNumber)
                && "91".equals(series.projection.rootEpisode)
                && series.projection.collectionId == 91,
                "parsed series metadata and collection identity");
        cases++;

        Result fallback = inspect("{\"title\":\"Episode\","
                + "\"videoModel\":{\"kind\":2,\"nb\":88,\"rootSeries\":\"0\"}}");
        need(fallback.selected(), "numeric Gson-style scalar kind accepted");
        need("88".equals(fallback.projection.rootEpisode)
                && fallback.projection.collectionId == 88,
                "literal zero root maps to numeric nb");
        cases++;

        Result movie = inspect("{\"title\":\"Movie\","
                + "\"videoModel\":{\"kind\":\"1\",\"nb\":\"44\"}}");
        need(movie.status == Status.IGNORED_NON_SERIES && movie.projection == null,
                "movie metadata skipped");
        cases++;

        Result noModel = inspect("{\"title\":\"Not a series\"}");
        need(noModel.status == Status.IGNORED_NOT_OBJECT, "missing model skipped");
        cases++;

        Result malformedShape = inspect("{\"title\":\"Episode\","
                + "\"videoModel\":{\"kind\":\"2\",\"nb\":[\"not scalar\"]}}");
        need(malformedShape.status == Status.REJECTED_SHAPE
                && malformedShape.projection == null, "array-valued nb refused");
        cases++;

        Result nullTitle = inspect("{\"title\":null,"
                + "\"videoModel\":{\"kind\":\"2\",\"nb\":\"17\"}}");
        need(nullTitle.status == Status.REJECTED_SHAPE,
                "explicit JSON null title refused safely");
        cases++;

        Projection a = series.projection;
        Projection b = inspect("{\"title\":\"Other\","
                + "\"videoModel\":{\"kind\":\"2\",\"nb\":\"18\","
                + "\"rootSeries\":\"91\"}}").projection;
        Projection c = inspect("{\"title\":\"Third\","
                + "\"videoModel\":{\"kind\":\"2\",\"nb\":\"19\","
                + "\"rootSeries\":\"99\"}}").projection;
        List<Projection> roots = LegacyRoomV2EpisodeMetadata.distinctCollectionRoots(
                java.util.Arrays.asList(a, b, c));
        need(roots.size() == 2 && roots.get(0) == a && roots.get(1) == c,
                "duplicate series root grouped once in encounter order");
        cases++;

        try {
            inspect("{\"title\":");
            throw new IllegalStateException("malformed JSON unexpectedly accepted");
        } catch (JSONException expected) {
            // Diagnostic adapter must refuse truncated input, never write data.
        }
        cases++;

        return "PASS (" + cases + " Android JSON fixture scenarios)";
    }
}
