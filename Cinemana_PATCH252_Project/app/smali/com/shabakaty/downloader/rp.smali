.class public final Lcom/shabakaty/downloader/rp;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lcom/shabakaty/downloader/tl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/rp$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/np;

.field public final b:J

.field public final c:I

.field public d:Lcom/shabakaty/downloader/yl0;

.field public e:J

.field public f:Ljava/io/File;

.field public g:Ljava/io/OutputStream;

.field public h:J

.field public i:J

.field public j:Lcom/shabakaty/downloader/pt3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/np;J)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    const-wide/32 v0, 0x200000

    cmp-long v3, p2, v0

    if-gez v3, :cond_2

    const-string v0, "CacheDataSink"

    const-string v1, "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/rp;->a:Lcom/shabakaty/downloader/np;

    if-nez v2, :cond_3

    const-wide p2, 0x7fffffffffffffffL

    .line 4
    :cond_3
    iput-wide p2, p0, Lcom/shabakaty/downloader/rp;->b:J

    const/16 p1, 0x5000

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/rp;->c:I

    return-void

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "fragmentSize must be positive or C.LENGTH_UNSET."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yl0;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/yl0;->h:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p1, Lcom/shabakaty/downloader/yl0;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/yl0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/rp;->d:Lcom/shabakaty/downloader/yl0;

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/rp;->d:Lcom/shabakaty/downloader/yl0;

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/yl0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/shabakaty/downloader/rp;->b:J

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/rp;->e:J

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/shabakaty/downloader/rp;->i:J

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/rp;->c(Lcom/shabakaty/downloader/yl0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/rp$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/rp$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rp;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/rp;->g:Ljava/io/OutputStream;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :catch_0
    :cond_1
    iput-object v1, p0, Lcom/shabakaty/downloader/rp;->g:Ljava/io/OutputStream;

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/rp;->f:Ljava/io/File;

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/rp;->f:Ljava/io/File;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/rp;->a:Lcom/shabakaty/downloader/np;

    iget-wide v2, p0, Lcom/shabakaty/downloader/rp;->h:J

    invoke-interface {v1, v0, v2, v3}, Lcom/shabakaty/downloader/np;->h(Ljava/io/File;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/rp;->g:Ljava/io/OutputStream;

    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v2, :cond_2

    .line 10
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    :catch_1
    :cond_2
    iput-object v1, p0, Lcom/shabakaty/downloader/rp;->g:Ljava/io/OutputStream;

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/rp;->f:Ljava/io/File;

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/rp;->f:Ljava/io/File;

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 15
    throw v0
.end method

.method public final c(Lcom/shabakaty/downloader/yl0;)V
    .locals 10

    .line 1
    iget-wide v0, p1, Lcom/shabakaty/downloader/yl0;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/rp;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/shabakaty/downloader/rp;->e:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_0
    move-wide v8, v2

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/rp;->a:Lcom/shabakaty/downloader/np;

    iget-object v5, p1, Lcom/shabakaty/downloader/yl0;->h:Ljava/lang/String;

    .line 4
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    iget-wide v0, p1, Lcom/shabakaty/downloader/yl0;->f:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/rp;->i:J

    add-long v6, v0, v2

    .line 5
    invoke-interface/range {v4 .. v9}, Lcom/shabakaty/downloader/np;->a(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rp;->f:Ljava/io/File;

    .line 6
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/shabakaty/downloader/rp;->f:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/rp;->c:I

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/rp;->j:Lcom/shabakaty/downloader/pt3;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/pt3;

    iget v1, p0, Lcom/shabakaty/downloader/rp;->c:I

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/pt3;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/rp;->j:Lcom/shabakaty/downloader/pt3;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/pt3;->a(Ljava/io/OutputStream;)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/rp;->j:Lcom/shabakaty/downloader/pt3;

    iput-object p1, p0, Lcom/shabakaty/downloader/rp;->g:Ljava/io/OutputStream;

    goto :goto_2

    .line 12
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/rp;->g:Ljava/io/OutputStream;

    :goto_2
    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/shabakaty/downloader/rp;->h:J

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rp;->d:Lcom/shabakaty/downloader/yl0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rp;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/rp$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/rp$a;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public write([BII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rp;->d:Lcom/shabakaty/downloader/yl0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 2
    :try_start_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/rp;->h:J

    iget-wide v4, p0, Lcom/shabakaty/downloader/rp;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rp;->b()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/rp;->c(Lcom/shabakaty/downloader/yl0;)V

    :cond_1
    sub-int v2, p3, v1

    int-to-long v2, v2

    .line 5
    iget-wide v4, p0, Lcom/shabakaty/downloader/rp;->e:J

    iget-wide v6, p0, Lcom/shabakaty/downloader/rp;->h:J

    sub-long/2addr v4, v6

    .line 6
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/rp;->g:Ljava/io/OutputStream;

    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    add-int v4, p2, v1

    invoke-virtual {v2, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v3

    .line 8
    iget-wide v4, p0, Lcom/shabakaty/downloader/rp;->h:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/shabakaty/downloader/rp;->h:J

    .line 9
    iget-wide v4, p0, Lcom/shabakaty/downloader/rp;->i:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/shabakaty/downloader/rp;->i:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/rp$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/rp$a;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_2
    return-void
.end method
