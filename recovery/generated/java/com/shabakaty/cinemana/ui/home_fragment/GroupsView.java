package com.shabakaty.cinemana.ui.home_fragment;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.home_page.VideosGroup;
import com.shabakaty.downloader.br1;
import com.shabakaty.downloader.cr1;
import com.shabakaty.downloader.dr1;
import com.shabakaty.downloader.fo3;
import com.shabakaty.downloader.ig4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.s45;
import com.shabakaty.downloader.z25;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: GroupsView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001d\u0010\u0013\u001a\u00020\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/shabakaty/downloader/z25;", "listener", "Lcom/shabakaty/downloader/qv4;", "setGroupsListener", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;", "K", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;", "getGroups", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;", "setGroups", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;)V", "groups", "Lcom/shabakaty/downloader/dr1;", "binding$delegate", "Lcom/shabakaty/downloader/kf2;", "getBinding", "()Lcom/shabakaty/downloader/dr1;", "binding", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class GroupsView extends ConstraintLayout implements z25 {
    public static final /* synthetic */ int N = 0;
    public final kf2 J;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    public HomeItem.BottomGroups groups;
    public z25 L;
    public int M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GroupsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        this.J = ng2.a(new cr1(this));
        this.M = 5;
        getBinding().N.setAdapter(new br1(this));
        getBinding().O.setOnClickListener(new ig4(this, context));
    }

    private final dr1 getBinding() {
        return (dr1) this.J.getValue();
    }

    public static void t(GroupsView groupsView, Context context, View view) {
        j32.e(groupsView, "this$0");
        j32.e(context, "$context");
        int i = 5;
        if (groupsView.M == 5) {
            groupsView.getBinding().O.setText(context.getString(R.string.see_less));
            i = 0;
        } else {
            groupsView.getBinding().O.setText(context.getString(R.string.see_all));
        }
        groupsView.M = i;
        groupsView.u();
    }

    @Override // com.shabakaty.downloader.z25
    public void M0(VideosGroup videosGroup) {
        j32.e(videosGroup, "group");
        z25 z25Var = this.L;
        if (z25Var == null) {
            return;
        }
        z25Var.M0(videosGroup);
    }

    public final HomeItem.BottomGroups getGroups() {
        return this.groups;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.L = null;
    }

    public final void setGroups(HomeItem.BottomGroups bottomGroups) {
        this.groups = bottomGroups;
    }

    public final void setGroupsListener(z25 z25Var) {
        j32.e(z25Var, "listener");
        this.L = z25Var;
    }

    public final void u() {
        List<VideosGroup> list;
        HomeItem.BottomGroups bottomGroups = this.groups;
        if (!((bottomGroups == null || (list = bottomGroups.groups) == null || list.isEmpty()) ? false : true)) {
            s45.j(this);
            return;
        }
        s45.l(this);
        RecyclerView recyclerView = getBinding().N;
        j32.d(recyclerView, "binding.homePageGroupsRecycler");
        HomeItem.BottomGroups bottomGroups2 = this.groups;
        fo3.b(recyclerView, bottomGroups2 == null ? null : bottomGroups2.groups, Integer.valueOf(this.M), null, 4);
    }
}
