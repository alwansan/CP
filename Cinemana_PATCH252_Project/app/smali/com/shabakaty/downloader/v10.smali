.class public final Lcom/shabakaty/downloader/v10;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$setShowSubtitles$1"
    f = "CinemanaVideoPlayerViewModel.kt"
    l = {
        0x13d
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

.field public final synthetic w:Lcom/shabakaty/downloader/q10;

.field public final synthetic x:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q10;ZLcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q10;",
            "Z",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/v10;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/v10;->w:Lcom/shabakaty/downloader/q10;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/v10;->x:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/v10;

    iget-object v0, p0, Lcom/shabakaty/downloader/v10;->w:Lcom/shabakaty/downloader/q10;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/v10;->x:Z

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/v10;-><init>(Lcom/shabakaty/downloader/q10;ZLcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/v10;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
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

    new-instance p1, Lcom/shabakaty/downloader/v10;

    iget-object v0, p0, Lcom/shabakaty/downloader/v10;->w:Lcom/shabakaty/downloader/q10;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/v10;->x:Z

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/v10;-><init>(Lcom/shabakaty/downloader/q10;ZLcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/v10;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/v10;->w:Lcom/shabakaty/downloader/q10;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->i:Lcom/shabakaty/downloader/n24;

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/v10;->x:Z

    iput v2, p0, Lcom/shabakaty/downloader/v10;->v:I

    .line 4
    iget-object v2, p1, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/w34;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, p1, v4}, Lcom/shabakaty/downloader/w34;-><init>(Lcom/shabakaty/downloader/n34;ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v3, p0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
