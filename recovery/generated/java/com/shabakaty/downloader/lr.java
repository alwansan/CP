package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.NextPreviousEpisodeButton;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lr implements Runnable {
    public final /* synthetic */ int r = 2;
    public final /* synthetic */ Object s;
    public final /* synthetic */ boolean t;

    public /* synthetic */ lr(NextPreviousEpisodeButton nextPreviousEpisodeButton, boolean z) {
        this.s = nextPreviousEpisodeButton;
        this.t = z;
    }

    public /* synthetic */ lr(mr mrVar, boolean z) {
        this.s = mrVar;
        this.t = z;
    }

    public /* synthetic */ lr(ye.a aVar, boolean z) {
        this.s = aVar;
        this.t = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = true;
        switch (this.r) {
            case 0:
                mr mrVar = (mr) this.s;
                boolean z2 = this.t;
                if (mrVar.a == z2) {
                    return;
                }
                mrVar.a = z2;
                if (z2) {
                    if (mrVar.b) {
                        sr srVar = mrVar.c;
                        srVar.b.execute(new nr(srVar, 1));
                        mrVar.b = false;
                        return;
                    }
                    return;
                }
                synchronized (mrVar.e) {
                    mrVar.f = new js.a();
                    break;
                }
                ar.a<Void> aVar = mrVar.g;
                if (aVar != null) {
                    aVar.c(new ct("The camera control has became inactive."));
                    mrVar.g = null;
                    return;
                }
                return;
            case 1:
                ye.a aVar2 = (ye.a) this.s;
                boolean z3 = this.t;
                ye yeVar = aVar2.b;
                int i = sy4.a;
                yeVar.c(z3);
                return;
            default:
                NextPreviousEpisodeButton nextPreviousEpisodeButton = (NextPreviousEpisodeButton) this.s;
                boolean z4 = this.t;
                int i2 = NextPreviousEpisodeButton.F;
                j32.e(nextPreviousEpisodeButton, "this$0");
                if (!nextPreviousEpisodeButton.D ? !z4 || !nextPreviousEpisodeButton.z || !nextPreviousEpisodeButton.C || !nextPreviousEpisodeButton.B : !z4 || !nextPreviousEpisodeButton.z || !nextPreviousEpisodeButton.C || !nextPreviousEpisodeButton.A) {
                    z = false;
                }
                nextPreviousEpisodeButton.setEnabled(z);
                return;
        }
    }
}
