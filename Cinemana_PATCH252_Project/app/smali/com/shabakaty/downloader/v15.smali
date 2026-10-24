.class public final Lcom/shabakaty/downloader/v15;
.super Lcom/shabakaty/downloader/ui4;
.source "VideoInfoViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.video_info.VideoInfoViewModel$recheckForItemsProgress$1"
    f = "VideoInfoViewModel.kt"
    l = {}
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
.field public final synthetic v:Lcom/shabakaty/downloader/u15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u15;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/u15;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/v15;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/v15;->v:Lcom/shabakaty/downloader/u15;

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
    new-instance p1, Lcom/shabakaty/downloader/v15;

    iget-object v0, p0, Lcom/shabakaty/downloader/v15;->v:Lcom/shabakaty/downloader/u15;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/v15;-><init>(Lcom/shabakaty/downloader/u15;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/v15;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
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

    new-instance p1, Lcom/shabakaty/downloader/v15;

    iget-object v0, p0, Lcom/shabakaty/downloader/v15;->v:Lcom/shabakaty/downloader/u15;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/v15;-><init>(Lcom/shabakaty/downloader/u15;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/v15;->v:Lcom/shabakaty/downloader/u15;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 4
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v15;->v:Lcom/shabakaty/downloader/u15;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/u15;->h:Lcom/shabakaty/downloader/q15;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :cond_3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "videos"

    .line 12
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 15
    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 16
    iget-object v6, v1, Lcom/shabakaty/downloader/q15;->b:Lcom/shabakaty/downloader/s25;

    .line 17
    iget-object v7, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 18
    invoke-interface {v6, v7}, Lcom/shabakaty/downloader/s25;->a(Ljava/lang/String;)Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v5, v2

    goto :goto_3

    .line 19
    :cond_4
    iget-object v7, v1, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v5, v7, v6}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->p(Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;)V

    sget-object v5, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_5
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 22
    :goto_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
