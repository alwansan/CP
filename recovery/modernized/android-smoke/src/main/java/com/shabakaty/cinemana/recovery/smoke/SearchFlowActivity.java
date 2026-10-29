package com.shabakaty.cinemana.recovery.smoke;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.appcompat.widget.SearchView;
import com.cinemana.pro.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.tabs.TabLayout;
import com.shabakaty.cinemana.recovery.bindings.SearchLiveDataBridge;
import com.shabakaty.cinemana.recovery.bindings.SearchScreenController;
import com.shabakaty.cinemana.recovery.search.SearchStateMachine;

/**
 * Diagnostic-only interactive search screen. Exercises actual AndroidX
 * SearchView, Material tabs, Lifecycle/LiveData, and the source-first binding
 * against a view hierarchy using the IDs from fragment_search.xml.
 *
 * This uses local fixture results, NOT Cinemana servers, user accounts,
 * or the original gk1 FragmentSearchBindingImpl.
 */
public final class SearchFlowActivity extends ComponentActivity {
    private SearchScreenController binding;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        final SearchLiveDataBridge search = new SearchLiveDataBridge();

        FrameLayout root = new FrameLayout(this);
        root.setId(R.id.search_root_coordinator);
        LinearLayout column = new LinearLayout(this);
        column.setOrientation(LinearLayout.VERTICAL);
        column.setPadding(24,24,24,24);
        ScrollView scroll = new ScrollView(this);
        root.addView(scroll);
        scroll.addView(column);

        TextView header = label("Search migration diagnostic (local fixtures)");
        column.addView(header);
        AppBarLayout appBar = new AppBarLayout(this);
        appBar.setId(R.id.search_app_bar_layout);
        column.addView(appBar);

        SearchView input = new SearchView(this);
        input.setId(R.id.searchView);
        input.setIconified(false);
        input.setQueryHint("Search fixtures");
        appBar.addView(input);

        TabLayout tabs = new TabLayout(this);
        tabs.setId(R.id.tabLayout);
        tabs.addTab(tabs.newTab().setText("All"));
        tabs.addTab(tabs.newTab().setText("Series"));
        appBar.addView(tabs);

        Button filter = new Button(this);
        filter.setId(R.id.search_adv_filter);
        filter.setText("Filter fixture");
        column.addView(filter);

        View searchIcon = new View(this);
        searchIcon.setId(R.id.imageView5);
        searchIcon.setVisibility(View.GONE);
        column.addView(searchIcon, new LinearLayout.LayoutParams(1,1));

        TextView recent = label("Recent searches (fixture panel)");
        recent.setId(R.id.search_recent_searches);
        column.addView(recent);

        TextView recentContainer = label("Recent container (fixture)");
        recentContainer.setTag("binding_6");
        column.addView(recentContainer);

        TextView empty = label("No search results (fixture)");
        empty.setTag("binding_4");
        column.addView(empty);

        TextView results = label("Result pager (fixture)");
        results.setId(R.id.search_view_pager);
        column.addView(results);

        TextView status = label("Search state: RECENT");
        column.addView(status);

        Button submit = new Button(this);
        submit.setText("Submit sample search");
        column.addView(submit);

        Button clear = new Button(this);
        clear.setText("Clear sample search");
        column.addView(clear);

        final TextView filterEvent = label("Filter events: 0");
        column.addView(filterEvent);
        final int[] filters = {0};
        setContentView(root);

        binding = new SearchScreenController(this, root, search, new SearchScreenController.Actions() {
            @Override public void onSearchSubmitted(String query, long token) {
                // Local fixture only; no network or real Cinemana data touched.
                search.machine().received(token, 3);
            }

            @Override public void onFilterPressed() {
                filters[0]++;
                filterEvent.setText("Filter events: " + filters[0]);
            }
        });

        search.snapshots().observe(this, snap ->
                status.setText("Search state: " + snap.mode
                    + " | tab=" + snap.selectedTab + " | count=" + snap.resultCount));

        submit.setOnClickListener(v -> input.setQuery("One Piece", true));
        clear.setOnClickListener(v -> input.setQuery("", false));
    }

    private TextView label(String text) {
        TextView v = new TextView(this);
        v.setText(text);
        v.setPadding(8, 12, 8, 12);
        return v;
    }

    @Override protected void onDestroy() {
        if (binding != null) binding.close();
        super.onDestroy();
    }
}
