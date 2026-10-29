package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class Player94 {
    static final WeakHashMap<View, State> states = new WeakHashMap<>();
    static final ExecutorService frames = Executors.newSingleThreadExecutor();

    public static void install(final View view, Object obj) {
        view.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Player94$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Player94.lambda$install$0(view);
            }
        });
    }

    static /* synthetic */ void lambda$install$0(View view) {
        try {
            WeakHashMap<View, State> weakHashMap = states;
            State state = weakHashMap.get(view);
            if (state == null && (view instanceof FrameLayout)) {
                state = new State((FrameLayout) view);
                weakHashMap.put(view, state);
            }
            if (state != null) {
                state.hook();
                state.h.postDelayed(state.warm, 300L);
            }
        } catch (Throwable th) {
        }
    }

    public static boolean touch(View view, MotionEvent motionEvent) {
        try {
            State stateEnsure = ensure(view);
            return stateEnsure != null && stateEnsure.touch(motionEvent);
        } catch (Throwable th) {
            Log94.event(view.getContext(), "player_gesture_failed", th.getClass().getSimpleName());
            return false;
        }
    }

    static State ensure(View view) {
        WeakHashMap<View, State> weakHashMap = states;
        State state = weakHashMap.get(view);
        if (state != null || !(view instanceof FrameLayout)) {
            return state;
        }
        State state2 = new State((FrameLayout) view);
        weakHashMap.put(view, state2);
        state2.hook();
        return state2;
    }

    static State ancestor(View view) {
        while (view != null) {
            if (view.getClass().getName().equals("com.shabakaty.cinemana.player.CinemanaPlayerView")) {
                return ensure(view);
            }
            view = view.getParent() instanceof View ? (View) view.getParent() : null;
        }
        return null;
    }

    public static boolean takeCapture(View view) {
        State state = states.get(view);
        if (state == null || !state.captured) {
            return false;
        }
        state.captured = false;
        return true;
    }

    public static void scrubStart(SeekBar seekBar) {
        try {
            State stateAncestor = ancestor(seekBar);
            if (stateAncestor != null) {
                stateAncestor.scrubbing = true;
                stateAncestor.scrubCancelled = false;
                stateAncestor.scrubBar = seekBar;
                stateAncestor.show(seekBar.getProgress());
            }
        } catch (Throwable th) {
        }
    }

    public static void scrubMove(SeekBar seekBar, int i, Object obj) {
        try {
            State stateAncestor = ancestor(seekBar);
            if (stateAncestor == null || !stateAncestor.scrubbing) {
                R94.call(obj, "q", Long.valueOf(i));
            } else {
                stateAncestor.show(i);
            }
        } catch (Throwable th) {
        }
    }

    public static void scrubStop(SeekBar seekBar, Object obj) {
        try {
            State stateAncestor = ancestor(seekBar);
            if (stateAncestor == null || !stateAncestor.scrubCancelled) {
                R94.call(obj, "q", Long.valueOf(seekBar.getProgress()));
            }
            if (stateAncestor != null) {
                stateAncestor.scrubbing = false;
                stateAncestor.hide();
            }
        } catch (Throwable th) {
        }
    }

    public static void seekPreset(Object obj) {
        try {
            Context context = (Context) R94.get(obj, "a");
            if (context != null && context.getSharedPreferences("ca1_94", 0).getBoolean("keyframe95", true)) {
                Object objMake = R94.make("com.shabakaty.downloader.wz3", Long.MAX_VALUE, 0L);
                Field declaredField = obj.getClass().getDeclaredField("n");
                declaredField.setAccessible(true);
                declaredField.set(obj, objMake);
                Log94.event(context, "seek_preset", "previous_sync=true");
            }
        } catch (Throwable th) {
        }
    }

    static final class State {
        boolean blocked;
        LinearLayout box;
        Context c;
        boolean captured;
        long down;
        boolean drag;
        float dx;
        float dy;
        volatile Process frameProcess;
        volatile int generation;
        ImageView image;
        long latest;
        Object listener;
        boolean loading;
        boolean multi;
        MediaMetadataRetriever retriever;
        SeekBar scrubBar;
        boolean scrubCancelled;
        boolean scrubbing;
        long start;
        long target;
        TextView time;
        Object timeBar;
        FrameLayout view;
        final Handler h = new Handler(Looper.getMainLooper());
        final LinkedHashMap<String, Bitmap> cache = new LinkedHashMap<>(16, 0.75f, true);
        volatile boolean live = true;
        String source = BuildConfig.FLAVOR;
        String identity = BuildConfig.FLAVOR;
        long displayedBucket = -1;
        String readerPath = BuildConfig.FLAVOR;
        long requestedSecond = -1;
        final Runnable warm = new Runnable() { // from class: com.shabakaty.cinemana.ca1.Player94.State.2
            @Override // java.lang.Runnable
            public void run() {
                if (State.this.live) {
                    State.this.syncIdentity();
                    if (State.this.prefs().getBoolean("preview", true) && !State.this.loading && State.this.box.getVisibility() != 0) {
                        State.this.prepare(PreviewTime97.second(State.this.pos("C")) * 1000, true);
                    }
                    State.this.h.postDelayed(this, 1000L);
                }
            }
        };
        final Runnable load = new Runnable() { // from class: com.shabakaty.cinemana.ca1.Player94$State$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m48lambda$new$4$comshabakatycinemanaca1Player94$State();
            }
        };

        /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.Player94$State$1, reason: invalid class name */
        class AnonymousClass1 implements View.OnAttachStateChangeListener {
            AnonymousClass1() {
            }

            /* JADX INFO: renamed from: lambda$onViewDetachedFromWindow$0$com-shabakaty-cinemana-ca1-Player94$State$1, reason: not valid java name */
            /* synthetic */ void m51xec4e169b() {
                State.this.closeReader();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                Process process = State.this.frameProcess;
                if (process != null) {
                    process.destroy();
                }
                State.this.live = false;
                State.this.generation++;
                State.this.h.removeCallbacksAndMessages(null);
                Player94.states.remove(State.this.view);
                State.this.image.setImageDrawable(null);
                State.this.view.removeView(State.this.box);
                State.this.view.removeOnAttachStateChangeListener(this);
                Iterator<Bitmap> it = State.this.cache.values().iterator();
                while (it.hasNext()) {
                    it.next().recycle();
                }
                State.this.cache.clear();
                Player94.frames.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Player94$State$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m51xec4e169b();
                    }
                });
            }
        }

        State(FrameLayout frameLayout) {
            this.view = frameLayout;
            this.c = frameLayout.getContext();
            LinearLayout linearLayout = new LinearLayout(this.c);
            this.box = linearLayout;
            linearLayout.setOrientation(1);
            this.box.setGravity(17);
            this.box.setPadding(8, 8, 8, 8);
            this.box.setBackground(Download94.bg(-434888405));
            ImageView imageView = new ImageView(this.c);
            this.image = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.box.addView(this.image, new LinearLayout.LayoutParams(Download94.dp(this.c, 192.0f), Download94.dp(this.c, 108.0f)));
            TextView textView = new TextView(this.c);
            this.time = textView;
            textView.setTextColor(ThemeEngine142.legacy(-1));
            this.time.setTextSize(18.0f);
            this.time.setGravity(17);
            this.box.addView(this.time);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 49);
            layoutParams.topMargin = Download94.dp(this.c, 20.0f);
            this.view.addView(this.box, layoutParams);
            this.box.setVisibility(8);
            this.view.addOnAttachStateChangeListener(new AnonymousClass1());
        }

        Object player() throws Exception {
            return R94.call(this.view, "getPlayer", new Object[0]);
        }

        long pos(String str) {
            try {
                return ((Number) R94.call(player(), str, new Object[0])).longValue();
            } catch (Exception e) {
                return 0L;
            }
        }

        SharedPreferences prefs() {
            return this.c.getSharedPreferences("ca1_94", 0);
        }

        void hook() {
            View viewFind = Download94.find(this.view, "player_playback_seek_bar");
            if (!(viewFind instanceof SeekBar) || viewFind == this.scrubBar) {
                return;
            }
            SeekBar seekBar = (SeekBar) viewFind;
            this.scrubBar = seekBar;
            seekBar.setOnTouchListener(new View.OnTouchListener() { // from class: com.shabakaty.cinemana.ca1.Player94$State$$ExternalSyntheticLambda3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return this.f$0.m47lambda$hook$0$comshabakatycinemanaca1Player94$State(view, motionEvent);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$hook$0$com-shabakaty-cinemana-ca1-Player94$State, reason: not valid java name */
        /* synthetic */ boolean m47lambda$hook$0$comshabakatycinemanaca1Player94$State(View view, MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() == 0) {
                this.scrubCancelled = false;
            }
            if (motionEvent.getActionMasked() == 3) {
                this.scrubCancelled = true;
            }
            return false;
        }

        boolean controls(View view, float f, float f2) {
            if (view.getVisibility() != 0) {
                return false;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt = viewGroup.getChildAt(childCount);
                    float x = f - childAt.getX();
                    float y = f2 - childAt.getY();
                    if (x >= 0.0f && y >= 0.0f && x < childAt.getWidth() && y < childAt.getHeight() && controls(childAt, x, y)) {
                        return true;
                    }
                }
            }
            return (view instanceof SeekBar) || (view instanceof Button) || (view instanceof ImageButton) || (view.isClickable() && view != this.view && view.getHeight() < Download94.dp(this.c, 100.0f) && ((float) view.getWidth()) < ((float) this.view.getWidth()) * 0.8f);
        }

        void anchor(long j) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.box.getLayoutParams();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.view.getLocationOnScreen(iArr);
            int iDp = Download94.dp(this.c, 208.0f);
            int height = this.box.getHeight() > 0 ? this.box.getHeight() : Download94.dp(this.c, 142.0f);
            int width = (this.view.getWidth() - iDp) / 2;
            int iMax = Math.max(0, (this.view.getHeight() - height) - Download94.dp(this.c, 64.0f));
            SeekBar seekBar = this.scrubBar;
            if (seekBar != null && seekBar.isShown()) {
                this.scrubBar.getLocationOnScreen(iArr2);
                long jPos = pos("X");
                float fMax = jPos > 0 ? Math.max(0.0f, Math.min(1.0f, j / jPos)) : 0.0f;
                if (this.scrubBar.getLayoutDirection() == 1) {
                    fMax = 1.0f - fMax;
                }
                width = (((iArr2[0] - iArr[0]) + this.scrubBar.getPaddingLeft()) + Math.round(((this.scrubBar.getWidth() - this.scrubBar.getPaddingLeft()) - this.scrubBar.getPaddingRight()) * fMax)) - (iDp / 2);
                iMax = ((iArr2[1] - iArr[1]) - height) - Download94.dp(this.c, 8.0f);
            }
            layoutParams.gravity = 51;
            layoutParams.leftMargin = Math.max(Download94.dp(this.c, 4.0f), Math.min((this.view.getWidth() - iDp) - Download94.dp(this.c, 4.0f), width));
            layoutParams.topMargin = Math.max(0, iMax);
            this.box.setLayoutParams(layoutParams);
            this.box.bringToFront();
        }

        View findType(View view, Class<?> cls) {
            if (cls.isInstance(view)) {
                return view;
            }
            if (!(view instanceof ViewGroup)) {
                return null;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View viewFindType = findType(viewGroup.getChildAt(i), cls);
                if (viewFindType != null) {
                    return viewFindType;
                }
            }
            return null;
        }

        boolean touch(MotionEvent motionEvent) throws Exception {
            if (motionEvent != null) {
                if (Drawer105.visible(this.view)) {
                    this.drag = false;
                    this.captured = false;
                    hide();
                    return false;
                }
                if (prefs().getBoolean("swipe", true)) {
                    int actionMasked = motionEvent.getActionMasked();
                    if (actionMasked == 0) {
                        this.dx = motionEvent.getX();
                        this.dy = motionEvent.getY();
                        this.start = pos("C");
                        this.down = motionEvent.getEventTime();
                        this.drag = false;
                        this.multi = false;
                        this.captured = false;
                        this.blocked = controls(this.view, this.dx, this.dy);
                        return false;
                    }
                    if (motionEvent.getPointerCount() > 1) {
                        this.multi = true;
                        if (this.drag) {
                            this.drag = false;
                            hide();
                        }
                        return false;
                    }
                    if (!this.multi && !this.blocked && !this.scrubbing) {
                        if (actionMasked == 2) {
                            float x = motionEvent.getX() - this.dx;
                            float y = motionEvent.getY() - this.dy;
                            if (!this.drag) {
                                if (motionEvent.getEventTime() - this.down > 1200 || Math.abs(x) < Download94.dp(this.c, 24.0f) || Math.abs(x) < Math.abs(y) * 1.5f) {
                                    return false;
                                }
                                this.drag = true;
                                this.captured = true;
                                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                                motionEventObtain.setAction(3);
                                try {
                                    ((GestureDetector) R94.get(R94.get(R94.get(this.view, "r"), "a"), "a")).onTouchEvent(motionEventObtain);
                                    R94.call(this.view, "restoreSpeedIfNeeded", new Object[0]);
                                    motionEventObtain.recycle();
                                } catch (Throwable th) {
                                    motionEventObtain.recycle();
                                    throw th;
                                }
                            }
                            long jTarget = SeekGesture95.target(this.start, x, this.view.getWidth(), prefs().getInt("sensitivity", 60), pos("X"));
                            this.target = jTarget;
                            show(jTarget);
                            return true;
                        }
                        if ((actionMasked == 1 || actionMasked == 3) && this.drag) {
                            this.drag = false;
                            if (actionMasked == 1) {
                                R94.call(player(), "q", Long.valueOf(this.target));
                                Log94.event(this.c, "player_gesture_seek", "from=" + this.start + " to=" + this.target);
                            }
                            hide();
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        String source() {
            File fileResolve;
            Object objCall = null;
            try {
                objCall = R94.call(this.view, "getVideoModel", new Object[0]);
                String str = R94.str(objCall, "url");
                if (str.startsWith("file://")) {
                    str = Uri.parse(str).getPath();
                }
                if (new File(str).isFile()) {
                    return str;
                }
                Object objEx = Delete94.ex("readCombinedById", R94.call(this.c.getApplicationContext(), "h", new Object[0]), R94.str(objCall, "nb"));
                if (objEx != null && (fileResolve = Delete94.resolve(R94.str(R94.get(objEx, "cinemanaDownloadItem"), FileDownloadModel.PATH))) != null && fileResolve.isFile()) {
                    return fileResolve.getPath();
                }
            } catch (Exception e) {
            }
            try {
                String str2 = R94.str(R94.get(objCall, "wantedQuality"), "url");
                if (!str2.startsWith("https://") && !str2.startsWith("http://")) {
                    str2 = R94.str(objCall, "url");
                }
                return (str2.startsWith("https://") || str2.startsWith("http://")) ? str2 : BuildConfig.FLAVOR;
            } catch (Exception e2) {
                return BuildConfig.FLAVOR;
            }
        }

        void syncIdentity() {
            try {
                Object objCall = R94.call(this.view, "getVideoModel", new Object[0]);
                String str = R94.str(objCall, "nb") + "|" + R94.str(objCall, "url");
                if (str.equals(this.identity)) {
                    return;
                }
                this.identity = str;
                this.generation++;
                this.source = BuildConfig.FLAVOR;
                this.requestedSecond = -1L;
                this.displayedBucket = -1L;
                this.image.setImageDrawable(null);
                Iterator<Bitmap> it = this.cache.values().iterator();
                while (it.hasNext()) {
                    it.next().recycle();
                }
                this.cache.clear();
            } catch (Exception e) {
            }
        }

        void show(long j) {
            syncIdentity();
            long jSecond = PreviewTime97.second(j) * 1000;
            this.latest = jSecond;
            this.time.setText(label(jSecond));
            anchor(this.latest);
            this.box.setVisibility(0);
            this.image.setVisibility(prefs().getBoolean("preview", true) ? 0 : 8);
            if (prefs().getBoolean("preview", true)) {
                Bitmap bitmap = this.cache.get(this.source + ":" + PreviewTime97.second(this.latest));
                if (bitmap != null && !bitmap.isRecycled()) {
                    this.image.setImageBitmap(bitmap);
                    this.displayedBucket = PreviewTime97.second(this.latest);
                    this.time.setContentDescription(label(this.latest));
                    return;
                }
                this.time.setContentDescription(I18n161.t("جارٍ تجهيز معاينة ") + label(this.latest));
                if (this.requestedSecond == PreviewTime97.second(this.latest) && this.loading) {
                    return;
                }
                this.h.removeCallbacks(this.load);
                this.requestedSecond = PreviewTime97.second(this.latest);
                this.h.post(this.load);
            }
        }

        String label(long j) {
            return String.format(Locale.ROOT, "%02d:%02d", Long.valueOf(j / 60000), Long.valueOf((j / 1000) % 60));
        }

        void hide() {
            this.box.setVisibility(8);
            this.h.removeCallbacks(this.load);
        }

        void closeReader() {
            MediaMetadataRetriever mediaMetadataRetriever = this.retriever;
            if (mediaMetadataRetriever != null) {
                try {
                    mediaMetadataRetriever.release();
                } catch (Throwable th) {
                }
                this.retriever = null;
            }
            this.readerPath = BuildConfig.FLAVOR;
        }

        Bitmap readFrame(String str, long j, int i) {
            if (str.startsWith("http")) {
                return Remote98.frame(this, str, j);
            }
            Bitmap bitmapCreateScaledBitmap = null;
            try {
                if (!str.isEmpty() && !str.startsWith("http")) {
                    if (this.retriever == null || !this.readerPath.equals(str)) {
                        closeReader();
                        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                        this.retriever = mediaMetadataRetriever;
                        mediaMetadataRetriever.setDataSource(str);
                        this.readerPath = str;
                    }
                    Bitmap scaledFrameAtTime = Build.VERSION.SDK_INT >= 27 ? this.retriever.getScaledFrameAtTime(j * 1000, 3, 240, 135) : this.retriever.getFrameAtTime(1000 * j, 3);
                    if (scaledFrameAtTime != null && (bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(scaledFrameAtTime, 240, 135, true)) != scaledFrameAtTime) {
                        scaledFrameAtTime.recycle();
                    }
                }
            } catch (Throwable th) {
                closeReader();
            }
            return (bitmapCreateScaledBitmap == null && !str.isEmpty() && this.live && i == this.generation) ? ffmpeg(str, j) : bitmapCreateScaledBitmap;
        }

        void storeFrame(String str, long j, Bitmap bitmap, int i) {
            if (!this.live || i != this.generation) {
                if (bitmap != null) {
                    bitmap.recycle();
                    return;
                }
                return;
            }
            this.source = str;
            if (bitmap == null) {
                return;
            }
            Bitmap bitmapPut = this.cache.put(str + ":" + PreviewTime97.second(j), bitmap);
            if (bitmapPut != null && bitmapPut != bitmap) {
                bitmapPut.recycle();
            }
            if (this.box.getVisibility() == 0 && PreviewTime97.second(this.latest) == PreviewTime97.second(j)) {
                this.image.setImageBitmap(bitmap);
                this.displayedBucket = PreviewTime97.second(j);
                this.time.setText(label(j));
                this.time.setContentDescription(label(j));
                anchor(j);
            }
            while (this.cache.size() > 48) {
                this.cache.remove(this.cache.keySet().iterator().next());
            }
        }

        /* JADX INFO: renamed from: lambda$prepare$1$com-shabakaty-cinemana-ca1-Player94$State, reason: not valid java name */
        /* synthetic */ void m49lambda$prepare$1$comshabakatycinemanaca1Player94$State(String str, long j, Bitmap bitmap, int i, boolean z) {
            this.loading = false;
            storeFrame(str, j, bitmap, i);
            if (this.live) {
                if (i != this.generation) {
                    if (this.box.getVisibility() == 0) {
                        this.h.post(this.load);
                        return;
                    }
                    return;
                }
                if (!z) {
                    Log94.event(this.c, "preview_result", "second=" + PreviewTime97.second(j) + " frame=" + (bitmap != null) + " network=" + str.startsWith("http"));
                }
                if (this.box.getVisibility() == 0 && PreviewTime97.second(this.latest) != PreviewTime97.second(j)) {
                    this.h.post(this.load);
                } else if (bitmap != null) {
                    prepareNeighbours(this.box.getVisibility() == 0 ? this.latest : PreviewTime97.second(pos("C")) * 1000);
                }
            }
        }

        /* JADX INFO: renamed from: lambda$prepare$2$com-shabakaty-cinemana-ca1-Player94$State, reason: not valid java name */
        /* synthetic */ void m50lambda$prepare$2$comshabakatycinemanaca1Player94$State(String str, final long j, final int i, final boolean z) {
            Process.setThreadPriority(10);
            if (str.isEmpty()) {
                str = source();
            }
            final String str2 = str;
            final Bitmap frame = readFrame(str2, j, i);
            this.h.post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Player94$State$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m49lambda$prepare$1$comshabakatycinemanaca1Player94$State(str2, j, frame, i, z);
                }
            });
        }

        void prepare(final long j, final boolean z) {
            if (this.loading || !this.live) {
                return;
            }
            if (this.cache.containsKey(this.source + ":" + PreviewTime97.second(j))) {
                if (z) {
                    return;
                }
                prepareNeighbours(j);
            } else {
                this.loading = true;
                final int i = this.generation;
                final String str = this.source;
                Player94.frames.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Player94$State$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m50lambda$prepare$2$comshabakatycinemanaca1Player94$State(str, j, i, z);
                    }
                });
            }
        }

        void prepareNeighbours(long j) {
            if (this.loading || !this.live || this.source.startsWith("http") || this.source.isEmpty()) {
                return;
            }
            long jPos = pos("X");
            int[] iArr = {1, -1, 2, -2};
            for (int i = 0; i < 4; i++) {
                long j2 = ((long) (iArr[i] * 1000)) + j;
                if (j2 >= 0 && j2 <= jPos && !this.cache.containsKey(this.source + ":" + PreviewTime97.second(j2))) {
                    prepare(j2, true);
                    return;
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:63:0x0147 A[PHI: r4
          0x0147: PHI (r4v2 java.io.File) = (r4v1 java.io.File), (r4v8 java.io.File) binds: [B:62:0x0145, B:38:0x011b] A[DONT_GENERATE, DONT_INLINE]] */
        Bitmap ffmpeg(String str, long j) {
            final Process processStart;
            File fileCreateTempFile;
            ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor;
            try {
                File file = new File(this.c.getApplicationInfo().nativeLibraryDir, "libffmpeg.so");
                if (!file.canExecute()) {
                    this.frameProcess = null;
                    return null;
                }
                fileCreateTempFile = File.createTempFile("ca1_preview95_", ".jpg", this.c.getCacheDir());
                try {
                    ArrayList arrayList = new ArrayList(Arrays.asList(file.getPath(), "-nostdin", "-loglevel", "error", "-y"));
                    if (str.startsWith("http")) {
                        arrayList.add("-rw_timeout");
                        arrayList.add("3000000");
                    }
                    arrayList.addAll(Arrays.asList("-ss", String.format(Locale.ROOT, "%.3f", Double.valueOf(j / 1000.0d)), "-i", str, "-frames:v", "1", "-vf", "scale=240:135:force_original_aspect_ratio=decrease", "-f", "image2", fileCreateTempFile.getPath()));
                    ProcessBuilder processBuilder = new ProcessBuilder(arrayList);
                    processBuilder.redirectErrorStream(true);
                    processStart = processBuilder.start();
                    try {
                        this.frameProcess = processStart;
                        scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
                        try {
                            scheduledExecutorServiceNewSingleThreadScheduledExecutor.schedule(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Player94$State$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    processStart.destroy();
                                }
                            }, 6L, TimeUnit.SECONDS);
                            InputStream inputStream = processStart.getInputStream();
                            try {
                                do {
                                } while (inputStream.read(new byte[RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE]) != -1);
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (processStart.waitFor() == 0) {
                                    Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(fileCreateTempFile.getPath());
                                    if (processStart != null) {
                                        processStart.destroy();
                                    }
                                    this.frameProcess = null;
                                    if (scheduledExecutorServiceNewSingleThreadScheduledExecutor != null) {
                                        scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdownNow();
                                    }
                                    if (fileCreateTempFile != null) {
                                        fileCreateTempFile.delete();
                                    }
                                    return bitmapDecodeFile;
                                }
                                if (processStart != null) {
                                    processStart.destroy();
                                }
                                this.frameProcess = null;
                                if (scheduledExecutorServiceNewSingleThreadScheduledExecutor != null) {
                                    scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdownNow();
                                }
                                if (fileCreateTempFile != null) {
                                    fileCreateTempFile.delete();
                                }
                                return null;
                            } catch (Throwable th) {
                                if (inputStream == null) {
                                    throw th;
                                }
                                try {
                                    inputStream.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                    throw th;
                                }
                            }
                        } catch (Throwable th3) {
                        }
                    } catch (Throwable th4) {
                        scheduledExecutorServiceNewSingleThreadScheduledExecutor = null;
                    }
                } catch (Throwable th5) {
                    processStart = null;
                    scheduledExecutorServiceNewSingleThreadScheduledExecutor = null;
                }
            } catch (Throwable th6) {
                processStart = null;
                fileCreateTempFile = null;
                scheduledExecutorServiceNewSingleThreadScheduledExecutor = null;
            }
            if (processStart != null) {
                processStart.destroy();
            }
            this.frameProcess = null;
            if (scheduledExecutorServiceNewSingleThreadScheduledExecutor != null) {
                scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdownNow();
            }
            if (fileCreateTempFile != null) {
                fileCreateTempFile.delete();
            }
            return null;
        }

        /* JADX INFO: renamed from: lambda$new$4$com-shabakaty-cinemana-ca1-Player94$State, reason: not valid java name */
        /* synthetic */ void m48lambda$new$4$comshabakatycinemanaca1Player94$State() {
            if (this.live && this.box.getVisibility() == 0) {
                Bitmap bitmap = this.cache.get(this.source + ":" + PreviewTime97.second(this.latest));
                if (bitmap == null || bitmap.isRecycled()) {
                    prepare(this.latest, false);
                    return;
                }
                this.image.setImageBitmap(bitmap);
                this.displayedBucket = PreviewTime97.second(this.latest);
                prepareNeighbours(this.latest);
            }
        }
    }
}
