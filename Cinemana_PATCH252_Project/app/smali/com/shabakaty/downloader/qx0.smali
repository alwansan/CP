.class public final Lcom/shabakaty/downloader/qx0;
.super Ljava/lang/Object;
.source "DownloadItemsUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/jw0;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jw0;Landroid/content/Context;)V
    .locals 1

    const-string v0, "downloadsDao"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qx0;->a:Lcom/shabakaty/downloader/jw0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/qx0;->b:Landroid/content/Context;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/qx0;Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p3, Lcom/shabakaty/downloader/rx0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/shabakaty/downloader/rx0;

    iget v1, v0, Lcom/shabakaty/downloader/rx0;->B:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/rx0;->B:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/rx0;

    invoke-direct {v0, p0, p3}, Lcom/shabakaty/downloader/rx0;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p0, v0, Lcom/shabakaty/downloader/rx0;->z:Ljava/lang/Object;

    sget-object p3, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v1, v0, Lcom/shabakaty/downloader/rx0;->B:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/rx0;->y:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    iget-object p2, v0, Lcom/shabakaty/downloader/rx0;->x:Ljava/lang/Object;

    iget-object v1, v0, Lcom/shabakaty/downloader/rx0;->w:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, v0, Lcom/shabakaty/downloader/rx0;->v:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    iget-object v4, v0, Lcom/shabakaty/downloader/rx0;->u:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {p0}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object v6, p3

    move-object p3, p2

    move-object p2, v4

    :goto_1
    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

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
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, p0

    move-object v1, p1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    .line 8
    iput-object p2, v0, Lcom/shabakaty/downloader/rx0;->u:Ljava/lang/Object;

    iput-object v3, v0, Lcom/shabakaty/downloader/rx0;->v:Ljava/lang/Object;

    iput-object v1, v0, Lcom/shabakaty/downloader/rx0;->w:Ljava/lang/Object;

    iput-object p0, v0, Lcom/shabakaty/downloader/rx0;->x:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/rx0;->y:Ljava/lang/Object;

    iput v2, v0, Lcom/shabakaty/downloader/rx0;->B:I

    .line 9
    iget-object v4, p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object v5

    .line 12
    iget-object v4, v4, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 13
    invoke-interface {v5, v4, v0}, Lcom/shabakaty/downloader/az0;->h(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p3, :cond_3

    goto :goto_5

    :cond_3
    move-object v6, p3

    move-object p3, p0

    move-object p0, v4

    goto :goto_1

    .line 14
    :goto_3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "rootEpisode"

    .line 15
    invoke-static {p2, p0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 17
    iget-object p0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    .line 18
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    if-eqz p0, :cond_5

    .line 19
    invoke-interface {v4, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object p3, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_2

    .line 20
    :cond_6
    move-object p3, v3

    check-cast p3, Ljava/util/List;

    :goto_5
    return-object p3
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/qx0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/qx0$a;

    iget v1, v0, Lcom/shabakaty/downloader/qx0$a;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/qx0$a;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qx0$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/qx0$a;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/qx0$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/qx0$a;->w:I

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
    iget-object p2, p0, Lcom/shabakaty/downloader/qx0;->a:Lcom/shabakaty/downloader/jw0;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 5
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 6
    :goto_1
    iput v3, v0, Lcom/shabakaty/downloader/qx0$a;->w:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/jw0;->n(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 7
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/qx0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/qx0$b;-><init>(Lcom/shabakaty/downloader/qx0;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v0, v1, p2}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final d(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/qx0$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/qx0$c;

    iget v1, v0, Lcom/shabakaty/downloader/qx0$c;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/qx0$c;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qx0$c;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/qx0$c;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/qx0$c;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/qx0$c;->w:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p2, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    const-string v2, "2"

    .line 5
    invoke-static {p2, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/qx0$d;

    invoke-direct {v2, p0, p1, v3}, Lcom/shabakaty/downloader/qx0$d;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    iput v4, v0, Lcom/shabakaty/downloader/qx0$c;->w:I

    invoke-static {p2, v2, v0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v3, p2

    check-cast v3, Ljava/util/List;

    :cond_4
    return-object v3
.end method

.method public final e(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/qx0$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/qx0$e;

    iget v1, v0, Lcom/shabakaty/downloader/qx0$e;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/qx0$e;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qx0$e;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/qx0$e;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/qx0$e;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/qx0$e;->x:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/qx0$e;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/qx0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 5
    iput-object p0, v0, Lcom/shabakaty/downloader/qx0$e;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/qx0$e;->x:I

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/tx0;

    invoke-direct {v2, p0, p1, v3}, Lcom/shabakaty/downloader/tx0;-><init>(Lcom/shabakaty/downloader/qx0;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {p2, v2, v0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 8
    :goto_1
    check-cast p2, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/qx0;->b:Landroid/content/Context;

    const-string v0, "context"

    .line 9
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->cinemanaDownloadItem:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->subtitles:Ljava/util/List;

    iget-object p2, p2, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;->skippableScenes:Ljava/util/List;

    invoke-virtual {v0, v1, p2, p1}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->b(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v3

    :goto_2
    return-object v3
.end method

.method public final f(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qx0;->a:Lcom/shabakaty/downloader/jw0;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/jw0;->r(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final g(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/qx0$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/qx0$f;

    iget v1, v0, Lcom/shabakaty/downloader/qx0$f;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/qx0$f;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qx0$f;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/qx0$f;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/qx0$f;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/qx0$f;->y:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

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
    iget-object p1, v0, Lcom/shabakaty/downloader/qx0$f;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/pw0;

    iget-object v2, v0, Lcom/shabakaty/downloader/qx0$f;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/qx0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/qx0;->a:Lcom/shabakaty/downloader/jw0;

    .line 5
    iget-object v2, p1, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 6
    iput-object p0, v0, Lcom/shabakaty/downloader/qx0$f;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/qx0$f;->v:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/qx0$f;->y:I

    invoke-interface {p2, v2, v0}, Lcom/shabakaty/downloader/jw0;->n(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 7
    :goto_1
    check-cast p2, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    .line 8
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/he0;->u(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/shabakaty/downloader/qx0$f;->u:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/qx0$f;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/qx0$f;->y:I

    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/qx0;->f(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final h(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/shabakaty/downloader/qx0$g;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/shabakaty/downloader/qx0$g;

    iget v1, v0, Lcom/shabakaty/downloader/qx0$g;->z:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/qx0$g;->z:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qx0$g;

    invoke-direct {v0, p0, p3}, Lcom/shabakaty/downloader/qx0$g;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p3, v0, Lcom/shabakaty/downloader/qx0$g;->x:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/qx0$g;->z:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/shabakaty/downloader/qx0$g;->w:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/pw0;

    iget-object p1, v0, Lcom/shabakaty/downloader/qx0$g;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v2, v0, Lcom/shabakaty/downloader/qx0$g;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/qx0;

    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/shabakaty/downloader/qx0$g;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/qx0$g;->v:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/qx0$g;->w:Ljava/lang/Object;

    iput v5, v0, Lcom/shabakaty/downloader/qx0$g;->z:I

    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/qx0;->b(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v5, 0x0

    if-nez p3, :cond_7

    .line 5
    iget-object p3, v2, Lcom/shabakaty/downloader/qx0;->a:Lcom/shabakaty/downloader/jw0;

    .line 6
    sget-object v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->Companion:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;

    invoke-virtual {v2, p1, p2}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-result-object p1

    .line 7
    iput-object v5, v0, Lcom/shabakaty/downloader/qx0$g;->u:Ljava/lang/Object;

    iput-object v5, v0, Lcom/shabakaty/downloader/qx0$g;->v:Ljava/lang/Object;

    iput-object v5, v0, Lcom/shabakaty/downloader/qx0$g;->w:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/qx0$g;->z:I

    invoke-interface {p3, p1, v0}, Lcom/shabakaty/downloader/jw0;->l(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 8
    :cond_6
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    .line 9
    :cond_7
    sget-object p3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->Companion:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;

    invoke-virtual {p3, p1, p2}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-result-object p1

    iput-object v5, v0, Lcom/shabakaty/downloader/qx0$g;->u:Ljava/lang/Object;

    iput-object v5, v0, Lcom/shabakaty/downloader/qx0$g;->v:Ljava/lang/Object;

    iput-object v5, v0, Lcom/shabakaty/downloader/qx0$g;->w:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/qx0$g;->z:I

    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/qx0;->f(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 10
    :cond_8
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
