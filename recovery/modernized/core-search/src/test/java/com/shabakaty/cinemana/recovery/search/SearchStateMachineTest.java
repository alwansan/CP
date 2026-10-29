package com.shabakaty.cinemana.recovery.search;

import java.util.ArrayList;
import java.util.List;
import com.shabakaty.cinemana.recovery.search.SearchStateMachine.Mode;
import com.shabakaty.cinemana.recovery.search.SearchStateMachine.Snapshot;

public final class SearchStateMachineTest {
    static int checks;
    static void check(boolean condition, String label) {
        checks++;
        if (!condition) throw new AssertionError(label);
    }
    static void mode(SearchStateMachine machine, Mode desired) {
        check(machine.snapshot().mode == desired, "expected mode " + desired);
    }

    public static void main(String[] args) {
        List<Snapshot> events = new ArrayList<>();
        SearchStateMachine machine = new SearchStateMachine(events::add);
        mode(machine, Mode.RECENT);
        check(machine.snapshot().showRecent(), "recent view visible initially");
        check(events.size() == 1, "initial state emitted");

        long blank = machine.submitted();
        check(blank == 0, "empty search never hits network");
        mode(machine, Mode.RECENT);
        machine.changed("  Attack on Titan  ");
        check("Attack on Titan".equals(machine.snapshot().query), "search query trimmed");
        mode(machine, Mode.EDITING);
        check(!machine.snapshot().showResults(), "editing hides stale results");
        long first = machine.submitted();
        check(first > 0, "new query obtains unique request ID");
        mode(machine, Mode.LOADING);
        check(machine.snapshot().showResults(), "results container visible while loading");

        machine.changed("Dark");
        mode(machine, Mode.EDITING);
        check(!machine.received(first, 55), "old results cannot overwrite new query");
        long second = machine.submitted();
        check(second > first, "request token increases");
        check(!machine.failed(first), "stale request errors are ignored");
        check(machine.received(second, 7), "current results accepted");
        mode(machine, Mode.RESULTS);
        check(machine.snapshot().resultCount == 7, "current result count retained");
        check(!machine.snapshot().showRecent(), "recent panel hidden for current results");
        check(!machine.received(second, 100), "duplicate response ignored after completion");

        machine.changed("Breaking Bad");
        long third = machine.submitted();
        check(machine.received(third, 0), "zero results accepted");
        mode(machine, Mode.EMPTY);
        check(machine.snapshot().showEmpty(), "empty results view visible");
        check(machine.snapshot().resultCount == 0, "empty count is zero");

        machine.changed("The Witcher");
        long fourth = machine.submitted();
        check(machine.failed(fourth), "current network error accepted");
        mode(machine, Mode.EMPTY);
        check(!machine.failed(fourth), "duplicate error ignored");
        check(!machine.received(0L, 8), "invalid request token ignored");
        check(!machine.received(-1L, 8), "negative request token ignored");

        machine.changed("");
        mode(machine, Mode.RECENT);
        check(machine.snapshot().showRecent(), "clear search restores recent panel");
        check(machine.snapshot().resultCount == 0, "clear search resets count");
        check(!machine.received(fourth, 20), "late response ignored after clearing search");

        machine.changed("One Piece");
        long fifth = machine.submitted();
        check(machine.received(fifth, -12), "negative results coerced to empty");
        mode(machine, Mode.EMPTY);

        machine.tabs(3);
        machine.selectTab(2);
        check(machine.snapshot().selectedTab == 2, "second tab selectable");
        machine.selectTab(99);
        check(machine.snapshot().selectedTab == 2, "out-of-range tab ignored");
        machine.tabs(1);
        check(machine.snapshot().selectedTab == 0, "tab clamped when categories shrink");
        machine.selectTab(-1);
        check(machine.snapshot().selectedTab == 0, "negative tab ignored");
        machine.changed("One Piece"); // unchanged query must not publish
        int before = events.size();
        machine.changed(" One Piece ");
        check(events.size() == before, "unchanged trimmed query is idempotent");
        check(machine.snapshot().selectedTab == 0, "tab remains consistent");
        // A response for Movies must not populate Series after a tab switch.
        machine.tabs(2);
        machine.changed("Tab-specific query");
        long movies = machine.submitted();
        machine.selectTab(1);
        mode(machine, Mode.EDITING);
        check(machine.snapshot().selectedTab == 1, "new tab is active");
        check(machine.snapshot().resultCount == 0, "tab change clears old result count");
        check(!machine.received(movies, 40), "response for previous tab rejected");
        long series = machine.submitted();
        check(series > movies, "new tab request obtains a newer token");
        check(machine.received(series, 6), "new tab response accepted");
        mode(machine, Mode.RESULTS);
        check(machine.snapshot().resultCount == 6, "new tab shows only its own results");

        // Tabs may shrink asynchronously when available categories change.
        machine.tabs(1);
        mode(machine, Mode.EDITING);
        check(machine.snapshot().selectedTab == 0, "tab clamp chooses valid tab");
        check(machine.snapshot().resultCount == 0, "tab clamp invalidates old results");
        check(!machine.received(series, 100), "old result rejected after tab clamp");
        long reloaded = machine.submitted();
        check(machine.received(reloaded, 2), "clamped tab accepts fresh response");
        check(machine.snapshot().resultCount == 2, "clamped tab has fresh result count");
        machine.changed("");
        machine.tabs(2);
        machine.selectTab(1);
        mode(machine, Mode.RECENT);
        check(machine.snapshot().resultCount == 0, "blank query remains recent on tab switch");

        System.out.println("PASS: " + checks + " source-first search UI state and stale-request tests");
    }
}
