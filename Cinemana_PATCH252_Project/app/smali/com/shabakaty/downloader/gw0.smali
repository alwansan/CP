.class public final Lcom/shabakaty/downloader/gw0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadCollectionsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadCollectionsUseCases$deleteCollection$2"
    f = "DownloadCollectionsUseCases.kt"
    l = {
        0x1e,
        0x21
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

.field public w:Ljava/lang/Object;

.field public x:I

.field public final synthetic y:Lcom/shabakaty/downloader/gz0;

.field public final synthetic z:Lcom/shabakaty/downloader/iw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/iw0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gz0;",
            "Lcom/shabakaty/downloader/iw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/gw0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/gw0;->y:Lcom/shabakaty/downloader/gz0;

    iput-object p2, p0, Lcom/shabakaty/downloader/gw0;->z:Lcom/shabakaty/downloader/iw0;

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
    new-instance p1, Lcom/shabakaty/downloader/gw0;

    iget-object v0, p0, Lcom/shabakaty/downloader/gw0;->y:Lcom/shabakaty/downloader/gz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/gw0;->z:Lcom/shabakaty/downloader/iw0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/gw0;-><init>(Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/iw0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/gw0;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/gw0;

    iget-object v0, p0, Lcom/shabakaty/downloader/gw0;->y:Lcom/shabakaty/downloader/gz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/gw0;->z:Lcom/shabakaty/downloader/iw0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/gw0;-><init>(Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/iw0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/gw0;->x:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/gw0;->w:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v4, p0, Lcom/shabakaty/downloader/gw0;->v:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/iw0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/gw0;->y:Lcom/shabakaty/downloader/gz0;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/gz0;->u:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/gw0;->z:Lcom/shabakaty/downloader/iw0;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/iw0;->a:Lcom/shabakaty/downloader/jw0;

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/gw0;->y:Lcom/shabakaty/downloader/gz0;

    .line 10
    iget v1, v1, Lcom/shabakaty/downloader/gz0;->r:I

    .line 11
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/jw0;->o(I)Ljava/util/List;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/gw0;->z:Lcom/shabakaty/downloader/iw0;

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v1

    move-object v1, p1

    :goto_0
    move-object p1, p0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    .line 14
    iget-object v5, v5, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    const/4 v6, 0x0

    .line 15
    iput v6, v5, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    .line 16
    iget-object v6, v4, Lcom/shabakaty/downloader/iw0;->a:Lcom/shabakaty/downloader/jw0;

    .line 17
    iput-object v4, p1, Lcom/shabakaty/downloader/gw0;->v:Ljava/lang/Object;

    iput-object v1, p1, Lcom/shabakaty/downloader/gw0;->w:Ljava/lang/Object;

    iput v3, p1, Lcom/shabakaty/downloader/gw0;->x:I

    invoke-interface {v6, v5, p1}, Lcom/shabakaty/downloader/jw0;->r(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    return-object v0

    :cond_4
    move-object p1, p0

    .line 18
    :cond_5
    iget-object v1, p1, Lcom/shabakaty/downloader/gw0;->z:Lcom/shabakaty/downloader/iw0;

    .line 19
    iget-object v1, v1, Lcom/shabakaty/downloader/iw0;->a:Lcom/shabakaty/downloader/jw0;

    .line 20
    iget-object v3, p1, Lcom/shabakaty/downloader/gw0;->y:Lcom/shabakaty/downloader/gz0;

    .line 21
    iget v3, v3, Lcom/shabakaty/downloader/gz0;->r:I

    .line 22
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    .line 23
    iput-object v3, p1, Lcom/shabakaty/downloader/gw0;->v:Ljava/lang/Object;

    iput-object v3, p1, Lcom/shabakaty/downloader/gw0;->w:Ljava/lang/Object;

    iput v2, p1, Lcom/shabakaty/downloader/gw0;->x:I

    invoke-interface {v1, v4, p1}, Lcom/shabakaty/downloader/jw0;->K(Ljava/lang/Integer;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 24
    :cond_6
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
