.class public final Lcom/shabakaty/downloader/kb3;
.super Ljava/lang/Object;
.source "PausingDispatcher.kt"


# direct methods
.method public static final a(Landroidx/lifecycle/e;Landroidx/lifecycle/e$c;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/e;",
            "Landroidx/lifecycle/e$c;",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/se0;",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vl2;->M()Lcom/shabakaty/downloader/vl2;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/kb3$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/shabakaty/downloader/kb3$a;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/e$c;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v0, v1, p3}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
