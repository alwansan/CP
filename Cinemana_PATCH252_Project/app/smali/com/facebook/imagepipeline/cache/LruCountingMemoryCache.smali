.class public Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
.implements Lcom/facebook/imagepipeline/cache/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
        "TK;TV;>;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final e:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

.field public g:J

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "TK;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->d:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    .line 4
    new-instance p2, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;-><init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    .line 6
    invoke-direct {p2, v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 7
    new-instance p2, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 8
    new-instance v0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;-><init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    .line 9
    invoke-direct {p2, v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 10
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->e:Lcom/facebook/common/internal/Supplier;

    .line 11
    invoke-interface {p3}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "mMemoryCacheParamsSupplier returned null"

    .line 12
    invoke-static {p1, p2}, Lcom/facebook/common/internal/Preconditions;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->g:J

    .line 14
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    .line 15
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->h:Z

    .line 16
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->i:Z

    return-void
.end method

.method public static g(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->e:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->a(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->a:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->h()V

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->e(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->j(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 10
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->d:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    invoke-interface {v5, v4}, Lcom/facebook/imagepipeline/cache/ValueDescriptor;->a(Ljava/lang/Object;)I

    move-result v4

    .line 12
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v5, v5, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->e:I

    const/4 v6, 0x1

    if-gt v4, v5, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->c()I

    move-result v5

    iget-object v7, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v7, v7, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->b:I

    sub-int/2addr v7, v6

    if-gt v5, v7, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->d()I

    move-result v5

    iget-object v7, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v7, v7, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v7, v4

    if-gt v5, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 16
    :goto_1
    :try_start_2
    monitor-exit p0

    if-eqz v6, :cond_3

    .line 17
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->h:Z

    if-eqz v3, :cond_2

    .line 18
    new-instance v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    invoke-direct {v3, p1, p2, v0, v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;I)V

    goto :goto_2

    .line 19
    :cond_2
    new-instance v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    const/4 v4, -0x1

    invoke-direct {v3, p1, p2, v0, v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;I)V

    .line 20
    :goto_2
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {p2, p1, v3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->i(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    .line 22
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 24
    :cond_4
    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->g(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 25
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f()V

    return-object v3

    :catchall_0
    move-exception p1

    .line 26
    :try_start_3
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    .line 27
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public declared-synchronized c()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->a()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->a()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->b()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->b()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 3
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->d:I

    iget v0, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->b:I

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->c()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->c:I

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->a:I

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->d()I

    move-result v3

    sub-int/2addr v1, v3

    .line 7
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->k(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 9
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 11
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->e(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0

    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 15
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->j(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->e(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 17
    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->g(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    goto :goto_2

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    .line 18
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v3, v2, Lcom/facebook/imagepipeline/cache/CountingLruMap;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 7
    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->i(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 9
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->g(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 11
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->h()V

    .line 12
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    monitor-exit v2

    throw p1

    :catchall_1
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final declared-synchronized h()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->g:J

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget-wide v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->f:J

    add-long/2addr v0, v2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->g:J

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->e:Lcom/facebook/common/internal/Supplier;

    .line 6
    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mMemoryCacheParamsSupplier returned null"

    .line 7
    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->f:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 3
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    monitor-exit p0

    .line 5
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->b:Lcom/facebook/common/references/CloseableReference;

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;-><init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 7
    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->o(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->c:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->b:Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->a()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, p1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->b()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-gt v1, p2, :cond_0

    .line 4
    monitor-exit p0

    return-object v2

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->a()I

    move-result v3

    if-gt v3, p1, :cond_1

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->b()I

    move-result v3

    if-le v3, p2, :cond_4

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 8
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :try_start_2
    iget-object v4, v3, Lcom/facebook/imagepipeline/cache/CountingLruMap;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lcom/facebook/imagepipeline/cache/CountingLruMap;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v3

    if-nez v4, :cond_6

    .line 10
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->i:Z

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 12
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13
    :try_start_4
    iget-object p2, p1, Lcom/facebook/imagepipeline/cache/CountingLruMap;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingLruMap;->c:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :cond_3
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 16
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p2

    .line 17
    :try_start_6
    monitor-exit p1

    throw p2

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "key is null, but exclusiveEntries count: %d, size: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 19
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 20
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_6
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->b:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->c:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 23
    monitor-exit v3

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
