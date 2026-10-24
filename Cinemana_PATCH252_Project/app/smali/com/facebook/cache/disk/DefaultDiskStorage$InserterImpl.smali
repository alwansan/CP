.class public Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/DiskStorage$Inserter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InserterImpl"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/File;

.field public final synthetic c:Lcom/facebook/cache/disk/DefaultDiskStorage;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->c:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->c:Lcom/facebook/cache/disk/DefaultDiskStorage;

    .line 2
    iget-object p1, p1, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Lcom/facebook/common/time/Clock;

    .line 3
    check-cast p1, Lcom/facebook/common/time/SystemClock;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->c:Lcom/facebook/cache/disk/DefaultDiskStorage;

    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->b:Ljava/io/File;

    invoke-static {v2, p1}, Lcom/facebook/common/file/FileUtils;->b(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 9
    :cond_0
    new-instance v0, Lcom/facebook/binaryresource/FileBinaryResource;

    invoke-direct {v0, p1}, Lcom/facebook/binaryresource/FileBinaryResource;-><init>(Ljava/io/File;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    instance-of v1, v0, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    if-nez v1, :cond_1

    .line 12
    instance-of v0, v0, Ljava/io/FileNotFoundException;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->c:Lcom/facebook/cache/disk/DefaultDiskStorage;

    .line 14
    iget-object v0, v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 15
    sget v1, Lcom/facebook/cache/disk/DefaultDiskStorage;->g:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    throw p1
.end method

.method public c(Lcom/facebook/cache/common/WriterCallback;Ljava/lang/Object;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->b:Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    new-instance v0, Lcom/facebook/common/internal/CountingOutputStream;

    invoke-direct {v0, p2}, Lcom/facebook/common/internal/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    check-cast p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$7;

    .line 4
    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$7;->a:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->e()Ljava/io/InputStream;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$7;->b:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 7
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->c:Lcom/facebook/common/memory/PooledByteStreams;

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/facebook/common/memory/PooledByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 9
    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->flush()V

    .line 10
    iget-wide v0, v0, Lcom/facebook/common/internal/CountingOutputStream;->r:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 12
    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p1, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;

    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->b:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;-><init>(JJ)V

    throw p1

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 15
    throw p1

    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->c:Lcom/facebook/cache/disk/DefaultDiskStorage;

    .line 17
    iget-object p2, p2, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 18
    sget v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->g:I

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    throw p1
.end method
