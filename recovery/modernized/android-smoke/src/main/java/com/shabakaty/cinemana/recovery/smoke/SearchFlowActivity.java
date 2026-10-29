package com.shabakaty.cinemana.recovery.smoke;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SearchView;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.recovery.bindings.SearchLiveDataBridge;
import com.shabakaty.cinemana.recovery.bindings.SearchScreenController;

/**
 * Android-only interactive fixture for the source-first search state machine,
 * Lifecycle/LiveData events and stable IDs reconstructed from fragment_search.
 *
 * The original app uses AppCompat SearchView and Material TabLayout, so those
 * can be restored later with their own QueryPort adapters. This diagnostic
 * intentionally does not bundle duplicate vendor resources or call any API.
 */
public final class SearchFlowActivity extends ComponentActivity {
    private SearchScreenController binding;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        final SearchLiveDataBridge search = new SearchLiveDataBridge();

        FrameLayout root = new FrameLayout(this);
        root.setId(R.id.search_root_coordinator);
        ScrollView scroller = new ScrollView(this);
        root.addView(scroller);
        LinearLayout column = new LinearLayout(this);
        column.setOrientation(LinearLayout.VERTICAL);
        column.setPadding(24, 24, 24, 24);
        scroller.addView(column);

        column.addView(label("Search migration diagnostic (local fixtures)"));
        LinearLayout appBar = new LinearLayout(this);
        appBar.setOrientation(LinearLayout.VERTICAL);
        appBar.setId(R.id.search_app_bar_layout);
        column.addView(appBar);

        SearchView input = new SearchView(this);
        input.setId(R.id.searchView);
        input.setIconified(false);
        input.setQueryHint("Search fixtures");
        appBar.addView(input);

        Button tabs = new Button(this);
        tabs.setText("Select Series tab");
        tabs.setId(R.id.tabLayout);
        appBar.addView(tabs);

        Button filter = new Button(this);
        filter.setId(R.id.search_adv_filter);
        filter.setText("Filter fixture");
        column.addView(filter);

        View searchIcon = new View(this);
        searchIcon.setId(R.id.imageView5);
        searchIcon.setVisibility(View.GONE);
        column.addView(searchIcon, new LinearLayout.LayoutParams(1, 1));

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
        final TextView requestsEvent = label("Search requests: 0 | lastTab=-1");
        column.addView(requestsEvent);
        final int[] filters = {0};
        final int[] requests = {0};
        setContentView(root);

        binding = new SearchScreenController(this, root, search,
                new SearchScreenController.QueryPort() {
                    @Override public void install(View field, SearchScreenController.QueryListener listener) {
                        SearchView searchWidget = (SearchView) field;
                        searchWidget.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
                            @Override public boolean onQueryTextSubmit(String query) {
                                listener.submitted(query);
                                searchWidget.clearFocus();
                                return true;
                            }

                            @Override public boolean onQueryTextChange(String query) {
                                listener.changed(query);
                                return true;
                            }
                        });
                    }

                    @Override public void uninstall(View field) {
                        ((SearchView) field).setOnQueryTextListener(null);
                    }
                }, new SearchScreenController.Actions() {
                    @Override public void onSearchSubmitted(String query, long token) {
                        // Local fixture only: no real account, DB or Cinemana API.
                        requests[0]++;
                        requestsEvent.setText("Search requests: " + requests[0]
                                + " | lastTab=" + search.machine().snapshot().selectedTab);
                        search.machine().received(token, 3);
                    }

                    @Override public void onFilterPressed() {
                        filters[0]++;
                        filterEvent.setText("Filter events: " + filters[0]);
                    }
                });

        search.machine().tabs(2);
        tabs.setOnClickListener(v -> binding.tabSelected(1));
        search.snapshots().observe(this, snap ->
                status.setText("Search state: " + snap.mode
                        + " | tab=" + snap.selectedTab + " | count=" + snap.resultCount));

        submit.setOnClickListener(v -> input.setQuery("One Piece", true));
        clear.setOnClickListener(v -> input.setQuery("", false));
    }

    private TextView label(String value) {
        TextView text = new TextView(this);
        text.setText(value);
        text.setPadding(8, 10, 8, 10);
        return text;
    }

    @Override protected void onDestroy() {
        if (binding != null) binding.close();
        super.onDestroy();
    }
}
