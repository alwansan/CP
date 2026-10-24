.class public Lcom/facebook/imageformat/ImageFormatChecker;
.super Ljava/lang/Object;
.source "ImageFormatChecker.java"


# static fields
.field public static d:Lcom/facebook/imageformat/ImageFormatChecker;


# instance fields
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/ImageFormat$FormatChecker;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/facebook/imageformat/DefaultImageFormatChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;

    invoke-direct {v0}, Lcom/facebook/imageformat/DefaultImageFormatChecker;-><init>()V

    iput-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->c:Lcom/facebook/imageformat/DefaultImageFormatChecker;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imageformat/ImageFormatChecker;->d()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 5

    .line 1
    invoke-static {}, Lcom/facebook/imageformat/ImageFormatChecker;->c()Lcom/facebook/imageformat/ImageFormatChecker;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v1, v0, Lcom/facebook/imageformat/ImageFormatChecker;->a:I

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 7
    invoke-static {p0, v2, v3, v1}, Lcom/facebook/common/internal/ByteStreams;->a(Ljava/io/InputStream;[BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 9
    throw v0

    .line 10
    :cond_0
    invoke-static {p0, v2, v3, v1}, Lcom/facebook/common/internal/ByteStreams;->a(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 11
    :goto_0
    iget-object p0, v0, Lcom/facebook/imageformat/ImageFormatChecker;->c:Lcom/facebook/imageformat/DefaultImageFormatChecker;

    invoke-virtual {p0, v2, v1}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->b([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0

    .line 12
    sget-object v3, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    if-eq p0, v3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p0, v0, Lcom/facebook/imageformat/ImageFormatChecker;->b:Ljava/util/List;

    if-eqz p0, :cond_3

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imageformat/ImageFormat$FormatChecker;

    .line 15
    invoke-interface {v0, v2, v1}, Lcom/facebook/imageformat/ImageFormat$FormatChecker;->b([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    sget-object v3, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v3, :cond_2

    move-object p0, v0

    goto :goto_1

    .line 17
    :cond_3
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    :goto_1
    return-object p0
.end method

.method public static b(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/facebook/imageformat/ImageFormatChecker;->a(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lcom/facebook/common/internal/Throwables;->a(Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static declared-synchronized c()Lcom/facebook/imageformat/ImageFormatChecker;
    .locals 2

    const-class v0, Lcom/facebook/imageformat/ImageFormatChecker;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imageformat/ImageFormatChecker;->d:Lcom/facebook/imageformat/ImageFormatChecker;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/imageformat/ImageFormatChecker;

    invoke-direct {v1}, Lcom/facebook/imageformat/ImageFormatChecker;-><init>()V

    sput-object v1, Lcom/facebook/imageformat/ImageFormatChecker;->d:Lcom/facebook/imageformat/ImageFormatChecker;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/imageformat/ImageFormatChecker;->d:Lcom/facebook/imageformat/ImageFormatChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->c:Lcom/facebook/imageformat/DefaultImageFormatChecker;

    .line 2
    iget v0, v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->a:I

    .line 3
    iput v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->a:I

    .line 4
    iget-object v0, p0, Lcom/facebook/imageformat/ImageFormatChecker;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imageformat/ImageFormat$FormatChecker;

    .line 6
    iget v2, p0, Lcom/facebook/imageformat/ImageFormatChecker;->a:I

    invoke-interface {v1}, Lcom/facebook/imageformat/ImageFormat$FormatChecker;->a()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/imageformat/ImageFormatChecker;->a:I

    goto :goto_0

    :cond_0
    return-void
.end method
