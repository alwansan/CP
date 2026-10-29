package com.shabakaty.downloader;

import android.annotation.TargetApi;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.cinemana.pro.R;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.Objects;
import java.util.Timer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class i81 extends r9 {
    public static final /* synthetic */ int f0 = 0;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public TextView L;
    public CastSeekBar M;
    public ImageView N;
    public ImageView O;
    public int[] P;
    public View R;
    public View S;
    public ImageView T;
    public TextView U;
    public TextView V;
    public TextView W;
    public TextView X;
    public sm5 Y;
    public wu4 Z;
    public y14 a0;
    public boolean b0;
    public boolean c0;
    public Timer d0;
    public String e0;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;
    public final z14<xw> r = new b(null);
    public final br3.b s = new a(null);
    public ImageView[] Q = new ImageView[4];

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public class a implements br3.b {
        public a(st5 st5Var) {
        }

        @Override // com.shabakaty.downloader.br3.b
        public final void b() {
        }

        @Override // com.shabakaty.downloader.br3.b
        public final void f() {
        }

        @Override // com.shabakaty.downloader.br3.b
        public final void onMetadataUpdated() {
            i81.this.h0();
        }

        @Override // com.shabakaty.downloader.br3.b
        public final void onStatusUpdated() {
            br3 br3VarR = i81.this.r();
            if (br3VarR == null || !br3VarR.h()) {
                i81 i81Var = i81.this;
                if (i81Var.b0) {
                    return;
                }
                i81Var.finish();
                return;
            }
            i81 i81Var2 = i81.this;
            i81Var2.b0 = false;
            i81Var2.k0();
            i81.this.m0();
        }

        @Override // com.shabakaty.downloader.br3.b
        public final void p() {
            i81.this.m0();
        }

        @Override // com.shabakaty.downloader.br3.b
        public final void q() {
            i81 i81Var = i81.this;
            i81Var.L.setText(i81Var.getResources().getString(R.string.cast_expanded_controller_loading));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public class b implements z14<xw> {
        public b(st5 st5Var) {
        }

        @Override // com.shabakaty.downloader.z14
        public final /* bridge */ /* synthetic */ void a(s14 s14Var, int i) {
        }

        @Override // com.shabakaty.downloader.z14
        public final /* bridge */ /* synthetic */ void c(s14 s14Var) {
        }

        @Override // com.shabakaty.downloader.z14
        public final /* bridge */ /* synthetic */ void d(s14 s14Var) {
        }

        @Override // com.shabakaty.downloader.z14
        public final /* bridge */ /* synthetic */ void e(s14 s14Var, String str) {
        }

        @Override // com.shabakaty.downloader.z14
        public final /* bridge */ /* synthetic */ void g(s14 s14Var, int i) {
        }

        @Override // com.shabakaty.downloader.z14
        public final /* bridge */ /* synthetic */ void h(s14 s14Var, String str) {
        }

        @Override // com.shabakaty.downloader.z14
        public final /* bridge */ /* synthetic */ void i(s14 s14Var, int i) {
        }

        @Override // com.shabakaty.downloader.z14
        public final /* synthetic */ void j(s14 s14Var, int i) {
            i81.this.finish();
        }

        @Override // com.shabakaty.downloader.z14
        public final /* bridge */ /* synthetic */ void k(s14 s14Var, boolean z) {
        }
    }

    public final void F(View view, int i, int i2, wu4 wu4Var) {
        ImageView imageView = (ImageView) view.findViewById(i);
        if (i2 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i2 != R.id.cast_button_type_custom) {
            if (i2 == R.id.cast_button_type_play_pause_toggle) {
                imageView.setBackgroundResource(this.t);
                Drawable drawableA = eg6.a(this, this.H, this.v);
                Drawable drawableA2 = eg6.a(this, this.H, this.u);
                Drawable drawableA3 = eg6.a(this, this.H, this.w);
                imageView.setImageDrawable(drawableA2);
                com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                b87.a(lw6.PAUSE_CONTROLLER);
                imageView.setOnClickListener(new j56(wu4Var));
                wu4Var.o(imageView, new yq5(imageView, wu4Var.a, drawableA2, drawableA, drawableA3, null, false));
                return;
            }
            if (i2 == R.id.cast_button_type_skip_previous) {
                imageView.setBackgroundResource(this.t);
                imageView.setImageDrawable(eg6.a(this, this.H, this.x));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
                com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                imageView.setOnClickListener(new pa6(wu4Var));
                wu4Var.o(imageView, new gs5(imageView, 0, 0));
                return;
            }
            if (i2 == R.id.cast_button_type_skip_next) {
                imageView.setBackgroundResource(this.t);
                imageView.setImageDrawable(eg6.a(this, this.H, this.y));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
                com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                imageView.setOnClickListener(new dg6(wu4Var));
                wu4Var.o(imageView, new gs5(imageView, 0, 1));
                return;
            }
            if (i2 == R.id.cast_button_type_rewind_30_seconds) {
                imageView.setBackgroundResource(this.t);
                imageView.setImageDrawable(eg6.a(this, this.H, this.z));
                imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
                com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                imageView.setOnClickListener(new yk6(wu4Var, 30000L));
                wu4Var.o(imageView, new mr5(imageView, wu4Var.e));
                return;
            }
            if (i2 == R.id.cast_button_type_forward_30_seconds) {
                imageView.setBackgroundResource(this.t);
                imageView.setImageDrawable(eg6.a(this, this.H, this.A));
                imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
                com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                imageView.setOnClickListener(new uo6(wu4Var, 30000L));
                wu4Var.o(imageView, new yo5(imageView, wu4Var.e));
                return;
            }
            if (i2 == R.id.cast_button_type_mute_toggle) {
                imageView.setBackgroundResource(this.t);
                imageView.setImageDrawable(eg6.a(this, this.H, this.B));
                com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                imageView.setOnClickListener(new g06(wu4Var));
                wu4Var.o(imageView, new lq5(imageView, wu4Var.a));
                return;
            }
            if (i2 == R.id.cast_button_type_closed_caption) {
                imageView.setBackgroundResource(this.t);
                imageView.setImageDrawable(eg6.a(this, this.H, this.C));
                com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                imageView.setOnClickListener(new a07(wu4Var));
                wu4Var.o(imageView, new go5(imageView, wu4Var.a));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060  */
    public final void h0() {
        MediaInfo mediaInfoD;
        ip2 ip2Var;
        k2 supportActionBar;
        br3 br3VarR = r();
        if (br3VarR == null || !br3VarR.h() || (mediaInfoD = br3VarR.d()) == null || (ip2Var = mediaInfoD.u) == null || (supportActionBar = getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.q(ip2Var.o1("com.google.android.gms.cast.metadata.TITLE"));
        String str = "com.google.android.gms.cast.metadata.SUBTITLE";
        if (!ip2Var.s.containsKey("com.google.android.gms.cast.metadata.SUBTITLE")) {
            int i = ip2Var.t;
            if (i == 1) {
                str = "com.google.android.gms.cast.metadata.STUDIO";
            } else if (i == 2) {
                str = "com.google.android.gms.cast.metadata.SERIES_TITLE";
            } else if (i != 3) {
                if (i == 4) {
                    str = "com.google.android.gms.cast.metadata.ARTIST";
                }
            } else if (ip2Var.s.containsKey("com.google.android.gms.cast.metadata.ARTIST")) {
                str = "com.google.android.gms.cast.metadata.ARTIST";
            } else if (ip2Var.s.containsKey("com.google.android.gms.cast.metadata.ALBUM_ARTIST")) {
                str = "com.google.android.gms.cast.metadata.ALBUM_ARTIST";
            } else if (ip2Var.s.containsKey("com.google.android.gms.cast.metadata.COMPOSER")) {
                str = "com.google.android.gms.cast.metadata.COMPOSER";
            }
        }
        supportActionBar.p(ip2Var.o1(str));
    }

    public final void k0() {
        CastDevice castDeviceJ;
        xw xwVarC = this.a0.c();
        if (xwVarC != null && (castDeviceJ = xwVarC.j()) != null) {
            String str = castDeviceJ.u;
            if (!TextUtils.isEmpty(str)) {
                this.L.setText(getResources().getString(R.string.cast_casting_to_device, str));
                return;
            }
        }
        this.L.setText(BuildConfig.FLAVOR);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @TargetApi(23)
    public final void m0() {
        String str;
        String string;
        Drawable drawable;
        Bitmap bitmap;
        br3 br3VarR = r();
        if (br3VarR == null || br3VarR.e() == null) {
            return;
        }
        if (!br3VarR.e().I) {
            this.X.setVisibility(8);
            this.W.setVisibility(8);
            this.R.setVisibility(8);
            this.O.setVisibility(8);
            this.O.setImageBitmap(null);
            return;
        }
        if (this.O.getVisibility() == 8 && (drawable = this.N.getDrawable()) != null && (drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
            pk2 pk2Var = eg6.a;
            pk2Var.a("Begin blurring bitmap %s, original width = %d, original height = %d.", bitmap, Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()));
            int iRound = Math.round(bitmap.getWidth() * 0.25f);
            int iRound2 = Math.round(bitmap.getHeight() * 0.25f);
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, iRound, iRound2, false);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound, iRound2, bitmapCreateScaledBitmap.getConfig());
            RenderScript renderScriptCreate = RenderScript.create(this);
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
            Allocation allocationCreateTyped = Allocation.createTyped(renderScriptCreate, allocationCreateFromBitmap.getType());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, allocationCreateFromBitmap.getElement());
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.setRadius(7.5f);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            allocationCreateTyped.copyTo(bitmapCreateBitmap);
            renderScriptCreate.destroy();
            pk2Var.a("End blurring bitmap %s, original width = %d, original height = %d.", bitmapCreateScaledBitmap, Integer.valueOf(iRound), Integer.valueOf(iRound2));
            if (bitmapCreateBitmap != null) {
                this.O.setImageBitmap(bitmapCreateBitmap);
                this.O.setVisibility(0);
            }
        }
        h4 h4VarW0 = br3VarR.e().W0();
        if (h4VarW0 != null) {
            string = h4VarW0.s;
            str = h4VarW0.z;
        } else {
            str = null;
            string = null;
        }
        if (!TextUtils.isEmpty(str)) {
            this.Y.c(Uri.parse(str));
            this.S.setVisibility(8);
        } else if (TextUtils.isEmpty(this.e0)) {
            this.U.setVisibility(0);
            this.S.setVisibility(0);
            this.T.setVisibility(8);
        } else {
            this.Y.c(Uri.parse(this.e0));
            this.S.setVisibility(8);
        }
        TextView textView = this.V;
        if (TextUtils.isEmpty(string)) {
            string = getResources().getString(R.string.cast_ad_label);
        }
        textView.setText(string);
        if (Build.VERSION.SDK_INT >= 23) {
            this.V.setTextAppearance(this.I);
        } else {
            this.V.setTextAppearance(this, this.I);
        }
        this.R.setVisibility(0);
        p0(br3VarR);
    }

    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        y14 y14VarC = tw.d(this).c();
        this.a0 = y14VarC;
        if (y14VarC.c() == null) {
            finish();
        }
        wu4 wu4Var = new wu4(this);
        this.Z = wu4Var;
        br3.b bVar = this.s;
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        wu4Var.f = bVar;
        setContentView(R.layout.cast_expanded_controller_activity);
        TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(new int[]{R.attr.selectableItemBackgroundBorderless});
        this.t = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = obtainStyledAttributes(null, xl3.a, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        this.H = typedArrayObtainStyledAttributes2.getResourceId(7, 0);
        this.u = typedArrayObtainStyledAttributes2.getResourceId(16, 0);
        this.v = typedArrayObtainStyledAttributes2.getResourceId(15, 0);
        this.w = typedArrayObtainStyledAttributes2.getResourceId(26, 0);
        this.x = typedArrayObtainStyledAttributes2.getResourceId(25, 0);
        this.y = typedArrayObtainStyledAttributes2.getResourceId(24, 0);
        this.z = typedArrayObtainStyledAttributes2.getResourceId(17, 0);
        this.A = typedArrayObtainStyledAttributes2.getResourceId(12, 0);
        this.B = typedArrayObtainStyledAttributes2.getResourceId(14, 0);
        this.C = typedArrayObtainStyledAttributes2.getResourceId(8, 0);
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(9, 0);
        if (resourceId != 0) {
            TypedArray typedArrayObtainTypedArray = getResources().obtainTypedArray(resourceId);
            com.google.android.gms.common.internal.a.a(typedArrayObtainTypedArray.length() == 4);
            this.P = new int[typedArrayObtainTypedArray.length()];
            for (int i = 0; i < typedArrayObtainTypedArray.length(); i++) {
                this.P[i] = typedArrayObtainTypedArray.getResourceId(i, 0);
            }
            typedArrayObtainTypedArray.recycle();
        } else {
            this.P = new int[]{R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty};
        }
        this.G = typedArrayObtainStyledAttributes2.getColor(11, 0);
        this.D = getResources().getColor(typedArrayObtainStyledAttributes2.getResourceId(4, 0));
        this.E = getResources().getColor(typedArrayObtainStyledAttributes2.getResourceId(3, 0));
        this.F = getResources().getColor(typedArrayObtainStyledAttributes2.getResourceId(6, 0));
        this.I = typedArrayObtainStyledAttributes2.getResourceId(5, 0);
        this.J = typedArrayObtainStyledAttributes2.getResourceId(1, 0);
        this.K = typedArrayObtainStyledAttributes2.getResourceId(2, 0);
        int resourceId2 = typedArrayObtainStyledAttributes2.getResourceId(10, 0);
        if (resourceId2 != 0) {
            this.e0 = getApplicationContext().getResources().getString(resourceId2);
        }
        typedArrayObtainStyledAttributes2.recycle();
        View viewFindViewById = findViewById(R.id.expanded_controller_layout);
        wu4 wu4Var2 = this.Z;
        this.N = (ImageView) viewFindViewById.findViewById(R.id.background_image_view);
        this.O = (ImageView) viewFindViewById.findViewById(R.id.blurred_background_image_view);
        View viewFindViewById2 = viewFindViewById.findViewById(R.id.background_place_holder_image_view);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        ImageView imageView = this.N;
        wy1 wy1Var = new wy1(4, displayMetrics.widthPixels, displayMetrics.heightPixels);
        Objects.requireNonNull(wu4Var2);
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        wu4Var2.o(imageView, new fp5(imageView, wu4Var2.a, wy1Var, 0, viewFindViewById2));
        this.L = (TextView) viewFindViewById.findViewById(R.id.status_text);
        ProgressBar progressBar = (ProgressBar) viewFindViewById.findViewById(R.id.loading_indicator);
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        int i2 = this.G;
        if (i2 != 0) {
            indeterminateDrawable.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
        }
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        wu4Var2.o(progressBar, new eq5(progressBar));
        TextView textView = (TextView) viewFindViewById.findViewById(R.id.start_text);
        TextView textView2 = (TextView) viewFindViewById.findViewById(R.id.end_text);
        CastSeekBar castSeekBar = (CastSeekBar) viewFindViewById.findViewById(R.id.cast_seek_bar);
        this.M = castSeekBar;
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        b87.a(lw6.SEEK_CONTROLLER);
        castSeekBar.v = new gv6(wu4Var2);
        wu4Var2.o(castSeekBar, new no5(castSeekBar, 1000L, wu4Var2.e));
        wu4Var2.l(textView, new ov5(textView, wu4Var2.e));
        wu4Var2.l(textView2, new jv5(textView2, wu4Var2.e));
        View viewFindViewById3 = viewFindViewById.findViewById(R.id.live_indicators);
        wu4 wu4Var3 = this.Z;
        wu4Var3.l(viewFindViewById3, new uv5(viewFindViewById3, wu4Var3.e));
        RelativeLayout relativeLayout = (RelativeLayout) viewFindViewById.findViewById(R.id.tooltip_container);
        bw5 bw5Var = new bw5(relativeLayout, this.M, this.Z.e);
        this.Z.l(relativeLayout, bw5Var);
        this.Z.d.add(bw5Var);
        this.Q[0] = (ImageView) viewFindViewById.findViewById(R.id.button_0);
        this.Q[1] = (ImageView) viewFindViewById.findViewById(R.id.button_1);
        this.Q[2] = (ImageView) viewFindViewById.findViewById(R.id.button_2);
        this.Q[3] = (ImageView) viewFindViewById.findViewById(R.id.button_3);
        F(viewFindViewById, R.id.button_0, this.P[0], wu4Var2);
        F(viewFindViewById, R.id.button_1, this.P[1], wu4Var2);
        F(viewFindViewById, R.id.button_play_pause_toggle, R.id.cast_button_type_play_pause_toggle, wu4Var2);
        F(viewFindViewById, R.id.button_2, this.P[2], wu4Var2);
        F(viewFindViewById, R.id.button_3, this.P[3], wu4Var2);
        View viewFindViewById4 = findViewById(R.id.ad_container);
        this.R = viewFindViewById4;
        this.T = (ImageView) viewFindViewById4.findViewById(R.id.ad_image_view);
        this.S = this.R.findViewById(R.id.ad_background_image_view);
        TextView textView3 = (TextView) this.R.findViewById(R.id.ad_label);
        this.V = textView3;
        textView3.setTextColor(this.F);
        this.V.setBackgroundColor(this.D);
        this.U = (TextView) this.R.findViewById(R.id.ad_in_progress_label);
        this.X = (TextView) findViewById(R.id.ad_skip_text);
        TextView textView4 = (TextView) findViewById(R.id.ad_skip_button);
        this.W = textView4;
        textView4.setOnClickListener(new k56(this));
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().m(true);
            getSupportActionBar().n(R.drawable.quantum_ic_keyboard_arrow_down_white_36);
        }
        k0();
        h0();
        TextView textView5 = this.U;
        if (textView5 != null && this.K != 0) {
            if (Build.VERSION.SDK_INT >= 23) {
                textView5.setTextAppearance(this.J);
            } else {
                textView5.setTextAppearance(getApplicationContext(), this.J);
            }
            this.U.setTextColor(this.E);
            this.U.setText(this.K);
        }
        sm5 sm5Var = new sm5(getApplicationContext(), new wy1(-1, this.T.getWidth(), this.T.getHeight()));
        this.Y = sm5Var;
        sm5Var.f = new st5(this);
        b87.a(lw6.CAF_EXPANDED_CONTROLLER);
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onDestroy() {
        this.Y.a();
        wu4 wu4Var = this.Z;
        if (wu4Var != null) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            wu4Var.f = null;
            wu4 wu4Var2 = this.Z;
            Objects.requireNonNull(wu4Var2);
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            wu4Var2.s();
            wu4Var2.c.clear();
            y14 y14Var = wu4Var2.b;
            if (y14Var != null) {
                y14Var.e(wu4Var2, xw.class);
            }
            wu4Var2.f = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }

    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onPause() {
        tw.d(this).c().e(this.r, xw.class);
        super.onPause();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x004b  */
    @Override // com.shabakaty.downloader.ji1, android.app.Activity
    public void onResume() {
        boolean zN;
        tw.d(this).c().a(this.r, xw.class);
        xw xwVarC = tw.d(this).c().c();
        boolean z = true;
        if (xwVarC == null) {
            finish();
        } else if (!xwVarC.c()) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            try {
                zN = xwVarC.a.n();
            } catch (RemoteException e) {
                s14.b.b(e, "Unable to call %s on %s.", "isConnecting", ge7.class.getSimpleName());
                zN = false;
            }
            if (!zN) {
                finish();
            }
        }
        br3 br3VarR = r();
        if (br3VarR != null && br3VarR.h()) {
            z = false;
        }
        this.b0 = z;
        k0();
        m0();
        super.onResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            getWindow().getDecorView().setSystemUiVisibility(((getWindow().getDecorView().getSystemUiVisibility() ^ 2) ^ 4) ^ 4096);
            setImmersive(true);
        }
    }

    public final void p0(br3 br3Var) {
        long jH;
        dr2 dr2Var;
        j4 j4Var;
        h4 h4VarW0;
        if (this.b0 || br3Var.i()) {
            return;
        }
        this.W.setVisibility(8);
        this.X.setVisibility(8);
        h4 h4VarW1 = br3Var.e().W0();
        if (h4VarW1 == null || h4VarW1.A == -1) {
            return;
        }
        if (!this.c0) {
            h06 h06Var = new h06(this, br3Var);
            Timer timer = new Timer();
            this.d0 = timer;
            timer.scheduleAtFixedRate(h06Var, 0L, 500L);
            this.c0 = true;
        }
        long j = h4VarW1.A;
        synchronized (br3Var.a) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            oh5 oh5Var = br3Var.c;
            jH = 0;
            if (oh5Var.e != 0 && (dr2Var = oh5Var.f) != null && (j4Var = dr2Var.J) != null && (h4VarW0 = dr2Var.W0()) != null) {
                dr2 dr2Var2 = oh5Var.f;
                jH = oh5Var.h((dr2Var2.u == 0.0d && dr2Var2.v == 2) ? 1.0d : 0.0d, j4Var.s, h4VarW0.t);
            }
        }
        float f = j - jH;
        if (f > 0.0f) {
            this.X.setVisibility(0);
            this.X.setText(getResources().getString(R.string.cast_expanded_controller_skip_ad_text, Integer.valueOf((int) Math.ceil(f / 1000.0f))));
            this.W.setClickable(false);
        } else {
            if (this.c0) {
                this.d0.cancel();
                this.c0 = false;
            }
            this.W.setVisibility(0);
            this.W.setClickable(true);
        }
    }

    public final br3 r() {
        xw xwVarC = this.a0.c();
        if (xwVarC == null || !xwVarC.c()) {
            return null;
        }
        return xwVarC.k();
    }
}
