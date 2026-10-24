.class public final Lcom/shabakaty/downloader/sd;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r94;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/qd;

.field public final synthetic s:Lcom/shabakaty/downloader/r94;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qd;Lcom/shabakaty/downloader/r94;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/r94;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/sd;->r:Lcom/shabakaty/downloader/qd;

    iput-object p2, p0, Lcom/shabakaty/downloader/sd;->s:Lcom/shabakaty/downloader/r94;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C1(Lcom/shabakaty/downloader/zn;J)J
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sd;->r:Lcom/shabakaty/downloader/qd;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->h()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sd;->s:Lcom/shabakaty/downloader/r94;

    invoke-interface {v1, p1, p2, p3}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->i()Z

    move-result p3

    if-nez p3, :cond_0

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qd;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 6
    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->i()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qd;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 9
    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->i()Z

    move-result p2

    .line 11
    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sd;->r:Lcom/shabakaty/downloader/qd;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->h()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sd;->s:Lcom/shabakaty/downloader/r94;

    invoke-interface {v1}, Lcom/shabakaty/downloader/r94;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qd;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 6
    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->i()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qd;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    .line 9
    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->i()Z

    move-result v0

    .line 11
    throw v1
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sd;->r:Lcom/shabakaty/downloader/qd;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AsyncTimeout.source("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/sd;->s:Lcom/shabakaty/downloader/r94;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
