.class public final Lcom/shabakaty/downloader/yx0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsViewModel$reSyncWithModule$1$1"
    f = "DownloadItemsViewModel.kt"
    l = {
        0x23,
        0x27
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
.field public final synthetic A:Lcom/shabakaty/downloader/by0;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public y:I

.field public final synthetic z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/shabakaty/downloader/by0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;",
            "Lcom/shabakaty/downloader/by0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/yx0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/yx0;->z:Ljava/util/List;

    iput-object p2, p0, Lcom/shabakaty/downloader/yx0;->A:Lcom/shabakaty/downloader/by0;

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
    new-instance p1, Lcom/shabakaty/downloader/yx0;

    iget-object v0, p0, Lcom/shabakaty/downloader/yx0;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/yx0;->A:Lcom/shabakaty/downloader/by0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/yx0;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/by0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/yx0;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/yx0;

    iget-object v0, p0, Lcom/shabakaty/downloader/yx0;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/yx0;->A:Lcom/shabakaty/downloader/by0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/yx0;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/by0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/yx0;->y:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/yx0;->w:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/shabakaty/downloader/yx0;->v:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/by0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object p1, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/yx0;->x:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v4, p0, Lcom/shabakaty/downloader/yx0;->w:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p0, Lcom/shabakaty/downloader/yx0;->v:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/yx0;->z:Ljava/util/List;

    if-nez v1, :cond_3

    move-object v1, v0

    move-object v0, p0

    goto :goto_2

    .line 6
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, p1

    move-object v4, v1

    move-object p1, p0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object v6

    .line 8
    iget-object v7, v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 9
    iput-object v5, p1, Lcom/shabakaty/downloader/yx0;->v:Ljava/lang/Object;

    iput-object v4, p1, Lcom/shabakaty/downloader/yx0;->w:Ljava/lang/Object;

    iput-object v1, p1, Lcom/shabakaty/downloader/yx0;->x:Ljava/lang/Object;

    iput v3, p1, Lcom/shabakaty/downloader/yx0;->y:I

    invoke-interface {v6, v7, p1}, Lcom/shabakaty/downloader/az0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    return-object v0

    :cond_4
    move-object v8, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v8

    :goto_1
    if-nez p1, :cond_5

    .line 10
    iget-object p1, v4, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Recovery92;->autoMissing(Ljava/lang/String;)V

    :cond_5
    move-object p1, v0

    move-object v0, v1

    move-object v4, v5

    move-object v5, v6

    goto :goto_0

    :cond_6
    move-object v1, v0

    move-object v0, p1

    move-object p1, v5

    .line 12
    :goto_2
    iget-object v3, v0, Lcom/shabakaty/downloader/yx0;->A:Lcom/shabakaty/downloader/by0;

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 14
    iget-object v5, v3, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    .line 15
    iput-object v3, v0, Lcom/shabakaty/downloader/yx0;->v:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/yx0;->w:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/shabakaty/downloader/yx0;->x:Ljava/lang/Object;

    iput v2, v0, Lcom/shabakaty/downloader/yx0;->y:I

    invoke-virtual {v5, v4, v0}, Lcom/shabakaty/downloader/qx0;->c(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    return-object v1

    .line 16
    :cond_8
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
