.class public final Lcom/shabakaty/downloader/xx0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsViewModel$addItemToCollection$1"
    f = "DownloadItemsViewModel.kt"
    l = {
        0x68
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

.field public final synthetic w:Lcom/shabakaty/downloader/by0;

.field public final synthetic x:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

.field public final synthetic y:Lcom/shabakaty/downloader/gz0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/by0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/by0;",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/gz0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/xx0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/xx0;->w:Lcom/shabakaty/downloader/by0;

    iput-object p2, p0, Lcom/shabakaty/downloader/xx0;->x:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iput-object p3, p0, Lcom/shabakaty/downloader/xx0;->y:Lcom/shabakaty/downloader/gz0;

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
    new-instance p1, Lcom/shabakaty/downloader/xx0;

    iget-object v0, p0, Lcom/shabakaty/downloader/xx0;->w:Lcom/shabakaty/downloader/by0;

    iget-object v1, p0, Lcom/shabakaty/downloader/xx0;->x:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v2, p0, Lcom/shabakaty/downloader/xx0;->y:Lcom/shabakaty/downloader/gz0;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/xx0;-><init>(Lcom/shabakaty/downloader/by0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xx0;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/xx0;

    iget-object v0, p0, Lcom/shabakaty/downloader/xx0;->w:Lcom/shabakaty/downloader/by0;

    iget-object v1, p0, Lcom/shabakaty/downloader/xx0;->x:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v2, p0, Lcom/shabakaty/downloader/xx0;->y:Lcom/shabakaty/downloader/gz0;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/xx0;-><init>(Lcom/shabakaty/downloader/by0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/xx0;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

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

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xx0;->w:Lcom/shabakaty/downloader/by0;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/xx0;->x:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v3, p0, Lcom/shabakaty/downloader/xx0;->y:Lcom/shabakaty/downloader/gz0;

    iput v2, p0, Lcom/shabakaty/downloader/xx0;->v:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v2, v3, Lcom/shabakaty/downloader/gz0;->r:I

    .line 8
    iput v2, v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    .line 9
    invoke-virtual {p1, v1, p0}, Lcom/shabakaty/downloader/qx0;->f(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
