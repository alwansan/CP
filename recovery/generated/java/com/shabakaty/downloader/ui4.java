package com.shabakaty.downloader;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ui4 extends xd0 implements tn1<Object> {
    public final int u;

    public ui4(int i, ud0<Object> ud0Var) {
        super(ud0Var);
        this.u = i;
    }

    @Override // com.shabakaty.downloader.tn1
    public int getArity() {
        return this.u;
    }

    @Override // com.shabakaty.downloader.bj
    public String toString() {
        if (this.r != null) {
            return super.toString();
        }
        String strD = dq3.d(this);
        j32.d(strD, "renderLambdaToString(this)");
        return strD;
    }
}
