.class public final Lcom/shabakaty/downloader/fb;
.super Lcom/shabakaty/downloader/w64;
.source "AppInfoTableDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/w64;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/ys2;Ljava/nio/ByteBuffer;)Lcom/shabakaty/downloader/ps2;
    .locals 16

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x74

    if-ne v0, v2, :cond_8

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/a55;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/a55;-><init>([BI)V

    const/16 v2, 0xc

    .line 3
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v3

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->f()I

    move-result v4

    add-int/2addr v4, v3

    const/4 v3, 0x4

    sub-int/2addr v4, v3

    const/16 v5, 0x2c

    .line 6
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    .line 8
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->w(I)V

    const/16 v5, 0x10

    .line 9
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->f()I

    move-result v7

    if-ge v7, v4, :cond_6

    const/16 v7, 0x30

    .line 12
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/16 v7, 0x8

    .line 13
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    .line 14
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 15
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v9

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->f()I

    move-result v10

    add-int/2addr v10, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 17
    :goto_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->f()I

    move-result v12

    if-ge v12, v10, :cond_4

    .line 18
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v12

    .line 19
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v13

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->f()I

    move-result v14

    add-int/2addr v14, v13

    const/4 v15, 0x2

    const/4 v1, 0x0

    if-ne v12, v15, :cond_2

    .line 21
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v12

    .line 22
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->f()I

    move-result v12

    if-ge v12, v14, :cond_3

    .line 24
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v9

    .line 25
    sget-object v12, Lcom/shabakaty/downloader/iz;->a:Ljava/nio/charset/Charset;

    .line 26
    new-array v13, v9, [B

    .line 27
    invoke-virtual {v0, v13, v1, v9}, Lcom/shabakaty/downloader/a55;->m([BII)V

    .line 28
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v13, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 29
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_1

    .line 30
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v15

    .line 31
    invoke-virtual {v0, v15}, Lcom/shabakaty/downloader/a55;->w(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    const/16 v15, 0x15

    if-ne v12, v15, :cond_3

    .line 32
    sget-object v11, Lcom/shabakaty/downloader/iz;->a:Ljava/nio/charset/Charset;

    .line 33
    new-array v12, v13, [B

    .line 34
    invoke-virtual {v0, v12, v1, v13}, Lcom/shabakaty/downloader/a55;->m([BII)V

    .line 35
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v12, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v11, v1

    :cond_3
    mul-int/lit8 v14, v14, 0x8

    .line 36
    invoke-virtual {v0, v14}, Lcom/shabakaty/downloader/a55;->s(I)V

    goto :goto_1

    :cond_4
    mul-int/lit8 v10, v10, 0x8

    .line 37
    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/a55;->s(I)V

    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    .line 38
    new-instance v1, Lcom/shabakaty/downloader/eb;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {v1, v8, v7}, Lcom/shabakaty/downloader/eb;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 39
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance v1, Lcom/shabakaty/downloader/ps2;

    invoke-direct {v1, v6}, Lcom/shabakaty/downloader/ps2;-><init>(Ljava/util/List;)V

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v1, 0x0

    :goto_5
    return-object v1
.end method
