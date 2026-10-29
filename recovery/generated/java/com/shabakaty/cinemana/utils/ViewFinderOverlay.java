package com.shabakaty.cinemana.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.cinemana.pro.R;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.ld0;
import kotlin.Metadata;

/* JADX INFO: compiled from: ViewFinderOverlay.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/shabakaty/cinemana/utils/ViewFinderOverlay;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class ViewFinderOverlay extends View {
    public final Paint r;
    public final Paint s;
    public final Paint t;
    public final float u;
    public RectF v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewFinderOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        j32.e(context, "context");
        j32.e(attributeSet, "attrs");
        Paint paint = new Paint();
        paint.setColor(ld0.b(context, R.color.barcode_reticle_stroke));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(context.getResources().getDimensionPixelOffset(R.dimen.barcode_reticle_stroke_width));
        this.r = paint;
        Paint paint2 = new Paint();
        paint2.setColor(ld0.b(context, R.color.barcode_reticle_background));
        this.s = paint2;
        Paint paint3 = new Paint();
        paint3.setStrokeWidth(paint.getStrokeWidth());
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.t = paint3;
        this.u = context.getResources().getDimensionPixelOffset(R.dimen.barcode_reticle_corner_radius);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        j32.e(canvas, "canvas");
        super.draw(canvas);
        RectF rectF = this.v;
        if (rectF == null) {
            return;
        }
        canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.s);
        this.t.setStyle(Paint.Style.FILL);
        float f = this.u;
        canvas.drawRoundRect(rectF, f, f, this.t);
        this.t.setStyle(Paint.Style.STROKE);
        float f2 = this.u;
        canvas.drawRoundRect(rectF, f2, f2, this.t);
        float f3 = this.u;
        canvas.drawRoundRect(rectF, f3, f3, this.r);
    }
}
