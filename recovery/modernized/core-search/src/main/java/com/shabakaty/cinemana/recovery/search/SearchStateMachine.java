package com.shabakaty.cinemana.recovery.search;

/**
 * Source-first UI state for the recovered fragment_search layout.
 * The old generated gk1 binding was a mixture of LiveData states, dirty bits,
 * and postponed requests. This isolates explicit user intents and prevents
 * old responses from replacing newer search results.
 *
 * Not a replacement for the Cinemana search repository or its ViewModel.
 */
public final class SearchStateMachine {
    public enum Mode { RECENT, EDITING, LOADING, RESULTS, EMPTY }

    public interface Listener {
        void onStateChanged(Snapshot snapshot);
    }

    public static final class Snapshot {
        public final String query;
        public final Mode mode;
        public final int resultCount;
        public final int selectedTab;
        public final long requestToken;

        private Snapshot(String query, Mode mode, int resultCount,
                         int selectedTab, long token) {
            this.query = query;
            this.mode = mode;
            this.resultCount = resultCount;
            this.selectedTab = selectedTab;
            this.requestToken = token;
        }
        public boolean showRecent() {return mode == Mode.RECENT;}
        public boolean showResults() {return mode == Mode.LOADING || mode == Mode.RESULTS;}
        public boolean showEmpty() {return mode == Mode.EMPTY;}
    }

    private final Listener listener;
    private String query = "";
    private Mode mode = Mode.RECENT;
    private int resultCount;
    private int selectedTab;
    private int availableTabs = 1;
    private long nextToken;
    private long activeToken;

    public SearchStateMachine(Listener listener) {
        if (listener == null) throw new IllegalArgumentException("Listener required");
        this.listener = listener;
        publish();
    }

    public Snapshot snapshot() {
        return new Snapshot(query, mode, resultCount, selectedTab, activeToken);
    }

    public void changed(String raw) {
        String newQuery = raw == null ? "" : raw.trim();
        if (query.equals(newQuery)) return;
        query = newQuery;
        resultCount = 0;
        // Invalidate any in-flight request. An old callback must not display
        // results for a query the user has already edited or cleared.
        activeToken = ++nextToken;
        mode = query.isEmpty() ? Mode.RECENT : Mode.EDITING;
        publish();
    }

    /** Returns zero when blank input must not start any remote request. */
    public long submitted() {
        if (query.isEmpty()) {
            mode = Mode.RECENT;
            resultCount = 0;
            activeToken = ++nextToken;
            publish();
            return 0L;
        }
        activeToken = ++nextToken;
        resultCount = 0;
        mode = Mode.LOADING;
        publish();
        return activeToken;
    }

    public boolean received(long token, int count) {
        if (token <= 0 || token != activeToken || mode != Mode.LOADING) {
            return false;
        }
        resultCount = Math.max(0, count);
        mode = resultCount == 0 ? Mode.EMPTY : Mode.RESULTS;
        publish();
        return true;
    }

    public boolean failed(long token) {
        if (token <= 0 || token != activeToken || mode != Mode.LOADING) {
            return false;
        }
        resultCount = 0;
        mode = Mode.EMPTY;
        publish();
        return true;
    }

    public void tabs(int count) {
        availableTabs = Math.max(1, count);
        selectedTab = Math.min(selectedTab, availableTabs - 1);
        publish();
    }

    public void selectTab(int tab) {
        if (tab < 0 || tab >= availableTabs || selectedTab == tab) return;
        selectedTab = tab;
        publish();
    }

    private void publish() { listener.onStateChanged(snapshot()); }
}
