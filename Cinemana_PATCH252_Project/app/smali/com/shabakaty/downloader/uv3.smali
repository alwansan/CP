.class public final Lcom/shabakaty/downloader/uv3;
.super Ljava/lang/Object;
.source "RxExtensions.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/t43;)Lcom/shabakaty/downloader/t43;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/t43<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/t43<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/t43;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/t43;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/f74;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/mu0;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rv3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/shabakaty/downloader/rv3;-><init>(Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/lo3;I)V

    new-instance p1, Lcom/shabakaty/downloader/rv3;

    const/4 v2, 0x1

    invoke-direct {p1, p2, v0, v2}, Lcom/shabakaty/downloader/rv3;-><init>(Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/lo3;I)V

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/zc0;

    invoke-direct {p2, v1, p1}, Lcom/shabakaty/downloader/zc0;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    .line 5
    iput-object p2, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    return-object p2
.end method

.method public static final d(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/g54;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 3
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/g54;-><init>(Lcom/shabakaty/downloader/wx3;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcom/shabakaty/downloader/qf1;)Lcom/shabakaty/downloader/qf1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/qf1<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gu1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/gu1;-><init>(Lcom/shabakaty/downloader/qf1;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qf1;->e(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/qf1;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/downloader/nx4;->v:Lcom/shabakaty/downloader/nx4;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v2, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/shabakaty/downloader/qf1;->c(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/qf1;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gu1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/gu1;-><init>(Lcom/shabakaty/downloader/f74;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/downloader/uh0;->w:Lcom/shabakaty/downloader/uh0;

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/f74;->f(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;

    move-result-object p0

    return-object p0
.end method
