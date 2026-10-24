.class public final Lcom/shabakaty/downloader/i41;
.super Ljava/lang/Object;
.source "EpomExtensions.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/mq;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ws3;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gv;

    invoke-static {p1}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->F()V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/i41$a;

    invoke-direct {p1, v0, p0}, Lcom/shabakaty/downloader/i41$a;-><init>(Lcom/shabakaty/downloader/fv;Lcom/shabakaty/downloader/mq;)V

    invoke-static {p0, p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/wq;)V

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/i41$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/i41$b;-><init>(Lcom/shabakaty/downloader/mq;)V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/vr3$a;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "clientIp"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/vr3$a;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    :goto_0
    return-object p0
.end method

.method public static final c(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final d(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
