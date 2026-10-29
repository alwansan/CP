package com.shabakaty.cinemana.local;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;

import java.util.WeakHashMap;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * Non-invasive, idle-time frosted backdrop for the floating navigation.
 *
 * IMPORTANT: BottomNavigationView's first child must remain the Material
 * BottomNavigationMenuView. Do not add children to that view. The original
 * implementation inserted an ImageView at index 0, crashing nl6.v().
 *
 * Samples ONLY the content behind the nav at 1/6 scale, once after scrolling
 * becomes idle; runs the two-pass blur off the main thread; publishes a
 * rounded background Drawable. Never traverses the feed while it is moving.
 *
 * API 30 and older / low-RAM: original translucent XML nav is left intact.
 */
public final class NuvioGlassBackdrop {
    private static final long QUIET_MS = 950L;
    private static final int SAMPLE_DIVISOR = 6;
    private static final int MAX_SAMPLE_WIDTH = 160;
    private static final int MAX_SAMPLE_HEIGHT = 40;
    private static final WeakHashMap<View, Controller> ACTIVE = new WeakHashMap<View, Controller>();
    private static final ThreadPoolExecutor BLUR_WORKER = new ThreadPoolExecutor(
        1, 1, 0L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue<Runnable>(1),
        new ThreadPoolExecutor.DiscardOldestPolicy()
    );

    private NuvioGlassBackdrop() {}

    public static void install(Activity activity) {
        if (activity == null || Build.VERSION.SDK_INT < 31) return;
        ActivityManager manager = (ActivityManager) activity.getSystemService(Context.ACTIVITY_SERVICE);
        if (manager != null && manager.isLowRamDevice()) return;
        final int navId = activity.getResources().getIdentifier(
            "home_bottom_nav", "id", activity.getPackageName());
        final int feedId = activity.getResources().getIdentifier(
            "fragment_container", "id", activity.getPackageName());
        if (navId == 0 || feedId == 0) return;
        View nav = activity.findViewById(navId);
        View feed = activity.findViewById(feedId);
        if (nav == null || feed == null) return;
        synchronized (ACTIVE) {
            if (ACTIVE.containsKey(nav)) return;
            Controller controller = new Controller(nav, feed);
            ACTIVE.put(nav, controller);
            controller.attach();
        }
    }

    static final class Controller implements
            View.OnAttachStateChangeListener,
            View.OnLayoutChangeListener,
            ViewTreeObserver.OnScrollChangedListener {
        final View nav;
        final View feed;
        final Drawable fallback;
        final int[] feedPosition = new int[2];
        final int[] navPosition = new int[2];

        ViewTreeObserver scrollObserver;
        boolean stopped;
        boolean attached;
        boolean rendering;
        int generation;
        long lastSampleAt;
        final Runnable sampleTask = new Runnable() {
            @Override public void run() { captureWhenIdle(); }
        };

        Controller(View nav, View feed) {
            this.nav = nav;
            this.feed = feed;
            this.fallback = nav.getBackground();
        }

        void attach() {
            nav.addOnAttachStateChangeListener(this);
            nav.addOnLayoutChangeListener(this);
            if (nav.isAttachedToWindow()) onViewAttachedToWindow(nav);
        }

        @Override public void onViewAttachedToWindow(View v) {
            if (stopped || attached) return;
            attached = true;
            scrollObserver = nav.getViewTreeObserver();
            if (scrollObserver.isAlive()) scrollObserver.addOnScrollChangedListener(this);
            scheduleWhenQuiet();
        }

        @Override public void onViewDetachedFromWindow(View v) {
            attached = false;
            stopped = true;
            generation++;
            nav.removeCallbacks(sampleTask);
            nav.removeOnLayoutChangeListener(this);
            nav.removeOnAttachStateChangeListener(this);
            if (scrollObserver != null && scrollObserver.isAlive())
                scrollObserver.removeOnScrollChangedListener(this);
            scrollObserver = null;
            synchronized (ACTIVE) { ACTIVE.remove(nav); }
        }

        @Override public void onScrollChanged() { scheduleWhenQuiet(); }
        @Override public void onLayoutChange(View v, int left, int top, int right, int bottom,
                                            int oldLeft, int oldTop, int oldRight, int oldBottom) {
            if (right - left != oldRight - oldLeft || bottom - top != oldBottom - oldTop)
                scheduleWhenQuiet();
        }

        void scheduleWhenQuiet() {
            if (stopped || !attached) return;
            // Debounce: no captures while any view in the hierarchy scrolls.
            generation++;
            nav.removeCallbacks(sampleTask);
            nav.postDelayed(sampleTask, QUIET_MS);
        }

        void captureWhenIdle() {
            if (stopped || !attached || rendering || !nav.isShown() || !feed.isShown()) return;
            if (nav.getWidth() <= 0 || nav.getHeight() <= 0 ||
                feed.getWidth() <= 0 || feed.getHeight() <= 0) return;
            final int width = Math.max(1, nav.getWidth() / SAMPLE_DIVISOR);
            final int height = Math.max(1, nav.getHeight() / SAMPLE_DIVISOR);
            if (width > MAX_SAMPLE_WIDTH || height > MAX_SAMPLE_HEIGHT) return;
            if (SystemClock.uptimeMillis() - lastSampleAt < QUIET_MS) return;

            final int submittedGeneration = generation;
            rendering = true;
            lastSampleAt = SystemClock.uptimeMillis();
            Bitmap sample = null;
            try {
                sample = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(sample);
                canvas.drawColor(Color.TRANSPARENT, PorterDuff.Mode.CLEAR);
                feed.getLocationInWindow(feedPosition);
                nav.getLocationInWindow(navPosition);
                int save = canvas.save();
                canvas.scale((float) width / nav.getWidth(), (float) height / nav.getHeight());
                canvas.translate(feedPosition[0] - navPosition[0],
                                 feedPosition[1] - navPosition[1]);
                feed.draw(canvas); // Once after quiet period, never per-frame!
                canvas.restoreToCount(save);
                final Bitmap input = sample;
                BLUR_WORKER.execute(new Runnable() {
                    @Override public void run() {
                        final Bitmap result;
                        try { result = blurred(input); }
                        catch (RuntimeException error) { rendering = false; return; }
                        catch (OutOfMemoryError error) { rendering = false; return; }
                        nav.post(new Runnable() {
                            @Override public void run() {
                                rendering = false;
                                if (stopped || !attached || generation != submittedGeneration) {
                                    if (!stopped) scheduleWhenQuiet();
                                    return;
                                }
                                if (result != null) {
                                    nav.setBackground(new FrostedBackground(result,
                                        nav.getResources().getDisplayMetrics().density));
                                    nav.setClipToOutline(true);
                                } else {
                                    nav.setBackground(fallback);
                                }
                            }
                        });
                    }
                });
            } catch (RuntimeException error) {
                rendering = false;
                nav.setBackground(fallback);
            } catch (OutOfMemoryError error) {
                rendering = false;
                nav.setBackground(fallback);
            }
        }
    }

