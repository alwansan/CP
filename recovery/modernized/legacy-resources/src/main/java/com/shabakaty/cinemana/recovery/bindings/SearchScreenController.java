package com.shabakaty.cinemana.recovery.bindings;

import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import com.shabakaty.cinemana.recovery.search.SearchStateMachine;

/**
 * Source-first binding for stable search view IDs and Lifecycle/LiveData.
 *
 * AppCompat SearchView and Material TabLayout from the original application
 * are intentionally accessed through adapter ports: including fresh Maven
 * copies of those libraries alongside decoded APKTool resources creates
 * duplicate resource definitions in the Android Gradle application.
 *
 * Ports can be supplied by the final AppCompat/Material integration module
 * after the original dependency/version boundaries are established.
 */
public final class SearchScreenController implements AutoCloseable {
    public interface QueryListener {
        void changed(String query);
        void submitted(String query);
    }

    public interface QueryPort {
        void install(View searchField, QueryListener listener);
        void uninstall(View searchField);
    }

    public interface Actions {
        void onSearchSubmitted(String query, long requestToken);
        void onFilterPressed();
    }

    private final SearchScreenRefs refs;
    private final SearchLiveDataBridge bridge;
    private final QueryPort inputPort;
    private final Actions actions;
    private final View emptyLabel;
    private final View recentScroll;
    private boolean closed;

    public SearchScreenController(LifecycleOwner owner, View originalSearchRoot,
                                  SearchLiveDataBridge bridge, QueryPort inputPort,
                                  Actions actions) {
        if (owner == null || bridge == null || inputPort == null || actions == null) {
            throw new IllegalArgumentException("LifecycleOwner, bridge, query port and actions required");
        }
        refs = SearchScreenRefs.bind(originalSearchRoot);
        this.bridge = bridge;
        this.inputPort = inputPort;
        this.actions = actions;
        emptyLabel = originalSearchRoot.findViewWithTag("binding_4");
        recentScroll = originalSearchRoot.findViewWithTag("binding_6");

        inputPort.install(refs.searchField, new QueryListener() {
            @Override public void changed(String query) {
                if (!closed) bridge.machine().changed(query);
            }

            @Override public void submitted(String query) {
                if (closed) return;
                bridge.machine().changed(query);
                submitCurrentQuery();
            }
        });
        refs.filterButton.setOnClickListener(v -> {
            if (!closed) actions.onFilterPressed();
        });
        bridge.snapshots().observe(owner, snapshot -> {
            if (!closed) render(snapshot);
        });
    }

    public void tabSelected(int position) {
        if (closed) return;
        int previous = bridge.machine().snapshot().selectedTab;
        bridge.machine().selectTab(position);
        if (bridge.machine().snapshot().selectedTab != previous) {
            // A request token is scoped to the query AND tab. Requery so
            // the new tab never displays results belonging to the old tab.
            submitAfterTabChange();
        }
    }

    public void tabsChanged(int count) {
        if (closed) return;
        int previous = bridge.machine().snapshot().selectedTab;
        bridge.machine().tabs(count);
        if (bridge.machine().snapshot().selectedTab != previous) {
            submitAfterTabChange();
        }
    }

    private void submitAfterTabChange() {
        if (!bridge.machine().snapshot().query.isEmpty()) {
            submitCurrentQuery();
        }
    }

    private void submitCurrentQuery() {
        long token = bridge.machine().submitted();
        if (token > 0) {
            actions.onSearchSubmitted(bridge.machine().snapshot().query, token);
        }
    }

    private void render(SearchStateMachine.Snapshot snapshot) {
        refs.resultsPager.setVisibility(snapshot.showResults() ? View.VISIBLE : View.GONE);
        if (recentScroll != null) {
            recentScroll.setVisibility(snapshot.showRecent() ? View.VISIBLE : View.GONE);
        } else {
            refs.recentSearches.setVisibility(snapshot.showRecent() ? View.VISIBLE : View.GONE);
        }
        if (emptyLabel != null) {
            emptyLabel.setVisibility(snapshot.showEmpty() ? View.VISIBLE : View.GONE);
        }
    }

    @Override public void close() {
        if (closed) return;
        closed = true;
        inputPort.uninstall(refs.searchField);
        refs.filterButton.setOnClickListener(null);
    }
}
