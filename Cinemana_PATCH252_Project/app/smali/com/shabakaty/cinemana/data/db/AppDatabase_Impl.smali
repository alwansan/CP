.class public final Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;
.super Lcom/shabakaty/cinemana/data/db/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field public volatile n:Lcom/shabakaty/downloader/vy3;

.field public volatile o:Lcom/shabakaty/downloader/jw0;

.field public volatile p:Lcom/shabakaty/downloader/s25;

.field public volatile q:Lcom/shabakaty/downloader/g25;

.field public volatile r:Lcom/shabakaty/downloader/u24;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/data/db/AppDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/shabakaty/downloader/v32;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/v32;

    const-string v3, "users"

    const-string v4, "search_table"

    const-string v5, "CinemanaDownloadItem"

    const-string v6, "DownloadsCollectionItem"

    const-string v7, "SubtitleDb"

    const-string v8, "SkippableSceneDB"

    const-string v9, "video_status"

    const-string v10, "video_model"

    const-string v11, "settings"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/shabakaty/downloader/v32;-><init>(Lcom/shabakaty/downloader/vt3;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public d(Lcom/shabakaty/downloader/bm0;)Lcom/shabakaty/downloader/zh4;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xt3;

    new-instance v1, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl$a;-><init>(Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;I)V

    const-string v2, "663afd1177d1ff597ddac9194d6e0a62"

    const-string v3, "69bbc82da3b9d093633e2fa09918a4b0"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/shabakaty/downloader/xt3;-><init>(Lcom/shabakaty/downloader/bm0;Lcom/shabakaty/downloader/xt3$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/bm0;->b:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/shabakaty/downloader/bm0;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/zh4$b;

    invoke-direct {v4, v1, v3, v0, v2}, Lcom/shabakaty/downloader/zh4$b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/zh4$a;Z)V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/bm0;->a:Lcom/shabakaty/downloader/zh4$c;

    invoke-interface {p1, v4}, Lcom/shabakaty/downloader/zh4$c;->a(Lcom/shabakaty/downloader/zh4$b;)Lcom/shabakaty/downloader/zh4;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null context to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ht2;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/shabakaty/downloader/ht2;

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shabakaty/downloader/wf;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lcom/shabakaty/downloader/vy3;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/shabakaty/downloader/jw0;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Lcom/shabakaty/downloader/s25;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v1, Lcom/shabakaty/downloader/g25;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v1, Lcom/shabakaty/downloader/u24;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public p()Lcom/shabakaty/downloader/jw0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->o:Lcom/shabakaty/downloader/jw0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->o:Lcom/shabakaty/downloader/jw0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->o:Lcom/shabakaty/downloader/jw0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/kw0;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/kw0;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->o:Lcom/shabakaty/downloader/jw0;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->o:Lcom/shabakaty/downloader/jw0;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q()Lcom/shabakaty/downloader/vy3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->n:Lcom/shabakaty/downloader/vy3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->n:Lcom/shabakaty/downloader/vy3;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->n:Lcom/shabakaty/downloader/vy3;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/wy3;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/wy3;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->n:Lcom/shabakaty/downloader/vy3;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->n:Lcom/shabakaty/downloader/vy3;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r()Lcom/shabakaty/downloader/u24;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->r:Lcom/shabakaty/downloader/u24;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->r:Lcom/shabakaty/downloader/u24;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->r:Lcom/shabakaty/downloader/u24;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/v24;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/v24;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->r:Lcom/shabakaty/downloader/u24;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->r:Lcom/shabakaty/downloader/u24;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s()Lcom/shabakaty/downloader/g25;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->q:Lcom/shabakaty/downloader/g25;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->q:Lcom/shabakaty/downloader/g25;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->q:Lcom/shabakaty/downloader/g25;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/h25;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/h25;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->q:Lcom/shabakaty/downloader/g25;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->q:Lcom/shabakaty/downloader/g25;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()Lcom/shabakaty/downloader/s25;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->p:Lcom/shabakaty/downloader/s25;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->p:Lcom/shabakaty/downloader/s25;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->p:Lcom/shabakaty/downloader/s25;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/t25;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/t25;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->p:Lcom/shabakaty/downloader/s25;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/AppDatabase_Impl;->p:Lcom/shabakaty/downloader/s25;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
