.class public final Lcom/shabakaty/downloader/k11;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/shabakaty/downloader/l21;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ka3;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/shabakaty/downloader/fp4;

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:Lcom/shabakaty/downloader/wh1;

.field public j:I

.field public k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object v0, p0, Lcom/shabakaty/downloader/k11;->a:Lcom/shabakaty/downloader/ka3;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/k11;->e:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/k11;->k:J

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/k11;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/k11;->d:Lcom/shabakaty/downloader/fp4;

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    if-lez v2, :cond_1f

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/k11;->e:I

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_1b

    if-eq v2, v7, :cond_3

    if-ne v2, v5, :cond_2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    iget v3, v0, Lcom/shabakaty/downloader/k11;->j:I

    iget v4, v0, Lcom/shabakaty/downloader/k11;->f:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/k11;->d:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v3, v1, v2}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 6
    iget v3, v0, Lcom/shabakaty/downloader/k11;->f:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/shabakaty/downloader/k11;->f:I

    .line 7
    iget v13, v0, Lcom/shabakaty/downloader/k11;->j:I

    if-ne v3, v13, :cond_0

    .line 8
    iget-wide v10, v0, Lcom/shabakaty/downloader/k11;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v10, v2

    if-eqz v4, :cond_1

    .line 9
    iget-object v9, v0, Lcom/shabakaty/downloader/k11;->d:Lcom/shabakaty/downloader/fp4;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 10
    iget-wide v2, v0, Lcom/shabakaty/downloader/k11;->k:J

    iget-wide v4, v0, Lcom/shabakaty/downloader/k11;->h:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/shabakaty/downloader/k11;->k:J

    .line 11
    :cond_1
    iput v8, v0, Lcom/shabakaty/downloader/k11;->e:I

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 13
    :cond_3
    iget-object v2, v0, Lcom/shabakaty/downloader/k11;->a:Lcom/shabakaty/downloader/ka3;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v9

    iget v10, v0, Lcom/shabakaty/downloader/k11;->f:I

    const/16 v11, 0x12

    rsub-int/lit8 v10, v10, 0x12

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 16
    iget v10, v0, Lcom/shabakaty/downloader/k11;->f:I

    .line 17
    iget-object v12, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v13, v1, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v12, v13, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget v2, v1, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v2, v9

    iput v2, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 19
    iget v2, v0, Lcom/shabakaty/downloader/k11;->f:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/shabakaty/downloader/k11;->f:I

    if-ne v2, v11, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 20
    iget-object v2, v0, Lcom/shabakaty/downloader/k11;->a:Lcom/shabakaty/downloader/ka3;

    .line 21
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 22
    iget-object v9, v0, Lcom/shabakaty/downloader/k11;->i:Lcom/shabakaty/downloader/wh1;

    const/16 v10, 0xe

    const/16 v13, 0x1f

    const/4 v14, -0x2

    const/4 v11, -0x1

    if-nez v9, :cond_13

    .line 23
    iget-object v9, v0, Lcom/shabakaty/downloader/k11;->c:Ljava/lang/String;

    iget-object v15, v0, Lcom/shabakaty/downloader/k11;->b:Ljava/lang/String;

    .line 24
    aget-byte v6, v2, v8

    const/16 v3, 0x7f

    const/4 v12, 0x0

    if-ne v6, v3, :cond_5

    .line 25
    new-instance v3, Lcom/shabakaty/downloader/a55;

    invoke-direct {v3, v2, v7, v12}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    goto/16 :goto_c

    .line 26
    :cond_5
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 27
    aget-byte v6, v3, v8

    if-eq v6, v14, :cond_7

    aget-byte v6, v3, v8

    if-ne v6, v11, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_8

    const/4 v6, 0x0

    .line 28
    :goto_4
    array-length v14, v3

    sub-int/2addr v14, v7

    if-ge v6, v14, :cond_8

    .line 29
    aget-byte v14, v3, v6

    add-int/lit8 v16, v6, 0x1

    .line 30
    aget-byte v17, v3, v16

    aput-byte v17, v3, v6

    .line 31
    aput-byte v14, v3, v16

    add-int/lit8 v6, v6, 0x2

    goto :goto_4

    .line 32
    :cond_8
    new-instance v6, Lcom/shabakaty/downloader/a55;

    invoke-direct {v6, v3, v7, v12}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    .line 33
    aget-byte v14, v3, v8

    if-ne v14, v13, :cond_10

    .line 34
    new-instance v14, Lcom/shabakaty/downloader/a55;

    invoke-direct {v14, v3, v7, v12}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    .line 35
    :goto_5
    invoke-virtual {v14}, Lcom/shabakaty/downloader/a55;->b()I

    move-result v13

    const/16 v8, 0x10

    if-lt v13, v8, :cond_10

    .line 36
    invoke-virtual {v14, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 37
    invoke-virtual {v14, v10}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x3fff

    .line 38
    iget v13, v6, Lcom/shabakaty/downloader/a55;->d:I

    rsub-int/lit8 v13, v13, 0x8

    invoke-static {v13, v10}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 39
    iget v12, v6, Lcom/shabakaty/downloader/a55;->d:I

    rsub-int/lit8 v18, v12, 0x8

    sub-int v18, v18, v13

    const v19, 0xff00

    shr-int v12, v19, v12

    shl-int v19, v7, v18

    add-int/lit8 v19, v19, -0x1

    or-int v12, v12, v19

    .line 40
    iget-object v5, v6, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v5, [B

    iget v11, v6, Lcom/shabakaty/downloader/a55;->c:I

    aget-byte v21, v5, v11

    and-int v12, v12, v21

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    rsub-int/lit8 v12, v13, 0xe

    ushr-int v13, v8, v12

    .line 41
    aget-byte v21, v5, v11

    shl-int v13, v13, v18

    or-int v13, v13, v21

    int-to-byte v13, v13

    aput-byte v13, v5, v11

    add-int/2addr v11, v7

    :goto_6
    if-le v12, v4, :cond_9

    .line 42
    iget-object v5, v6, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v5, [B

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v12, v12, -0x8

    ushr-int v4, v8, v12

    int-to-byte v4, v4

    aput-byte v4, v5, v11

    move v11, v13

    const/16 v4, 0x8

    goto :goto_6

    :cond_9
    rsub-int/lit8 v4, v12, 0x8

    .line 43
    iget-object v5, v6, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v5, [B

    aget-byte v13, v5, v11

    shl-int v21, v7, v4

    const/16 v20, -0x1

    add-int/lit8 v21, v21, -0x1

    and-int v13, v13, v21

    int-to-byte v13, v13

    aput-byte v13, v5, v11

    shl-int v12, v7, v12

    sub-int/2addr v12, v7

    and-int/2addr v8, v12

    .line 44
    aget-byte v12, v5, v11

    shl-int v4, v8, v4

    or-int/2addr v4, v12

    int-to-byte v4, v4

    aput-byte v4, v5, v11

    .line 45
    invoke-virtual {v6, v10}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 46
    iget v4, v6, Lcom/shabakaty/downloader/a55;->a:I

    packed-switch v4, :pswitch_data_0

    goto :goto_9

    .line 47
    :pswitch_0
    iget v4, v6, Lcom/shabakaty/downloader/a55;->c:I

    if-ltz v4, :cond_b

    iget v5, v6, Lcom/shabakaty/downloader/a55;->e:I

    if-lt v4, v5, :cond_a

    if-ne v4, v5, :cond_b

    iget v4, v6, Lcom/shabakaty/downloader/a55;->d:I

    if-nez v4, :cond_b

    :cond_a
    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    goto :goto_b

    .line 48
    :pswitch_1
    iget v4, v6, Lcom/shabakaty/downloader/a55;->d:I

    if-ltz v4, :cond_d

    iget v5, v6, Lcom/shabakaty/downloader/a55;->c:I

    if-lt v4, v5, :cond_c

    if-ne v4, v5, :cond_d

    iget v4, v6, Lcom/shabakaty/downloader/a55;->e:I

    if-nez v4, :cond_d

    :cond_c
    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    goto :goto_b

    .line 49
    :goto_9
    iget v4, v6, Lcom/shabakaty/downloader/a55;->d:I

    if-ltz v4, :cond_f

    iget v5, v6, Lcom/shabakaty/downloader/a55;->c:I

    if-lt v4, v5, :cond_e

    if-ne v4, v5, :cond_f

    iget v4, v6, Lcom/shabakaty/downloader/a55;->e:I

    if-nez v4, :cond_f

    :cond_e
    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    :goto_b
    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    goto/16 :goto_5

    .line 50
    :cond_10
    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/a55;->p([B)V

    move-object v3, v6

    :goto_c
    const/16 v4, 0x3c

    .line 51
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/4 v4, 0x6

    .line 52
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    .line 53
    sget-object v4, Lcom/shabakaty/downloader/l11;->a:[I

    aget v4, v4, v5

    const/4 v5, 0x4

    .line 54
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v6

    .line 55
    sget-object v5, Lcom/shabakaty/downloader/l11;->b:[I

    aget v5, v5, v6

    const/4 v6, 0x5

    .line 56
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    .line 57
    sget-object v6, Lcom/shabakaty/downloader/l11;->c:[I

    array-length v11, v6

    if-lt v8, v11, :cond_11

    const/4 v6, -0x1

    const/4 v8, 0x2

    goto :goto_d

    .line 58
    :cond_11
    aget v6, v6, v8

    mul-int/lit16 v6, v6, 0x3e8

    const/4 v8, 0x2

    div-int/2addr v6, v8

    :goto_d
    const/16 v11, 0xa

    .line 59
    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 60
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v3

    if-lez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_e

    :cond_12
    const/4 v3, 0x0

    :goto_e
    add-int/2addr v4, v3

    .line 61
    new-instance v3, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v3}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 62
    iput-object v9, v3, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string v8, "audio/vnd.dts"

    .line 63
    iput-object v8, v3, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 64
    iput v6, v3, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 65
    iput v4, v3, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 66
    iput v5, v3, Lcom/shabakaty/downloader/wh1$b;->y:I

    const/4 v4, 0x0

    .line 67
    iput-object v4, v3, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 68
    iput-object v15, v3, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 69
    invoke-virtual {v3}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v3

    .line 70
    iput-object v3, v0, Lcom/shabakaty/downloader/k11;->i:Lcom/shabakaty/downloader/wh1;

    .line 71
    iget-object v4, v0, Lcom/shabakaty/downloader/k11;->d:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v4, v3}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    :cond_13
    const/4 v3, 0x0

    .line 72
    aget-byte v4, v2, v3

    const/4 v3, 0x7

    const/4 v5, -0x2

    if-eq v4, v5, :cond_16

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_14

    const/4 v4, 0x5

    .line 73
    aget-byte v5, v2, v4

    const/4 v4, 0x3

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0xc

    const/4 v5, 0x6

    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    const/4 v8, 0x4

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    aget-byte v6, v2, v3

    goto :goto_10

    :cond_14
    const/4 v4, 0x3

    const/4 v5, 0x6

    const/4 v8, 0x4

    .line 74
    aget-byte v6, v2, v5

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0xc

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    const/16 v5, 0x8

    aget-byte v5, v2, v5

    goto :goto_f

    :cond_15
    const/4 v4, 0x3

    const/4 v8, 0x4

    .line 75
    aget-byte v5, v2, v3

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0xc

    const/4 v5, 0x6

    aget-byte v6, v2, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    const/16 v5, 0x9

    aget-byte v5, v2, v5

    :goto_f
    const/16 v6, 0x3c

    and-int/2addr v5, v6

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/2addr v4, v7

    const/4 v5, 0x1

    goto :goto_11

    :cond_16
    const/4 v8, 0x4

    .line 76
    aget-byte v4, v2, v8

    const/4 v5, 0x3

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0xc

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-byte v6, v2, v5

    :goto_10
    and-int/lit16 v5, v6, 0xf0

    shr-int/2addr v5, v8

    or-int/2addr v4, v5

    add-int/2addr v4, v7

    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_17

    mul-int/lit8 v4, v4, 0x10

    .line 77
    div-int/2addr v4, v10

    .line 78
    :cond_17
    iput v4, v0, Lcom/shabakaty/downloader/k11;->j:I

    const-wide/32 v4, 0xf4240

    const/4 v6, 0x0

    .line 79
    aget-byte v8, v2, v6

    const/4 v6, -0x2

    if-eq v8, v6, :cond_1a

    const/4 v6, -0x1

    if-eq v8, v6, :cond_19

    const/16 v6, 0x1f

    if-eq v8, v6, :cond_18

    const/4 v6, 0x4

    .line 80
    aget-byte v3, v2, v6

    and-int/2addr v3, v7

    const/4 v8, 0x6

    shl-int/2addr v3, v8

    const/4 v9, 0x5

    aget-byte v2, v2, v9

    goto :goto_13

    :cond_18
    const/4 v6, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x5

    .line 81
    aget-byte v9, v2, v9

    and-int/2addr v3, v9

    shl-int/2addr v3, v6

    aget-byte v2, v2, v8

    goto :goto_12

    :cond_19
    const/4 v6, 0x4

    .line 82
    aget-byte v8, v2, v6

    and-int/2addr v8, v3

    shl-int/lit8 v6, v8, 0x4

    aget-byte v2, v2, v3

    move v3, v6

    :goto_12
    const/16 v6, 0x3c

    and-int/2addr v2, v6

    goto :goto_14

    :cond_1a
    const/4 v3, 0x5

    const/4 v6, 0x4

    const/4 v8, 0x6

    .line 83
    aget-byte v3, v2, v3

    and-int/2addr v3, v7

    shl-int/2addr v3, v8

    aget-byte v2, v2, v6

    :goto_13
    and-int/lit16 v2, v2, 0xfc

    :goto_14
    const/4 v6, 0x2

    shr-int/2addr v2, v6

    or-int/2addr v2, v3

    add-int/2addr v2, v7

    mul-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    mul-long v2, v2, v4

    .line 84
    iget-object v4, v0, Lcom/shabakaty/downloader/k11;->i:Lcom/shabakaty/downloader/wh1;

    iget v4, v4, Lcom/shabakaty/downloader/wh1;->Q:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v3, v2

    int-to-long v2, v3

    iput-wide v2, v0, Lcom/shabakaty/downloader/k11;->h:J

    .line 85
    iget-object v2, v0, Lcom/shabakaty/downloader/k11;->a:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 86
    iget-object v2, v0, Lcom/shabakaty/downloader/k11;->d:Lcom/shabakaty/downloader/fp4;

    iget-object v3, v0, Lcom/shabakaty/downloader/k11;->a:Lcom/shabakaty/downloader/ka3;

    const/16 v4, 0x12

    invoke-interface {v2, v3, v4}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    const/4 v2, 0x2

    .line 87
    iput v2, v0, Lcom/shabakaty/downloader/k11;->e:I

    goto/16 :goto_0

    .line 88
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    if-lez v2, :cond_1e

    .line 89
    iget v2, v0, Lcom/shabakaty/downloader/k11;->g:I

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    iput v2, v0, Lcom/shabakaty/downloader/k11;->g:I

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    or-int/2addr v2, v4

    iput v2, v0, Lcom/shabakaty/downloader/k11;->g:I

    const v4, 0x7ffe8001

    if-eq v2, v4, :cond_1d

    const v4, -0x180fe80

    if-eq v2, v4, :cond_1d

    const v4, 0x1fffe800

    if-eq v2, v4, :cond_1d

    const v4, -0xe0ff18

    if-ne v2, v4, :cond_1c

    goto :goto_15

    :cond_1c
    const/4 v4, 0x0

    goto :goto_16

    :cond_1d
    :goto_15
    const/4 v4, 0x1

    :goto_16
    if-eqz v4, :cond_1b

    .line 91
    iget-object v3, v0, Lcom/shabakaty/downloader/k11;->a:Lcom/shabakaty/downloader/ka3;

    .line 92
    iget-object v3, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x0

    .line 93
    aput-byte v4, v3, v5

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 94
    aput-byte v4, v3, v7

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x2

    .line 95
    aput-byte v4, v3, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x3

    .line 96
    aput-byte v2, v3, v4

    const/4 v2, 0x4

    .line 97
    iput v2, v0, Lcom/shabakaty/downloader/k11;->f:I

    const/4 v6, 0x0

    .line 98
    iput v6, v0, Lcom/shabakaty/downloader/k11;->g:I

    const/4 v8, 0x1

    goto :goto_17

    :cond_1e
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_17
    if-eqz v8, :cond_0

    .line 99
    iput v7, v0, Lcom/shabakaty/downloader/k11;->e:I

    goto/16 :goto_0

    :cond_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/k11;->e:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/k11;->f:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/k11;->g:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/k11;->k:J

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/k11;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/k11;->d:Lcom/shabakaty/downloader/fp4;

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/k11;->k:J

    :cond_0
    return-void
.end method
