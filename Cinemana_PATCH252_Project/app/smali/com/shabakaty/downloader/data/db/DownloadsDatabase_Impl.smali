.class public final Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;
.super Lcom/shabakaty/downloader/data/db/DownloadsDatabase;
.source "DownloadsDatabase_Impl.java"


# instance fields
.field public volatile n:Lcom/shabakaty/downloader/kz0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/data/db/DownloadsDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/shabakaty/downloader/v32;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/v32;

    const-string v3, "Downloads"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/shabakaty/downloader/v32;-><init>(Lcom/shabakaty/downloader/vt3;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public d(Lcom/shabakaty/downloader/bm0;)Lcom/shabakaty/downloader/zh4;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xt3;

    new-instance v1, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;-><init>(Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;I)V

    const-string v2, "31dc2143b4d2e185b32e53ba0a60c329"

    const-string v3, "233d58bd17fe4ee0fa0fb1da3d2da7ad"

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ht2;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/ht2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/data/db/a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/data/db/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

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
    const-class v1, Lcom/shabakaty/downloader/kz0;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public p()Lcom/shabakaty/downloader/kz0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;->n:Lcom/shabakaty/downloader/kz0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;->n:Lcom/shabakaty/downloader/kz0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;->n:Lcom/shabakaty/downloader/kz0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/lz0;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/lz0;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;->n:Lcom/shabakaty/downloader/kz0;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;->n:Lcom/shabakaty/downloader/kz0;

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
