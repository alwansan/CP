package com.shabakaty.downloader;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: RoomSQLiteQuery.java */
/* JADX INFO: loaded from: classes.dex */
public class yt3 implements bi4, ai4 {
    public static final TreeMap<Integer, yt3> z = new TreeMap<>();
    public volatile String r;
    public final long[] s;
    public final double[] t;
    public final String[] u;
    public final byte[][] v;
    public final int[] w;
    public final int x;
    public int y;

    public yt3(int i) {
        this.x = i;
        int i2 = i + 1;
        this.w = new int[i2];
        this.s = new long[i2];
        this.t = new double[i2];
        this.u = new String[i2];
        this.v = new byte[i2][];
    }

    public static yt3 a(String str, int i) {
        TreeMap<Integer, yt3> treeMap = z;
        synchronized (treeMap) {
            Map.Entry<Integer, yt3> entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (entryCeilingEntry == null) {
                yt3 yt3Var = new yt3(i);
                yt3Var.r = str;
                yt3Var.y = i;
                return yt3Var;
            }
            treeMap.remove(entryCeilingEntry.getKey());
            yt3 value = entryCeilingEntry.getValue();
            value.r = str;
            value.y = i;
            return value;
        }
    }

    @Override // com.shabakaty.downloader.ai4
    public void I(int i, String str) {
        this.w[i] = 4;
        this.u[i] = str;
    }

    @Override // com.shabakaty.downloader.ai4
    public void T(int i, double d) {
        this.w[i] = 3;
        this.t[i] = d;
    }

    @Override // com.shabakaty.downloader.ai4
    public void T0(int i) {
        this.w[i] = 1;
    }

    @Override // com.shabakaty.downloader.bi4
    public void b(ai4 ai4Var) {
        for (int i = 1; i <= this.y; i++) {
            int i2 = this.w[i];
            if (i2 == 1) {
                ((qk3) ai4Var).T0(i);
            } else if (i2 == 2) {
                ((qk3) ai4Var).h0(i, this.s[i]);
            } else if (i2 == 3) {
                ((qk3) ai4Var).T(i, this.t[i]);
            } else if (i2 == 4) {
                ((qk3) ai4Var).I(i, this.u[i]);
            } else if (i2 == 5) {
                ((qk3) ai4Var).t0(i, this.v[i]);
            }
        }
    }

    public void c() {
        TreeMap<Integer, yt3> treeMap = z;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.x), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator<Integer> it = treeMap.descendingKeySet().iterator();
                while (true) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.shabakaty.downloader.bi4
    public String d() {
        return this.r;
    }

    @Override // com.shabakaty.downloader.ai4
    public void h0(int i, long j) {
        this.w[i] = 2;
        this.s[i] = j;
    }

    @Override // com.shabakaty.downloader.ai4
    public void t0(int i, byte[] bArr) {
        this.w[i] = 5;
        this.v[i] = bArr;
    }
}
