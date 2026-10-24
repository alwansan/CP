.class public final Lcom/shabakaty/downloader/af0;
.super Ljava/lang/Object;
.source "CoroutinesRoom.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/vt3;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/te1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/vt3;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)",
            "Lcom/shabakaty/downloader/te1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "db"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/we0;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move v3, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/we0;-><init>([Ljava/lang/String;ZLcom/shabakaty/downloader/vt3;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)V

    .line 3
    new-instance p0, Lcom/shabakaty/downloader/rw3;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/rw3;-><init>(Lcom/shabakaty/downloader/hn1;)V

    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/vt3;",
            "Z",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p4}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/qp4;->r:Lcom/shabakaty/downloader/qp4$a;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qp4;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/ol3;->e(Lcom/shabakaty/downloader/vt3;)Lcom/shabakaty/downloader/pe0;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/ol3;->d(Lcom/shabakaty/downloader/vt3;)Lcom/shabakaty/downloader/pe0;

    move-result-object p0

    .line 5
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/gv;

    invoke-static {p4}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p4

    const/4 v0, 0x1

    invoke-direct {p1, p4, v0}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gv;->F()V

    .line 7
    sget-object p4, Lcom/shabakaty/downloader/iq1;->r:Lcom/shabakaty/downloader/iq1;

    new-instance v6, Lcom/shabakaty/downloader/xe0;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/xe0;-><init>(Lcom/shabakaty/downloader/fv;Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/yd0;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p4

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/ye0;

    invoke-direct {v0, p4, p0, p3, p2}, Lcom/shabakaty/downloader/ye0;-><init>(Lcom/shabakaty/downloader/e92;Lcom/shabakaty/downloader/yd0;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p0

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    :goto_1
    return-object p0
.end method

.method public static final c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/vt3;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p3}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/qp4;->r:Lcom/shabakaty/downloader/qp4$a;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qp4;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/ol3;->e(Lcom/shabakaty/downloader/vt3;)Lcom/shabakaty/downloader/pe0;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/ol3;->d(Lcom/shabakaty/downloader/vt3;)Lcom/shabakaty/downloader/pe0;

    move-result-object p0

    .line 5
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/ze0;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/shabakaty/downloader/ze0;-><init>(Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {p0, p1, p3}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method
