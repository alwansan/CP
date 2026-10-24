.class public Lcom/shabakaty/downloader/ry0;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final r:I

.field public final s:I

.field public final t:Lcom/shabakaty/downloader/my0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/my0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ry0;->t:Lcom/shabakaty/downloader/my0;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/ry0;->r:I

    .line 4
    iget p1, p1, Lcom/shabakaty/downloader/my0;->d:I

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/ry0;->s:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ry0;->t:Lcom/shabakaty/downloader/my0;

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Lcom/shabakaty/downloader/my0;->p:I

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/sy0;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/sy0;-><init>(Lcom/shabakaty/downloader/my0;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 4
    :try_start_0
    iget-object v6, v0, Lcom/shabakaty/downloader/my0;->k:Lcom/shabakaty/downloader/r63;

    if-eqz v6, :cond_0

    .line 5
    new-instance v6, Lcom/shabakaty/downloader/kh3;

    .line 6
    iget-object v7, v0, Lcom/shabakaty/downloader/my0;->k:Lcom/shabakaty/downloader/r63;

    .line 7
    invoke-direct {v6, v7}, Lcom/shabakaty/downloader/kh3;-><init>(Lcom/shabakaty/downloader/r63;)V

    iput-object v6, v1, Lcom/shabakaty/downloader/sy0;->b:Lcom/shabakaty/downloader/kh3;

    .line 8
    :cond_0
    iget-object v6, v0, Lcom/shabakaty/downloader/my0;->b:Ljava/lang/String;

    .line 9
    iget-object v7, v0, Lcom/shabakaty/downloader/my0;->c:Ljava/lang/String;

    .line 10
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/dz4;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/shabakaty/downloader/sy0;->l:Ljava/lang/String;

    .line 11
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/shabakaty/downloader/sy0;->l:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sy0;->f()Lcom/shabakaty/downloader/ky0;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 14
    iget-wide v10, v7, Lcom/shabakaty/downloader/ky0;->f:J

    .line 15
    iput-wide v10, v0, Lcom/shabakaty/downloader/my0;->g:J

    .line 16
    iget-wide v10, v7, Lcom/shabakaty/downloader/ky0;->g:J

    .line 17
    iput-wide v10, v0, Lcom/shabakaty/downloader/my0;->f:J

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sy0;->g()V

    .line 19
    iput-wide v8, v0, Lcom/shabakaty/downloader/my0;->f:J

    .line 20
    iput-wide v8, v0, Lcom/shabakaty/downloader/my0;->g:J

    move-object v7, v5

    .line 21
    :cond_2
    :goto_0
    sget-object v10, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/u80;->b()Lcom/shabakaty/downloader/bw1;

    move-result-object v10

    iput-object v10, v1, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    .line 22
    check-cast v10, Lcom/shabakaty/downloader/lo0;

    invoke-virtual {v10, v0}, Lcom/shabakaty/downloader/lo0;->a(Lcom/shabakaty/downloader/my0;)V

    .line 23
    iget v10, v0, Lcom/shabakaty/downloader/my0;->p:I

    if-ne v10, v4, :cond_3

    goto/16 :goto_5

    :cond_3
    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    goto/16 :goto_6

    .line 24
    :cond_4
    iget-object v10, v1, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    invoke-static {v10, v0}, Lcom/shabakaty/downloader/dz4;->b(Lcom/shabakaty/downloader/bw1;Lcom/shabakaty/downloader/my0;)Lcom/shabakaty/downloader/bw1;

    move-result-object v10

    iput-object v10, v1, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    .line 25
    check-cast v10, Lcom/shabakaty/downloader/lo0;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/lo0;->b()I

    move-result v10

    iput v10, v1, Lcom/shabakaty/downloader/sy0;->i:I

    .line 26
    iget-object v10, v1, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    const-string v12, "ETag"

    check-cast v10, Lcom/shabakaty/downloader/lo0;

    .line 27
    iget-object v10, v10, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    invoke-virtual {v10, v12}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 28
    iput-object v10, v1, Lcom/shabakaty/downloader/sy0;->j:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v7}, Lcom/shabakaty/downloader/sy0;->a(Lcom/shabakaty/downloader/ky0;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v7, v5

    .line 30
    :cond_5
    iget v10, v1, Lcom/shabakaty/downloader/sy0;->i:I

    const/16 v12, 0xc8

    if-lt v10, v12, :cond_6

    const/16 v12, 0x12c

    if-ge v10, v12, :cond_6

    const/4 v12, 0x1

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_8

    .line 31
    new-instance v0, Lcom/shabakaty/downloader/r41;

    invoke-direct {v0}, Lcom/shabakaty/downloader/r41;-><init>()V

    .line 32
    iget-object v2, v1, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    check-cast v2, Lcom/shabakaty/downloader/lo0;

    .line 33
    iget-object v2, v2, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    instance-of v6, v2, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_7

    .line 34
    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 35
    :cond_7
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/sy0;->c(Ljava/io/InputStream;)Ljava/lang/String;

    .line 36
    iget-object v2, v1, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    check-cast v2, Lcom/shabakaty/downloader/lo0;

    .line 37
    iget-object v2, v2, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 38
    iput-object v2, v0, Lcom/shabakaty/downloader/r41;->a:Ljava/util/Map;

    move-object v5, v0

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_8
    const/16 v12, 0xce

    if-ne v10, v12, :cond_9

    const/4 v10, 0x1

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    .line 39
    :goto_2
    iput-boolean v10, v1, Lcom/shabakaty/downloader/sy0;->k:Z

    .line 40
    iget-wide v12, v0, Lcom/shabakaty/downloader/my0;->g:J

    .line 41
    iput-wide v12, v1, Lcom/shabakaty/downloader/sy0;->h:J

    if-nez v10, :cond_a

    .line 42
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sy0;->e()V

    .line 43
    :cond_a
    iget-wide v12, v1, Lcom/shabakaty/downloader/sy0;->h:J

    cmp-long v0, v12, v8

    if-nez v0, :cond_b

    .line 44
    iget-object v0, v1, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    check-cast v0, Lcom/shabakaty/downloader/lo0;

    .line 45
    iget-object v0, v0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    const-string v10, "Content-Length"

    invoke-virtual {v0, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    const-wide/16 v12, -0x1

    .line 47
    :goto_3
    :try_start_2
    iput-wide v12, v1, Lcom/shabakaty/downloader/sy0;->h:J

    .line 48
    iget-object v0, v1, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 49
    iput-wide v12, v0, Lcom/shabakaty/downloader/my0;->g:J

    .line 50
    :cond_b
    iget-boolean v0, v1, Lcom/shabakaty/downloader/sy0;->k:Z

    if-eqz v0, :cond_c

    if-nez v7, :cond_c

    .line 51
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sy0;->d()V

    .line 52
    :cond_c
    iget-object v0, v1, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 53
    iget v7, v0, Lcom/shabakaty/downloader/my0;->p:I

    if-ne v7, v4, :cond_d

    goto/16 :goto_5

    :cond_d
    if-ne v7, v11, :cond_e

    goto/16 :goto_6

    .line 54
    :cond_e
    invoke-virtual {v0}, Lcom/shabakaty/downloader/my0;->c()V

    .line 55
    iget-object v0, v1, Lcom/shabakaty/downloader/sy0;->g:Lcom/shabakaty/downloader/bw1;

    check-cast v0, Lcom/shabakaty/downloader/lo0;

    .line 56
    iget-object v0, v0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 57
    iput-object v0, v1, Lcom/shabakaty/downloader/sy0;->e:Ljava/io/InputStream;

    const/16 v0, 0x1000

    new-array v7, v0, [B

    .line 58
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_10

    .line 59
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_f

    .line 60
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 61
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    goto :goto_4

    .line 62
    :cond_f
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 63
    :cond_10
    :goto_4
    new-instance v10, Lcom/shabakaty/downloader/tk1;

    invoke-direct {v10, v6}, Lcom/shabakaty/downloader/tk1;-><init>(Ljava/io/File;)V

    .line 64
    iput-object v10, v1, Lcom/shabakaty/downloader/sy0;->f:Lcom/shabakaty/downloader/tk1;

    .line 65
    iget-boolean v6, v1, Lcom/shabakaty/downloader/sy0;->k:Z

    if-eqz v6, :cond_11

    iget-object v6, v1, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 66
    iget-wide v12, v6, Lcom/shabakaty/downloader/my0;->f:J

    cmp-long v6, v12, v8

    if-eqz v6, :cond_11

    .line 67
    iget-object v6, v10, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v6, Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    :cond_11
    iget-object v6, v1, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 69
    iget v6, v6, Lcom/shabakaty/downloader/my0;->p:I

    if-ne v6, v4, :cond_12

    goto :goto_5

    :cond_12
    if-ne v6, v11, :cond_13

    goto :goto_6

    .line 70
    :cond_13
    iget-object v6, v1, Lcom/shabakaty/downloader/sy0;->e:Ljava/io/InputStream;

    invoke-virtual {v6, v7, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_14

    .line 71
    iget-object v0, v1, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 72
    iget-object v6, v0, Lcom/shabakaty/downloader/my0;->b:Ljava/lang/String;

    .line 73
    iget-object v0, v0, Lcom/shabakaty/downloader/my0;->c:Ljava/lang/String;

    .line 74
    invoke-static {v6, v0}, Lcom/shabakaty/downloader/dz4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v6, v1, Lcom/shabakaty/downloader/sy0;->l:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/dz4;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :try_start_3
    iget-boolean v0, v1, Lcom/shabakaty/downloader/sy0;->k:Z

    if-eqz v0, :cond_17

    .line 77
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sy0;->g()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 78
    :cond_14
    :try_start_4
    iget-object v8, v1, Lcom/shabakaty/downloader/sy0;->f:Lcom/shabakaty/downloader/tk1;

    .line 79
    iget-object v8, v8, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v8, Ljava/io/BufferedOutputStream;

    invoke-virtual {v8, v7, v3, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 80
    iget-object v8, v1, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 81
    iget-wide v9, v8, Lcom/shabakaty/downloader/my0;->f:J

    int-to-long v12, v6

    add-long/2addr v9, v12

    .line 82
    iput-wide v9, v8, Lcom/shabakaty/downloader/my0;->f:J

    .line 83
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sy0;->h()V

    .line 84
    iget-object v6, v1, Lcom/shabakaty/downloader/sy0;->f:Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/sy0;->j(Lcom/shabakaty/downloader/tk1;)V

    .line 85
    iget-object v6, v1, Lcom/shabakaty/downloader/sy0;->a:Lcom/shabakaty/downloader/my0;

    .line 86
    iget v6, v6, Lcom/shabakaty/downloader/my0;->p:I

    if-ne v6, v4, :cond_15

    :goto_5
    const/4 v0, 0x0

    goto :goto_7

    :cond_15
    if-ne v6, v11, :cond_13

    .line 87
    iget-object v0, v1, Lcom/shabakaty/downloader/sy0;->f:Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/sy0;->i(Lcom/shabakaty/downloader/tk1;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 88
    :goto_7
    iget-object v6, v1, Lcom/shabakaty/downloader/sy0;->f:Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/sy0;->b(Lcom/shabakaty/downloader/tk1;)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_1
    const/4 v2, 0x0

    .line 89
    :catch_2
    :try_start_5
    iget-boolean v0, v1, Lcom/shabakaty/downloader/sy0;->k:Z

    if-nez v0, :cond_16

    .line 90
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sy0;->e()V

    .line 91
    :cond_16
    new-instance v5, Lcom/shabakaty/downloader/r41;

    invoke-direct {v5}, Lcom/shabakaty/downloader/r41;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    :cond_17
    :goto_8
    iget-object v0, v1, Lcom/shabakaty/downloader/sy0;->f:Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/sy0;->b(Lcom/shabakaty/downloader/tk1;)V

    move v3, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_9
    if-eqz v3, :cond_18

    .line 93
    iget-object v0, p0, Lcom/shabakaty/downloader/ry0;->t:Lcom/shabakaty/downloader/my0;

    .line 94
    iget v1, v0, Lcom/shabakaty/downloader/my0;->p:I

    if-eq v1, v4, :cond_1b

    const/4 v1, 0x4

    .line 95
    iput v1, v0, Lcom/shabakaty/downloader/my0;->p:I

    .line 96
    invoke-static {}, Lcom/shabakaty/downloader/ke0;->a()Lcom/shabakaty/downloader/ke0;

    move-result-object v1

    .line 97
    iget-object v1, v1, Lcom/shabakaty/downloader/ke0;->a:Lcom/shabakaty/downloader/y61;

    .line 98
    check-cast v1, Lcom/shabakaty/downloader/ao0;

    .line 99
    iget-object v1, v1, Lcom/shabakaty/downloader/ao0;->c:Ljava/util/concurrent/Executor;

    .line 100
    new-instance v2, Lcom/shabakaty/downloader/ny0;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/ny0;-><init>(Lcom/shabakaty/downloader/my0;)V

    .line 101
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_18
    if-eqz v0, :cond_19

    .line 102
    iget-object v0, p0, Lcom/shabakaty/downloader/ry0;->t:Lcom/shabakaty/downloader/my0;

    .line 103
    iget v1, v0, Lcom/shabakaty/downloader/my0;->p:I

    if-eq v1, v4, :cond_1b

    .line 104
    invoke-static {}, Lcom/shabakaty/downloader/ke0;->a()Lcom/shabakaty/downloader/ke0;

    move-result-object v1

    .line 105
    iget-object v1, v1, Lcom/shabakaty/downloader/ke0;->a:Lcom/shabakaty/downloader/y61;

    .line 106
    check-cast v1, Lcom/shabakaty/downloader/ao0;

    .line 107
    iget-object v1, v1, Lcom/shabakaty/downloader/ao0;->c:Ljava/util/concurrent/Executor;

    .line 108
    new-instance v2, Lcom/shabakaty/downloader/oy0;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/oy0;-><init>(Lcom/shabakaty/downloader/my0;)V

    .line 109
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_19
    if-eqz v5, :cond_1a

    .line 110
    iget-object v0, p0, Lcom/shabakaty/downloader/ry0;->t:Lcom/shabakaty/downloader/my0;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/my0;->b(Lcom/shabakaty/downloader/r41;)V

    goto :goto_a

    :cond_1a
    if-nez v2, :cond_1b

    .line 111
    iget-object v0, p0, Lcom/shabakaty/downloader/ry0;->t:Lcom/shabakaty/downloader/my0;

    new-instance v1, Lcom/shabakaty/downloader/r41;

    invoke-direct {v1}, Lcom/shabakaty/downloader/r41;-><init>()V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/my0;->b(Lcom/shabakaty/downloader/r41;)V

    :cond_1b
    :goto_a
    return-void

    .line 112
    :goto_b
    iget-object v2, v1, Lcom/shabakaty/downloader/sy0;->f:Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/sy0;->b(Lcom/shabakaty/downloader/tk1;)V

    .line 113
    throw v0
.end method
