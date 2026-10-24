.class public final Lcom/shabakaty/downloader/ox0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsUseCases$addItemToNewCollection$2"
    f = "DownloadItemsUseCases.kt"
    l = {
        0x94,
        0x95
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

.field public final synthetic x:Lcom/shabakaty/downloader/qx0;

.field public final synthetic y:Ljava/lang/String;

.field public final synthetic z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qx0;Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qx0;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ox0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ox0;->x:Lcom/shabakaty/downloader/qx0;

    iput-object p2, p0, Lcom/shabakaty/downloader/ox0;->y:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/ox0;->z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/ox0;

    iget-object v0, p0, Lcom/shabakaty/downloader/ox0;->x:Lcom/shabakaty/downloader/qx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/ox0;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/ox0;->z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/ox0;-><init>(Lcom/shabakaty/downloader/qx0;Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ox0;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/ox0;

    iget-object v0, p0, Lcom/shabakaty/downloader/ox0;->x:Lcom/shabakaty/downloader/qx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/ox0;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/ox0;->z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/ox0;-><init>(Lcom/shabakaty/downloader/qx0;Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ox0;->w:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ox0;->x:Lcom/shabakaty/downloader/qx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/ox0;->y:Ljava/lang/String;

    iput v3, p0, Lcom/shabakaty/downloader/ox0;->w:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/px0;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p1, v5}, Lcom/shabakaty/downloader/px0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v3, v4, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ox0;->x:Lcom/shabakaty/downloader/qx0;

    iget-object v3, p0, Lcom/shabakaty/downloader/ox0;->z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-object v4, p1

    check-cast v4, Lcom/shabakaty/downloader/gz0;

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/ox0;->v:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/ox0;->w:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget p1, v4, Lcom/shabakaty/downloader/gz0;->r:I

    .line 10
    iput p1, v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    .line 11
    invoke-virtual {v1, v3, p0}, Lcom/shabakaty/downloader/qx0;->f(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-ne p1, v0, :cond_5

    return-object v0

    .line 12
    :cond_5
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
