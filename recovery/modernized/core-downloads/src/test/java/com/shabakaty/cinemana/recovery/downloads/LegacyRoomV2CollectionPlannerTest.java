package com.shabakaty.cinemana.recovery.downloads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2CollectionPlanner.CollectionCandidate;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2CollectionPlanner.Plan;
import com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadata.Projection;

/**
 * Java 17, no Android/Room/SQLite or real user data.
 * The class is intentionally a safer diagnostic than the original jt2 insert.
 */
public final class LegacyRoomV2CollectionPlannerTest {
    private static int checks;
    private static void need(boolean condition, String description) {
        checks++;
        if (!condition) throw new AssertionError(description);
    }

    private static Projection projection(String id, String root, String title) {
        Map<String, Object> inner = new LinkedHashMap<>();
        inner.put("kind", "2");
        inner.put("nb", id);
        inner.put("rootSeries", root);
        inner.put("episodeNummer", "1");
        inner.put("season", "1");
        Map<String, Object> json = new LinkedHashMap<>();
        json.put("videoModel", inner);
        json.put("title", title);
        LegacyRoomV2EpisodeMetadata.Result result = LegacyRoomV2EpisodeMetadata.select(json);
        need(result.selected(), "projection fixture accepted");
        return result.projection;
    }

    public static void main(String[] args) {
        List<Projection> source = Arrays.asList(
                projection("a", "91", "The Witcher Season One Ep 07"), // already copied
                projection("b", "101", "The Witcher Season One Ep 07"),
                projection("c", "101", "Another Episode Season One 07"),
                projection("d", "00101", "Another Episode Season One 07"),
                projection("e", "102", "The Witcher Season Two Ep 07"),
                projection("f", "not-numeric", "Invalid Season One Ep 07"),
                projection("g", "-4", "Invalid Season One Ep 07"),
                projection("h", "2147483648", "Invalid Season One Ep 07"),
                projection("i", "", "Invalid Season One Ep 07"),
                projection("j", "0", "Invalid Season One Ep 07"),
                projection("k", "110", "Short"),
                projection("l", "110", "Real Series Name Season 07"),
                projection("m", "103", "Final Series Name Season 07")
        );
        Set<Integer> originals = new HashSet<>(Collections.singletonList(91));
        Plan result = LegacyRoomV2CollectionPlanner.prepare(source, originals);
        need(result.candidates.size() == 3,
                "insert three safe collections 101 102 103");
        need(result.candidates.get(0).id == 101, "first unoccupied id");
        need(result.candidates.get(1).id == 102, "second unoccupied id");
        need(result.candidates.get(2).id == 103, "skip repeated root after empty-title first episode");
        need("The Witcher".equals(result.candidates.get(0).name),
                "original title split and dropLast(4)");
        need("b".equals(result.candidates.get(0).sourceItemId),
                "source identity preserved for audit");
        need(result.duplicateRoots == 2, "duplicate identical roots 101 and 110 counted");
        need(result.alreadyPresent == 1, "original existing collection id never overwritten");
        need(result.numericCollisions == 1, "distinct root 00101 maps to same int 101");
        need(result.invalidIdentifiers == 5, "invalid numeric roots refused");
        need(result.emptyNames == 1, "nameless collection not staged");
        need(originals.equals(new HashSet<>(Collections.singletonList(91))),
                "existing ID snapshot not modified");
        need(source.size() == 13, "projection inputs not consumed or mutated");

        try {
            result.candidates.add(result.candidates.get(0));
            throw new AssertionError("candidate list must be immutable");
        } catch (UnsupportedOperationException expected) {
            checks++;
        }
        Plan empty = LegacyRoomV2CollectionPlanner.prepare(Collections.emptyList(),
                Collections.emptySet());
        need(empty.candidates.isEmpty(), "empty input yields empty plan");
        need(empty.invalidIdentifiers == 0, "empty plan has no errors");
        try {
            LegacyRoomV2CollectionPlanner.prepare(source, null);
            throw new AssertionError("missing existing collection snapshot must not be allowed");
        } catch (IllegalArgumentException expected) {
            checks++;
        }
        try {
            LegacyRoomV2CollectionPlanner.prepare(Collections.emptyList(), null);
            throw new AssertionError("empty source must not bypass null existing ID snapshot");
        } catch (IllegalArgumentException expected) {
            checks++;
        }

        Plan withNull = LegacyRoomV2CollectionPlanner.prepare(
                Arrays.asList(null, projection("x", "200", "Series Name Season One 03")),
                Collections.emptySet());
        need(withNull.candidates.size() == 1, "null input ignored safely");
        need(withNull.candidates.get(0).id == 200, "next valid candidate preserved");

        System.out.println("ROOM_COLLECTION_PLANNER_PASS: " + checks
                + " source-first distinct root / numeric collision safety assertions");
    }
}
