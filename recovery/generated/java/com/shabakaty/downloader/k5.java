package com.shabakaty.downloader;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: AlphaTileDrawable.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k5 extends Drawable {
    public final Paint a;
    public int b;
    public int c;
    public int d;

    /* JADX INFO: compiled from: AlphaTileDrawable.kt */
    public static final class a {
        public int a = 25;
        public int b = -1;
        public int c = -3421237;
    }

    public k5(a aVar) {
        Paint paint = new Paint(1);
        this.a = paint;
        int i = aVar.a;
        this.b = i;
        this.c = aVar.b;
        this.d = aVar.c;
        int i2 = i * 2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int i3 = this.b;
        Rect rect = new Rect(0, 0, i3, i3);
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setColor(this.c);
        rect.offset(0, 0);
        canvas.drawRect(rect, paint2);
        int i4 = this.b;
        rect.offset(i4, i4);
        canvas.drawRect(rect, paint2);
        paint2.setColor(this.d);
        rect.offset(-this.b, 0);
        canvas.drawRect(rect, paint2);
        int i5 = this.b;
        rect.offset(i5, -i5);
        canvas.drawRect(rect, paint2);
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        paint.setShader(new BitmapShader(bitmapCreateBitmap, tileMode, tileMode));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        j32.e(canvas, "canvas");
        canvas.drawPaint(this.a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
    }
}
