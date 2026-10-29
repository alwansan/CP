package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LiveData;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;
import java.util.Objects;
import zendesk.core.AnonymousIdentity;
import zendesk.core.Identity;
import zendesk.core.Zendesk;

/* JADX INFO: compiled from: FragmentProfileBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class ck1 extends bk1 implements lm0.a, qm1.a {
    public static final ViewDataBinding.e x0;
    public static final SparseIntArray y0;
    public final TextView d0;
    public final TextView e0;
    public final MaterialButton f0;
    public final ot0 g0;
    public final TextView h0;
    public final ProgressBar i0;
    public final TextView j0;
    public final mm0 k0;
    public final mm0 l0;
    public final rm1 m0;
    public final mm0 n0;
    public final mm0 o0;
    public final mm0 p0;
    public f q0;
    public a r0;
    public b s0;
    public c t0;
    public d u0;
    public e v0;
    public long w0;

    /* JADX INFO: compiled from: FragmentProfileBindingImpl.java */
    public static class a implements rm1<qv4> {
        public dh3 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.m();
            return null;
        }
    }

    /* JADX INFO: compiled from: FragmentProfileBindingImpl.java */
    public static class b implements rm1<qv4> {
        public dh3 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.a0();
            return null;
        }
    }

    /* JADX INFO: compiled from: FragmentProfileBindingImpl.java */
    public static class c implements rm1<qv4> {
        public dh3 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.i0();
            return null;
        }
    }

    /* JADX INFO: compiled from: FragmentProfileBindingImpl.java */
    public static class d implements rm1<qv4> {
        public dh3 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.t1();
            return null;
        }
    }

    /* JADX INFO: compiled from: FragmentProfileBindingImpl.java */
    public static class e implements rm1<qv4> {
        public dh3 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.w();
            return null;
        }
    }

    /* JADX INFO: compiled from: FragmentProfileBindingImpl.java */
    public static class f implements rm1<qv4> {
        public dh3 r;

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            this.r.H1();
            return null;
        }
    }

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(26);
        x0 = eVar;
        eVar.a(1, new String[]{"profile_item_layout", "profile_item_layout", "profile_item_layout", "profile_item_layout", "profile_item_layout", "profile_item_layout", "profile_item_layout"}, new int[]{16, 17, 18, 19, 20, 21, 23}, new int[]{R.layout.profile_item_layout, R.layout.profile_item_layout, R.layout.profile_item_layout, R.layout.profile_item_layout, R.layout.profile_item_layout, R.layout.profile_item_layout, R.layout.profile_item_layout});
        eVar.a(13, new String[]{"discover_more_apps_layout"}, new int[]{22}, new int[]{R.layout.discover_more_apps_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        y0 = sparseIntArray;
        sparseIntArray.put(R.id.profile_scroll_view, 24);
        sparseIntArray.put(R.id.profile_share, 25);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ck1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 26, x0, y0);
        super(gl0Var, view, 12, (MaterialButton) objArrS[8], (kg3) objArrS[21], (kg3) objArrS[20], (CardView) objArrS[13], (kg3) objArrS[18], (MaterialButton) objArrS[9], (kg3) objArrS[19], (TextView) objArrS[7], (TextView) objArrS[3], (MaterialButton) objArrS[5], (LinearLayout) objArrS[2], (kg3) objArrS[23], (kg3) objArrS[16], (NestedScrollView) objArrS[24], (LinearLayout) objArrS[25], (kg3) objArrS[17], (SimpleDraweeView) objArrS[6]);
        this.w0 = -1L;
        this.M.setTag(null);
        ((FrameLayout) objArrS[0]).setTag(null);
        ((ConstraintLayout) objArrS[1]).setTag(null);
        TextView textView = (TextView) objArrS[10];
        this.d0 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArrS[11];
        this.e0 = textView2;
        textView2.setTag(null);
        MaterialButton materialButton = (MaterialButton) objArrS[12];
        this.f0 = materialButton;
        materialButton.setTag(null);
        ot0 ot0Var = (ot0) objArrS[22];
        this.g0 = ot0Var;
        if (ot0Var != null) {
            ot0Var.B = this;
        }
        TextView textView3 = (TextView) objArrS[14];
        this.h0 = textView3;
        textView3.setTag(null);
        ProgressBar progressBar = (ProgressBar) objArrS[15];
        this.i0 = progressBar;
        progressBar.setTag(null);
        TextView textView4 = (TextView) objArrS[4];
        this.j0 = textView4;
        textView4.setTag(null);
        kg3 kg3Var = this.N;
        if (kg3Var != null) {
            kg3Var.B = this;
        }
        kg3 kg3Var2 = this.O;
        if (kg3Var2 != null) {
            kg3Var2.B = this;
        }
        this.P.setTag(null);
        kg3 kg3Var3 = this.Q;
        if (kg3Var3 != null) {
            kg3Var3.B = this;
        }
        this.R.setTag(null);
        kg3 kg3Var4 = this.S;
        if (kg3Var4 != null) {
            kg3Var4.B = this;
        }
        this.T.setTag(null);
        this.U.setTag(null);
        this.V.setTag(null);
        this.W.setTag(null);
        kg3 kg3Var5 = this.X;
        if (kg3Var5 != null) {
            kg3Var5.B = this;
        }
        kg3 kg3Var6 = this.Y;
        if (kg3Var6 != null) {
            kg3Var6.B = this;
        }
        kg3 kg3Var7 = this.Z;
        if (kg3Var7 != null) {
            kg3Var7.B = this;
        }
        this.a0.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.k0 = new lm0(this, 6);
        this.l0 = new lm0(this, 2);
        this.m0 = new qm1(this, 4);
        this.n0 = new lm0(this, 3);
        this.o0 = new lm0(this, 5);
        this.p0 = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        this.Y.B(rh2Var);
        this.Z.B(rh2Var);
        this.Q.B(rh2Var);
        this.S.B(rh2Var);
        this.O.B(rh2Var);
        this.N.B(rh2Var);
        this.g0.B(rh2Var);
        this.X.B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.c0 = (dh3) obj;
            synchronized (this) {
                this.w0 |= 4096;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.b0 = (fh3) obj;
            synchronized (this) {
                this.w0 |= 8192;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.qm1.a
    public final qv4 c(int i) {
        String name;
        fh3 fh3Var = this.b0;
        if (fh3Var != null) {
            Objects.requireNonNull(fh3Var);
            Zendesk zendesk2 = Zendesk.INSTANCE;
            Identity identity = zendesk2.getIdentity();
            AnonymousIdentity anonymousIdentity = identity instanceof AnonymousIdentity ? (AnonymousIdentity) identity : null;
            String userEmail = fh3Var.q() ? fh3Var.h.getUserEmail() : null;
            if (userEmail == null) {
                userEmail = anonymousIdentity == null ? null : anonymousIdentity.getEmail();
            }
            if (fh3Var.q()) {
                name = fh3Var.h.getFirstName() + ' ' + fh3Var.h.getLastName();
            } else {
                name = null;
            }
            if (name == null) {
                name = anonymousIdentity == null ? null : anonymousIdentity.getName();
            }
            AnonymousIdentity.Builder builder = new AnonymousIdentity.Builder();
            boolean z = !j32.a(userEmail, anonymousIdentity == null ? null : anonymousIdentity.getEmail());
            boolean zA = true ^ j32.a(name, anonymousIdentity == null ? null : anonymousIdentity.getName());
            if (z) {
                builder = builder.withEmailIdentifier(userEmail);
                j32.d(builder, "newIdentity.withEmailIdentifier(email)");
            }
            if (zA) {
                builder = builder.withNameIdentifier(name);
                j32.d(builder, "newIdentity.withNameIdentifier(name)");
            }
            if (!fh3Var.q()) {
                zendesk2.setIdentity(new AnonymousIdentity.Builder().build());
            } else if (z || zA) {
                zendesk2.setIdentity(builder.build());
            }
            ((dh3) fh3Var.f()).r0();
        }
        return null;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            fh3 fh3Var = this.b0;
            if (fh3Var != null) {
                ((dh3) fh3Var.f()).h();
                return;
            }
            return;
        }
        if (i == 2) {
            dh3 dh3Var = this.c0;
            if (dh3Var != null) {
                dh3Var.n0();
                return;
            }
            return;
        }
        if (i == 3) {
            dh3 dh3Var2 = this.c0;
            if (dh3Var2 != null) {
                dh3Var2.c1();
                return;
            }
            return;
        }
        if (i == 5) {
            dh3 dh3Var3 = this.c0;
            if (dh3Var3 != null) {
                dh3Var3.I();
                return;
            }
            return;
        }
        if (i != 6) {
            return;
        }
        dh3 dh3Var4 = this.c0;
        if (dh3Var4 != null) {
            dh3Var4.C1();
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x013f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0154  */
    /* JADX WARN: Code duplicated, block: B:109:0x0192  */
    /* JADX WARN: Code duplicated, block: B:110:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:113:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:116:0x0301  */
    /* JADX WARN: Code duplicated, block: B:119:0x030d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0333  */
    /* JADX WARN: Code duplicated, block: B:125:0x033f  */
    /* JADX WARN: Code duplicated, block: B:52:0x00af A[PHI: r2
      0x00af: PHI (r2v5 long) = (r2v0 long), (r2v14 long) binds: [B:32:0x007f, B:49:0x00a9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:76:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:81:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:82:0x0102  */
    /* JADX WARN: Code duplicated, block: B:84:0x010a  */
    /* JADX WARN: Code duplicated, block: B:87:0x0113 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x0115  */
    /* JADX WARN: Code duplicated, block: B:89:0x0118  */
    /* JADX WARN: Code duplicated, block: B:92:0x0120  */
    /* JADX WARN: Code duplicated, block: B:93:0x0127  */
    /* JADX WARN: Code duplicated, block: B:96:0x0132 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0134  */
    /* JADX WARN: Code duplicated, block: B:98:0x0137  */
    /* JADX WARN: Instruction removed from duplicated block: B:109:0x0192, please report this as an issue */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        f fVar;
        a aVar;
        b bVar;
        c cVar;
        d dVar;
        e eVar;
        int i;
        int i2;
        int i3;
        String strA;
        String value;
        String value2;
        LiveData<?> liveData;
        LiveData<?> liveData2;
        LiveData<?> liveData3;
        String value3;
        long j2;
        long j3;
        synchronized (this) {
            j = this.w0;
            this.w0 = 0L;
        }
        dh3 dh3Var = this.c0;
        fh3 fh3Var = this.b0;
        if ((20480 & j) == 0 || dh3Var == null) {
            fVar = null;
            aVar = null;
            bVar = null;
            cVar = null;
            dVar = null;
            eVar = null;
        } else {
            fVar = this.q0;
            if (fVar == null) {
                fVar = new f();
                this.q0 = fVar;
            }
            fVar.r = dh3Var;
            aVar = this.r0;
            if (aVar == null) {
                aVar = new a();
                this.r0 = aVar;
            }
            aVar.r = dh3Var;
            bVar = this.s0;
            if (bVar == null) {
                bVar = new b();
                this.s0 = bVar;
            }
            bVar.r = dh3Var;
            cVar = this.t0;
            if (cVar == null) {
                cVar = new c();
                this.t0 = cVar;
            }
            cVar.r = dh3Var;
            dVar = this.u0;
            if (dVar == null) {
                dVar = new d();
                this.u0 = dVar;
            }
            dVar.r = dh3Var;
            eVar = this.v0;
            if (eVar == null) {
                eVar = new e();
                this.v0 = eVar;
            }
            eVar.r = dh3Var;
        }
        if ((27698 & j) != 0) {
            long j4 = j & 24578;
            if (j4 == 0) {
                i3 = 0;
            } else {
                LiveData<?> liveData4 = fh3Var != null ? fh3Var.d : null;
                E(1, liveData4);
                boolean z = (liveData4 != null ? liveData4.getValue() : null) == tj.a.LOADING;
                if (j4 != 0) {
                    j |= z ? 1048576L : 524288L;
                }
                if (z) {
                    i3 = 0;
                } else {
                    i3 = 8;
                }
            }
            long j5 = j & 24592;
            if (j5 != 0) {
                u43 u43Var = fh3Var != null ? fh3Var.m : null;
                F(4, u43Var, ViewDataBinding.I);
                boolean z2 = u43Var != null ? u43Var.s : false;
                if (j5 != 0) {
                    if (z2) {
                        j2 = j | 65536;
                        j3 = 262144;
                    } else {
                        j2 = j | 32768;
                        j3 = 131072;
                    }
                    j = j2 | j3;
                }
                i = z2 ? 0 : 8;
                i2 = z2 ? 8 : 0;
                if ((j & 24608) != 0) {
                    if (fh3Var != null) {
                        liveData3 = fh3Var.p;
                    } else {
                        liveData3 = null;
                    }
                    E(5, liveData3);
                    if (liveData3 != null) {
                        value3 = liveData3.getValue();
                    } else {
                        value3 = null;
                    }
                    strA = el3.a("By: Ali Tuama\n\nINST: e.1mw\n\nTG: AlwanSan\n\n\nversion ", value3);
                } else {
                    strA = null;
                }
                if ((j & 25600) == 0) {
                    value = null;
                } else {
                    if (fh3Var != null) {
                        liveData2 = fh3Var.o;
                    } else {
                        liveData2 = null;
                    }
                    E(10, liveData2);
                    if (liveData2 != null) {
                        value = liveData2.getValue();
                    } else {
                        value = null;
                    }
                }
                if ((j & 26624) == 0) {
                    if (fh3Var != null) {
                        liveData = fh3Var.q;
                    } else {
                        liveData = null;
                    }
                    E(11, liveData);
                    value2 = liveData != null ? liveData.getValue() : null;
                }
                if ((j & 24592) != 0) {
                    this.M.setVisibility(i);
                    this.R.setVisibility(i);
                    this.S.v.setVisibility(i);
                    this.T.setVisibility(i);
                    this.W.setVisibility(i2);
                    this.X.v.setVisibility(i);
                    this.Y.v.setVisibility(i);
                    this.Z.v.setVisibility(i);
                    this.a0.setVisibility(i);
                }
                if ((16384 & j) != 0) {
                    st2.c(this.M, this.l0, null);
                    TextView textView = this.d0;
                    d3.a(textView, R.string.enjoying_the_app_txt, textView);
                    TextView textView2 = this.e0;
                    d3.a(textView2, R.string.tell_friends_txt, textView2);
                    MaterialButton materialButton = this.f0;
                    e3.a(materialButton, R.string.share_app_txt, materialButton);
                    st2.c(this.f0, this.o0, null);
                    TextView textView3 = this.j0;
                    d3.a(textView3, R.string.log_in_and_get_more_txt, textView3);
                    this.N.G(this.v.getResources().getString(R.string.txt_help_and_support));
                    this.N.H(this.m0);
                    this.O.G(this.v.getResources().getString(R.string.settings_txt));
                    nl6.q(this.P, this.P.getResources().getString(R.string.discover_txt) + this.P.getResources().getString(R.string.more_apps_txt));
                    st2.c(this.P, this.k0, null);
                    this.Q.G(this.v.getResources().getString(R.string.downloads));
                    nl6.q(this.R, this.R.getResources().getString(R.string.edit_txt) + this.R.getResources().getString(R.string.txt_profile));
                    MaterialButton materialButton2 = this.R;
                    e3.a(materialButton2, R.string.edit_txt, materialButton2);
                    st2.c(this.R, this.n0, null);
                    this.S.G(this.v.getResources().getString(R.string.user_lists_txt));
                    TextView textView4 = this.U;
                    d3.a(textView4, R.string.have_an_account, textView4);
                    MaterialButton materialButton3 = this.V;
                    e3.a(materialButton3, R.string.loginDialog_login, materialButton3);
                    st2.c(this.V, this.p0, null);
                    this.X.G(this.v.getResources().getString(R.string.loginDialog_logout));
                    this.X.I(Boolean.FALSE);
                    this.Y.G(this.v.getResources().getString(R.string.notifications_txt));
                    this.Z.G(this.v.getResources().getString(R.string.subscriptions_txt));
                    SimpleDraweeView simpleDraweeView = this.a0;
                    nl6.q(simpleDraweeView, simpleDraweeView.getResources().getString(R.string.user_image_txt));
                }
                if ((j & 24608) != 0) {
                    nl6.r(this.h0, strA);
                }
                if ((j & 24578) != 0) {
                    this.i0.setVisibility(i3);
                }
                if ((20480 & j) != 0) {
                    this.O.H(bVar);
                    this.Q.H(aVar);
                    this.S.H(eVar);
                    this.X.H(cVar);
                    this.Y.H(fVar);
                    this.Z.H(dVar);
                }
                if ((j & 25600) != 0) {
                    nl6.r(this.T, value);
                }
                if ((j & 26624) != 0) {
                    oy1.c(this.a0, value2, null, null, null);
                }
                this.Y.j();
                this.Z.j();
                this.Q.j();
                this.S.j();
                this.O.j();
                this.N.j();
                this.g0.j();
                this.X.j();
            }
            i = 0;
            if ((j & 24608) != 0) {
                if (fh3Var != null) {
                    liveData3 = fh3Var.p;
                } else {
                    liveData3 = null;
                }
                E(5, liveData3);
                if (liveData3 != null) {
                    value3 = liveData3.getValue();
                } else {
                    value3 = null;
                }
                strA = el3.a("By: Ali Tuama\n\nINST: e.1mw\n\nTG: AlwanSan\n\n\nversion ", value3);
            } else {
                strA = null;
            }
            if ((j & 25600) == 0) {
                value = null;
            } else {
                if (fh3Var != null) {
                    liveData2 = fh3Var.o;
                } else {
                    liveData2 = null;
                }
                E(10, liveData2);
                if (liveData2 != null) {
                    value = liveData2.getValue();
                } else {
                    value = null;
                }
            }
            if ((j & 26624) == 0) {
                if (fh3Var != null) {
                    liveData = fh3Var.q;
                } else {
                    liveData = null;
                }
                E(11, liveData);
                if (liveData != null) {
                }
            }
            if ((j & 24592) != 0) {
                this.M.setVisibility(i);
                this.R.setVisibility(i);
                this.S.v.setVisibility(i);
                this.T.setVisibility(i);
                this.W.setVisibility(i2);
                this.X.v.setVisibility(i);
                this.Y.v.setVisibility(i);
                this.Z.v.setVisibility(i);
                this.a0.setVisibility(i);
            }
            if ((16384 & j) != 0) {
                st2.c(this.M, this.l0, null);
                TextView textView5 = this.d0;
                d3.a(textView5, R.string.enjoying_the_app_txt, textView5);
                TextView textView6 = this.e0;
                d3.a(textView6, R.string.tell_friends_txt, textView6);
                MaterialButton materialButton4 = this.f0;
                e3.a(materialButton4, R.string.share_app_txt, materialButton4);
                st2.c(this.f0, this.o0, null);
                TextView textView7 = this.j0;
                d3.a(textView7, R.string.log_in_and_get_more_txt, textView7);
                this.N.G(this.v.getResources().getString(R.string.txt_help_and_support));
                this.N.H(this.m0);
                this.O.G(this.v.getResources().getString(R.string.settings_txt));
                nl6.q(this.P, this.P.getResources().getString(R.string.discover_txt) + this.P.getResources().getString(R.string.more_apps_txt));
                st2.c(this.P, this.k0, null);
                this.Q.G(this.v.getResources().getString(R.string.downloads));
                nl6.q(this.R, this.R.getResources().getString(R.string.edit_txt) + this.R.getResources().getString(R.string.txt_profile));
                MaterialButton materialButton5 = this.R;
                e3.a(materialButton5, R.string.edit_txt, materialButton5);
                st2.c(this.R, this.n0, null);
                this.S.G(this.v.getResources().getString(R.string.user_lists_txt));
                TextView textView8 = this.U;
                d3.a(textView8, R.string.have_an_account, textView8);
                MaterialButton materialButton6 = this.V;
                e3.a(materialButton6, R.string.loginDialog_login, materialButton6);
                st2.c(this.V, this.p0, null);
                this.X.G(this.v.getResources().getString(R.string.loginDialog_logout));
                this.X.I(Boolean.FALSE);
                this.Y.G(this.v.getResources().getString(R.string.notifications_txt));
                this.Z.G(this.v.getResources().getString(R.string.subscriptions_txt));
                SimpleDraweeView simpleDraweeView2 = this.a0;
                nl6.q(simpleDraweeView2, simpleDraweeView2.getResources().getString(R.string.user_image_txt));
            }
            if ((j & 24608) != 0) {
                nl6.r(this.h0, strA);
            }
            if ((j & 24578) != 0) {
                this.i0.setVisibility(i3);
            }
            if ((20480 & j) != 0) {
                this.O.H(bVar);
                this.Q.H(aVar);
                this.S.H(eVar);
                this.X.H(cVar);
                this.Y.H(fVar);
                this.Z.H(dVar);
            }
            if ((j & 25600) != 0) {
                nl6.r(this.T, value);
            }
            if ((j & 26624) != 0) {
                oy1.c(this.a0, value2, null, null, null);
            }
            this.Y.j();
            this.Z.j();
            this.Q.j();
            this.S.j();
            this.O.j();
            this.N.j();
            this.g0.j();
            this.X.j();
        }
        i = 0;
        i2 = 0;
        i3 = 0;
        strA = null;
        value = null;
        if ((j & 24592) != 0) {
            this.M.setVisibility(i);
            this.R.setVisibility(i);
            this.S.v.setVisibility(i);
            this.T.setVisibility(i);
            this.W.setVisibility(i2);
            this.X.v.setVisibility(i);
            this.Y.v.setVisibility(i);
            this.Z.v.setVisibility(i);
            this.a0.setVisibility(i);
        }
        if ((16384 & j) != 0) {
            st2.c(this.M, this.l0, null);
            TextView textView9 = this.d0;
            d3.a(textView9, R.string.enjoying_the_app_txt, textView9);
            TextView textView10 = this.e0;
            d3.a(textView10, R.string.tell_friends_txt, textView10);
            MaterialButton materialButton7 = this.f0;
            e3.a(materialButton7, R.string.share_app_txt, materialButton7);
            st2.c(this.f0, this.o0, null);
            TextView textView11 = this.j0;
            d3.a(textView11, R.string.log_in_and_get_more_txt, textView11);
            this.N.G(this.v.getResources().getString(R.string.txt_help_and_support));
            this.N.H(this.m0);
            this.O.G(this.v.getResources().getString(R.string.settings_txt));
            nl6.q(this.P, this.P.getResources().getString(R.string.discover_txt) + this.P.getResources().getString(R.string.more_apps_txt));
            st2.c(this.P, this.k0, null);
            this.Q.G(this.v.getResources().getString(R.string.downloads));
            nl6.q(this.R, this.R.getResources().getString(R.string.edit_txt) + this.R.getResources().getString(R.string.txt_profile));
            MaterialButton materialButton8 = this.R;
            e3.a(materialButton8, R.string.edit_txt, materialButton8);
            st2.c(this.R, this.n0, null);
            this.S.G(this.v.getResources().getString(R.string.user_lists_txt));
            TextView textView12 = this.U;
            d3.a(textView12, R.string.have_an_account, textView12);
            MaterialButton materialButton9 = this.V;
            e3.a(materialButton9, R.string.loginDialog_login, materialButton9);
            st2.c(this.V, this.p0, null);
            this.X.G(this.v.getResources().getString(R.string.loginDialog_logout));
            this.X.I(Boolean.FALSE);
            this.Y.G(this.v.getResources().getString(R.string.notifications_txt));
            this.Z.G(this.v.getResources().getString(R.string.subscriptions_txt));
            SimpleDraweeView simpleDraweeView3 = this.a0;
            nl6.q(simpleDraweeView3, simpleDraweeView3.getResources().getString(R.string.user_image_txt));
        }
        if ((j & 24608) != 0) {
            nl6.r(this.h0, strA);
        }
        if ((j & 24578) != 0) {
            this.i0.setVisibility(i3);
        }
        if ((20480 & j) != 0) {
            this.O.H(bVar);
            this.Q.H(aVar);
            this.S.H(eVar);
            this.X.H(cVar);
            this.Y.H(fVar);
            this.Z.H(dVar);
        }
        if ((j & 25600) != 0) {
            nl6.r(this.T, value);
        }
        if ((j & 26624) != 0) {
            oy1.c(this.a0, value2, null, null, null);
        }
        this.Y.j();
        this.Z.j();
        this.Q.j();
        this.S.j();
        this.O.j();
        this.N.j();
        this.g0.j();
        this.X.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.w0 != 0) {
                return true;
            }
            return this.Y.o() || this.Z.o() || this.Q.o() || this.S.o() || this.O.o() || this.N.o() || this.g0.o() || this.X.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.w0 = 16384L;
        }
        this.Y.p();
        this.Z.p();
        this.Q.p();
        this.S.p();
        this.O.p();
        this.N.p();
        this.g0.p();
        this.X.p();
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 1;
                    break;
                }
                return true;
            case 1:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 2;
                    break;
                }
                return true;
            case 2:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 4;
                    break;
                }
                return true;
            case 3:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 8;
                    break;
                }
                return true;
            case 4:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 16;
                    break;
                }
                return true;
            case 5:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 32;
                    break;
                }
                return true;
            case 6:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 64;
                    break;
                }
                return true;
            case 7:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 128;
                    break;
                }
                return true;
            case 8:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 256;
                    break;
                }
                return true;
            case 9:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 512;
                    break;
                }
                return true;
            case 10:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 1024;
                    break;
                }
                return true;
            case 11:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.w0 |= 2048;
                    break;
                }
                return true;
            default:
                return false;
        }
    }
}
