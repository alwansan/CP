package com.shabakaty.downloader;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.Comment;
import com.shabakaty.cinemana.domain.models.remote.user.LogoutResponseApi;
import com.shabakaty.cinemana.ui.home_fragment.GroupsView;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ig4 implements View.OnClickListener {
    public final /* synthetic */ int r = 1;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    public /* synthetic */ ig4(GroupsView groupsView, Context context) {
        this.s = groupsView;
        this.t = context;
    }

    public /* synthetic */ ig4(jg4 jg4Var, gg4 gg4Var) {
        this.s = jg4Var;
        this.t = gg4Var;
    }

    public /* synthetic */ ig4(mm0 mm0Var, View view) {
        this.s = mm0Var;
        this.t = view;
    }

    public /* synthetic */ ig4(u60 u60Var, Comment comment) {
        this.s = u60Var;
        this.t = comment;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00a0  */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Editable text;
        String string;
        switch (this.r) {
            case 0:
                jg4 jg4Var = (jg4) this.s;
                gg4 gg4Var = (gg4) this.t;
                j32.e(jg4Var, "this$0");
                j32.e(gg4Var, "$fontItem");
                jg4Var.a.invoke(gg4Var.a);
                return;
            case 1:
                GroupsView.t((GroupsView) this.s, (Context) this.t, view);
                return;
            case 2:
                u60 u60Var = (u60) this.s;
                Comment comment = (Comment) this.t;
                int i = u60.S;
                j32.e(u60Var, "this$0");
                j32.e(comment, "$comment");
                ys0 ys0Var = u60Var.O;
                if (ys0Var == null) {
                    j32.l("updateCommentDialogView");
                    throw null;
                }
                EditText editText = ys0Var.M.getEditText();
                if (editText == null || (text = editText.getText()) == null || (string = text.toString()) == null) {
                    return;
                }
                if (j32.a(comment.text, string)) {
                    u60Var.q(R.string.no_changes_made);
                } else {
                    if (string.length() > 0) {
                        comment.text = string;
                        g70 g70VarF2 = u60Var.f2();
                        ox4 ox4Var = g70VarF2.h;
                        String str = comment.videoNb;
                        String str2 = comment.commentNb;
                        String str3 = comment.text;
                        Objects.requireNonNull(ox4Var);
                        j32.e(str, "videoNb");
                        j32.e(str2, "commentNb");
                        j32.e(str3, "newComment");
                        f74<LogoutResponseApi> f74VarR = ox4Var.a.r(ox4Var.b.getUserId(), str, str2, str3);
                        hx hxVar = new hx(ox4Var.e, 21);
                        Objects.requireNonNull(f74VarR);
                        g70VarF2.b(ox4Var.h(new v74(f74VarR, hxVar)), new e70(g70VarF2, comment), f70.r);
                        u60Var.q(R.string.changes_updated_shortly);
                    } else {
                        u60Var.q(R.string.no_changes_made);
                    }
                }
                androidx.appcompat.app.b bVar = u60Var.Q;
                if (bVar != null) {
                    bVar.dismiss();
                    return;
                } else {
                    j32.l("updateCommentDialog");
                    throw null;
                }
            default:
                mm0 mm0Var = (mm0) this.s;
                View view2 = (View) this.t;
                HashMap<Integer, String> map = st2.a;
                j32.e(mm0Var, "$onClick");
                j32.e(view2, "$this_debounceOnClick");
                lm0 lm0Var = (lm0) mm0Var;
                lm0Var.a.d(lm0Var.b, view2);
                return;
        }
    }
}
