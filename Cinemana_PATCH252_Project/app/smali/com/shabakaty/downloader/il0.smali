.class public abstract Lcom/shabakaty/downloader/il0;
.super Lcom/shabakaty/downloader/zz;
.source "DataChunk.java"


# instance fields
.field public j:[B

.field public volatile k:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;ILcom/shabakaty/downloader/wh1;ILjava/lang/Object;[B)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/zz;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;ILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    if-nez p7, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/sy4;->f:[B

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object/from16 v0, p7

    :goto_0
    iput-object v0, v1, Lcom/shabakaty/downloader/il0;->j:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    iget-object v1, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uc4;->a(Lcom/shabakaty/downloader/yl0;)J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/il0;->k:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/il0;->j:[B

    array-length v3, v0

    add-int/lit16 v4, v1, 0x4000

    const/16 v5, 0x4000

    if-ge v3, v4, :cond_1

    .line 4
    array-length v3, v0

    add-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/il0;->j:[B

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    iget-object v3, p0, Lcom/shabakaty/downloader/il0;->j:[B

    invoke-virtual {v0, v3, v1, v5}, Lcom/shabakaty/downloader/uc4;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/il0;->k:Z

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/il0;->j:[B

    move-object v2, p0

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/a$a;

    .line 8
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/exoplayer2/source/hls/a$a;->l:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v0, :cond_4

    .line 10
    :try_start_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uc4;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v1, :cond_5

    .line 12
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/uc4;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 13
    :catch_1
    :cond_5
    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/il0;->k:Z

    return-void
.end method
