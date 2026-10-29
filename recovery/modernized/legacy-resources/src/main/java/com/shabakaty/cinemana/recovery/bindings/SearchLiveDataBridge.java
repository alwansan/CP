package com.shabakaty.cinemana.recovery.bindings;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.shabakaty.cinemana.recovery.search.SearchStateMachine;

/**
 * Main-thread UI-facing lifecycle data adapter for the source-first search
 * state machine. This is an incremental migration, not a replacement for
 * the original search repository, search network source, or generated gk1.
 */
public final class SearchLiveDataBridge {
    private final MutableLiveData<SearchStateMachine.Snapshot> snapshots = new MutableLiveData<>();
    private final SearchStateMachine machine = new SearchStateMachine(snapshots::setValue);

    public LiveData<SearchStateMachine.Snapshot> snapshots() {
        return snapshots;
    }

    public SearchStateMachine machine() {
        return machine;
    }
}
