package com.shabakaty.downloader;

import android.view.LayoutInflater;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.home_fragment.GroupsView;

/* JADX INFO: compiled from: GroupsView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class cr1 extends af2 implements rm1<dr1> {
    public final /* synthetic */ GroupsView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cr1(GroupsView groupsView) {
        super(0);
        this.r = groupsView;
    }

    @Override // com.shabakaty.downloader.rm1
    public dr1 invoke() {
        GroupsView groupsView = this.r;
        int i = GroupsView.N;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(groupsView.getContext());
        j32.d(layoutInflaterFrom, "from(context)");
        return (dr1) vd5.m(layoutInflaterFrom, R.layout.groups_view, groupsView, true);
    }
}
