package com.shabakaty.cinemana.recovery.downloads;

import static com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** No Android, Gson, original SQLite databases or user files. */
public final class LegacyRoomV2EpisodeMetadataTest {
    private static int checks;

    private static void ok(boolean yes, String message) {
        checks++;
        if (!yes) throw new AssertionError(message);
    }

    private static Map<String, Object> video(Object kind, Object id,
                                              Object season, Object episode, Object root) {
        Map<String, Object> inner = new LinkedHashMap<>();
        inner.put("kind", kind);
        inner.put("nb", id);
        inner.put("season", season);
        inner.put("episodeNummer", episode);
        inner.put("rootSeries", root);
        return inner;
    }

    private static Map<String, Object> doc(Object title, Object model) {
        Map<String, Object> outer = new LinkedHashMap<>();
        outer.put("title", title);
        outer.put("videoModel", model);
        return outer;
    }

    private static void status(Status expected, Map<?, ?> value) {
        Result result = select(value);
        ok(result.status == expected,
                "expected " + expected + " got " + result.status);
        ok(result.selected() == (expected == Status.SELECTED),
                "only selected metadata exposes projection");
        ok((result.projection != null) == (expected == Status.SELECTED),
                "no projection on skipped or malformed JSON shape");
    }

    public static void main(String[] args) {
        status(Status.IGNORED_NOT_OBJECT, null);
        status(Status.IGNORED_NOT_OBJECT, Collections.emptyMap());
        status(Status.IGNORED_NOT_OBJECT, doc("Episode", "not-an-object"));
        status(Status.IGNORED_NOT_OBJECT, doc("Episode", Arrays.asList("kind", "2")));
        status(Status.IGNORED_NON_SERIES, doc("Episode",
                video("1", "nb-17", "2", "6", "25")));
        status(Status.IGNORED_NON_SERIES, doc("Episode",
                video("02", "nb-17", "2", "6", "25")));
        status(Status.IGNORED_NON_SERIES, doc("Episode",
                video(false, "nb-17", "2", "6", "25")));

        Map<String, Object> absentKind = new LinkedHashMap<>();
        absentKind.put("nb", "17");
        status(Status.IGNORED_NON_SERIES, doc("Episode", absentKind));
        status(Status.REJECTED_SHAPE, doc("Episode",
                video(Arrays.asList("2"), "17", "2", "6", "25")));
        status(Status.REJECTED_SHAPE, doc("Episode",
                video("2", Arrays.asList("17"), "2", "6", "25")));
        status(Status.REJECTED_SHAPE, doc("Episode",
                video("2", "17", Map.of("value", "2"), "6", "25")));
        status(Status.REJECTED_SHAPE, doc(null,
                video("2", "17", "2", "6", "25")));

        Result mapped = select(doc("The\nWitcher , Episode ، 7",
                video("2", "episode-17", "01", "07", "42")));
        ok(mapped.selected(), "valid kind=2 selected");
        ok("episode-17".equals(mapped.projection.id), "read videoModel.nb");
        ok("01".equals(mapped.projection.season), "read videoModel.season");
        ok("07".equals(mapped.projection.episodeNumber),
                "read episodeNummer misspelling from original");
        ok("42".equals(mapped.projection.rootEpisode), "non-zero rootSeries retained");
        ok(mapped.projection.collectionId == 42, "valid numeric root mapped to ID");
        ok("The Witcher Episode 7".equals(mapped.projection.title),
                "original newline and Arabic/English comma normalization");

        mapped = select(doc("S01 E03", video("2", "100", "1", "3", "0")));
        ok(mapped.selected(), "series with rootSeries literal zero selected");
        ok("100".equals(mapped.projection.rootEpisode), "rootSeries=0 falls back to nb");
        ok(mapped.projection.collectionId == 100, "fallback root parsed to int");
        mapped = select(doc("S01 E03", video(2, "111", "1", "3", 0)));
        ok(mapped.selected(), "numeric Gson scalar kind=2 accepted");
        ok("111".equals(mapped.projection.rootEpisode),
                "numeric primitive rootSeries 0 equals textual zero");
        mapped = select(doc("S01 E03", video("2", "nb-not-numeric", "1", "3", "0")));
        ok(mapped.projection.collectionId == 0,
                "non-numeric nb cannot become an invented numeric collection");
        mapped = select(doc("S01 E03", video("2", "11", "1", "3", "-4")));
        ok(mapped.projection.collectionId == -4,
                "original Kotlin toIntOrNull accepts signed numbers");
        mapped = select(doc("S01 E03", video("2", "11", "1", "3", "2147483648")));
        ok(mapped.projection.collectionId == 0, "int overflow returns zero");
        mapped = select(doc("S01 E03", video("2", "11", "1", "3", "")));
        ok("".equals(mapped.projection.rootEpisode),
                "missing/empty root remains empty (not nb)");
        ok(mapped.projection.collectionId == 0, "empty root ID falls back to zero");

        Map<String, Object> bareModel = new LinkedHashMap<>();
        bareModel.put("kind", "2");
        mapped = select(doc("Series", bareModel));
        ok(mapped.selected(), "missing optional series fields accepted like source");
        ok("".equals(mapped.projection.id), "missing nb becomes empty string");
        ok("".equals(mapped.projection.season), "missing season becomes empty string");
        ok("".equals(mapped.projection.episodeNumber),
                "missing episodeNummer becomes empty string");
        ok("".equals(mapped.projection.rootEpisode), "missing rootSeries stays empty");

        ok("Game Of Thrones".equals(
                legacyCollectionTitle("Game Of Thrones Season One Episode 7")),
                "dropLast(4), rather than first-four words");
        ok("".equals(legacyCollectionTitle("One Two Three Four")),
                "dropLast(4) yields empty for exactly four words");
        ok("".equals(legacyCollectionTitle("Short")),
                "dropLast(4) yields empty for short titles");
        ok("".equals(legacyCollectionTitle("")),
                "empty title yields empty collection title");
        ok("A ".equals(legacyCollectionTitle("A  B C D E")),
                "Kotlin space tokenization preserves repeated separators");

        Projection first = select(doc("Show One Part One 1 2",
                video("2", "11", "1", "1", "900"))).projection;
        Projection sameRoot = select(doc("Show One Part Two 1 2",
                video("2", "12", "1", "2", "900"))).projection;
        Projection nextRoot = select(doc("Show Two Part Two 1 2",
                video("2", "13", "1", "1", "901"))).projection;
        Projection ignoredRoot = select(doc("Show Three Part Two 1 2",
                video("2", "0", "1", "3", "0"))).projection;
        List<Projection> roots = distinctCollectionRoots(Arrays.asList(
                first, sameRoot, nextRoot, ignoredRoot, null));
        ok(roots.size() == 2, "distinct rootEpisodes retained in encounter order");
        ok(roots.get(0) == first && roots.get(1) == nextRoot,
                "first episode wins each root group");
        try {
            roots.add(first);
            throw new AssertionError("roots must be immutable");
        } catch (UnsupportedOperationException expected) {
            checks++;
        }
        ok(distinctCollectionRoots(null).isEmpty(), "null input yields no roots");
        ok(distinctCollectionRoots(Collections.emptyList()).isEmpty(),
                "empty input yields no roots");
        ok(toIntOrZero(null) == 0, "null number => zero");
        ok(toIntOrZero(" 12") == 0, "whitespace not silently trimmed");
        ok(toIntOrZero("+12") == 12, "signed positive decimal accepted");

        // input maps are read-only to the projection, even on rejected cases.
        Map<String, Object> originalVideo = video("2", "44", "1", "5", "0");
        Map<String, Object> originalDoc = doc("A\nB", originalVideo);
        int videoSize = originalVideo.size();
        int docSize = originalDoc.size();
        mapped = select(originalDoc);
        ok(originalVideo.size() == videoSize && originalDoc.size() == docSize,
                "mapping never edits input object graph");
        ok("A\nB".equals(originalDoc.get("title")),
                "original title unchanged");
        ok("A B".equals(mapped.projection.title), "only projected title normalized");

        System.out.println("PASS: " + checks
                + " legacy Room v2->v3 series JSON projection / collection checks");
    }
}
