package com.shabakaty.cinemana.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.cinemana.pro.R;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.k5;
import com.shabakaty.downloader.wt2;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: compiled from: AlphaTileView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/shabakaty/cinemana/utils/AlphaTileView;", "Landroid/view/View;", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class AlphaTileView extends View {
    public final Paint r;
    public final k5.a s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AlphaTileView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        this.r = new Paint();
        k5.a aVar = new k5.a();
        this.s = aVar;
        aVar.b = Color.parseColor("#cccccc");
        Context context2 = getContext();
        j32.d(context2, "context");
        aVar.c = wt2.f(context2, R.color.white);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmapCreateScaledBitmap;
        j32.e(canvas, "canvas");
        super.onDraw(canvas);
        if (getMeasuredHeight() != 0) {
            this.s.a = getMeasuredHeight() / 9;
            k5.a aVar = this.s;
            Objects.requireNonNull(aVar);
            Drawable k5Var = new k5(aVar);
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            j32.e(k5Var, "<this>");
            if (k5Var instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) k5Var;
                if (measuredWidth == bitmapDrawable.getIntrinsicWidth() && measuredHeight == bitmapDrawable.getIntrinsicHeight()) {
                    bitmapCreateScaledBitmap = bitmapDrawable.getBitmap();
                    j32.d(bitmapCreateScaledBitmap, "bitmap");
                } else {
                    bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), measuredWidth, measuredHeight, true);
                    j32.d(bitmapCreateScaledBitmap, "createScaledBitmap(bitmap, width, height, true)");
                }
            } else {
                Rect bounds = k5Var.getBounds();
                j32.d(bounds, "bounds");
                int i = bounds.left;
                int i2 = bounds.top;
                int i3 = bounds.right;
                int i4 = bounds.bottom;
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
                k5Var.setBounds(0, 0, measuredWidth, measuredHeight);
                k5Var.draw(new Canvas(bitmapCreateBitmap));
                k5Var.setBounds(i, i2, i3, i4);
                j32.d(bitmapCreateBitmap, "bitmap");
                bitmapCreateScaledBitmap = bitmapCreateBitmap;
            }
            canvas.drawBitmap(bitmapCreateScaledBitmap, 0.0f, 0.0f, this.r);
            canvas.save();
        }
    }
}
