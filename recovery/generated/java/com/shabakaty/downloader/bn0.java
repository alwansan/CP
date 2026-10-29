package com.shabakaty.downloader;

import com.connectsdk.service.airplay.PListParser;
import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: DecoderInputBuffer.java */
/* JADX INFO: loaded from: classes.dex */
public class bn0 extends ao {
    public ByteBuffer t;
    public boolean u;
    public long v;
    public ByteBuffer w;
    public final int x;
    public final ug0 s = new ug0();
    public final int y = 0;

    /* JADX INFO: compiled from: DecoderInputBuffer.java */
    public static final class a extends IllegalStateException {
        /* JADX WARN: Illegal instructions before constructor call */
        public a(int i, int i2) {
            StringBuilder sbA = pe.a(44, "Buffer too small (", i, " < ", i2);
            sbA.append(")");
            super(sbA.toString());
        }
    }

    public bn0(int i) {
        this.x = i;
    }

    public void H() {
        this.r = 0;
        ByteBuffer byteBuffer = this.t;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.w;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.u = false;
    }

    public final ByteBuffer I(int i) {
        int i2 = this.x;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.t;
        throw new a(byteBuffer == null ? 0 : byteBuffer.capacity(), i);
    }

    @EnsuresNonNull({PListParser.TAG_DATA})
    public void J(int i) {
        int i2 = i + this.y;
        ByteBuffer byteBuffer = this.t;
        if (byteBuffer == null) {
            this.t = I(i2);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i3 = i2 + iPosition;
        if (iCapacity >= i3) {
            this.t = byteBuffer;
            return;
        }
        ByteBuffer byteBufferI = I(i3);
        byteBufferI.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferI.put(byteBuffer);
        }
        this.t = byteBufferI;
    }

    public final void K() {
        ByteBuffer byteBuffer = this.t;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.w;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean L() {
        return y(1073741824);
    }
}
