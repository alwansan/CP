.class public final Lcom/shabakaty/downloader/s10;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$getSeasonsAndEpisodes$1"
    f = "CinemanaVideoPlayerViewModel.kt"
    l = {
        0xff
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/y25;

.field public final synthetic y:Lcom/shabakaty/downloader/q10;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y25;Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y25;",
            "Lcom/shabakaty/downloader/q10;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/s10;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/s10;->x:Lcom/shabakaty/downloader/y25;

    iput-object p2, p0, Lcom/shabakaty/downloader/s10;->y:Lcom/shabakaty/downloader/q10;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/s10;

    iget-object v1, p0, Lcom/shabakaty/downloader/s10;->x:Lcom/shabakaty/downloader/y25;

    iget-object v2, p0, Lcom/shabakaty/downloader/s10;->y:Lcom/shabakaty/downloader/q10;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/s10;-><init>(Lcom/shabakaty/downloader/y25;Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/s10;->w:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s10;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/s10;

    iget-object v1, p0, Lcom/shabakaty/downloader/s10;->x:Lcom/shabakaty/downloader/y25;

    iget-object v2, p0, Lcom/shabakaty/downloader/s10;->y:Lcom/shabakaty/downloader/q10;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/s10;-><init>(Lcom/shabakaty/downloader/y25;Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/s10;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/s10;->v:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/s10;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/se0;

    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/s10;->w:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/s10;->x:Lcom/shabakaty/downloader/y25;

    iget-object v4, p0, Lcom/shabakaty/downloader/s10;->y:Lcom/shabakaty/downloader/q10;

    .line 5
    :try_start_1
    new-instance v5, Lcom/shabakaty/downloader/s10$b;

    invoke-direct {v5, v1, v4, v3}, Lcom/shabakaty/downloader/s10$b;-><init>(Lcom/shabakaty/downloader/y25;Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/s10;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/s10;->v:I

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/qh4;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    invoke-direct {v1, v2, p0}, Lcom/shabakaty/downloader/qh4;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V

    .line 9
    invoke-static {v1, v1, v5}, Lcom/shabakaty/downloader/md0;->Q(Lcom/shabakaty/downloader/my3;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 10
    :goto_0
    :try_start_2
    check-cast p1, Lcom/shabakaty/downloader/bi2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    .line 11
    :goto_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    move-object v4, v0

    .line 12
    instance-of v0, p1, Lcom/shabakaty/downloader/dt3$a;

    if-eqz v0, :cond_3

    move-object p1, v3

    .line 13
    :cond_3
    check-cast p1, Lcom/shabakaty/downloader/bi2;

    if-nez p1, :cond_4

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/bi2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/bi2;-><init>()V

    .line 15
    :cond_4
    sget-object v0, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 16
    sget-object v5, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 17
    new-instance v7, Lcom/shabakaty/downloader/s10$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/s10;->y:Lcom/shabakaty/downloader/q10;

    invoke-direct {v7, v0, p1, v3}, Lcom/shabakaty/downloader/s10$a;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/bi2;Lcom/shabakaty/downloader/ud0;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
