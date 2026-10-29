package com.shabakaty.cinemana.recovery.bindings;

import android.view.View;
import androidx.appcompat.widget.SearchView;
import androidx.lifecycle.LifecycleOwner;
import com.google.android.material.tabs.TabLayout;
import com.shabakaty.cinemana.recovery.search.SearchStateMachine;

/**
 * Incremental replacement for the event/visibility portion of gk1
 * (FragmentSearchBindingImpl). Reads original stable view IDs and listens to
 * lifecycle-aware snapshots. Real search repository and result list adapters
 * must still be connected before this is used in production.
 */
public final class SearchScreenController implements AutoCloseable {
    public interface Actions {
        void onSearchSubmitted(String query, long requestToken);
        void onFilterPressed();
    }

    private final SearchScreenRefs refs;
    private final SearchLiveDataBridge bridge;
    private final SearchView field;
    private final TabLayout tabLayout;
    private final View emptyLabel;
    private final View recentScroll;
    private final TabLayout.OnTabSelectedListener tabListener;
    private boolean closed;

    public SearchScreenController(LifecycleOwner owner, View originalSearchRoot,
                                  SearchLiveDataBridge bridge, Actions actions) {
        if (owner == null || bridge == null || actions == null) {
            throw new IllegalArgumentException("LifecycleOwner, bridge and actions required");
        }
        this.refs = SearchScreenRefs.bind(originalSearchRoot);
        this.bridge = bridge;
        if (!(refs.searchField instanceof SearchView)
                || !(refs.tabs instanceof TabLayout)) {
            throw new IllegalStateException("Original search XML widget types have changed");
        }
        field = (SearchView) refs.searchField;
        tabLayout = (TabLayout) refs.tabs;
        emptyLabel = originalSearchRoot.findViewWithTag("binding_4");
        recentScroll = originalSearchRoot.findViewWithTag("binding_6");

        field.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
            @Override public boolean onQueryTextSubmit(String query) {
                bridge.machine().changed(query);
                long token = bridge.machine().submitted();
                if (token > 0) actions.onSearchSubmitted(bridge.machine().snapshot().query, token);
                field.clearFocus();
                return true;
            }
            @Override public boolean onQueryTextChange(String query) {
                if (!closed) bridge.machine().changed(query);
                return true;
            }
        });
        refs.filterButton.setOnClickListener(v -> {
            if (!closed) actions.onFilterPressed();
        });
        tabListener = new TabLayout.OnTabSelectedListener() {
            @Override public void onTabSelected(TabLayout.Tab tab) {
                if (!closed) bridge.machine().selectTab(tab.getPosition());
            }
            @Override public void onTabUnselected(TabLayout.Tab tab) {}
            @Override public void onTabReselected(TabLayout.Tab tab) {}
        };
        tabLayout.addOnTabSelectedListener(tabListener);
        bridge.machine().tabs(tabLayout.getTabCount());
        bridge.snapshots().observe(owner, snapshot -> {
            if (!closed) render(snapshot);
        });
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
        if (snapshot.selectedTab < tabLayout.getTabCount()) {
            TabLayout.Tab tab = tabLayout.getTabAt(snapshot.selectedTab);
            if (tab != null && !tab.isSelected()) tab.select();
        }
    }

    @Override public void close() {
        if (closed) return;
        closed = true;
        field.setOnQueryTextListener(null);
        refs.filterButton.setOnClickListener(null);
        tabLayout.removeOnTabSelectedListener(tabListener);
    }
}
