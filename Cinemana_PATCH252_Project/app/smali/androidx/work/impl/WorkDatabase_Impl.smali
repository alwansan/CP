.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "WorkDatabase_Impl.java"


# static fields
.field public static final synthetic w:I


# instance fields
.field public volatile p:Lcom/shabakaty/downloader/e85;

.field public volatile q:Lcom/shabakaty/downloader/iq0;

.field public volatile r:Lcom/shabakaty/downloader/h85;

.field public volatile s:Lcom/shabakaty/downloader/ak4;

.field public volatile t:Lcom/shabakaty/downloader/u75;

.field public volatile u:Lcom/shabakaty/downloader/w75;

.field public volatile v:Lcom/shabakaty/downloader/bf3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/shabakaty/downloader/v32;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/v32;

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/shabakaty/downloader/v32;-><init>(Lcom/shabakaty/downloader/vt3;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public d(Lcom/shabakaty/downloader/bm0;)Lcom/shabakaty/downloader/zh4;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xt3;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$a;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$a;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "cf029002fffdcadf079e8d0a1c9a70ac"

    const-string v3, "8aff2efc47fafe870c738f727dfcfc6e"

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

.method public p()Lcom/shabakaty/downloader/iq0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lcom/shabakaty/downloader/iq0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lcom/shabakaty/downloader/iq0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lcom/shabakaty/downloader/iq0;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/jq0;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/jq0;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lcom/shabakaty/downloader/iq0;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lcom/shabakaty/downloader/iq0;

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

.method public q()Lcom/shabakaty/downloader/bf3;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lcom/shabakaty/downloader/bf3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lcom/shabakaty/downloader/bf3;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lcom/shabakaty/downloader/bf3;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/cf3;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cf3;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lcom/shabakaty/downloader/bf3;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lcom/shabakaty/downloader/bf3;

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

.method public r()Lcom/shabakaty/downloader/ak4;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lcom/shabakaty/downloader/ak4;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lcom/shabakaty/downloader/ak4;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lcom/shabakaty/downloader/ak4;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/bk4;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/bk4;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lcom/shabakaty/downloader/ak4;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lcom/shabakaty/downloader/ak4;

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

.method public s()Lcom/shabakaty/downloader/u75;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lcom/shabakaty/downloader/u75;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lcom/shabakaty/downloader/u75;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lcom/shabakaty/downloader/u75;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/v75;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/v75;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lcom/shabakaty/downloader/u75;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lcom/shabakaty/downloader/u75;

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

.method public t()Lcom/shabakaty/downloader/w75;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lcom/shabakaty/downloader/w75;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lcom/shabakaty/downloader/w75;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lcom/shabakaty/downloader/w75;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/x75;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/x75;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lcom/shabakaty/downloader/w75;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lcom/shabakaty/downloader/w75;

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

.method public u()Lcom/shabakaty/downloader/e85;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lcom/shabakaty/downloader/e85;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lcom/shabakaty/downloader/e85;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lcom/shabakaty/downloader/e85;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/f85;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/f85;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lcom/shabakaty/downloader/e85;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lcom/shabakaty/downloader/e85;

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

.method public v()Lcom/shabakaty/downloader/h85;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lcom/shabakaty/downloader/h85;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lcom/shabakaty/downloader/h85;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lcom/shabakaty/downloader/h85;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/i85;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/i85;-><init>(Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lcom/shabakaty/downloader/h85;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lcom/shabakaty/downloader/h85;

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
