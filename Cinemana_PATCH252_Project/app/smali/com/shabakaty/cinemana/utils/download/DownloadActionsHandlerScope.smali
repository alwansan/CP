.class public abstract Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;
.super Ljava/lang/Object;
.source "DownloadsActionsHandler.kt"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;",
        "Landroidx/lifecycle/f;",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "videoModel",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "<init>",
        "(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public s:Landroidx/fragment/app/Fragment;

.field public final t:Lcom/shabakaty/downloader/kf2;

.field public u:Lcom/shabakaty/downloader/views/DownloadButton;

.field public v:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->s:Landroidx/fragment/app/Fragment;

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroidx/lifecycle/e;->a(Lcom/shabakaty/downloader/qh2;)V

    .line 5
    :goto_0
    sget-object p1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$b;->r:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$b;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->t:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public static final a(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/cv0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/cv0;

    iget v1, v0, Lcom/shabakaty/downloader/cv0;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/cv0;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/cv0;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/cv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/cv0;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/cv0;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/cv0;->v:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/pw0;

    iget-object v0, v0, Lcom/shabakaty/downloader/cv0;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget-object p0, v0, Lcom/shabakaty/downloader/cv0;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 8
    iput-object p0, v0, Lcom/shabakaty/downloader/cv0;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/cv0;->y:I

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/shabakaty/downloader/az0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_7

    .line 10
    :cond_4
    :goto_1
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    if-nez p1, :cond_5

    goto :goto_6

    .line 11
    :cond_5
    sget-object v2, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    .line 12
    iget-object v4, p1, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 13
    iput-object p0, v0, Lcom/shabakaty/downloader/cv0;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/cv0;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/cv0;->y:I

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/mz0;->f:Lcom/shabakaty/downloader/hn1;

    if-nez v2, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    invoke-interface {v2, v4, v0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    if-ne v0, v1, :cond_7

    goto :goto_7

    :cond_7
    move-object v5, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v5

    .line 15
    :goto_3
    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    if-nez p1, :cond_8

    goto :goto_5

    .line 16
    :cond_8
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->subtitles:Ljava/util/List;

    if-nez p1, :cond_9

    goto :goto_5

    .line 17
    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;

    .line 18
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object v2

    .line 19
    iget v3, v1, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->downloadTaskId:I

    .line 20
    iget-object v1, v1, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->file:Ljava/lang/String;

    .line 21
    invoke-interface {v2, v3, v1}, Lcom/shabakaty/downloader/i44;->j(ILjava/lang/String;)V

    goto :goto_4

    .line 22
    :cond_a
    :goto_5
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object p1

    .line 23
    iget v1, p0, Lcom/shabakaty/downloader/pw0;->r:I

    .line 24
    iget-object p0, p0, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    .line 25
    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/i44;->j(ILjava/lang/String;)V

    .line 26
    sget-object p0, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    iget-object p1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 27
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/mz0;->i(Ljava/lang/String;)V

    .line 29
    :goto_6
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_7
    return-object v1
.end method

.method public static final c(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/fv0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/fv0;

    iget v1, v0, Lcom/shabakaty/downloader/fv0;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/fv0;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/fv0;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/fv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p0, v0, Lcom/shabakaty/downloader/fv0;->v:Ljava/lang/Object;

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v1, v0, Lcom/shabakaty/downloader/fv0;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/fv0;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-static {p0}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    invoke-static {p0}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    sget-object p0, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    .line 7
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 8
    iput-object p1, v0, Lcom/shabakaty/downloader/fv0;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/fv0;->x:I

    .line 9
    iget-object p0, p0, Lcom/shabakaty/downloader/mz0;->f:Lcom/shabakaty/downloader/hn1;

    if-nez p0, :cond_3

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-interface {p0, v1, v0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    if-ne p0, p2, :cond_4

    goto :goto_5

    :cond_4
    :goto_2
    if-nez p0, :cond_7

    .line 10
    sget-object p0, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    const-string p2, "videoModel"

    .line 11
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/shabakaty/downloader/mz0;->d:Lcom/shabakaty/downloader/hn1;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p0, p1, v2}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_3
    iget-object p0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->skippableScenes:Ljava/util/List;

    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/o84;

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    const-string v1, "scene"

    .line 16
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/mz0;->c:Lcom/shabakaty/downloader/hn1;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v0, p2, p1}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 18
    :cond_7
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_5
    return-object p2
.end method


# virtual methods
.method public final d(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;

    iget v1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    sget-object p2, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    iput v3, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$a;->w:I

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/mz0;->b:Lcom/shabakaty/downloader/hn1;

    if-nez p2, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 6
    :cond_3
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 7
    invoke-interface {p2, v2, v0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    move-object p2, p1

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 8
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/az0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract f()Landroid/content/Context;
.end method

.method public final g()Lcom/shabakaty/downloader/se0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->t:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/se0;

    return-object v0
.end method

.method public final h(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;

    iget v1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;

    invoke-direct {v0, p0, p3}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p3, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;->u:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/rm1;

    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget p3, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->downloadCollectionID:I

    if-eqz p3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 5
    :goto_1
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    const-string v4, "2"

    .line 6
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    .line 7
    iput-object p2, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$d;->x:I

    invoke-virtual {p0, p3, v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->d(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 8
    invoke-interface {p2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    .line 9
    :cond_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cinemana/pro/permissions/DownloadPermissionFlow;->isReady(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public j(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Landroidx/lifecycle/e$b;->ON_DESTROY:Landroidx/lifecycle/e$b;

    if-ne p2, p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->s:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroidx/lifecycle/e;->c(Lcom/shabakaty/downloader/qh2;)V

    :goto_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->s:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 4
    :cond_2
    sget-object p1, Landroidx/lifecycle/e$b;->ON_RESUME:Landroidx/lifecycle/e$b;

    if-ne p2, p1, :cond_3

    .line 5
    new-instance p1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$c;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope$c;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/nv0;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/nv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/tm1;)V

    const-string p1, "block"

    .line 7
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/shabakaty/downloader/nv0;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201a9

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bn2;->p(I)Lcom/shabakaty/downloader/bn2;

    const v1, 0x7f1201aa

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bn2;->k(I)Lcom/shabakaty/downloader/bn2;

    const v1, 0x7f1202bc

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/ph0;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/ph0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/bn2;->n(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    const v1, 0x7f1202a6

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/ck3;->t:Lcom/shabakaty/downloader/ck3;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/bn2;->l(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bn2;->create()Landroidx/appcompat/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 5
    iget-object v7, v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->extention:Ljava/lang/String;

    const-string v8, "vtt"

    .line 6
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 7
    iget-object v6, v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    .line 8
    invoke-static {v6}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v1, v3, v6}, Lcom/shabakaty/cinemana/features/MkvPlanStore;->record(Landroid/content/Context;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object v6

    .line 11
    iget-object v7, v2, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    .line 12
    iget-object v8, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v8}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->d()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->f()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    const v3, 0x7f12026b

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 14
    iget-object v11, v2, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->name:Ljava/lang/String;

    aput-object v11, v10, v4

    aput-object v8, v10, v5

    .line 15
    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 16
    iget-object v11, v2, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->id:Ljava/lang/String;

    .line 17
    new-instance v12, Lcom/shabakaty/downloader/jv0;

    invoke-direct {v12, v0, v2}, Lcom/shabakaty/downloader/jv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)V

    const/16 v13, 0xc

    const/4 v14, 0x0

    .line 18
    invoke-static/range {v6 .. v14}, Lcom/shabakaty/downloader/i44$a;->a(Lcom/shabakaty/downloader/i44;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->g()Lcom/shabakaty/downloader/se0;

    move-result-object v15

    new-instance v1, Lcom/shabakaty/downloader/dv0;

    invoke-direct {v1, v0, v3}, Lcom/shabakaty/downloader/dv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    invoke-static/range {v15 .. v20}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public final n(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->u:Lcom/shabakaty/downloader/views/DownloadButton;

    return-void
.end method
