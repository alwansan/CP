.class public final Lcom/shabakaty/downloader/cd0;
.super Lcom/shabakaty/downloader/fj;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/cd0$a;
    }
.end annotation


# instance fields
.field public final e:Landroid/content/ContentResolver;

.field public f:Landroid/net/Uri;

.field public g:Landroid/content/res/AssetFileDescriptor;

.field public h:Ljava/io/FileInputStream;

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/fj;-><init>(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/cd0;->e:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yl0;)J
    .locals 14

    const/16 v0, 0x7d0

    .line 1
    :try_start_0
    iget-object v1, p1, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    .line 2
    iput-object v1, p0, Lcom/shabakaty/downloader/cd0;->f:Landroid/net/Uri;

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fj;->v(Lcom/shabakaty/downloader/yl0;)V

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/cd0;->e:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 5
    iput-object v2, p0, Lcom/shabakaty/downloader/cd0;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_a

    .line 6
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    .line 7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/cd0;->h:Ljava/io/FileInputStream;

    const/16 v5, 0x7d8

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_1

    .line 9
    iget-wide v10, p1, Lcom/shabakaty/downloader/yl0;->f:J

    cmp-long v12, v10, v3

    if-gtz v12, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/cd0$a;

    invoke-direct {p1, v6, v5}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    .line 12
    iget-wide v12, p1, Lcom/shabakaty/downloader/yl0;->f:J

    add-long/2addr v12, v10

    .line 13
    invoke-virtual {v1, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 14
    iget-wide v10, p1, Lcom/shabakaty/downloader/yl0;->f:J

    cmp-long v2, v12, v10

    if-nez v2, :cond_9

    const-wide/16 v10, 0x0

    if-nez v9, :cond_4

    .line 15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long v4, v2, v10

    if-nez v4, :cond_2

    .line 17
    iput-wide v7, p0, Lcom/shabakaty/downloader/cd0;->i:J

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v12

    sub-long/2addr v2, v12

    iput-wide v2, p0, Lcom/shabakaty/downloader/cd0;->i:J

    cmp-long v1, v2, v10

    if-ltz v1, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/cd0$a;

    invoke-direct {p1, v6, v5}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw p1

    :cond_4
    sub-long/2addr v3, v12

    .line 20
    iput-wide v3, p0, Lcom/shabakaty/downloader/cd0;->i:J
    :try_end_0
    .catch Lcom/shabakaty/downloader/cd0$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v3, v10

    if-ltz v1, :cond_8

    .line 21
    :goto_1
    iget-wide v0, p1, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long v2, v0, v7

    if-eqz v2, :cond_6

    .line 22
    iget-wide v2, p0, Lcom/shabakaty/downloader/cd0;->i:J

    cmp-long v4, v2, v7

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lcom/shabakaty/downloader/cd0;->i:J

    :cond_6
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cd0;->j:Z

    .line 24
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fj;->w(Lcom/shabakaty/downloader/yl0;)V

    .line 25
    iget-wide v0, p1, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-wide v0, p0, Lcom/shabakaty/downloader/cd0;->i:J

    :goto_3
    return-wide v0

    .line 26
    :cond_8
    :try_start_1
    new-instance p1, Lcom/shabakaty/downloader/cd0$a;

    invoke-direct {p1, v6, v5}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw p1

    .line 27
    :cond_9
    new-instance p1, Lcom/shabakaty/downloader/cd0$a;

    invoke-direct {p1, v6, v5}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw p1

    .line 28
    :cond_a
    new-instance p1, Lcom/shabakaty/downloader/cd0$a;

    new-instance v2, Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not open file descriptor for: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, v0}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw p1
    :try_end_1
    .catch Lcom/shabakaty/downloader/cd0$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 29
    new-instance v1, Lcom/shabakaty/downloader/cd0$a;

    .line 30
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_b

    const/16 v0, 0x7d5

    .line 31
    :cond_b
    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw v1

    :catch_1
    move-exception p1

    .line 32
    throw p1
.end method

.method public close()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/cd0;->f:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/downloader/cd0;->h:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/cd0;->h:Ljava/io/FileInputStream;

    .line 5
    :try_start_1
    iget-object v3, p0, Lcom/shabakaty/downloader/cd0;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/shabakaty/downloader/cd0;->g:Landroid/content/res/AssetFileDescriptor;

    .line 8
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cd0;->j:Z

    if-eqz v0, :cond_2

    .line 9
    iput-boolean v2, p0, Lcom/shabakaty/downloader/cd0;->j:Z

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj;->u()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 11
    :try_start_2
    new-instance v4, Lcom/shabakaty/downloader/cd0$a;

    invoke-direct {v4, v3, v1}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/cd0;->g:Landroid/content/res/AssetFileDescriptor;

    .line 13
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cd0;->j:Z

    if-eqz v0, :cond_3

    .line 14
    iput-boolean v2, p0, Lcom/shabakaty/downloader/cd0;->j:Z

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj;->u()V

    .line 16
    :cond_3
    throw v1

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 17
    :try_start_3
    new-instance v4, Lcom/shabakaty/downloader/cd0$a;

    invoke-direct {v4, v3, v1}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :goto_1
    iput-object v0, p0, Lcom/shabakaty/downloader/cd0;->h:Ljava/io/FileInputStream;

    .line 19
    :try_start_4
    iget-object v4, p0, Lcom/shabakaty/downloader/cd0;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 21
    :cond_4
    iput-object v0, p0, Lcom/shabakaty/downloader/cd0;->g:Landroid/content/res/AssetFileDescriptor;

    .line 22
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cd0;->j:Z

    if-eqz v0, :cond_5

    .line 23
    iput-boolean v2, p0, Lcom/shabakaty/downloader/cd0;->j:Z

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj;->u()V

    .line 25
    :cond_5
    throw v3

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v3

    .line 26
    :try_start_5
    new-instance v4, Lcom/shabakaty/downloader/cd0$a;

    invoke-direct {v4, v3, v1}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 27
    :goto_2
    iput-object v0, p0, Lcom/shabakaty/downloader/cd0;->g:Landroid/content/res/AssetFileDescriptor;

    .line 28
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cd0;->j:Z

    if-eqz v0, :cond_6

    .line 29
    iput-boolean v2, p0, Lcom/shabakaty/downloader/cd0;->j:Z

    .line 30
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj;->u()V

    .line 31
    :cond_6
    throw v1
.end method

.method public r()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cd0;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 7

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/cd0;->i:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    .line 2
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cd0;->h:Ljava/io/FileInputStream;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_3

    return v4

    .line 4
    :cond_3
    iget-wide p2, p0, Lcom/shabakaty/downloader/cd0;->i:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 5
    iput-wide p2, p0, Lcom/shabakaty/downloader/cd0;->i:J

    .line 6
    :cond_4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fj;->t(I)V

    return p1

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/cd0$a;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lcom/shabakaty/downloader/cd0$a;-><init>(Ljava/io/IOException;I)V

    throw p2
.end method
