.class public final Lcom/shabakaty/downloader/c55;
.super Lcom/shabakaty/downloader/vd4;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/c55$a;
    }
.end annotation


# instance fields
.field public n:Lcom/shabakaty/downloader/c55$a;

.field public o:I

.field public p:Z

.field public q:Lcom/shabakaty/downloader/e55$c;

.field public r:Lcom/shabakaty/downloader/e55$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vd4;-><init>()V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/vd4;->g:J

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/c55;->p:Z

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/c55;->q:Lcom/shabakaty/downloader/e55$c;

    if-eqz p1, :cond_1

    iget v2, p1, Lcom/shabakaty/downloader/e55$c;->e:I

    :cond_1
    iput v2, p0, Lcom/shabakaty/downloader/c55;->o:I

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/ka3;)J
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v1, 0x0

    .line 2
    aget-byte v2, v0, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 3
    :cond_0
    aget-byte v0, v0, v1

    iget-object v2, p0, Lcom/shabakaty/downloader/c55;->n:Lcom/shabakaty/downloader/c55$a;

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/c55$a;

    .line 4
    iget v4, v2, Lcom/shabakaty/downloader/c55$a;->d:I

    shr-int/2addr v0, v3

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/16 v6, 0xff

    ushr-int v4, v6, v4

    and-int/2addr v0, v4

    .line 5
    iget-object v4, v2, Lcom/shabakaty/downloader/c55$a;->c:[Lcom/shabakaty/downloader/e55$b;

    aget-object v0, v4, v0

    iget-boolean v0, v0, Lcom/shabakaty/downloader/e55$b;->a:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, v2, Lcom/shabakaty/downloader/c55$a;->a:Lcom/shabakaty/downloader/e55$c;

    iget v0, v0, Lcom/shabakaty/downloader/e55$c;->e:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v2, Lcom/shabakaty/downloader/c55$a;->a:Lcom/shabakaty/downloader/e55$c;

    iget v0, v0, Lcom/shabakaty/downloader/e55$c;->f:I

    .line 8
    :goto_0
    iget-boolean v2, p0, Lcom/shabakaty/downloader/c55;->p:Z

    if-eqz v2, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/c55;->o:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v1, v1

    .line 9
    iget-object v4, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    array-length v6, v4

    .line 10
    iget v7, p1, Lcom/shabakaty/downloader/ka3;->c:I

    add-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_3

    .line 11
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/ka3;->B([B)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 13
    :goto_1
    iget-object v4, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 14
    iget p1, p1, Lcom/shabakaty/downloader/ka3;->c:I

    add-int/lit8 v6, p1, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v1, v7

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 15
    aput-byte v9, v4, v6

    add-int/lit8 v6, p1, -0x3

    ushr-long v9, v1, v5

    and-long/2addr v9, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 16
    aput-byte v5, v4, v6

    add-int/lit8 v5, p1, -0x2

    const/16 v6, 0x10

    ushr-long v9, v1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 17
    aput-byte v6, v4, v5

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 18
    aput-byte v5, v4, p1

    .line 19
    iput-boolean v3, p0, Lcom/shabakaty/downloader/c55;->p:Z

    .line 20
    iput v0, p0, Lcom/shabakaty/downloader/c55;->o:I

    return-wide v1
.end method

.method public d(Lcom/shabakaty/downloader/ka3;JLcom/shabakaty/downloader/vd4$b;)Z
    .locals 18
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1
    iget-object v3, v0, Lcom/shabakaty/downloader/c55;->n:Lcom/shabakaty/downloader/c55$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2
    iget-object v1, v2, Lcom/shabakaty/downloader/vd4$b;->a:Lcom/shabakaty/downloader/wh1;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    .line 4
    :cond_0
    iget-object v6, v0, Lcom/shabakaty/downloader/c55;->q:Lcom/shabakaty/downloader/e55$c;

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez v6, :cond_5

    .line 5
    invoke-static {v5, v1, v4}, Lcom/shabakaty/downloader/e55;->c(ILcom/shabakaty/downloader/ka3;Z)Z

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->k()I

    move-result v8

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v9

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->k()I

    move-result v10

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->h()I

    move-result v4

    if-gtz v4, :cond_1

    const/4 v4, -0x1

    const/4 v11, -0x1

    goto :goto_0

    :cond_1
    move v11, v4

    .line 10
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->h()I

    move-result v4

    if-gtz v4, :cond_2

    const/4 v4, -0x1

    const/4 v12, -0x1

    goto :goto_1

    :cond_2
    move v12, v4

    .line 11
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->h()I

    move-result v4

    if-gtz v4, :cond_3

    const/4 v4, -0x1

    const/4 v13, -0x1

    goto :goto_2

    :cond_3
    move v13, v4

    .line 12
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    and-int/lit8 v5, v4, 0xf

    int-to-double v5, v5

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 13
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    int-to-double v6, v4

    .line 14
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v15, v6

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_4

    const/4 v4, 0x1

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    const/16 v16, 0x0

    .line 16
    :goto_3
    iget-object v4, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 17
    iget v1, v1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 18
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v17

    .line 19
    new-instance v1, Lcom/shabakaty/downloader/e55$c;

    move-object v7, v1

    move v14, v5

    invoke-direct/range {v7 .. v17}, Lcom/shabakaty/downloader/e55$c;-><init>(IIIIIIIIZ[B)V

    .line 20
    iput-object v1, v0, Lcom/shabakaty/downloader/c55;->q:Lcom/shabakaty/downloader/e55$c;

    goto/16 :goto_1f

    .line 21
    :cond_5
    iget-object v7, v0, Lcom/shabakaty/downloader/c55;->r:Lcom/shabakaty/downloader/e55$a;

    if-nez v7, :cond_6

    const/4 v4, 0x1

    .line 22
    invoke-static {v1, v4, v4}, Lcom/shabakaty/downloader/e55;->b(Lcom/shabakaty/downloader/ka3;ZZ)Lcom/shabakaty/downloader/e55$a;

    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/shabakaty/downloader/c55;->r:Lcom/shabakaty/downloader/e55$a;

    goto/16 :goto_1f

    .line 24
    :cond_6
    iget v5, v1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 25
    new-array v8, v5, [B

    .line 26
    iget-object v9, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 27
    invoke-static {v9, v4, v8, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget v5, v6, Lcom/shabakaty/downloader/e55$c;->a:I

    const/4 v9, 0x5

    .line 29
    invoke-static {v9, v1, v4}, Lcom/shabakaty/downloader/e55;->c(ILcom/shabakaty/downloader/ka3;Z)Z

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    .line 31
    new-instance v11, Lcom/shabakaty/downloader/a55;

    .line 32
    iget-object v12, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 33
    invoke-direct {v11, v12, v4, v3}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    .line 34
    iget v1, v1, Lcom/shabakaty/downloader/ka3;->b:I

    mul-int/lit8 v1, v1, 0x8

    .line 35
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/4 v1, 0x0

    :goto_4
    const/16 v3, 0x10

    const/16 v4, 0x18

    if-ge v1, v10, :cond_13

    .line 36
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v12

    const v13, 0x564342

    if-ne v12, v13, :cond_12

    .line 37
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v3

    .line 38
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v4

    .line 39
    new-array v12, v4, [J

    .line 40
    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v13

    if-nez v13, :cond_a

    .line 41
    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v13

    const/16 v16, 0x0

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v4, :cond_9

    if-eqz v13, :cond_8

    .line 42
    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 43
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    move/from16 p3, v10

    int-to-long v9, v9

    aput-wide v9, v12, v14

    const-wide/16 v9, 0x0

    goto :goto_6

    :cond_7
    move/from16 p3, v10

    const-wide/16 v9, 0x0

    .line 44
    aput-wide v9, v12, v14

    goto :goto_6

    :cond_8
    move/from16 p3, v10

    const-wide/16 v9, 0x0

    const/4 v15, 0x5

    .line 45
    invoke-virtual {v11, v15}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    int-to-long v9, v15

    aput-wide v9, v12, v14

    :goto_6
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x5

    move/from16 v10, p3

    goto :goto_5

    :cond_9
    move/from16 p3, v10

    goto :goto_9

    :cond_a
    move/from16 p3, v10

    const/4 v9, 0x5

    .line 46
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v4, :cond_c

    sub-int v13, v4, v10

    .line 47
    invoke-static {v13}, Lcom/shabakaty/downloader/e55;->a(I)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v13

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v13, :cond_b

    if-ge v10, v4, :cond_b

    move-object v15, v7

    move-object/from16 v16, v8

    int-to-long v7, v9

    .line 48
    aput-wide v7, v12, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object v7, v15

    move-object/from16 v8, v16

    goto :goto_8

    :cond_b
    move-object v15, v7

    move-object/from16 v16, v8

    add-int/lit8 v9, v9, 0x1

    move-object v7, v15

    move-object/from16 v8, v16

    goto :goto_7

    :cond_c
    :goto_9
    move-object v15, v7

    move-object/from16 v16, v8

    const/4 v7, 0x4

    .line 49
    invoke-virtual {v11, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    const/4 v9, 0x2

    if-gt v8, v9, :cond_11

    const/4 v10, 0x1

    if-eq v8, v10, :cond_d

    if-ne v8, v9, :cond_10

    :cond_d
    const/16 v9, 0x20

    .line 50
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 51
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 52
    invoke-virtual {v11, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    add-int/2addr v7, v10

    .line 53
    invoke-virtual {v11, v10}, Lcom/shabakaty/downloader/a55;->v(I)V

    if-ne v8, v10, :cond_f

    if-eqz v3, :cond_e

    int-to-long v8, v4

    int-to-long v3, v3

    long-to-double v8, v8

    long-to-double v3, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v3

    .line 54
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    goto :goto_a

    :cond_e
    const-wide/16 v3, 0x0

    goto :goto_a

    :cond_f
    int-to-long v8, v4

    int-to-long v3, v3

    mul-long v3, v3, v8

    :goto_a
    int-to-long v7, v7

    mul-long v7, v7, v3

    long-to-int v3, v7

    .line 55
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x5

    move/from16 v10, p3

    move-object v7, v15

    move-object/from16 v8, v16

    goto/16 :goto_4

    :cond_11
    const/16 v1, 0x35

    const-string v2, "lookup type greater than 2 not decodable: "

    const/4 v3, 0x0

    .line 56
    invoke-static {v1, v2, v8, v3}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_12
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->h()I

    move-result v2

    const/16 v3, 0x42

    const-string v4, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-static {v3, v4, v2, v1}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    .line 58
    throw v1

    :cond_13
    move-object v15, v7

    move-object/from16 v16, v8

    const/4 v1, 0x6

    .line 59
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v4, :cond_15

    .line 60
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    if-nez v8, :cond_14

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_14
    const-string v1, "placeholder of time domain transforms not zeroed out"

    const/4 v2, 0x0

    .line 61
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 62
    :cond_15
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    const/4 v8, 0x0

    :goto_c
    const/16 v9, 0x34

    const/4 v10, 0x3

    if-ge v8, v4, :cond_1f

    .line 63
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    if-eqz v1, :cond_1d

    if-ne v1, v7, :cond_1c

    const/4 v1, 0x5

    .line 64
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 65
    new-array v3, v1, [I

    const/4 v7, 0x0

    const/4 v9, -0x1

    :goto_d
    if-ge v7, v1, :cond_17

    const/4 v12, 0x4

    .line 66
    invoke-virtual {v11, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v12

    aput v12, v3, v7

    .line 67
    aget v12, v3, v7

    if-le v12, v9, :cond_16

    .line 68
    aget v9, v3, v7

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_17
    add-int/lit8 v9, v9, 0x1

    .line 69
    new-array v7, v9, [I

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v9, :cond_1a

    .line 70
    invoke-virtual {v11, v10}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v10

    const/4 v13, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v7, v12

    const/4 v10, 0x2

    .line 71
    invoke-virtual {v11, v10}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v10

    const/16 v14, 0x8

    if-lez v10, :cond_18

    .line 72
    invoke-virtual {v11, v14}, Lcom/shabakaty/downloader/a55;->v(I)V

    :cond_18
    const/16 v17, 0x0

    move/from16 p1, v4

    const/4 v4, 0x0

    :goto_f
    shl-int/2addr v13, v10

    if-ge v4, v13, :cond_19

    .line 73
    invoke-virtual {v11, v14}, Lcom/shabakaty/downloader/a55;->v(I)V

    add-int/lit8 v4, v4, 0x1

    const/16 v14, 0x8

    const/4 v13, 0x1

    goto :goto_f

    :cond_19
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x3

    move/from16 v4, p1

    goto :goto_e

    :cond_1a
    move/from16 p1, v4

    const/4 v4, 0x2

    .line 74
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/4 v4, 0x4

    .line 75
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_10
    if-ge v9, v1, :cond_1e

    .line 76
    aget v13, v3, v9

    .line 77
    aget v13, v7, v13

    add-int/2addr v10, v13

    :goto_11
    if-ge v12, v10, :cond_1b

    .line 78
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/a55;->v(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_1c
    const-string v2, "floor type greater than 1 not decodable: "

    const/4 v3, 0x0

    .line 79
    invoke-static {v9, v2, v1, v3}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_1d
    move/from16 p1, v4

    const/16 v1, 0x8

    .line 80
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/16 v3, 0x10

    .line 81
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 82
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/4 v3, 0x6

    .line 83
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 84
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    const/4 v3, 0x4

    .line 85
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_1e

    .line 86
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    add-int/lit8 v4, v4, 0x1

    const/16 v1, 0x8

    goto :goto_12

    :cond_1e
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x6

    const/4 v7, 0x1

    const/16 v3, 0x10

    move/from16 v4, p1

    goto/16 :goto_c

    .line 87
    :cond_1f
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v3, :cond_26

    const/16 v8, 0x10

    .line 88
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    const/4 v10, 0x2

    if-gt v8, v10, :cond_25

    const/16 v8, 0x18

    .line 89
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 90
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 91
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 92
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    add-int/2addr v1, v4

    const/16 v4, 0x8

    .line 93
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 94
    new-array v8, v1, [I

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v1, :cond_21

    const/4 v12, 0x3

    .line 95
    invoke-virtual {v11, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v12

    .line 96
    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v13

    if-eqz v13, :cond_20

    const/4 v13, 0x5

    .line 97
    invoke-virtual {v11, v13}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v13

    goto :goto_15

    :cond_20
    const/4 v13, 0x0

    :goto_15
    mul-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v12

    .line 98
    aput v13, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_21
    const/4 v10, 0x0

    :goto_16
    if-ge v10, v1, :cond_24

    const/4 v12, 0x0

    :goto_17
    if-ge v12, v4, :cond_23

    .line 99
    aget v13, v8, v10

    const/4 v14, 0x1

    shl-int/2addr v14, v12

    and-int/2addr v13, v14

    if-eqz v13, :cond_22

    .line 100
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/a55;->v(I)V

    :cond_22
    add-int/lit8 v12, v12, 0x1

    const/16 v4, 0x8

    goto :goto_17

    :cond_23
    add-int/lit8 v10, v10, 0x1

    const/16 v4, 0x8

    goto :goto_16

    :cond_24
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x6

    const/4 v4, 0x1

    goto :goto_13

    :cond_25
    const-string v1, "residueType greater than 2 is not decodable"

    const/4 v2, 0x0

    .line 101
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 102
    :cond_26
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_2d

    const/16 v4, 0x10

    .line 103
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v4

    if-eqz v4, :cond_27

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "mapping type other than 0 not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "VorbisUtil"

    .line 105
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 106
    :cond_27
    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x4

    .line 107
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    goto :goto_19

    :cond_28
    const/4 v7, 0x1

    const/4 v4, 0x1

    .line 108
    :goto_19
    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v8, 0x8

    .line 109
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    add-int/2addr v8, v7

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v8, :cond_29

    add-int/lit8 v10, v5, -0x1

    .line 110
    invoke-static {v10}, Lcom/shabakaty/downloader/e55;->a(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 111
    invoke-static {v10}, Lcom/shabakaty/downloader/e55;->a(I)I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/shabakaty/downloader/a55;->v(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_29
    const/4 v7, 0x2

    .line 112
    invoke-virtual {v11, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    if-nez v7, :cond_2c

    const/4 v7, 0x1

    if-le v4, v7, :cond_2a

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v5, :cond_2a

    const/4 v8, 0x4

    .line 113
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v4, :cond_2b

    const/16 v8, 0x8

    .line 114
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 115
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 116
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_2b
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2c
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    const/4 v2, 0x0

    .line 117
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_2d
    const/4 v1, 0x6

    .line 118
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 119
    new-array v9, v1, [Lcom/shabakaty/downloader/e55$b;

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_2e

    .line 120
    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v4

    const/16 v5, 0x10

    .line 121
    invoke-virtual {v11, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    .line 122
    invoke-virtual {v11, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    const/16 v8, 0x8

    .line 123
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    .line 124
    new-instance v10, Lcom/shabakaty/downloader/e55$b;

    invoke-direct {v10, v4, v7, v5, v8}, Lcom/shabakaty/downloader/e55$b;-><init>(ZIII)V

    aput-object v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 125
    :cond_2e
    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v3

    if-eqz v3, :cond_30

    add-int/lit8 v1, v1, -0x1

    .line 126
    invoke-static {v1}, Lcom/shabakaty/downloader/e55;->a(I)I

    move-result v10

    .line 127
    new-instance v3, Lcom/shabakaty/downloader/c55$a;

    move-object v5, v3

    move-object v7, v15

    move-object/from16 v8, v16

    invoke-direct/range {v5 .. v10}, Lcom/shabakaty/downloader/c55$a;-><init>(Lcom/shabakaty/downloader/e55$c;Lcom/shabakaty/downloader/e55$a;[B[Lcom/shabakaty/downloader/e55$b;I)V

    .line 128
    :goto_1f
    iput-object v3, v0, Lcom/shabakaty/downloader/c55;->n:Lcom/shabakaty/downloader/c55$a;

    if-nez v3, :cond_2f

    const/4 v1, 0x1

    return v1

    .line 129
    :cond_2f
    iget-object v1, v3, Lcom/shabakaty/downloader/c55$a;->a:Lcom/shabakaty/downloader/e55$c;

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v5, v1, Lcom/shabakaty/downloader/e55$c;->g:[B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v3, v3, Lcom/shabakaty/downloader/c55$a;->b:[B

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v3, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v3}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v5, "audio/vorbis"

    .line 134
    iput-object v5, v3, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 135
    iget v5, v1, Lcom/shabakaty/downloader/e55$c;->d:I

    .line 136
    iput v5, v3, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 137
    iget v5, v1, Lcom/shabakaty/downloader/e55$c;->c:I

    .line 138
    iput v5, v3, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 139
    iget v5, v1, Lcom/shabakaty/downloader/e55$c;->a:I

    .line 140
    iput v5, v3, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 141
    iget v1, v1, Lcom/shabakaty/downloader/e55$c;->b:I

    .line 142
    iput v1, v3, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 143
    iput-object v4, v3, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 144
    invoke-virtual {v3}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v1

    iput-object v1, v2, Lcom/shabakaty/downloader/vd4$b;->a:Lcom/shabakaty/downloader/wh1;

    const/4 v1, 0x1

    return v1

    :cond_30
    const-string v1, "framing bit after modes not set as expected"

    const/4 v2, 0x0

    .line 145
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1
.end method

.method public e(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vd4;->e(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/c55;->n:Lcom/shabakaty/downloader/c55$a;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/c55;->q:Lcom/shabakaty/downloader/e55$c;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/c55;->r:Lcom/shabakaty/downloader/e55$a;

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/c55;->o:I

    .line 6
    iput-boolean p1, p0, Lcom/shabakaty/downloader/c55;->p:Z

    return-void
.end method
