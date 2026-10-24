.class public final Lcom/shabakaty/downloader/qx0$d;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsUseCases$getEpisodesOfShow$2"
    f = "DownloadItemsUseCases.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qx0;->d(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:I

.field public final synthetic y:Lcom/shabakaty/downloader/qx0;

.field public final synthetic z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qx0;",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qx0$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/qx0$d;->y:Lcom/shabakaty/downloader/qx0;

    iput-object p2, p0, Lcom/shabakaty/downloader/qx0$d;->z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

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
    new-instance p1, Lcom/shabakaty/downloader/qx0$d;

    iget-object v0, p0, Lcom/shabakaty/downloader/qx0$d;->y:Lcom/shabakaty/downloader/qx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/qx0$d;->z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/qx0$d;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/qx0$d;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/qx0$d;

    iget-object v0, p0, Lcom/shabakaty/downloader/qx0$d;->y:Lcom/shabakaty/downloader/qx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/qx0$d;->z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/qx0$d;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/qx0$d;->x:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/qx0$d;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/qx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/qx0$d;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/qx0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Lcom/shabakaty/downloader/qx0$d;->y:Lcom/shabakaty/downloader/qx0;

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/qx0;->a:Lcom/shabakaty/downloader/jw0;

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/qx0$d;->z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 7
    iget v3, v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    .line 8
    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/jw0;->o(I)Ljava/util/List;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/qx0$d;->z:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 10
    iget-object v3, v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/qx0$d;->v:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/qx0$d;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/qx0$d;->x:I

    invoke-static {p1, v1, v3, p0}, Lcom/shabakaty/downloader/qx0;->a(Lcom/shabakaty/downloader/qx0;Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    move-object v1, v0

    .line 12
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    .line 17
    iget-object v5, v0, Lcom/shabakaty/downloader/qx0;->b:Landroid/content/Context;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "context"

    .line 18
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v6, v4, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v7, v4, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->subtitles:Ljava/util/List;

    iget-object v4, v4, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->skippableScenes:Ljava/util/List;

    invoke-virtual {v6, v7, v4, v5}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->b(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v4

    .line 20
    iput-boolean v2, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->finished:Z

    .line 21
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance p1, Lcom/shabakaty/downloader/vx0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vx0;-><init>()V

    invoke-static {v3, p1}, Lcom/shabakaty/downloader/m50;->t0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
