.class public Lcom/facebook/cache/disk/DiskStorageCache;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Lcom/facebook/cache/disk/FileCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DiskStorageCache$Params;,
        Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;
    }
.end annotation


# static fields
.field public static final p:J

.field public static final q:J


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/util/concurrent/CountDownLatch;

.field public d:J

.field public final e:Lcom/facebook/cache/common/CacheEventListener;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:J

.field public final h:Lcom/facebook/common/statfs/StatFsHelper;

.field public final i:Lcom/facebook/cache/disk/DiskStorage;

.field public final j:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

.field public final k:Lcom/facebook/cache/common/CacheErrorLogger;

.field public final l:Z

.field public final m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

.field public final n:Lcom/facebook/common/time/Clock;

.field public final o:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/DiskStorageCache;->p:J

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/DiskStorageCache;->q:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/DiskStorage;Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;Lcom/facebook/cache/disk/DiskStorageCache$Params;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lcom/facebook/common/disk/DiskTrimmableRegistry;Ljava/util/concurrent/Executor;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p6, Ljava/lang/Object;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/facebook/cache/disk/DiskStorageCache;->o:Ljava/lang/Object;

    .line 3
    iget-wide v0, p3, Lcom/facebook/cache/disk/DiskStorageCache$Params;->a:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->a:J

    .line 4
    iget-wide v0, p3, Lcom/facebook/cache/disk/DiskStorageCache$Params;->b:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->b:J

    .line 5
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->d:J

    .line 6
    sget-object p3, Lcom/facebook/common/statfs/StatFsHelper;->h:Lcom/facebook/common/statfs/StatFsHelper;

    .line 7
    const-class p3, Lcom/facebook/common/statfs/StatFsHelper;

    monitor-enter p3

    .line 8
    :try_start_0
    sget-object p6, Lcom/facebook/common/statfs/StatFsHelper;->h:Lcom/facebook/common/statfs/StatFsHelper;

    if-nez p6, :cond_0

    .line 9
    new-instance p6, Lcom/facebook/common/statfs/StatFsHelper;

    invoke-direct {p6}, Lcom/facebook/common/statfs/StatFsHelper;-><init>()V

    sput-object p6, Lcom/facebook/common/statfs/StatFsHelper;->h:Lcom/facebook/common/statfs/StatFsHelper;

    .line 10
    :cond_0
    sget-object p6, Lcom/facebook/common/statfs/StatFsHelper;->h:Lcom/facebook/common/statfs/StatFsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    .line 11
    iput-object p6, p0, Lcom/facebook/cache/disk/DiskStorageCache;->h:Lcom/facebook/common/statfs/StatFsHelper;

    .line 12
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    .line 13
    iput-object p2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->j:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    const-wide/16 p1, -0x1

    .line 14
    iput-wide p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->g:J

    .line 15
    iput-object p4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->e:Lcom/facebook/cache/common/CacheEventListener;

    .line 16
    iput-object p5, p0, Lcom/facebook/cache/disk/DiskStorageCache;->k:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 17
    new-instance p1, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-direct {p1}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;-><init>()V

    iput-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    .line 18
    sget-object p1, Lcom/facebook/common/time/SystemClock;->a:Lcom/facebook/common/time/SystemClock;

    .line 19
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->n:Lcom/facebook/common/time/Clock;

    .line 20
    iput-boolean p8, p0, Lcom/facebook/cache/disk/DiskStorageCache;->l:Z

    .line 21
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    if-eqz p8, :cond_1

    .line 22
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->c:Ljava/util/concurrent/CountDownLatch;

    .line 23
    new-instance p1, Lcom/facebook/cache/disk/DiskStorageCache$1;

    invoke-direct {p1, p0}, Lcom/facebook/cache/disk/DiskStorageCache$1;-><init>(Lcom/facebook/cache/disk/DiskStorageCache;)V

    invoke-interface {p7, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->c:Ljava/util/concurrent/CountDownLatch;

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p3

    throw p1
.end method


# virtual methods
.method public final a(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V
    .locals 10

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {p3}, Lcom/facebook/cache/disk/DiskStorage;->q()Ljava/util/Collection;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/facebook/cache/disk/DiskStorageCache;->c(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const/4 p1, 0x0

    .line 3
    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/facebook/cache/disk/DiskStorage$Entry;

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v6, p0, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v6, p3}, Lcom/facebook/cache/disk/DiskStorage;->r(Lcom/facebook/cache/disk/DiskStorage$Entry;)J

    move-result-wide v6

    .line 5
    iget-object v8, p0, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    invoke-interface {p3}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    cmp-long v8, v6, v2

    if-lez v8, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-long/2addr v4, v6

    .line 6
    invoke-static {}, Lcom/facebook/cache/disk/SettableCacheEvent;->a()Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v6

    .line 7
    invoke-interface {p3}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    .line 8
    iget-object p3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v6}, Lcom/facebook/cache/disk/SettableCacheEvent;->b()V

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    neg-long v0, v4

    neg-int p1, p1

    int-to-long v2, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->b(JJ)V

    .line 11
    iget-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {p1}, Lcom/facebook/cache/disk/DiskStorage;->m()V

    return-void

    :catch_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->k:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    throw p1
.end method

.method public b(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/binaryresource/BinaryResource;
    .locals 9

    .line 1
    invoke-static {}, Lcom/facebook/cache/disk/SettableCacheEvent;->a()Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v0

    .line 2
    iput-object p1, v0, Lcom/facebook/cache/disk/SettableCacheEvent;->a:Lcom/facebook/cache/common/CacheKey;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->a(Lcom/facebook/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v5

    .line 5
    :goto_0
    move-object v7, v3

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 6
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    iget-object v6, p0, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v6, v5, p1}, Lcom/facebook/cache/disk/DiskStorage;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 8
    iget-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_2
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->b()V

    return-object v6

    :catchall_0
    move-exception p1

    .line 15
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 16
    :catch_0
    :try_start_4
    iget-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->k:Lcom/facebook/cache/common/CacheErrorLogger;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 18
    invoke-virtual {v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->b()V

    return-object v1

    :goto_3
    invoke-virtual {v0}, Lcom/facebook/cache/disk/SettableCacheEvent;->b()V

    .line 19
    throw p1
.end method

.method public final c(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->n:Lcom/facebook/common/time/Clock;

    check-cast v0, Lcom/facebook/common/time/SystemClock;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    sget-wide v2, Lcom/facebook/cache/disk/DiskStorageCache;->p:J

    add-long/2addr v0, v2

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/cache/disk/DiskStorage$Entry;

    .line 7
    invoke-interface {v4}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    .line 8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->j:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    invoke-interface {p1}, Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;->get()Lcom/facebook/cache/disk/EntryEvictionComparator;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public d(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/cache/common/WriterCallback;)Lcom/facebook/binaryresource/BinaryResource;
    .locals 9

    .line 1
    const-class v0, Lcom/facebook/cache/disk/DiskStorageCache;

    invoke-static {}, Lcom/facebook/cache/disk/SettableCacheEvent;->a()Lcom/facebook/cache/disk/SettableCacheEvent;

    move-result-object v1

    .line 2
    iput-object p1, v1, Lcom/facebook/cache/disk/SettableCacheEvent;->a:Lcom/facebook/cache/common/CacheKey;

    .line 3
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->o:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    instance-of v3, p1, Lcom/facebook/cache/common/MultiCacheKey;

    if-nez v3, :cond_2

    .line 6
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->b(Lcom/facebook/cache/common/CacheKey;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 8
    :try_start_2
    invoke-virtual {p0, v3, p1}, Lcom/facebook/cache/disk/DiskStorageCache;->g(Ljava/lang/String;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/DiskStorage$Inserter;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 9
    :try_start_3
    move-object v4, v2

    check-cast v4, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;

    invoke-virtual {v4, p2, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->c(Lcom/facebook/cache/common/WriterCallback;Ljava/lang/Object;)V

    .line 10
    iget-object p2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->o:Ljava/lang/Object;

    monitor-enter p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    :try_start_4
    invoke-virtual {v4, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->b(Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object p1

    .line 12
    iget-object v5, p0, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    move-object v5, p1

    check-cast v5, Lcom/facebook/binaryresource/FileBinaryResource;

    invoke-virtual {v5}, Lcom/facebook/binaryresource/FileBinaryResource;->a()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->b(JJ)V

    .line 14
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :try_start_5
    move-object p2, p1

    check-cast p2, Lcom/facebook/binaryresource/FileBinaryResource;

    invoke-virtual {p2}, Lcom/facebook/binaryresource/FileBinaryResource;->a()J

    iget-object p2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {p2}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->a()J

    .line 16
    iget-object p2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 17
    :try_start_6
    invoke-virtual {v4}, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->a()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Failed to delete temp file"

    .line 18
    invoke-static {v0, p2}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/cache/disk/SettableCacheEvent;->b()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    .line 21
    :try_start_9
    check-cast v2, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->a()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "Failed to delete temp file"

    .line 22
    invoke-static {v0, p2}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 23
    :cond_1
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    :try_start_a
    iget-object p2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->e:Lcom/facebook/cache/common/CacheEventListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Failed inserting a file into the cache"

    .line 25
    invoke-static {v0, p2, p1}, Lcom/facebook/common/logging/FLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 27
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/cache/disk/SettableCacheEvent;->b()V

    .line 28
    throw p1

    .line 29
    :cond_2
    :try_start_b
    check-cast p1, Lcom/facebook/cache/common/MultiCacheKey;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 p1, 0x0

    .line 30
    :try_start_c
    throw p1

    :catchall_3
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 31
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 32
    :goto_1
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p1
.end method

.method public final e()Z
    .locals 20

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/facebook/cache/disk/DiskStorageCache;->n:Lcom/facebook/common/time/Clock;

    check-cast v0, Lcom/facebook/common/time/SystemClock;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    .line 4
    monitor-enter v4

    .line 5
    :try_start_0
    iget-boolean v0, v4, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v4

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-wide v7, v1, Lcom/facebook/cache/disk/DiskStorageCache;->g:J

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    sub-long/2addr v2, v7

    sget-wide v7, Lcom/facebook/cache/disk/DiskStorageCache;->q:J

    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return v6

    .line 7
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/facebook/cache/disk/DiskStorageCache;->n:Lcom/facebook/common/time/Clock;

    check-cast v0, Lcom/facebook/common/time/SystemClock;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9
    sget-wide v7, Lcom/facebook/cache/disk/DiskStorageCache;->p:J

    add-long/2addr v7, v2

    .line 10
    iget-boolean v0, v1, Lcom/facebook/cache/disk/DiskStorageCache;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, v1, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    goto :goto_1

    .line 12
    :cond_2
    iget-boolean v0, v1, Lcom/facebook/cache/disk/DiskStorageCache;->l:Z

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v9, 0x1

    .line 14
    :try_start_1
    iget-object v10, v1, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v10}, Lcom/facebook/cache/disk/DiskStorage;->q()Ljava/util/Collection;

    move-result-object v10

    .line 15
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/cache/disk/DiskStorage$Entry;

    add-int/lit8 v14, v14, 0x1

    .line 16
    invoke-interface {v15}, Lcom/facebook/cache/disk/DiskStorage$Entry;->a()J

    move-result-wide v16

    add-long v11, v11, v16

    .line 17
    invoke-interface {v15}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v16

    cmp-long v18, v16, v7

    if-lez v18, :cond_4

    .line 18
    invoke-interface {v15}, Lcom/facebook/cache/disk/DiskStorage$Entry;->a()J

    .line 19
    invoke-interface {v15}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v15

    move-wide/from16 v18, v7

    sub-long v6, v15, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    move-wide/from16 v18, v7

    .line 20
    iget-boolean v6, v1, Lcom/facebook/cache/disk/DiskStorageCache;->l:Z

    if-eqz v6, :cond_5

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v15}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    move-wide/from16 v7, v18

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    if-eqz v13, :cond_7

    .line 23
    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorageCache;->k:Lcom/facebook/cache/common/CacheErrorLogger;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_7
    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    .line 25
    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    :try_start_2
    iget-wide v5, v4, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v4

    int-to-long v7, v14

    cmp-long v4, v5, v7

    if-nez v4, :cond_8

    .line 27
    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v4}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->a()J

    move-result-wide v4

    cmp-long v6, v4, v11

    if-eqz v6, :cond_a

    .line 28
    :cond_8
    iget-boolean v4, v1, Lcom/facebook/cache/disk/DiskStorageCache;->l:Z

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    if-eq v4, v0, :cond_9

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 31
    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_9
    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    .line 33
    monitor-enter v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 34
    :try_start_4
    iput-wide v7, v4, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->c:J

    .line 35
    iput-wide v11, v4, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->b:J

    .line 36
    iput-boolean v9, v4, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 38
    :cond_a
    iput-wide v2, v1, Lcom/facebook/cache/disk/DiskStorageCache;->g:J

    const/4 v6, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 39
    :try_start_6
    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 40
    monitor-exit v4

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 41
    iget-object v2, v1, Lcom/facebook/cache/disk/DiskStorageCache;->k:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 42
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 43
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_4
    return v6

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 44
    monitor-exit v4

    throw v2
.end method

.method public f(Lcom/facebook/cache/common/CacheKey;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/cache/common/CacheKeyUtil;->a(Lcom/facebook/cache/common/CacheKey;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    :goto_0
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v3, v2}, Lcom/facebook/cache/disk/DiskStorage;->remove(Ljava/lang/String;)J

    .line 6
    iget-object v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->k:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Ljava/lang/String;Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/DiskStorage$Inserter;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->e()Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->h()V

    .line 4
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->a()J

    move-result-wide v2

    .line 5
    iget-wide v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->d:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    .line 7
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 8
    :try_start_1
    iput-boolean v4, v1, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->a:Z

    const-wide/16 v4, -0x1

    .line 9
    iput-wide v4, v1, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->c:J

    .line 10
    iput-wide v4, v1, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    monitor-exit v1

    .line 12
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DiskStorageCache;->e()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v1

    throw p1

    .line 14
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/facebook/cache/disk/DiskStorageCache;->d:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const-wide/16 v1, 0x9

    mul-long v4, v4, v1

    const-wide/16 v1, 0xa

    .line 15
    div-long/2addr v4, v1

    sget-object v1, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->r:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    invoke-virtual {p0, v4, v5, v1}, Lcom/facebook/cache/disk/DiskStorageCache;->a(JLcom/facebook/cache/common/CacheEventListener$EvictionReason;)V

    .line 16
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/DiskStorage;->n(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/DiskStorage$Inserter;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final h()V
    .locals 10

    .line 1
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->r:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache;->i:Lcom/facebook/cache/disk/DiskStorage;

    .line 2
    invoke-interface {v1}, Lcom/facebook/cache/disk/DiskStorage;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->s:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/facebook/cache/disk/DiskStorageCache;->h:Lcom/facebook/common/statfs/StatFsHelper;

    iget-wide v3, p0, Lcom/facebook/cache/disk/DiskStorageCache;->b:J

    iget-object v5, p0, Lcom/facebook/cache/disk/DiskStorageCache;->m:Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;

    .line 4
    invoke-virtual {v5}, Lcom/facebook/cache/disk/DiskStorageCache$CacheStats;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 5
    invoke-virtual {v2}, Lcom/facebook/common/statfs/StatFsHelper;->a()V

    .line 6
    invoke-virtual {v2}, Lcom/facebook/common/statfs/StatFsHelper;->a()V

    .line 7
    iget-object v5, v2, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, v2, Lcom/facebook/common/statfs/StatFsHelper;->e:J

    sub-long/2addr v5, v7

    sget-wide v7, Lcom/facebook/common/statfs/StatFsHelper;->i:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/facebook/common/statfs/StatFsHelper;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    iget-object v5, v2, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, v2, Lcom/facebook/common/statfs/StatFsHelper;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw v0

    :cond_2
    :goto_1
    if-ne v1, v0, :cond_3

    .line 12
    iget-object v0, v2, Lcom/facebook/common/statfs/StatFsHelper;->a:Landroid/os/StatFs;

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/facebook/common/statfs/StatFsHelper;->c:Landroid/os/StatFs;

    :goto_2
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    .line 14
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v7

    mul-long v7, v7, v5

    goto :goto_3

    :cond_4
    move-wide v7, v1

    :goto_3
    const/4 v0, 0x1

    cmp-long v5, v7, v1

    if-lez v5, :cond_6

    cmp-long v1, v7, v3

    if-gez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    .line 15
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->a:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->d:J

    goto :goto_5

    .line 16
    :cond_7
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->b:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskStorageCache;->d:J

    :goto_5
    return-void
.end method
