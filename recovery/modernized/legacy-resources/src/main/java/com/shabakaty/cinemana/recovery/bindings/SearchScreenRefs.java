package com.shabakaty.cinemana.recovery.bindings;

import android.view.View;
import com.cinemana.pro.R;

/**
 * Source-first, non-generated view reference contract for the original
 * fragment_search.xml. The field mapping is cross-checked against the
 * original gk1 (FragmentSearchBindingImpl) constructor.
 *
 * This binds only stable view IDs and deliberately does NOT implement
 * LiveData, XML expression evaluation or full Android Data Binding.
 */
public final class SearchScreenRefs {
    public final View rootCoordinator;  // gk1 constructor: objArrS[0]
    public final View searchField;      // objArrS[1]
    public final View tabs;             // objArrS[2]
    public final View filterButton;     // objArrS[3]
    public final View resultsPager;     // objArrS[5]
    public final View recentSearches;   // objArrS[7]
    public final View appBar;           // objArrS[9]
    public final View searchIcon;       // objArrS[10]

    private SearchScreenRefs(View root) {
        rootCoordinator = required(root, R.id.search_root_coordinator, "search_root_coordinator");
        searchField = required(root, R.id.searchView, "searchView");
        tabs = required(root, R.id.tabLayout, "tabLayout");
        filterButton = required(root, R.id.search_adv_filter, "search_adv_filter");
        resultsPager = required(root, R.id.search_view_pager, "search_view_pager");
        recentSearches = required(root, R.id.search_recent_searches, "search_recent_searches");
        appBar = required(root, R.id.search_app_bar_layout, "search_app_bar_layout");
        searchIcon = required(root, R.id.imageView5, "imageView5");
    }

    public static SearchScreenRefs bind(View originalSearchRoot) {
        if (originalSearchRoot == null) {
            throw new IllegalArgumentException("Search layout root is null");
        }
        return new SearchScreenRefs(originalSearchRoot);
    }

    private static View required(View root, int id, String name) {
        View found = root.findViewById(id);
        if (found == null) {
            throw new IllegalStateException("Missing original Cinemana search view: " + name);
        }
        return found;
    }
}
