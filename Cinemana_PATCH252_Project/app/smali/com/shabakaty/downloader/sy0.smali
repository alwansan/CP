.class public Lcom/shabakaty/downloader/sy0;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/my0;

.field public b:Lcom/shabakaty/downloader/kh3;

.field public c:J

.field public d:J

.field public e:Ljava/io/InputStream;

.field public f:Lcom/shabakaty/downloader/tk1;

.field public g:Lcom/shabakaty/downloader/bw1;

.field public h:J

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/my0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ky0;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/sy0;->i:I

    const/4 v1, 0x1

    const/16 v2, 0x1a0

    if-eq v0, v2, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sy0;->j:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/ky0;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sy0;->g()V

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sy0;->e()V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p1, Lcom/shabakaty/downloader/my0;->f:J

    .line 9
    iput-wide v2, p1, Lcom/shabakaty/downloader/my0;->g:J

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/u80;->b()Lcom/shabakaty/downloader/bw1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    check-cast p1, Lcom/shabakaty/downloader/lo0;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/lo0;->a(Lcom/shabakaty/downloader/my0;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    iget-object v0, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/dz4;->b(Lcom/shabakaty/downloader/bw1;Lcom/shabakaty/downloader/my0;)Lcom/shabakaty/downloader/bw1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    .line 13
    check-cast p1, Lcom/shabakaty/downloader/lo0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lo0;->b()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/sy0;->i:I

    return v1
.end method

.method public final b(Lcom/shabakaty/downloader/tk1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sy0;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sy0;->i(Lcom/shabakaty/downloader/tk1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 7
    :goto_1
    :try_start_3
    iget-object v1, p1, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p1, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :goto_2
    throw v0

    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    .line 11
    :try_start_4
    iget-object v0, p1, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p1, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    return-void
.end method

.method public final c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 6
    :catch_1
    :cond_1
    throw p1

    :catch_2
    :goto_2
    if-eqz v1, :cond_2

    .line 7
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 8
    :catch_3
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ky0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ky0;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 3
    iget v2, v1, Lcom/shabakaty/downloader/my0;->o:I

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/ky0;->a:I

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/my0;->a:Ljava/lang/String;

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/ky0;->b:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/sy0;->j:Ljava/lang/String;

    .line 8
    iput-object v2, v0, Lcom/shabakaty/downloader/ky0;->c:Ljava/lang/String;

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/my0;->b:Ljava/lang/String;

    .line 10
    iput-object v2, v0, Lcom/shabakaty/downloader/ky0;->d:Ljava/lang/String;

    .line 11
    iget-object v2, v1, Lcom/shabakaty/downloader/my0;->c:Ljava/lang/String;

    .line 12
    iput-object v2, v0, Lcom/shabakaty/downloader/ky0;->e:Ljava/lang/String;

    .line 13
    iget-wide v1, v1, Lcom/shabakaty/downloader/my0;->f:J

    .line 14
    iput-wide v1, v0, Lcom/shabakaty/downloader/ky0;->g:J

    .line 15
    iget-wide v1, p0, Lcom/shabakaty/downloader/sy0;->h:J

    .line 16
    iput-wide v1, v0, Lcom/shabakaty/downloader/ky0;->f:J

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 18
    iput-wide v1, v0, Lcom/shabakaty/downloader/ky0;->h:J

    .line 19
    sget-object v1, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/u80;->a()Lcom/shabakaty/downloader/jm0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/jm0;->L(Lcom/shabakaty/downloader/ky0;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/shabakaty/downloader/sy0;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public final f()Lcom/shabakaty/downloader/ky0;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/u80;->a()Lcom/shabakaty/downloader/jm0;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/my0;->o:I

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/jm0;->find(I)Lcom/shabakaty/downloader/ky0;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/u80;->a()Lcom/shabakaty/downloader/jm0;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/my0;->o:I

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/jm0;->remove(I)V

    return-void
.end method

.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/my0;->p:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/sy0;->b:Lcom/shabakaty/downloader/kh3;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/ih3;

    .line 5
    iget-wide v4, v0, Lcom/shabakaty/downloader/my0;->f:J

    .line 6
    iget-wide v6, p0, Lcom/shabakaty/downloader/sy0;->h:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/shabakaty/downloader/ih3;-><init>(JJ)V

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final i(Lcom/shabakaty/downloader/tk1;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast p1, Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/sy0;->k:Z

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/u80;->a()Lcom/shabakaty/downloader/jm0;

    move-result-object v0

    iget-object p1, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 6
    iget v1, p1, Lcom/shabakaty/downloader/my0;->o:I

    .line 7
    iget-wide v2, p1, Lcom/shabakaty/downloader/my0;->f:J

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/shabakaty/downloader/jm0;->Z(IJJ)V

    :cond_0
    return-void
.end method

.method public final j(Lcom/shabakaty/downloader/tk1;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 2
    iget-wide v0, v0, Lcom/shabakaty/downloader/my0;->f:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget-wide v4, p0, Lcom/shabakaty/downloader/sy0;->d:J

    sub-long v4, v0, v4

    .line 5
    iget-wide v6, p0, Lcom/shabakaty/downloader/sy0;->c:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0x10000

    cmp-long v10, v4, v8

    if-lez v10, :cond_0

    const-wide/16 v4, 0x7d0

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sy0;->i(Lcom/shabakaty/downloader/tk1;)V

    .line 7
    iput-wide v0, p0, Lcom/shabakaty/downloader/sy0;->d:J

    .line 8
    iput-wide v2, p0, Lcom/shabakaty/downloader/sy0;->c:J

    :cond_0
    return-void
.end method
