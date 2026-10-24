.class public Lcom/facebook/cache/disk/DiskStorageCache$1;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/DiskStorageCache;-><init>(Lcom/facebook/cache/disk/DiskStorage;Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;Lcom/facebook/cache/disk/DiskStorageCache$Params;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lcom/facebook/common/disk/DiskTrimmableRegistry;Ljava/util/concurrent/Executor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/cache/disk/DiskStorageCache;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/disk/DiskStorageCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskStorageCache$1;->r:Lcom/facebook/cache/disk/DiskStorageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache$1;->r:Lcom/facebook/cache/disk/DiskStorageCache;

    .line 2
    iget-object v0, v0, Lcom/facebook/cache/disk/DiskStorageCache;->o:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/cache/disk/DiskStorageCache$1;->r:Lcom/facebook/cache/disk/DiskStorageCache;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/cache/disk/DiskStorageCache;->e()Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache$1;->r:Lcom/facebook/cache/disk/DiskStorageCache;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskStorageCache$1;->r:Lcom/facebook/cache/disk/DiskStorageCache;

    .line 10
    iget-object v0, v0, Lcom/facebook/cache/disk/DiskStorageCache;->c:Ljava/util/concurrent/CountDownLatch;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
