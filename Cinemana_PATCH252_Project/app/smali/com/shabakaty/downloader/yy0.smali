.class public final Lcom/shabakaty/downloader/yy0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloaderService.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.services.DownloaderService$retryStoppedDownloads$1"
    f = "DownloaderService.kt"
    l = {
        0x93
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
.field public v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:Lcom/shabakaty/downloader/services/DownloaderService;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/services/DownloaderService;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/services/DownloaderService;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/yy0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/yy0;->x:Lcom/shabakaty/downloader/services/DownloaderService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/yy0;

    iget-object v0, p0, Lcom/shabakaty/downloader/yy0;->x:Lcom/shabakaty/downloader/services/DownloaderService;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/yy0;-><init>(Lcom/shabakaty/downloader/services/DownloaderService;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/yy0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
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

    new-instance p1, Lcom/shabakaty/downloader/yy0;

    iget-object v0, p0, Lcom/shabakaty/downloader/yy0;->x:Lcom/shabakaty/downloader/services/DownloaderService;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/yy0;-><init>(Lcom/shabakaty/downloader/services/DownloaderService;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/yy0;->w:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/yy0;->v:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/services/DownloaderService;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/yy0;->x:Lcom/shabakaty/downloader/services/DownloaderService;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/services/DownloaderService;->u:Lcom/shabakaty/downloader/uz0;

    if-eqz v1, :cond_6

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/yy0;->v:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/yy0;->w:I

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/kz0;->c(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 5
    :goto_0
    check-cast p1, Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/services/DownloaderService;->x:Lcom/shabakaty/downloader/services/DownloaderService$a;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/pw0;

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/services/DownloaderService;->t:Lcom/shabakaty/downloader/ey0;

    if-eqz v3, :cond_4

    .line 9
    iget v1, v1, Lcom/shabakaty/downloader/pw0;->r:I

    .line 10
    invoke-static {v3, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->canRetry(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/ey0;->i(I)V

    goto :goto_1

    :cond_4
    const-string p1, "downloadManager"

    .line 11
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :cond_6
    const-string p1, "downloadsRepo"

    .line 13
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2
.end method
