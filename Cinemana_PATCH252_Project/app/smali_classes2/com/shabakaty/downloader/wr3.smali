.class public final Lcom/shabakaty/downloader/wr3;
.super Lcom/shabakaty/downloader/yr3;
.source "RequestBody.kt"


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lcom/shabakaty/downloader/fr2;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/shabakaty/downloader/fr2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wr3;->b:Ljava/io/File;

    iput-object p2, p0, Lcom/shabakaty/downloader/wr3;->c:Lcom/shabakaty/downloader/fr2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/yr3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wr3;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/shabakaty/downloader/fr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wr3;->c:Lcom/shabakaty/downloader/fr2;

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/do;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wr3;->b:Ljava/io/File;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/c63;->a:Ljava/util/logging/Logger;

    const-string v1, "$this$source"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->O(Ljava/io/InputStream;)Lcom/shabakaty/downloader/r94;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/do;->s0(Lcom/shabakaty/downloader/r94;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
