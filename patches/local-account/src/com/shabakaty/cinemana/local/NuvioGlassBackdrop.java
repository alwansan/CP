package com.shabakaty.cinemana.local;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.RenderEffect;
import android.graphics.Shader;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;

/**
 * Narrow, opt-in Android 12+ frosted backdrop for Cinemana's existing
 * BottomNavigationView. Samples ONLY FragmentContainerView (never navigation
 * or a full-screen screenshot), so content under the floating bar is blurred
 * without blurring the posters visible elsewhere on the screen.
 *
 * On API < 31 or low-RAM devices the XML translucent graphite surface remains.
 * No permissions, PixelCopy, RenderScript, or screenshot storage are used.
 */
public final class NuvioGlassBackdrop {
    private static final String TAG = "nuvio-glass-backdrop";
    private static final long CAPTURE_INTERVAL_MS = 160L;
    private static final int SAMPLE_DIVISOR = 4;
    private NuvioGlassBackdrop() {}

    public static void install(Activity activity) {
        if (Build.VERSION.SDK_INT < 31 || activity == null) return;
        ActivityManager memory = (ActivityManager) activity.getSystemService(Context.ACTIVITY_SERVICE);
        if (memory != null && memory.isLowRamDevice()) return;

        int barId = activity.getResources().getIdentifier("home_bottom_nav", "id", activity.getPackageName());
        int contentId = activity.getResources().getIdentifier("fragment_container", "id", activity.getPackageName());
        if (barId == 0 || contentId == 0) return;

        View bar = activity.findViewById(barId);
        View content = activity.findViewById(contentId);
        if (!(bar instanceof FrameLayout) || content == null || bar.findViewWithTag(TAG) != null) return;
        FrameLayout nav = (FrameLayout) bar;
        FrostedImage image = new FrostedImage(activity, content, nav);
        image.setTag(TAG);
        image.setClickable(false);
        image.setFocusable(false);
        image.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        image.setScaleType(ImageView.ScaleType.FIT_XY);
        image.setAlpha(0.90f);
        image.setRenderEffect(RenderEffect.createBlurEffect(18f, 18f, Shader.TileMode.CLAMP));

        FrameLayout.LayoutParams overlayParams =
                new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        nav.addView(image, 0, overlayParams);

        // Keep labels/icons on top; both backdrop and tint are clipped to the
        // existing rounded nav outline, so no extra drawables need resources.
        View tint = new View(activity);
        tint.setBackgroundColor(Color.argb(93, 31, 34, 40));
        tint.setClickable(false);
        tint.setFocusable(false);
        tint.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        nav.addView(tint, 1, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        nav.setClipToOutline(true);
    }

    static final class FrostedImage extends ImageView implements
            ViewTreeObserver.OnScrollChangedListener,
            ViewTreeObserver.OnGlobalLayoutListener {
        private final View feed;
        private final View bar;
        private final int[] feedLocation = new int[2];
        private final int[] barLocation = new int[2];
        private final Runnable captureTask = new Runnable() {
            @Override public void run() {
                queued = false;
                lastCaptureMs = SystemClock.uptimeMillis();
                capture();
            }
        };
        private Bitmap sample;
        private ViewTreeObserver observer;
        private boolean queued;
        private boolean capturing;
        private boolean unsupported;
        private long lastCaptureMs;

        FrostedImage(Context context, View feed, View bar) {
            super(context);
            this.feed = feed;
            this.bar = bar;
        }

        @Override protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            observer = getViewTreeObserver();
            if (observer.isAlive()) {
                observer.addOnScrollChangedListener(this);
                observer.addOnGlobalLayoutListener(this);
            }
            requestCapture();
        }

        @Override protected void onDetachedFromWindow() {
            removeCallbacks(captureTask);
            queued = false;
            if (observer != null && observer.isAlive()) {
                observer.removeOnScrollChangedListener(this);
                observer.removeOnGlobalLayoutListener(this);
            }
            observer = null;
            setImageDrawable(null);
            sample = null;
            super.onDetachedFromWindow();
        }

        @Override public void onScrollChanged() { requestCapture(); }
        @Override public void onGlobalLayout() { requestCapture(); }

        private void requestCapture() {
            if (unsupported || queued || !isAttachedToWindow()) return;
            long remaining = CAPTURE_INTERVAL_MS - (SystemClock.uptimeMillis() - lastCaptureMs);
            queued = true;
            postDelayed(captureTask, Math.max(0L, remaining));
        }

        private void capture() {
            if (unsupported || capturing || !isAttachedToWindow() ||
                getWidth() <= 0 || getHeight() <= 0 ||
                feed.getWidth() <= 0 || feed.getHeight() <= 0 ||
                !feed.isShown() || !bar.isShown()) return;

            final int width = Math.max(1, getWidth() / SAMPLE_DIVISOR);
            final int height = Math.max(1, getHeight() / SAMPLE_DIVISOR);
            if (width > 1024 || height > 256) return;

            capturing = true;
            try {
                if (sample == null || sample.getWidth() != width || sample.getHeight() != height) {
                    sample = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                    setImageBitmap(sample);
                }
                Canvas target = new Canvas(sample);
                target.drawColor(Color.TRANSPARENT, PorterDuff.Mode.CLEAR);
                feed.getLocationInWindow(feedLocation);
                bar.getLocationInWindow(barLocation);
                final int restore = target.save();
                target.scale((float) width / getWidth(), (float) height / getHeight());
                target.translate(feedLocation[0] - barLocation[0],
                                 feedLocation[1] - barLocation[1]);
                feed.draw(target);
                target.restoreToCount(restore);
                invalidate();
            } catch (RuntimeException error) {
                // Preserve the original semi-transparent footer if capturing
                // is unsupported by a device renderer; do not crash the app.
                unsupported = true;
                setImageDrawable(null);
            } catch (OutOfMemoryError error) {
                unsupported = true;
                setImageDrawable(null);
            } finally {
                capturing = false;
            }
        }
    }
}
