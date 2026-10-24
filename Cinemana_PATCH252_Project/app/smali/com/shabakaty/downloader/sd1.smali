.class public final Lcom/shabakaty/downloader/sd1;
.super Ljava/lang/Object;
.source "FlacMetadataReader.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/o91;Z)Lcom/shabakaty/downloader/ps2;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/px1;->b:Lcom/shabakaty/downloader/px1$a;

    .line 2
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/ka3;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v5, 0x0

    .line 3
    :goto_1
    :try_start_0
    iget-object v6, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 4
    invoke-interface {p0, v6, v3, v2}, Lcom/shabakaty/downloader/o91;->s([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->v()I

    move-result v6

    const v7, 0x494433

    if-eq v6, v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x3

    .line 7
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->s()I

    move-result v6

    add-int/lit8 v7, v6, 0xa

    if-nez v4, :cond_2

    .line 9
    new-array v4, v7, [B

    .line 10
    iget-object v8, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 11
    invoke-static {v8, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-interface {p0, v4, v2, v6}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 13
    new-instance v6, Lcom/shabakaty/downloader/px1;

    invoke-direct {v6, p1}, Lcom/shabakaty/downloader/px1;-><init>(Lcom/shabakaty/downloader/px1$a;)V

    invoke-virtual {v6, v4, v7}, Lcom/shabakaty/downloader/px1;->d([BI)Lcom/shabakaty/downloader/ps2;

    move-result-object v4

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {p0, v6}, Lcom/shabakaty/downloader/o91;->l(I)V

    :goto_2
    add-int/2addr v5, v7

    goto :goto_1

    :catch_0
    nop

    .line 15
    :goto_3
    invoke-interface {p0}, Lcom/shabakaty/downloader/o91;->p()V

    .line 16
    invoke-interface {p0, v5}, Lcom/shabakaty/downloader/o91;->l(I)V

    if-eqz v4, :cond_4

    .line 17
    iget-object p0, v4, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    array-length p0, p0

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    move-object v0, v4

    :cond_4
    :goto_4
    return-object v0
.end method

.method public static b(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/vd1$a;
    .locals 11

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->v()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/ka3;->b:I

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 4
    div-int/lit8 v0, v0, 0x12

    .line 5
    new-array v3, v0, [J

    .line 6
    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    .line 8
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 9
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_1

    .line 10
    :cond_0
    aput-wide v6, v3, v5

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v6, 0x2

    .line 12
    invoke-virtual {p0, v6}, Lcom/shabakaty/downloader/ka3;->F(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget v0, p0, Lcom/shabakaty/downloader/ka3;->b:I

    int-to-long v5, v0

    sub-long/2addr v1, v5

    long-to-int v0, v1

    .line 14
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 15
    new-instance p0, Lcom/shabakaty/downloader/vd1$a;

    invoke-direct {p0, v3, v4}, Lcom/shabakaty/downloader/vd1$a;-><init>([J[J)V

    return-object p0
.end method
