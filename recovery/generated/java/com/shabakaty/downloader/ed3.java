package com.shabakaty.downloader;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.features.EmbeddedMkvSubtitles;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: PlayerBottomSheetController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ed3 {
    public VideoModel a;
    public final Context b;
    public final q10 c;
    public sd3 d;

    /* JADX INFO: compiled from: PlayerBottomSheetController.kt */
    public static final class a extends af2 implements rm1<qv4> {
        public final /* synthetic */ int s;
        public final /* synthetic */ float t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, float f) {
            super(0);
            this.s = i;
            this.t = f;
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            sd3 sd3Var = ed3.this.d;
            if (sd3Var != null) {
                sd3Var.s(this.s, this.t);
            }
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: PlayerBottomSheetController.kt */
    public static final class b extends af2 implements rm1<qv4> {
        public final /* synthetic */ rm1<on.a> s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(rm1<on.a> rm1Var) {
            super(0);
            this.s = rm1Var;
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            sd3 sd3Var = ed3.this.d;
            if (sd3Var != null) {
                sd3Var.q(this.s.invoke());
            }
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: PlayerBottomSheetController.kt */
    public static final class c extends af2 implements rm1<qv4> {
        public final /* synthetic */ float s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(float f) {
            super(0);
            this.s = f;
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            ed3 ed3Var = ed3.this;
            q10 q10Var = ed3Var.c;
            if (q10Var != null) {
                q10Var.H = this.s;
            }
            sd3 sd3Var = ed3Var.d;
            if (sd3Var != null) {
                sd3Var.n(this.s);
            }
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: PlayerBottomSheetController.kt */
    public static final class d extends af2 implements rm1<qv4> {
        public final /* synthetic */ int s;
        public final /* synthetic */ int t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(int i, int i2) {
            super(0);
            this.s = i;
            this.t = i2;
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            sd3 sd3Var = ed3.this.d;
            if (sd3Var != null) {
                sd3Var.t(this.s, this.t);
            }
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: PlayerBottomSheetController.kt */
    public static final class e extends af2 implements rm1<qv4> {
        public final /* synthetic */ int s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(int i) {
            super(0);
            this.s = i;
        }

        @Override // com.shabakaty.downloader.rm1
        public qv4 invoke() {
            q10 q10Var = ed3.this.c;
            if (q10Var != null) {
                q10Var.i(new u10(q10Var, this.s, null));
            }
            return qv4.a;
        }
    }

    public ed3(VideoModel videoModel, Context context, q10 q10Var) {
        j32.e(videoModel, "videoModel");
        j32.e(context, "context");
        this.a = videoModel;
        this.b = context;
        this.c = q10Var;
    }

    public final void a(ArrayList<gn> arrayList, int i, float f) {
        pl4 pl4Var = new pl4(null, null, null, null, false, 31);
        String string = this.b.getString(i);
        j32.d(string, "context.getString(title)");
        pl4Var.a(string);
        pl4Var.e = false;
        pl4Var.c = new a(i, f);
        arrayList.add(pl4Var);
    }

    public final void b(ArrayList<gn> arrayList, int i, String str, int i2, rm1<on.a> rm1Var) {
        Drawable drawableH = wt2.h(this.b, i2);
        if (drawableH != null) {
            drawableH.setTint(wt2.f(this.b, R.color.secondaryTextColor));
        }
        String string = this.b.getString(i);
        j32.d(string, "context.getString(titleRes)");
        arrayList.add(new pl4(drawableH, string, new b(rm1Var), str, true));
    }

    public final void c(ArrayList<gn> arrayList, float f) {
        String string;
        if (f == 1.0f) {
            string = this.b.getString(R.string.default_txt);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(f);
            sb.append('x');
            string = sb.toString();
        }
        j32.d(string, "if (speed == 1f)\n\t\t\tcont…t_txt)\n\t\telse \"${speed}x\"");
        pl4 pl4Var = new pl4(null, null, null, null, false, 31);
        pl4Var.a(string);
        pl4Var.e = false;
        pl4Var.c = new c(f);
        arrayList.add(pl4Var);
    }

    public final void d(ArrayList<gn> arrayList, int i, int i2) {
        pl4 pl4Var = new pl4(null, null, null, null, false, 31);
        String string = this.b.getString(i);
        j32.d(string, "context.getString(title)");
        pl4Var.a(string);
        pl4Var.e = false;
        pl4Var.c = new d(i, i2);
        arrayList.add(pl4Var);
    }

    public final void e(ArrayList<gn> arrayList, int i) {
        pl4 pl4Var = new pl4(null, null, null, null, false, 31);
        String quantityString = this.b.getResources().getQuantityString(R.plurals.duration_seconds, i, Integer.valueOf(i));
        j32.d(quantityString, "context.resources.getQua…, seekPeriod, seekPeriod)");
        pl4Var.a(quantityString);
        pl4Var.e = false;
        pl4Var.c = new e(i);
        arrayList.add(pl4Var);
    }

    public final String f() {
        Object obj;
        Iterator<T> it = h().iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            Subtitle subtitle = (Subtitle) next;
            q10 q10Var = this.c;
            if (j32.a(q10Var != null ? q10Var.f.a() : null, subtitle.type)) {
                obj = next;
                break;
            }
        }
        Subtitle subtitle2 = (Subtitle) obj;
        q10 q10Var2 = this.c;
        boolean z = false;
        if (q10Var2 != null && !q10Var2.o()) {
            z = true;
        }
        if (z) {
            String string = this.b.getString(R.string.hide);
            j32.d(string, "context.getString(R.string.hide)");
            return string;
        }
        if (subtitle2 == null) {
            subtitle2 = (Subtitle) m50.b0(h());
        }
        return g(subtitle2);
    }

    public final String g(Subtitle subtitle) {
        String strDisplayName = EmbeddedMkvSubtitles.displayName(this.b, subtitle);
        if (strDisplayName != null) {
            return strDisplayName;
        }
        String str = subtitle == null ? null : subtitle.name;
        if (str != null) {
            int iHashCode = str.hashCode();
            if (iHashCode != -2008465223) {
                if (iHashCode != -1409670996) {
                    if (iHashCode == 3143036 && str.equals("file")) {
                        String string = this.b.getString(R.string.file_txt);
                        j32.d(string, "context.getString(R.string.file_txt)");
                        return string;
                    }
                } else if (str.equals("arabic")) {
                    String string2 = this.b.getString(R.string.arabic);
                    j32.d(string2, "context.getString(R.string.arabic)");
                    return string2;
                }
            } else if (str.equals("special")) {
                String string3 = this.b.getString(R.string.arabic_special);
                j32.d(string3, "context.getString(R.string.arabic_special)");
                return string3;
            }
        }
        String string4 = this.b.getString(R.string.english);
        j32.d(string4, "context.getString(R.string.english)");
        return string4;
    }

    public final List<Subtitle> h() {
        q10 q10Var = this.c;
        List<Subtitle> listS = q10Var == null ? null : q10Var.s();
        return listS == null ? new ArrayList() : listS;
    }
}
