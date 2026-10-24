.class public Lcom/facebook/cache/disk/DiskCacheConfig;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

.field public final h:Lcom/facebook/cache/common/CacheErrorLogger;

.field public final i:Lcom/facebook/cache/common/CacheEventListener;

.field public final j:Lcom/facebook/common/disk/DiskTrimmableRegistry;

.field public final k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->c:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->k:Landroid/content/Context;

    .line 4
    iget-object v1, p1, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->a:Lcom/facebook/common/internal/Supplier;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v3, "Either a non-null context or a base directory path or supplier must be provided."

    .line 5
    invoke-static {v1, v3}, Lcom/facebook/common/internal/Preconditions;->e(ZLjava/lang/Object;)V

    .line 6
    iget-object v1, p1, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->a:Lcom/facebook/common/internal/Supplier;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lcom/facebook/cache/disk/DiskCacheConfig$1;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/DiskCacheConfig$1;-><init>(Lcom/facebook/cache/disk/DiskCacheConfig;)V

    .line 8
    iput-object v0, p1, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->a:Lcom/facebook/common/internal/Supplier;

    .line 9
    :cond_2
    iput v2, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->a:I

    const-string v0, "image_cache"

    .line 10
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->b:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->a:Lcom/facebook/common/internal/Supplier;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->c:Lcom/facebook/common/internal/Supplier;

    const-wide/32 v0, 0x2800000

    .line 14
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->d:J

    const-wide/32 v0, 0xa00000

    .line 15
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->e:J

    const-wide/32 v0, 0x200000

    .line 16
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->f:J

    .line 17
    iget-object p1, p1, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->b:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    .line 18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->g:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    .line 20
    const-class p1, Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    monitor-enter p1

    .line 21
    :try_start_0
    sget-object v0, Lcom/facebook/cache/common/NoOpCacheErrorLogger;->a:Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    if-nez v0, :cond_3

    .line 22
    new-instance v0, Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    invoke-direct {v0}, Lcom/facebook/cache/common/NoOpCacheErrorLogger;-><init>()V

    sput-object v0, Lcom/facebook/cache/common/NoOpCacheErrorLogger;->a:Lcom/facebook/cache/common/NoOpCacheErrorLogger;

    .line 23
    :cond_3
    sget-object v0, Lcom/facebook/cache/common/NoOpCacheErrorLogger;->a:Lcom/facebook/cache/common/NoOpCacheErrorLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p1

    .line 24
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 25
    const-class p1, Lcom/facebook/cache/common/NoOpCacheEventListener;

    monitor-enter p1

    .line 26
    :try_start_1
    sget-object v0, Lcom/facebook/cache/common/NoOpCacheEventListener;->a:Lcom/facebook/cache/common/NoOpCacheEventListener;

    if-nez v0, :cond_4

    .line 27
    new-instance v0, Lcom/facebook/cache/common/NoOpCacheEventListener;

    invoke-direct {v0}, Lcom/facebook/cache/common/NoOpCacheEventListener;-><init>()V

    sput-object v0, Lcom/facebook/cache/common/NoOpCacheEventListener;->a:Lcom/facebook/cache/common/NoOpCacheEventListener;

    .line 28
    :cond_4
    sget-object v0, Lcom/facebook/cache/common/NoOpCacheEventListener;->a:Lcom/facebook/cache/common/NoOpCacheEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    .line 29
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->i:Lcom/facebook/cache/common/CacheEventListener;

    .line 30
    const-class p1, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;

    monitor-enter p1

    .line 31
    :try_start_2
    sget-object v0, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;->a:Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;

    if-nez v0, :cond_5

    .line 32
    new-instance v0, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;

    invoke-direct {v0}, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;-><init>()V

    sput-object v0, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;->a:Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;

    .line 33
    :cond_5
    sget-object v0, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;->a:Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    .line 34
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig;->j:Lcom/facebook/common/disk/DiskTrimmableRegistry;

    return-void

    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p1

    throw v0

    :catchall_1
    move-exception v0

    .line 36
    monitor-exit p1

    throw v0

    :catchall_2
    move-exception v0

    .line 37
    monitor-exit p1

    throw v0
.end method