    /** Bounded two-pass box filter on the worker, not the UI thread. */
    private static Bitmap blurred(Bitmap input) {
        int w = input.getWidth(), h = input.getHeight();
        int[] src = new int[w * h], tmp = new int[w * h], dst = new int[w * h];
        input.getPixels(src, 0, w, 0, 0, w, h);
        final int radius = 3;
        for (int y = 0; y < h; y++) {
            int row = y * w;
            for (int x = 0; x < w; x++) {
                int r = 0, g = 0, b = 0;
                for (int k = -radius; k <= radius; k++) {
                    int c = src[row + Math.min(w - 1, Math.max(0, x + k))];
                    r += (c >> 16) & 255; g += (c >> 8) & 255; b += c & 255;
                }
                tmp[row + x] = Color.rgb(r / 7, g / 7, b / 7);
            }
        }
        for (int y = 0; y < h; y++) {
            for (int x = 0; x < w; x++) {
                int r = 0, g = 0, b = 0;
                for (int k = -radius; k <= radius; k++) {
                    int c = tmp[Math.min(h - 1, Math.max(0, y + k)) * w + x];
                    r += (c >> 16) & 255; g += (c >> 8) & 255; b += c & 255;
                }
                dst[y * w + x] = Color.rgb(r / 7, g / 7, b / 7);
            }
        }
        Bitmap result = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        result.setPixels(dst, 0, w, 0, 0, w, h);
        return result;
    }

    /** Full rounded corner treatment stays on the original nav background. */
    static final class FrostedBackground extends Drawable {
        final Bitmap image;
        final float density;
        final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        final Paint tint = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Paint outlinePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Path outlinePath = new Path();

        FrostedBackground(Bitmap image, float density) {
            this.image = image;
            this.density = density;
            tint.setColor(Color.argb(154, 29, 32, 37));
            outlinePaint.setStyle(Paint.Style.STROKE);
            outlinePaint.setStrokeWidth(density * 0.75f);
            outlinePaint.setColor(Color.argb(105, 233, 238, 246));
        }

        @Override public void draw(Canvas canvas) {
            Rect b = getBounds();
            if (b.isEmpty()) return;
            RectF box = new RectF(b);
            float radius = Math.min(box.height() / 2f, density * 40f);
            outlinePath.reset();
            outlinePath.addRoundRect(box, radius, radius, Path.Direction.CW);
            int save = canvas.save();
            canvas.clipPath(outlinePath);
            canvas.drawBitmap(image, null, box, fill);
            canvas.drawRoundRect(box, radius, radius, tint);
            canvas.restoreToCount(save);
            float border = outlinePaint.getStrokeWidth() / 2f;
            box.inset(border, border);
            canvas.drawRoundRect(box, radius - border, radius - border, outlinePaint);
        }
        @Override public void getOutline(Outline outline) {
            Rect b = getBounds();
            outline.setRoundRect(b, Math.min(b.height() / 2f, density * 40f));
        }
        @Override public void setAlpha(int alpha) { tint.setAlpha(alpha); invalidateSelf(); }
        @Override public void setColorFilter(ColorFilter filter) { fill.setColorFilter(filter); invalidateSelf(); }
        @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
    }
}
