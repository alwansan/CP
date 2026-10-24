.class public Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/DiskStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Lcom/facebook/cache/common/CacheErrorLogger;

.field public volatile e:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;


# direct methods
.method public constructor <init>(ILcom/facebook/common/internal/Supplier;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/common/CacheErrorLogger;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->a:I

    .line 3
    iput-object p4, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 4
    iput-object p2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b:Lcom/facebook/common/internal/Supplier;

    .line 5
    iput-object p3, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->c:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;-><init>(Ljava/io/File;Lcom/facebook/cache/disk/DiskStorage;)V

    iput-object p1, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->e:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/file/FileUtils;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v2, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "Created cache directory %s"

    invoke-static {v1, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const-string v4, "DynamicDefaultDiskStorage"

    .line 6
    invoke-virtual {v2, v3, v4, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage;

    iget v2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->a:I

    iget-object v3, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage;-><init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V

    .line 8
    new-instance v2, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    invoke-direct {v2, v0, v1}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;-><init>(Ljava/io/File;Lcom/facebook/cache/disk/DiskStorage;)V

    iput-object v2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->e:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    return-void

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    throw v0
.end method

.method public declared-synchronized b()Lcom/facebook/cache/disk/DiskStorage;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->e:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    .line 2
    iget-object v1, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->a:Lcom/facebook/cache/disk/DiskStorage;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->e:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->a:Lcom/facebook/cache/disk/DiskStorage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->e:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->b:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->e:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/FileTree;->a(Ljava/io/File;)Z

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->a()V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->e:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->a:Lcom/facebook/cache/disk/DiskStorage;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->l()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->m()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    const-class v1, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;

    const-string v2, "purgeUnexpectedResources"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/DiskStorage$Inserter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/DiskStorage;->n(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/DiskStorage$Inserter;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/DiskStorage;->o(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/DiskStorage;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object p1

    return-object p1
.end method

.method public q()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->q()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public r(Lcom/facebook/cache/disk/DiskStorage$Entry;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/DiskStorage;->r(Lcom/facebook/cache/disk/DiskStorage$Entry;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->b()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/DiskStorage;->remove(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
