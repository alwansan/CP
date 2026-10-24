.class public final Lcom/shabakaty/downloader/be;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/be$c;,
        Lcom/shabakaty/downloader/be$b;,
        Lcom/shabakaty/downloader/be$a;
    }
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->C(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/be;->a:[B

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/ka3;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ka3;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/be;->b(Lcom/shabakaty/downloader/ka3;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ka3;->F(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 10
    invoke-static {p0}, Lcom/shabakaty/downloader/be;->b(Lcom/shabakaty/downloader/ka3;)I

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/nt2;->f(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 16
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 18
    invoke-static {p0}, Lcom/shabakaty/downloader/be;->b(Lcom/shabakaty/downloader/ka3;)I

    move-result p1

    .line 19
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 20
    iget-object v3, p0, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v4, p0, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v3, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v2, p0, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/shabakaty/downloader/ka3;->b:I

    .line 22
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 23
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/shabakaty/downloader/ka3;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static c(Lcom/shabakaty/downloader/ka3;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ka3;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/xo4;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/shabakaty/downloader/ka3;->b:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 4
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 6
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v12

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 10
    invoke-virtual {v0, v13}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 11
    invoke-virtual {v0, v13}, Lcom/shabakaty/downloader/ka3;->q(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 15
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 17
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 18
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 22
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    if-nez v3, :cond_9

    .line 23
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_8

    .line 24
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 25
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    if-ne v7, v5, :cond_a

    const/4 v10, 0x1

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    .line 26
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 27
    iget-object v8, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v9, v0, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v8, v9, v13, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget v8, v0, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/shabakaty/downloader/ka3;->b:I

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    .line 30
    new-array v8, v7, [B

    .line 31
    iget-object v9, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v5, v0, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v9, v5, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget v5, v0, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/shabakaty/downloader/ka3;->b:I

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    .line 33
    :goto_a
    new-instance v5, Lcom/shabakaty/downloader/xo4;

    move-object v9, v5

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Lcom/shabakaty/downloader/xo4;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v5

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    const/4 v5, 0x1

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 34
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    .line 35
    sget v5, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static d(Lcom/shabakaty/downloader/wo4;Lcom/shabakaty/downloader/zd$a;Lcom/shabakaty/downloader/no1;)Lcom/shabakaty/downloader/gp4;
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v4, Lcom/shabakaty/downloader/be$b;

    iget-object v5, v1, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/be$b;-><init>(Lcom/shabakaty/downloader/zd$b;Lcom/shabakaty/downloader/wh1;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/be$c;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/be$c;-><init>(Lcom/shabakaty/downloader/zd$b;)V

    .line 5
    :goto_0
    invoke-interface {v4}, Lcom/shabakaty/downloader/be$a;->b()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/gp4;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide/16 v10, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/gp4;-><init>(Lcom/shabakaty/downloader/wo4;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v5, 0x7374636f

    .line 7
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const v5, 0x636f3634

    .line 8
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v5

    .line 9
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 10
    :goto_1
    iget-object v5, v5, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const v8, 0x73747363

    .line 11
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v8

    .line 12
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v8, v8, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const v9, 0x73747473

    .line 14
    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v9

    .line 15
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v9, v9, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const v10, 0x73747373

    .line 17
    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 18
    iget-object v10, v10, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    const v11, 0x63747473

    .line 19
    invoke-virtual {v0, v11}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    const/16 v11, 0xc

    .line 21
    invoke-virtual {v5, v11}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 22
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v12

    .line 23
    invoke-virtual {v8, v11}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 24
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v13

    .line 25
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v14

    if-ne v14, v6, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    const-string v15, "first_chunk must be 1"

    invoke-static {v14, v15}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    .line 26
    invoke-virtual {v9, v11}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 27
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v14

    sub-int/2addr v14, v6

    .line 28
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v6

    .line 29
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v15

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {v0, v11}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 31
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v16

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    if-eqz v10, :cond_8

    .line 32
    invoke-virtual {v10, v11}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 33
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v11

    if-lez v11, :cond_7

    .line 34
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    const/16 v17, -0x1

    :goto_7
    move/from16 p1, v6

    .line 35
    invoke-interface {v4}, Lcom/shabakaty/downloader/be$a;->a()I

    move-result v6

    move/from16 v18, v13

    .line 36
    iget-object v13, v1, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    iget-object v13, v13, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const/4 v2, -0x1

    if-eq v6, v2, :cond_a

    const-string v2, "audio/raw"

    .line 37
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "audio/g711-mlaw"

    .line 38
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "audio/g711-alaw"

    .line 39
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    if-nez v14, :cond_a

    if-nez v16, :cond_a

    if-nez v11, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    const/4 v13, 0x4

    if-eqz v2, :cond_13

    .line 40
    new-array v0, v12, [J

    .line 41
    new-array v2, v12, [I

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const-wide/16 v16, 0x0

    :goto_9
    add-int/lit8 v10, v10, 0x1

    if-ne v10, v12, :cond_b

    const/4 v11, 0x0

    goto :goto_c

    :cond_b
    if-eqz v7, :cond_c

    .line 42
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v16

    goto :goto_a

    .line 43
    :cond_c
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v16

    :goto_a
    if-ne v10, v4, :cond_e

    .line 44
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v9

    .line 45
    invoke-virtual {v8, v13}, Lcom/shabakaty/downloader/ka3;->F(I)V

    add-int/lit8 v18, v18, -0x1

    if-lez v18, :cond_d

    .line 46
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    :cond_d
    const/4 v4, -0x1

    :cond_e
    :goto_b
    const/4 v11, 0x1

    :goto_c
    if-eqz v11, :cond_f

    .line 47
    aput-wide v16, v0, v10

    .line 48
    aput v9, v2, v10

    goto :goto_9

    :cond_f
    int-to-long v4, v15

    const/16 v7, 0x2000

    .line 49
    div-int/2addr v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_d
    if-ge v8, v12, :cond_10

    .line 50
    aget v10, v2, v8

    .line 51
    invoke-static {v10, v7}, Lcom/shabakaty/downloader/sy4;->g(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 52
    :cond_10
    new-array v8, v9, [J

    .line 53
    new-array v10, v9, [I

    .line 54
    new-array v11, v9, [J

    .line 55
    new-array v9, v9, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_e
    if-ge v13, v12, :cond_12

    .line 56
    aget v17, v2, v13

    .line 57
    aget-wide v18, v0, v13

    move/from16 v37, v17

    move-object/from16 v17, v0

    move/from16 v0, v37

    :goto_f
    if-lez v0, :cond_11

    .line 58
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 59
    aput-wide v18, v8, v16

    mul-int v21, v6, v20

    .line 60
    aput v21, v10, v16

    move-object/from16 v21, v2

    .line 61
    aget v2, v10, v16

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v2, v6

    move/from16 p1, v7

    int-to-long v6, v14

    mul-long v6, v6, v4

    .line 62
    aput-wide v6, v11, v16

    const/4 v6, 0x1

    .line 63
    aput v6, v9, v16

    .line 64
    aget v6, v10, v16

    int-to-long v6, v6

    add-long v18, v18, v6

    add-int v14, v14, v20

    sub-int v0, v0, v20

    add-int/lit8 v16, v16, 0x1

    move/from16 v7, p1

    move v6, v2

    move-object/from16 v2, v21

    goto :goto_f

    :cond_11
    move-object/from16 v21, v2

    move v2, v6

    move/from16 p1, v7

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    move-object/from16 v2, v21

    goto :goto_e

    :cond_12
    int-to-long v6, v14

    mul-long v4, v4, v6

    move v0, v3

    move-object v2, v8

    move-object v7, v9

    move-object v3, v10

    move-object v6, v11

    move-object v8, v1

    goto/16 :goto_1e

    .line 65
    :cond_13
    new-array v2, v3, [J

    .line 66
    new-array v6, v3, [I

    .line 67
    new-array v13, v3, [J

    move/from16 v19, v11

    .line 68
    new-array v11, v3, [I

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    move/from16 v21, v15

    move/from16 v1, v17

    move/from16 v25, v19

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v19, p1

    move/from16 p1, v14

    move/from16 v17, v16

    const/4 v14, 0x0

    move-object/from16 v16, v9

    const/4 v9, 0x0

    :goto_10
    const-string v15, "AtomParsers"

    if-ge v14, v3, :cond_21

    const/16 v26, 0x1

    move/from16 v37, v22

    move/from16 v22, v3

    move/from16 v3, v37

    :goto_11
    if-nez v24, :cond_18

    move/from16 v33, v1

    add-int/lit8 v1, v20, 0x1

    if-ne v1, v12, :cond_14

    const/16 v20, 0x0

    const/16 v26, 0x0

    goto :goto_14

    :cond_14
    if-eqz v7, :cond_15

    .line 69
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v26

    goto :goto_12

    .line 70
    :cond_15
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v26

    :goto_12
    if-ne v1, v3, :cond_17

    .line 71
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v23

    const/4 v3, 0x4

    .line 72
    invoke-virtual {v8, v3}, Lcom/shabakaty/downloader/ka3;->F(I)V

    add-int/lit8 v18, v18, -0x1

    if-lez v18, :cond_16

    .line 73
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    :cond_16
    const/4 v3, -0x1

    :cond_17
    :goto_13
    const/16 v20, 0x1

    move-wide/from16 v27, v26

    const/16 v26, 0x1

    :goto_14
    move/from16 v20, v1

    if-eqz v26, :cond_19

    move/from16 v24, v23

    move-wide/from16 v29, v27

    move/from16 v1, v33

    goto :goto_11

    :cond_18
    move/from16 v33, v1

    :cond_19
    if-nez v26, :cond_1a

    const-string v1, "Unexpected end of chunk data"

    .line 74
    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {v2, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 76
    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 77
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v13

    .line 78
    invoke-static {v11, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    move v3, v14

    goto/16 :goto_18

    :cond_1a
    if-eqz v0, :cond_1c

    :goto_15
    if-nez v35, :cond_1b

    if-lez v17, :cond_1b

    .line 79
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v35

    .line 80
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v34

    add-int/lit8 v17, v17, -0x1

    goto :goto_15

    :cond_1b
    add-int/lit8 v35, v35, -0x1

    :cond_1c
    move/from16 v1, v34

    .line 81
    aput-wide v29, v2, v14

    .line 82
    invoke-interface {v4}, Lcom/shabakaty/downloader/be$a;->c()I

    move-result v15

    aput v15, v6, v14

    .line 83
    aget v15, v6, v14

    if-le v15, v9, :cond_1d

    .line 84
    aget v9, v6, v14

    :cond_1d
    move-object/from16 v36, v2

    move/from16 v26, v3

    int-to-long v2, v1

    add-long v2, v31, v2

    .line 85
    aput-wide v2, v13, v14

    if-nez v10, :cond_1e

    const/4 v2, 0x1

    goto :goto_16

    :cond_1e
    const/4 v2, 0x0

    .line 86
    :goto_16
    aput v2, v11, v14

    move/from16 v2, v33

    if-ne v14, v2, :cond_1f

    const/4 v3, 0x1

    .line 87
    aput v3, v11, v14

    add-int/lit8 v25, v25, -0x1

    if-lez v25, :cond_1f

    .line 88
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_1f
    move v3, v1

    move/from16 v15, v21

    move/from16 v21, v2

    int-to-long v1, v15

    add-long v31, v31, v1

    add-int/lit8 v19, v19, -0x1

    if-nez v19, :cond_20

    if-lez p1, :cond_20

    .line 90
    invoke-virtual/range {v16 .. v16}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v1

    .line 91
    invoke-virtual/range {v16 .. v16}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v2

    add-int/lit8 v15, p1, -0x1

    move/from16 v19, v1

    goto :goto_17

    :cond_20
    move v2, v15

    move/from16 v15, p1

    .line 92
    :goto_17
    aget v1, v6, v14

    move/from16 p1, v2

    int-to-long v1, v1

    add-long v29, v29, v1

    add-int/lit8 v24, v24, -0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v34, v3

    move/from16 v1, v21

    move/from16 v3, v22

    move/from16 v22, v26

    move-object/from16 v2, v36

    move/from16 v21, p1

    move/from16 p1, v15

    goto/16 :goto_10

    :cond_21
    move-object/from16 v36, v2

    move/from16 v22, v3

    :goto_18
    move/from16 v1, v24

    move/from16 v4, v34

    int-to-long v4, v4

    add-long v4, v31, v4

    if-eqz v0, :cond_23

    :goto_19
    if-lez v17, :cond_23

    .line 93
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v7

    if-eqz v7, :cond_22

    const/4 v0, 0x0

    goto :goto_1a

    .line 94
    :cond_22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    add-int/lit8 v17, v17, -0x1

    goto :goto_19

    :cond_23
    const/4 v0, 0x1

    :goto_1a
    if-nez v25, :cond_25

    if-nez v19, :cond_25

    if-nez v1, :cond_25

    if-nez p1, :cond_25

    move/from16 v7, v35

    if-nez v7, :cond_26

    if-nez v0, :cond_24

    goto :goto_1b

    :cond_24
    move-object/from16 v8, p0

    move-object/from16 p1, v2

    move/from16 v16, v3

    move-wide/from16 v17, v4

    goto :goto_1d

    :cond_25
    move/from16 v7, v35

    :cond_26
    :goto_1b
    move-object/from16 v8, p0

    move/from16 v14, p1

    .line 95
    iget v10, v8, Lcom/shabakaty/downloader/wo4;->a:I

    if-nez v0, :cond_27

    const-string v0, ", ctts invalid"

    goto :goto_1c

    :cond_27
    const-string v0, ""

    .line 96
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit16 v12, v12, 0x106

    move-object/from16 p1, v2

    const-string v2, "Inconsistent stbl box for track "

    move/from16 v16, v3

    const-string v3, ": remainingSynchronizationSamples "

    move-wide/from16 v17, v4

    move/from16 v4, v25

    invoke-static {v12, v2, v10, v3, v4}, Lcom/shabakaty/downloader/pe;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingSamplesInChunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    move-object/from16 v2, p1

    move-object v3, v6

    move v15, v9

    move-object v7, v11

    move-object v6, v13

    move/from16 v0, v16

    move-wide/from16 v4, v17

    .line 98
    :goto_1e
    iget-wide v13, v8, Lcom/shabakaty/downloader/wo4;->c:J

    const-wide/32 v11, 0xf4240

    move-wide v9, v4

    move-wide/from16 v16, v11

    invoke-static/range {v9 .. v14}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v9

    .line 99
    iget-object v1, v8, Lcom/shabakaty/downloader/wo4;->h:[J

    if-nez v1, :cond_28

    .line 100
    iget-wide v0, v8, Lcom/shabakaty/downloader/wo4;->c:J

    move-wide/from16 v4, v16

    invoke-static {v6, v4, v5, v0, v1}, Lcom/shabakaty/downloader/sy4;->O([JJJ)V

    .line 101
    new-instance v11, Lcom/shabakaty/downloader/gp4;

    move-object v0, v11

    move-object/from16 v1, p0

    move v4, v15

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/gp4;-><init>(Lcom/shabakaty/downloader/wo4;[J[II[J[IJ)V

    return-object v11

    .line 102
    :cond_28
    array-length v1, v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_2b

    iget v1, v8, Lcom/shabakaty/downloader/wo4;->b:I

    if-ne v1, v9, :cond_2b

    array-length v1, v6

    const/4 v9, 0x2

    if-lt v1, v9, :cond_2b

    .line 103
    iget-object v1, v8, Lcom/shabakaty/downloader/wo4;->i:[J

    .line 104
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    .line 105
    aget-wide v10, v1, v9

    .line 106
    iget-object v1, v8, Lcom/shabakaty/downloader/wo4;->h:[J

    aget-wide v16, v1, v9

    iget-wide v12, v8, Lcom/shabakaty/downloader/wo4;->c:J

    move v9, v0

    iget-wide v0, v8, Lcom/shabakaty/downloader/wo4;->d:J

    move-wide/from16 v18, v12

    move-wide/from16 v20, v0

    .line 107
    invoke-static/range {v16 .. v21}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v0

    add-long/2addr v0, v10

    .line 108
    array-length v12, v6

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 109
    invoke-static {v13, v14, v12}, Lcom/shabakaty/downloader/sy4;->i(III)I

    move-result v16

    move/from16 v17, v9

    .line 110
    array-length v9, v6

    sub-int/2addr v9, v13

    .line 111
    invoke-static {v9, v14, v12}, Lcom/shabakaty/downloader/sy4;->i(III)I

    move-result v9

    .line 112
    aget-wide v12, v6, v14

    cmp-long v14, v12, v10

    if-gtz v14, :cond_29

    aget-wide v12, v6, v16

    cmp-long v14, v10, v12

    if-gez v14, :cond_29

    aget-wide v12, v6, v9

    cmp-long v9, v12, v0

    if-gez v9, :cond_29

    cmp-long v9, v0, v4

    if-gtz v9, :cond_29

    const/4 v9, 0x1

    goto :goto_1f

    :cond_29
    const/4 v9, 0x0

    :goto_1f
    if-eqz v9, :cond_2c

    sub-long v18, v4, v0

    const/4 v0, 0x0

    .line 113
    aget-wide v0, v6, v0

    sub-long v20, v10, v0

    iget-object v0, v8, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    iget v0, v0, Lcom/shabakaty/downloader/wh1;->Q:I

    int-to-long v0, v0

    iget-wide v9, v8, Lcom/shabakaty/downloader/wo4;->c:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v9

    .line 114
    invoke-static/range {v20 .. v25}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v0

    .line 115
    iget-object v9, v8, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    iget v9, v9, Lcom/shabakaty/downloader/wh1;->Q:I

    int-to-long v9, v9

    iget-wide v11, v8, Lcom/shabakaty/downloader/wo4;->c:J

    move-wide/from16 v20, v9

    move-wide/from16 v22, v11

    .line 116
    invoke-static/range {v18 .. v23}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v0, v11

    if-nez v13, :cond_2a

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2c

    :cond_2a
    const-wide/32 v11, 0x7fffffff

    cmp-long v13, v0, v11

    if-gtz v13, :cond_2c

    cmp-long v13, v9, v11

    if-gtz v13, :cond_2c

    long-to-int v1, v0

    move-object/from16 v0, p2

    .line 117
    iput v1, v0, Lcom/shabakaty/downloader/no1;->a:I

    long-to-int v1, v9

    .line 118
    iput v1, v0, Lcom/shabakaty/downloader/no1;->b:I

    .line 119
    iget-wide v0, v8, Lcom/shabakaty/downloader/wo4;->c:J

    const-wide/32 v4, 0xf4240

    invoke-static {v6, v4, v5, v0, v1}, Lcom/shabakaty/downloader/sy4;->O([JJJ)V

    .line 120
    iget-object v0, v8, Lcom/shabakaty/downloader/wo4;->h:[J

    const/4 v1, 0x0

    aget-wide v9, v0, v1

    const-wide/32 v11, 0xf4240

    iget-wide v13, v8, Lcom/shabakaty/downloader/wo4;->d:J

    .line 121
    invoke-static/range {v9 .. v14}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v9

    .line 122
    new-instance v11, Lcom/shabakaty/downloader/gp4;

    move-object v0, v11

    move-object/from16 v1, p0

    move v4, v15

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/gp4;-><init>(Lcom/shabakaty/downloader/wo4;[J[II[J[IJ)V

    return-object v11

    :cond_2b
    move/from16 v17, v0

    .line 123
    :cond_2c
    iget-object v0, v8, Lcom/shabakaty/downloader/wo4;->h:[J

    array-length v1, v0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_2e

    const/4 v1, 0x0

    aget-wide v9, v0, v1

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_2e

    .line 124
    iget-object v0, v8, Lcom/shabakaty/downloader/wo4;->i:[J

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    aget-wide v9, v0, v1

    const/4 v0, 0x0

    .line 127
    :goto_20
    array-length v1, v6

    if-ge v0, v1, :cond_2d

    .line 128
    aget-wide v11, v6, v0

    sub-long v16, v11, v9

    const-wide/32 v18, 0xf4240

    iget-wide v11, v8, Lcom/shabakaty/downloader/wo4;->c:J

    move-wide/from16 v20, v11

    .line 129
    invoke-static/range {v16 .. v21}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v11

    aput-wide v11, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2d
    sub-long v16, v4, v9

    const-wide/32 v18, 0xf4240

    .line 130
    iget-wide v0, v8, Lcom/shabakaty/downloader/wo4;->c:J

    move-wide/from16 v20, v0

    .line 131
    invoke-static/range {v16 .. v21}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v9

    .line 132
    new-instance v11, Lcom/shabakaty/downloader/gp4;

    move-object v0, v11

    move-object/from16 v1, p0

    move v4, v15

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/gp4;-><init>(Lcom/shabakaty/downloader/wo4;[J[II[J[IJ)V

    return-object v11

    .line 133
    :cond_2e
    iget v1, v8, Lcom/shabakaty/downloader/wo4;->b:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2f

    const/4 v1, 0x1

    goto :goto_21

    :cond_2f
    const/4 v1, 0x0

    .line 134
    :goto_21
    array-length v4, v0

    new-array v4, v4, [I

    .line 135
    array-length v0, v0

    new-array v0, v0, [I

    .line 136
    iget-object v5, v8, Lcom/shabakaty/downloader/wo4;->i:[J

    .line 137
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 138
    :goto_22
    iget-object v13, v8, Lcom/shabakaty/downloader/wo4;->h:[J

    array-length v14, v13

    if-ge v9, v14, :cond_33

    move/from16 p1, v15

    .line 139
    aget-wide v14, v5, v9

    const-wide/16 v18, -0x1

    cmp-long v16, v14, v18

    if-eqz v16, :cond_32

    .line 140
    aget-wide v18, v13, v9

    move-object v13, v2

    move-object/from16 v16, v3

    iget-wide v2, v8, Lcom/shabakaty/downloader/wo4;->c:J

    move/from16 p2, v12

    move-object/from16 v24, v13

    iget-wide v12, v8, Lcom/shabakaty/downloader/wo4;->d:J

    move-wide/from16 v20, v2

    move-wide/from16 v22, v12

    .line 141
    invoke-static/range {v18 .. v23}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v2

    const/4 v12, 0x1

    .line 142
    invoke-static {v6, v14, v15, v12, v12}, Lcom/shabakaty/downloader/sy4;->f([JJZZ)I

    move-result v13

    aput v13, v4, v9

    add-long/2addr v14, v2

    const/4 v2, 0x0

    .line 143
    invoke-static {v6, v14, v15, v1, v2}, Lcom/shabakaty/downloader/sy4;->b([JJZZ)I

    move-result v2

    aput v2, v0, v9

    .line 144
    :goto_23
    aget v2, v4, v9

    aget v3, v0, v9

    if-ge v2, v3, :cond_30

    aget v2, v4, v9

    aget v2, v7, v2

    and-int/2addr v2, v12

    if-nez v2, :cond_30

    .line 145
    aget v2, v4, v9

    add-int/2addr v2, v12

    aput v2, v4, v9

    goto :goto_23

    .line 146
    :cond_30
    aget v2, v0, v9

    aget v3, v4, v9

    sub-int/2addr v2, v3

    add-int/2addr v2, v10

    .line 147
    aget v3, v4, v9

    if-eq v11, v3, :cond_31

    const/4 v3, 0x1

    goto :goto_24

    :cond_31
    const/4 v3, 0x0

    :goto_24
    or-int v3, p2, v3

    .line 148
    aget v10, v0, v9

    move v12, v3

    move v11, v10

    move v10, v2

    goto :goto_25

    :cond_32
    move-object/from16 v24, v2

    move-object/from16 v16, v3

    move/from16 p2, v12

    :goto_25
    add-int/lit8 v9, v9, 0x1

    move/from16 v15, p1

    move-object/from16 v3, v16

    move-object/from16 v2, v24

    goto :goto_22

    :cond_33
    move-object/from16 v24, v2

    move-object/from16 v16, v3

    move/from16 p2, v12

    move/from16 p1, v15

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, v17

    if-eq v10, v3, :cond_34

    goto :goto_26

    :cond_34
    const/4 v2, 0x0

    :goto_26
    or-int v2, p2, v2

    if-eqz v2, :cond_35

    .line 149
    new-array v3, v10, [J

    goto :goto_27

    :cond_35
    move-object/from16 v3, v24

    :goto_27
    if-eqz v2, :cond_36

    .line 150
    new-array v5, v10, [I

    goto :goto_28

    :cond_36
    move-object/from16 v5, v16

    :goto_28
    if-eqz v2, :cond_37

    const/4 v15, 0x0

    goto :goto_29

    :cond_37
    move/from16 v15, p1

    :goto_29
    if-eqz v2, :cond_38

    .line 151
    new-array v9, v10, [I

    goto :goto_2a

    :cond_38
    move-object v9, v7

    .line 152
    :goto_2a
    new-array v10, v10, [J

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 153
    :goto_2b
    iget-object v14, v8, Lcom/shabakaty/downloader/wo4;->h:[J

    array-length v14, v14

    if-ge v1, v14, :cond_3c

    .line 154
    iget-object v14, v8, Lcom/shabakaty/downloader/wo4;->i:[J

    aget-wide v25, v14, v1

    .line 155
    aget v14, v4, v1

    move-object/from16 v23, v4

    .line 156
    aget v4, v0, v1

    if-eqz v2, :cond_39

    move-object/from16 v27, v0

    sub-int v0, v4, v14

    move/from16 p1, v15

    move-object/from16 v15, v24

    .line 157
    invoke-static {v15, v14, v3, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v15, v16

    .line 158
    invoke-static {v15, v14, v5, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    invoke-static {v7, v14, v9, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2c

    :cond_39
    move-object/from16 v27, v0

    move/from16 p1, v15

    move-object/from16 v15, v16

    :goto_2c
    move/from16 v0, p1

    :goto_2d
    if-ge v14, v4, :cond_3b

    const-wide/32 v19, 0xf4240

    move-object/from16 v16, v3

    move/from16 p2, v4

    .line 160
    iget-wide v3, v8, Lcom/shabakaty/downloader/wo4;->d:J

    move-wide/from16 v17, v12

    move-wide/from16 v21, v3

    invoke-static/range {v17 .. v22}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v3

    .line 161
    aget-wide v17, v6, v14

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    sub-long v6, v17, v25

    move-wide/from16 v17, v12

    const-wide/16 v12, 0x0

    .line 162
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    const-wide/32 v30, 0xf4240

    iget-wide v6, v8, Lcom/shabakaty/downloader/wo4;->c:J

    move-wide/from16 v32, v6

    .line 163
    invoke-static/range {v28 .. v33}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 164
    aput-wide v3, v10, v11

    if-eqz v2, :cond_3a

    .line 165
    aget v3, v5, v11

    if-le v3, v0, :cond_3a

    .line 166
    aget v0, v15, v14

    :cond_3a
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, p2

    move-object/from16 v3, v16

    move-wide/from16 v12, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_2d

    :cond_3b
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-wide/from16 v17, v12

    .line 167
    iget-object v3, v8, Lcom/shabakaty/downloader/wo4;->h:[J

    aget-wide v6, v3, v1

    add-long v12, v17, v6

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v4, v23

    move-object/from16 v16, v15

    move v15, v0

    move-object/from16 v0, v27

    goto/16 :goto_2b

    :cond_3c
    move-object/from16 v16, v3

    move-wide/from16 v17, v12

    move/from16 p1, v15

    const-wide/32 v19, 0xf4240

    .line 168
    iget-wide v0, v8, Lcom/shabakaty/downloader/wo4;->d:J

    move-wide/from16 v21, v0

    .line 169
    invoke-static/range {v17 .. v22}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v11

    .line 170
    new-instance v13, Lcom/shabakaty/downloader/gp4;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v5

    move/from16 v4, p1

    move-object v5, v10

    move-object v6, v9

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/gp4;-><init>(Lcom/shabakaty/downloader/wo4;[J[II[J[IJ)V

    return-object v13

    :cond_3d
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 171
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0
.end method

.method public static e(Lcom/shabakaty/downloader/zd$a;Lcom/shabakaty/downloader/no1;JLcom/shabakaty/downloader/o01;ZZLcom/shabakaty/downloader/dn1;)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zd$a;",
            "Lcom/shabakaty/downloader/no1;",
            "J",
            "Lcom/shabakaty/downloader/o01;",
            "ZZ",
            "Lcom/shabakaty/downloader/dn1<",
            "Lcom/shabakaty/downloader/wo4;",
            "Lcom/shabakaty/downloader/wo4;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gp4;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, v0, Lcom/shabakaty/downloader/zd$a;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_90

    .line 3
    iget-object v4, v0, Lcom/shabakaty/downloader/zd$a;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/zd$a;

    .line 4
    iget v5, v4, Lcom/shabakaty/downloader/zd;->a:I

    const v6, 0x7472616b

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p7

    move/from16 v25, v3

    move-object/from16 v3, p1

    goto/16 :goto_5a

    :cond_0
    const v5, 0x6d766864

    .line 5
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v5

    .line 6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x6d646961

    .line 7
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/zd$a;->b(I)Lcom/shabakaty/downloader/zd$a;

    move-result-object v6

    .line 8
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v7

    .line 10
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v7, v7, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v8, 0x10

    .line 12
    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 13
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    const v8, 0x736f756e

    const/4 v9, -0x1

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const v8, 0x76696465

    if-ne v7, v8, :cond_2

    const/4 v7, 0x2

    const/4 v12, 0x2

    goto :goto_2

    :cond_2
    const v8, 0x74657874

    if-eq v7, v8, :cond_5

    const v8, 0x7362746c

    if-eq v7, v8, :cond_5

    const v8, 0x73756274

    if-eq v7, v8, :cond_5

    const v8, 0x636c6370

    if-ne v7, v8, :cond_3

    goto :goto_1

    :cond_3
    const v8, 0x6d657461

    if-ne v7, v8, :cond_4

    const/4 v7, 0x5

    const/4 v12, 0x5

    goto :goto_2

    :cond_4
    const/4 v7, -0x1

    const/4 v12, -0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v7, 0x3

    const/4 v12, 0x3

    :goto_2
    if-ne v12, v9, :cond_6

    const/4 v5, 0x0

    move-object/from16 v0, p7

    move-object/from16 v26, v2

    move/from16 v25, v3

    goto/16 :goto_59

    :cond_6
    const v7, 0x746b6864

    .line 14
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v7

    .line 15
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v7, v7, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v8, 0x8

    .line 17
    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 18
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v10

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    if-nez v10, :cond_7

    const/16 v11, 0x8

    goto :goto_3

    :cond_7
    const/16 v11, 0x10

    .line 19
    :goto_3
    invoke-virtual {v7, v11}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 20
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v11

    const/4 v13, 0x4

    .line 21
    invoke-virtual {v7, v13}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 22
    iget v13, v7, Lcom/shabakaty/downloader/ka3;->b:I

    if-nez v10, :cond_8

    const/4 v8, 0x4

    :cond_8
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v8, :cond_a

    .line 23
    iget-object v15, v7, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int v16, v13, v14

    .line 24
    aget-byte v15, v15, v16

    if-eq v15, v9, :cond_9

    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    const/4 v9, 0x1

    :goto_5
    const-wide/16 v15, 0x0

    if-eqz v9, :cond_b

    .line 25
    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/ka3;->F(I)V

    goto :goto_7

    :cond_b
    if-nez v10, :cond_c

    .line 26
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v8

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v8

    :goto_6
    cmp-long v10, v8, v15

    if-nez v10, :cond_d

    :goto_7
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :cond_d
    const/16 v10, 0x10

    .line 27
    invoke-virtual {v7, v10}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 28
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v10

    .line 29
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v15

    const/4 v13, 0x4

    .line 30
    invoke-virtual {v7, v13}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 31
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v13

    .line 32
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    const/high16 v14, 0x10000

    const/high16 v0, -0x10000

    if-nez v10, :cond_e

    if-ne v15, v14, :cond_e

    if-ne v13, v0, :cond_e

    if-nez v7, :cond_e

    const/16 v0, 0x5a

    goto :goto_8

    :cond_e
    if-nez v10, :cond_f

    if-ne v15, v0, :cond_f

    if-ne v13, v14, :cond_f

    if-nez v7, :cond_f

    const/16 v0, 0x10e

    goto :goto_8

    :cond_f
    if-ne v10, v0, :cond_10

    if-nez v15, :cond_10

    if-nez v13, :cond_10

    if-ne v7, v0, :cond_10

    const/16 v0, 0xb4

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    :goto_8
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p2, v13

    if-nez v7, :cond_11

    goto :goto_9

    :cond_11
    move-wide/from16 v8, p2

    .line 33
    :goto_9
    iget-object v5, v5, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v7, 0x8

    .line 34
    invoke-virtual {v5, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 35
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_12

    const/16 v7, 0x8

    goto :goto_a

    :cond_12
    const/16 v7, 0x10

    .line 36
    :goto_a
    invoke-virtual {v5, v7}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 37
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v15

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v8, v13

    if-nez v5, :cond_13

    move-wide v7, v13

    goto :goto_b

    :cond_13
    const-wide/32 v21, 0xf4240

    move-wide/from16 v19, v8

    move-wide/from16 v23, v15

    .line 38
    invoke-static/range {v19 .. v24}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v7

    :goto_b
    const v5, 0x6d696e66

    .line 39
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/zd$a;->b(I)Lcom/shabakaty/downloader/zd$a;

    move-result-object v5

    .line 40
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v9, 0x7374626c

    .line 41
    invoke-virtual {v5, v9}, Lcom/shabakaty/downloader/zd$a;->b(I)Lcom/shabakaty/downloader/zd$a;

    move-result-object v5

    .line 42
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v9, 0x6d646864

    .line 43
    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v6

    .line 44
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v6, v6, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v9, 0x8

    .line 46
    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 47
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v9

    shr-int/lit8 v9, v9, 0x18

    and-int/lit16 v9, v9, 0xff

    if-nez v9, :cond_14

    const/16 v10, 0x8

    goto :goto_c

    :cond_14
    const/16 v10, 0x10

    .line 48
    :goto_c
    invoke-virtual {v6, v10}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 49
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v13

    if-nez v9, :cond_15

    const/4 v9, 0x4

    goto :goto_d

    :cond_15
    const/16 v9, 0x8

    .line 50
    :goto_d
    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 51
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v6

    shr-int/lit8 v9, v6, 0xa

    and-int/lit8 v9, v9, 0x1f

    add-int/lit8 v9, v9, 0x60

    int-to-char v9, v9

    shr-int/lit8 v10, v6, 0x5

    and-int/lit8 v10, v10, 0x1f

    add-int/lit8 v10, v10, 0x60

    int-to-char v10, v10

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    move/from16 v25, v3

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v26, v2

    const/4 v2, 0x3

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x73747364

    .line 54
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v3

    .line 55
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v3, v3, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    .line 57
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0xc

    .line 58
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 59
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v6

    .line 60
    new-array v9, v6, [Lcom/shabakaty/downloader/xo4;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    move-object/from16 v19, v13

    const/16 v20, 0x0

    const/16 v22, 0x0

    :goto_e
    if-ge v10, v6, :cond_86

    .line 61
    iget v13, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 62
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v14

    if-lez v14, :cond_16

    const/16 v21, 0x1

    move/from16 v23, v6

    move-wide/from16 v27, v7

    const/4 v6, 0x1

    goto :goto_f

    :cond_16
    const/16 v21, 0x0

    move/from16 v23, v6

    move-wide/from16 v27, v7

    const/4 v6, 0x0

    :goto_f
    const-string v7, "childAtomSize must be positive"

    .line 63
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    .line 64
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v6

    const v8, 0x61766331

    if-eq v6, v8, :cond_5a

    const v8, 0x61766333

    if-eq v6, v8, :cond_5a

    const v8, 0x656e6376

    if-eq v6, v8, :cond_5a

    const v8, 0x6d317620

    if-eq v6, v8, :cond_5a

    const v8, 0x6d703476

    if-eq v6, v8, :cond_5a

    const v8, 0x68766331

    if-eq v6, v8, :cond_5a

    const v8, 0x68657631

    if-eq v6, v8, :cond_5a

    const v8, 0x73323633

    if-eq v6, v8, :cond_5a

    const v8, 0x48323633

    if-eq v6, v8, :cond_5a

    const v8, 0x76703038

    if-eq v6, v8, :cond_5a

    const v8, 0x76703039

    if-eq v6, v8, :cond_5a

    const v8, 0x61763031

    if-eq v6, v8, :cond_5a

    const v8, 0x64766176

    if-eq v6, v8, :cond_5a

    const v8, 0x64766131

    if-eq v6, v8, :cond_5a

    const v8, 0x64766865

    if-eq v6, v8, :cond_5a

    const v8, 0x64766831

    if-ne v6, v8, :cond_17

    goto/16 :goto_34

    :cond_17
    const v8, 0x6d703461

    move-wide/from16 v29, v15

    const v15, 0x656e6361

    move/from16 v16, v12

    const v12, 0x616c6163

    if-eq v6, v8, :cond_23

    if-eq v6, v15, :cond_23

    const v8, 0x61632d33

    if-eq v6, v8, :cond_23

    const v8, 0x65632d33

    if-eq v6, v8, :cond_23

    const v8, 0x61632d34

    if-eq v6, v8, :cond_23

    const v8, 0x64747363

    if-eq v6, v8, :cond_23

    const v8, 0x64747365

    if-eq v6, v8, :cond_23

    const v8, 0x64747368

    if-eq v6, v8, :cond_23

    const v8, 0x6474736c

    if-eq v6, v8, :cond_23

    const v8, 0x64747378

    if-eq v6, v8, :cond_23

    const v8, 0x73616d72

    if-eq v6, v8, :cond_23

    const v8, 0x73617762

    if-eq v6, v8, :cond_23

    const v8, 0x6c70636d

    if-eq v6, v8, :cond_23

    const v8, 0x736f7774

    if-eq v6, v8, :cond_23

    const v8, 0x74776f73

    if-eq v6, v8, :cond_23

    const v8, 0x2e6d7032

    if-eq v6, v8, :cond_23

    const v8, 0x2e6d7033

    if-eq v6, v8, :cond_23

    const v8, 0x6d686131

    if-eq v6, v8, :cond_23

    const v8, 0x6d686d31

    if-eq v6, v8, :cond_23

    if-eq v6, v12, :cond_23

    const v8, 0x616c6177

    if-eq v6, v8, :cond_23

    const v8, 0x756c6177

    if-eq v6, v8, :cond_23

    const v8, 0x4f707573

    if-eq v6, v8, :cond_23

    const v8, 0x664c6143

    if-ne v6, v8, :cond_18

    goto/16 :goto_18

    :cond_18
    const v7, 0x54544d4c

    if-eq v6, v7, :cond_1c

    const v7, 0x74783367

    if-eq v6, v7, :cond_1c

    const v7, 0x77767474

    if-eq v6, v7, :cond_1c

    const v7, 0x73747070

    if-eq v6, v7, :cond_1c

    const v7, 0x63363038

    if-ne v6, v7, :cond_19

    goto :goto_11

    :cond_19
    const v7, 0x6d657474

    if-ne v6, v7, :cond_1a

    add-int/lit8 v7, v13, 0x8

    add-int/lit8 v7, v7, 0x8

    .line 65
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const v7, 0x6d657474

    if-ne v6, v7, :cond_1b

    .line 66
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->n()Ljava/lang/String;

    .line 67
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->n()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 68
    invoke-static {v11}, Lcom/shabakaty/downloader/ae;->a(I)Lcom/shabakaty/downloader/wh1$b;

    move-result-object v7

    .line 69
    iput-object v6, v7, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 70
    invoke-virtual {v7}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v19

    goto :goto_10

    :cond_1a
    const v7, 0x63616d6d

    if-ne v6, v7, :cond_1b

    .line 71
    invoke-static {v11}, Lcom/shabakaty/downloader/ae;->a(I)Lcom/shabakaty/downloader/wh1$b;

    move-result-object v6

    const-string v7, "application/x-camera-motion"

    .line 72
    iput-object v7, v6, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 73
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v19

    :cond_1b
    :goto_10
    move-object/from16 v21, v9

    goto/16 :goto_17

    :cond_1c
    :goto_11
    add-int/lit8 v7, v13, 0x8

    add-int/lit8 v7, v7, 0x8

    .line 74
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const v7, 0x54544d4c

    const-string v8, "application/ttml+xml"

    if-ne v6, v7, :cond_1d

    goto :goto_13

    :cond_1d
    const v7, 0x74783367

    if-ne v6, v7, :cond_1e

    add-int/lit8 v6, v14, -0x8

    add-int/lit8 v6, v6, -0x8

    .line 75
    new-array v7, v6, [B

    .line 76
    iget-object v8, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v12, v3, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v15, 0x0

    invoke-static {v8, v12, v7, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget v8, v3, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v8, v6

    iput v8, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 78
    invoke-static {v7}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v6

    const-string v7, "application/x-quicktime-tx3g"

    const-wide v31, 0x7fffffffffffffffL

    :goto_12
    move-object/from16 v21, v9

    move-wide/from16 v8, v31

    goto :goto_16

    :cond_1e
    const v7, 0x77767474

    if-ne v6, v7, :cond_1f

    const-string v8, "application/x-mp4-vtt"

    :goto_13
    const-wide v6, 0x7fffffffffffffffL

    :goto_14
    move-wide/from16 v31, v6

    goto :goto_15

    :cond_1f
    const v7, 0x73747070

    if-ne v6, v7, :cond_20

    const-wide/16 v31, 0x0

    goto :goto_15

    :cond_20
    const v7, 0x63363038

    if-ne v6, v7, :cond_22

    const-string v8, "application/x-mp4-cea-608"

    const-wide v6, 0x7fffffffffffffffL

    const/16 v20, 0x1

    goto :goto_14

    :goto_15
    const/4 v6, 0x0

    move-object v7, v8

    goto :goto_12

    .line 79
    :goto_16
    invoke-static {v11}, Lcom/shabakaty/downloader/ae;->a(I)Lcom/shabakaty/downloader/wh1$b;

    move-result-object v12

    .line 80
    iput-object v7, v12, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 81
    iput-object v5, v12, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 82
    iput-wide v8, v12, Lcom/shabakaty/downloader/wh1$b;->o:J

    .line 83
    iput-object v6, v12, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 84
    invoke-virtual {v12}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v19

    :cond_21
    :goto_17
    move/from16 v33, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v4

    move/from16 v34, v10

    move/from16 v36, v13

    move/from16 v37, v14

    goto/16 :goto_33

    .line 85
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_23
    :goto_18
    move-object/from16 v21, v9

    add-int/lit8 v8, v13, 0x8

    const/16 v9, 0x8

    add-int/2addr v8, v9

    .line 86
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/4 v8, 0x6

    if-eqz p6, :cond_24

    .line 87
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v9

    .line 88
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/ka3;->F(I)V

    goto :goto_19

    .line 89
    :cond_24
    invoke-virtual {v3, v9}, Lcom/shabakaty/downloader/ka3;->F(I)V

    const/4 v9, 0x0

    :goto_19
    if-eqz v9, :cond_26

    const/4 v8, 0x1

    if-ne v9, v8, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v8, 0x2

    if-ne v9, v8, :cond_21

    const/16 v8, 0x10

    .line 90
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 91
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 92
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v9, v8

    .line 93
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v8

    const/16 v12, 0x14

    .line 94
    invoke-virtual {v3, v12}, Lcom/shabakaty/downloader/ka3;->F(I)V

    move-object/from16 v31, v2

    goto :goto_1b

    .line 95
    :cond_26
    :goto_1a
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v8

    const/4 v12, 0x6

    .line 96
    invoke-virtual {v3, v12}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 97
    iget-object v12, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v15, v3, Lcom/shabakaty/downloader/ka3;->b:I

    move/from16 v24, v8

    add-int/lit8 v8, v15, 0x1

    iput v8, v3, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v15, v12, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    move-object/from16 v31, v2

    add-int/lit8 v2, v8, 0x1

    iput v2, v3, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v15

    add-int/lit8 v2, v2, 0x2

    .line 98
    iput v2, v3, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v2, 0x1

    if-ne v9, v2, :cond_27

    const/16 v2, 0x10

    .line 99
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/ka3;->F(I)V

    :cond_27
    move v9, v8

    move/from16 v8, v24

    .line 100
    :goto_1b
    iget v2, v3, Lcom/shabakaty/downloader/ka3;->b:I

    const v12, 0x656e6361

    if-ne v6, v12, :cond_2a

    .line 101
    invoke-static {v3, v13, v14}, Lcom/shabakaty/downloader/be;->c(Lcom/shabakaty/downloader/ka3;II)Landroid/util/Pair;

    move-result-object v12

    if-eqz v12, :cond_29

    .line 102
    iget-object v6, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v1, :cond_28

    const/4 v15, 0x0

    goto :goto_1c

    .line 103
    :cond_28
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/shabakaty/downloader/xo4;

    iget-object v15, v15, Lcom/shabakaty/downloader/xo4;->b:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/shabakaty/downloader/o01;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/o01;

    move-result-object v15

    .line 104
    :goto_1c
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/xo4;

    aput-object v12, v21, v10

    goto :goto_1d

    :cond_29
    move-object v15, v1

    .line 105
    :goto_1d
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_1e

    :cond_2a
    move-object v15, v1

    :goto_1e
    const-string v12, "audio/ac4"

    const-string v24, "audio/eac3"

    move/from16 v32, v2

    const-string v2, "audio/ac3"

    move/from16 v33, v8

    const v8, 0x61632d33

    const-string v34, "audio/raw"

    if-ne v6, v8, :cond_2b

    move-object/from16 v34, v2

    goto/16 :goto_23

    :cond_2b
    const v8, 0x65632d33

    if-ne v6, v8, :cond_2c

    move-object/from16 v34, v24

    goto/16 :goto_23

    :cond_2c
    const v8, 0x61632d34

    if-ne v6, v8, :cond_2d

    move-object/from16 v34, v12

    goto/16 :goto_23

    :cond_2d
    const v8, 0x64747363

    if-ne v6, v8, :cond_2e

    const-string v6, "audio/vnd.dts"

    :goto_1f
    move-object/from16 v34, v6

    goto/16 :goto_23

    :cond_2e
    const v8, 0x64747368

    if-eq v6, v8, :cond_40

    const v8, 0x6474736c

    if-ne v6, v8, :cond_2f

    goto/16 :goto_22

    :cond_2f
    const v8, 0x64747365

    if-ne v6, v8, :cond_30

    const-string v6, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_1f

    :cond_30
    const v8, 0x64747378

    if-ne v6, v8, :cond_31

    const-string v6, "audio/vnd.dts.uhd"

    goto :goto_1f

    :cond_31
    const v8, 0x73616d72

    if-ne v6, v8, :cond_32

    const-string v6, "audio/3gpp"

    goto :goto_1f

    :cond_32
    const v8, 0x73617762

    if-ne v6, v8, :cond_33

    const-string v6, "audio/amr-wb"

    goto :goto_1f

    :cond_33
    const v8, 0x6c70636d

    if-eq v6, v8, :cond_3f

    const v8, 0x736f7774

    if-ne v6, v8, :cond_34

    goto :goto_21

    :cond_34
    const v8, 0x74776f73

    if-ne v6, v8, :cond_35

    const/high16 v6, 0x10000000

    goto :goto_24

    :cond_35
    const v8, 0x2e6d7032

    if-eq v6, v8, :cond_3e

    const v8, 0x2e6d7033

    if-ne v6, v8, :cond_36

    goto :goto_20

    :cond_36
    const v8, 0x6d686131

    if-ne v6, v8, :cond_37

    const-string v6, "audio/mha1"

    goto :goto_1f

    :cond_37
    const v8, 0x6d686d31

    if-ne v6, v8, :cond_38

    const-string v6, "audio/mhm1"

    goto :goto_1f

    :cond_38
    const v8, 0x616c6163

    if-ne v6, v8, :cond_39

    const-string v6, "audio/alac"

    goto :goto_1f

    :cond_39
    const v8, 0x616c6177

    if-ne v6, v8, :cond_3a

    const-string v6, "audio/g711-alaw"

    goto :goto_1f

    :cond_3a
    const v8, 0x756c6177

    if-ne v6, v8, :cond_3b

    const-string v6, "audio/g711-mlaw"

    goto :goto_1f

    :cond_3b
    const v8, 0x4f707573

    if-ne v6, v8, :cond_3c

    const-string v6, "audio/opus"

    goto :goto_1f

    :cond_3c
    const v8, 0x664c6143

    if-ne v6, v8, :cond_3d

    const-string v6, "audio/flac"

    goto/16 :goto_1f

    :cond_3d
    const/4 v6, -0x1

    const/16 v34, 0x0

    goto :goto_24

    :cond_3e
    :goto_20
    const-string v6, "audio/mpeg"

    goto/16 :goto_1f

    :cond_3f
    :goto_21
    const/4 v6, 0x2

    goto :goto_24

    :cond_40
    :goto_22
    const-string v6, "audio/vnd.dts.hd"

    goto/16 :goto_1f

    :goto_23
    const/4 v6, -0x1

    :goto_24
    const/4 v8, 0x0

    const/16 v35, 0x0

    move-object/from16 v1, v35

    move-object/from16 v35, v8

    move/from16 v8, v32

    move-object/from16 v32, v4

    move/from16 v44, v33

    move/from16 v33, v0

    move v0, v9

    move/from16 v9, v44

    move-object/from16 v45, v34

    move/from16 v34, v10

    move-object/from16 v10, v45

    :goto_25
    sub-int v4, v8, v13

    if-ge v4, v14, :cond_58

    .line 106
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 107
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v4

    if-lez v4, :cond_41

    const/16 v36, 0x1

    move/from16 v37, v14

    const/4 v14, 0x1

    goto :goto_26

    :cond_41
    const/16 v36, 0x0

    move/from16 v37, v14

    const/4 v14, 0x0

    .line 108
    :goto_26
    invoke-static {v14, v7}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v14

    move/from16 v36, v13

    const v13, 0x6d686143

    if-ne v14, v13, :cond_42

    add-int/lit8 v13, v4, -0xd

    .line 110
    new-array v14, v13, [B

    move/from16 v38, v6

    add-int/lit8 v6, v8, 0xd

    .line 111
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 112
    iget-object v6, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    move-object/from16 v39, v1

    iget v1, v3, Lcom/shabakaty/downloader/ka3;->b:I

    move-object/from16 v40, v7

    const/4 v7, 0x0

    invoke-static {v6, v1, v14, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v1, v3, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v1, v13

    iput v1, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 114
    invoke-static {v14}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v1

    goto/16 :goto_2a

    :cond_42
    move-object/from16 v39, v1

    move/from16 v38, v6

    move-object/from16 v40, v7

    const v1, 0x65736473

    if-eq v14, v1, :cond_50

    if-eqz p6, :cond_43

    const v1, 0x77617665

    if-ne v14, v1, :cond_43

    goto/16 :goto_2d

    :cond_43
    const v1, 0x64616333

    if-ne v14, v1, :cond_45

    add-int/lit8 v1, v8, 0x8

    .line 115
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 116
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v6

    and-int/lit16 v6, v6, 0xc0

    shr-int/lit8 v6, v6, 0x6

    .line 118
    sget-object v7, Lcom/shabakaty/downloader/y1;->b:[I

    aget v6, v7, v6

    .line 119
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    .line 120
    sget-object v13, Lcom/shabakaty/downloader/y1;->d:[I

    and-int/lit8 v14, v7, 0x38

    shr-int/lit8 v14, v14, 0x3

    aget v13, v13, v14

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_44

    add-int/lit8 v13, v13, 0x1

    .line 121
    :cond_44
    new-instance v7, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v7}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 122
    iput-object v1, v7, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 123
    iput-object v2, v7, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 124
    iput v13, v7, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 125
    iput v6, v7, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 126
    iput-object v15, v7, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 127
    iput-object v5, v7, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 128
    invoke-virtual {v7}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v1

    :goto_27
    move-object/from16 v19, v1

    goto/16 :goto_2b

    :cond_45
    const v1, 0x64656333

    if-ne v14, v1, :cond_49

    add-int/lit8 v1, v8, 0x8

    .line 129
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 130
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    .line 131
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 132
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v6

    and-int/lit16 v6, v6, 0xc0

    shr-int/lit8 v6, v6, 0x6

    .line 133
    sget-object v7, Lcom/shabakaty/downloader/y1;->b:[I

    aget v6, v7, v6

    .line 134
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    .line 135
    sget-object v13, Lcom/shabakaty/downloader/y1;->d:[I

    and-int/lit8 v14, v7, 0xe

    shr-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_46

    add-int/lit8 v13, v13, 0x1

    .line 136
    :cond_46
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    and-int/lit8 v7, v7, 0x1e

    shr-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_47

    .line 137
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_47

    add-int/lit8 v13, v13, 0x2

    .line 138
    :cond_47
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v7

    if-lez v7, :cond_48

    .line 139
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_48

    const-string v7, "audio/eac3-joc"

    goto :goto_28

    :cond_48
    move-object/from16 v7, v24

    .line 140
    :goto_28
    new-instance v14, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v14}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 141
    iput-object v1, v14, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 142
    iput-object v7, v14, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 143
    iput v13, v14, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 144
    iput v6, v14, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 145
    iput-object v15, v14, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 146
    iput-object v5, v14, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 147
    invoke-virtual {v14}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v1

    goto :goto_27

    :cond_49
    const v1, 0x64616334

    if-ne v14, v1, :cond_4b

    add-int/lit8 v1, v8, 0x8

    .line 148
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 149
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    .line 150
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 151
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    shr-int/lit8 v7, v7, 0x5

    if-ne v7, v6, :cond_4a

    const v6, 0xbb80

    goto :goto_29

    :cond_4a
    const v6, 0xac44

    .line 152
    :goto_29
    new-instance v7, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v7}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 153
    iput-object v1, v7, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 154
    iput-object v12, v7, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    const/4 v1, 0x2

    .line 155
    iput v1, v7, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 156
    iput v6, v7, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 157
    iput-object v15, v7, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 158
    iput-object v5, v7, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 159
    invoke-virtual {v7}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v1

    goto/16 :goto_27

    :cond_4b
    const v1, 0x64647473

    if-ne v14, v1, :cond_4c

    .line 160
    invoke-static {v11}, Lcom/shabakaty/downloader/ae;->a(I)Lcom/shabakaty/downloader/wh1$b;

    move-result-object v1

    .line 161
    iput-object v10, v1, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 162
    iput v9, v1, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 163
    iput v0, v1, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 164
    iput-object v15, v1, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 165
    iput-object v5, v1, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 166
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v1

    goto/16 :goto_27

    :cond_4c
    const v1, 0x644f7073

    if-ne v14, v1, :cond_4d

    add-int/lit8 v1, v4, -0x8

    .line 167
    sget-object v6, Lcom/shabakaty/downloader/be;->a:[B

    array-length v7, v6

    add-int/2addr v7, v1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    add-int/lit8 v13, v8, 0x8

    .line 168
    invoke-virtual {v3, v13}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 169
    array-length v6, v6

    invoke-virtual {v3, v7, v6, v1}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 170
    invoke-static {v7}, Lcom/shabakaty/downloader/fl3;->b([B)Ljava/util/List;

    move-result-object v1

    :goto_2a
    move-object/from16 v35, v1

    goto/16 :goto_2b

    :cond_4d
    const v1, 0x64664c61

    if-ne v14, v1, :cond_4e

    add-int/lit8 v1, v4, -0xc

    add-int/lit8 v6, v1, 0x4

    .line 171
    new-array v6, v6, [B

    const/16 v7, 0x66

    const/4 v13, 0x0

    .line 172
    aput-byte v7, v6, v13

    const/16 v7, 0x4c

    const/4 v13, 0x1

    .line 173
    aput-byte v7, v6, v13

    const/16 v7, 0x61

    const/4 v13, 0x2

    .line 174
    aput-byte v7, v6, v13

    const/16 v7, 0x43

    const/4 v13, 0x3

    .line 175
    aput-byte v7, v6, v13

    add-int/lit8 v7, v8, 0xc

    .line 176
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 177
    iget-object v7, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v13, v3, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v14, 0x4

    invoke-static {v7, v13, v6, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget v7, v3, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v7, v1

    iput v7, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 179
    invoke-static {v6}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v1

    goto :goto_2a

    :cond_4e
    const v1, 0x616c6163

    if-ne v14, v1, :cond_4f

    add-int/lit8 v0, v4, -0xc

    .line 180
    new-array v1, v0, [B

    add-int/lit8 v6, v8, 0xc

    .line 181
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 182
    iget-object v6, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v7, v3, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget v6, v3, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v6, v0

    iput v6, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 184
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    const/16 v6, 0x9

    .line 185
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 186
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v6

    const/16 v7, 0x14

    .line 187
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 188
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v0

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 190
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 191
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 192
    invoke-static {v1}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v0

    goto :goto_2c

    :cond_4f
    :goto_2b
    move v6, v0

    move-object/from16 v0, v35

    :goto_2c
    move-object/from16 v35, v0

    move v0, v6

    move-object/from16 v1, v39

    move-object/from16 v13, v40

    goto/16 :goto_32

    :cond_50
    :goto_2d
    const v1, 0x65736473

    if-ne v14, v1, :cond_51

    move v1, v8

    move-object/from16 v13, v40

    goto :goto_30

    .line 193
    :cond_51
    iget v1, v3, Lcom/shabakaty/downloader/ka3;->b:I

    :goto_2e
    sub-int v6, v1, v8

    if-ge v6, v4, :cond_54

    .line 194
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 195
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v6

    if-lez v6, :cond_52

    const/4 v7, 0x1

    goto :goto_2f

    :cond_52
    const/4 v7, 0x0

    :goto_2f
    move-object/from16 v13, v40

    .line 196
    invoke-static {v7, v13}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    .line 197
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    const v14, 0x65736473

    if-ne v7, v14, :cond_53

    :goto_30
    const/4 v6, -0x1

    goto :goto_31

    :cond_53
    add-int/2addr v1, v6

    move-object/from16 v40, v13

    goto :goto_2e

    :cond_54
    move-object/from16 v13, v40

    const/4 v6, -0x1

    const/4 v1, -0x1

    :goto_31
    if-eq v1, v6, :cond_57

    .line 198
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/be;->a(Lcom/shabakaty/downloader/ka3;I)Landroid/util/Pair;

    move-result-object v1

    .line 199
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 200
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    if-eqz v1, :cond_56

    const-string v7, "audio/mp4a-latm"

    .line 201
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 202
    invoke-static {v1}, Lcom/shabakaty/downloader/c;->f([B)Lcom/shabakaty/downloader/c$b;

    move-result-object v0

    .line 203
    iget v7, v0, Lcom/shabakaty/downloader/c$b;->a:I

    .line 204
    iget v9, v0, Lcom/shabakaty/downloader/c$b;->b:I

    .line 205
    iget-object v0, v0, Lcom/shabakaty/downloader/c$b;->c:Ljava/lang/String;

    move-object/from16 v39, v0

    move v0, v7

    .line 206
    :cond_55
    invoke-static {v1}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v1

    move-object/from16 v35, v1

    :cond_56
    move-object/from16 v1, v39

    move-object v10, v6

    goto :goto_32

    :cond_57
    move-object/from16 v1, v39

    :goto_32
    add-int/2addr v8, v4

    move-object v7, v13

    move/from16 v13, v36

    move/from16 v14, v37

    move/from16 v6, v38

    goto/16 :goto_25

    :cond_58
    move-object/from16 v39, v1

    move/from16 v38, v6

    move/from16 v36, v13

    move/from16 v37, v14

    if-nez v19, :cond_59

    if-eqz v10, :cond_59

    .line 207
    invoke-static {v11}, Lcom/shabakaty/downloader/ae;->a(I)Lcom/shabakaty/downloader/wh1$b;

    move-result-object v1

    .line 208
    iput-object v10, v1, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    move-object/from16 v2, v39

    .line 209
    iput-object v2, v1, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 210
    iput v9, v1, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 211
    iput v0, v1, Lcom/shabakaty/downloader/wh1$b;->y:I

    move/from16 v6, v38

    .line 212
    iput v6, v1, Lcom/shabakaty/downloader/wh1$b;->z:I

    move-object/from16 v8, v35

    .line 213
    iput-object v8, v1, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 214
    iput-object v15, v1, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 215
    iput-object v5, v1, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 216
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v19

    :cond_59
    :goto_33
    move-object/from16 v24, v5

    move/from16 v0, v33

    move/from16 v43, v36

    move/from16 v7, v37

    goto/16 :goto_52

    :cond_5a
    :goto_34
    move/from16 v33, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v4

    move-object/from16 v21, v9

    move/from16 v34, v10

    move/from16 v36, v13

    move/from16 v37, v14

    move-wide/from16 v29, v15

    move-object v13, v7

    move/from16 v16, v12

    add-int/lit8 v0, v36, 0x8

    add-int/lit8 v0, v0, 0x8

    .line 217
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/16 v0, 0x10

    .line 218
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 219
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v0

    .line 220
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v1

    const/16 v2, 0x32

    .line 221
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 222
    iget v2, v3, Lcom/shabakaty/downloader/ka3;->b:I

    const v4, 0x656e6376

    if-ne v6, v4, :cond_5d

    move/from16 v4, v36

    move/from16 v7, v37

    .line 223
    invoke-static {v3, v4, v7}, Lcom/shabakaty/downloader/be;->c(Lcom/shabakaty/downloader/ka3;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_5c

    .line 224
    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v9, p4

    if-nez v9, :cond_5b

    const/4 v10, 0x0

    goto :goto_35

    .line 225
    :cond_5b
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/shabakaty/downloader/xo4;

    iget-object v10, v10, Lcom/shabakaty/downloader/xo4;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/o01;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/o01;

    move-result-object v10

    .line 226
    :goto_35
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/shabakaty/downloader/xo4;

    aput-object v8, v21, v34

    goto :goto_36

    :cond_5c
    move-object/from16 v9, p4

    move-object v10, v9

    .line 227
    :goto_36
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_37

    :cond_5d
    move-object/from16 v9, p4

    move/from16 v4, v36

    move/from16 v7, v37

    move-object v10, v9

    :goto_37
    const-string v8, "video/3gpp"

    const v12, 0x6d317620

    if-ne v6, v12, :cond_5e

    const-string v12, "video/mpeg"

    goto :goto_38

    :cond_5e
    const v12, 0x48323633

    if-ne v6, v12, :cond_5f

    move-object v12, v8

    goto :goto_38

    :cond_5f
    const/4 v12, 0x0

    :goto_38
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v24, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, -0x1

    move-object/from16 v38, v10

    const/4 v9, -0x1

    move-object/from16 v44, v24

    move-object/from16 v24, v5

    move-object/from16 v5, v44

    move-object/from16 v45, v35

    move-object/from16 v35, v8

    move-object/from16 v8, v45

    :goto_39
    sub-int v10, v2, v4

    if-ge v10, v7, :cond_84

    .line 228
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 229
    iget v10, v3, Lcom/shabakaty/downloader/ka3;->b:I

    move-object/from16 v39, v15

    .line 230
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v15

    move/from16 v40, v9

    if-nez v15, :cond_60

    .line 231
    iget v9, v3, Lcom/shabakaty/downloader/ka3;->b:I

    sub-int/2addr v9, v4

    if-ne v9, v7, :cond_60

    move/from16 v43, v4

    goto/16 :goto_51

    :cond_60
    if-lez v15, :cond_61

    const/4 v9, 0x1

    goto :goto_3a

    :cond_61
    const/4 v9, 0x0

    .line 232
    :goto_3a
    invoke-static {v9, v13}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    .line 233
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v9

    move-object/from16 v41, v13

    const v13, 0x61766343

    if-ne v9, v13, :cond_64

    if-nez v12, :cond_62

    const/4 v5, 0x1

    goto :goto_3b

    :cond_62
    const/4 v5, 0x0

    :goto_3b
    const/4 v9, 0x0

    .line 234
    invoke-static {v5, v9}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x8

    .line 235
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 236
    invoke-static {v3}, Lcom/shabakaty/downloader/di;->b(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/di;

    move-result-object v5

    .line 237
    iget-object v9, v5, Lcom/shabakaty/downloader/di;->a:Ljava/util/List;

    .line 238
    iget v10, v5, Lcom/shabakaty/downloader/di;->b:I

    if-nez v36, :cond_63

    .line 239
    iget v14, v5, Lcom/shabakaty/downloader/di;->e:F

    .line 240
    :cond_63
    iget-object v5, v5, Lcom/shabakaty/downloader/di;->f:Ljava/lang/String;

    const-string v12, "video/avc"

    goto :goto_3d

    :cond_64
    const v13, 0x68766343

    if-ne v9, v13, :cond_66

    if-nez v12, :cond_65

    const/4 v5, 0x1

    goto :goto_3c

    :cond_65
    const/4 v5, 0x0

    :goto_3c
    const/4 v9, 0x0

    .line 241
    invoke-static {v5, v9}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x8

    .line 242
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 243
    invoke-static {v3}, Lcom/shabakaty/downloader/dv3;->b(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/dv3;

    move-result-object v5

    .line 244
    iget-object v9, v5, Lcom/shabakaty/downloader/dv3;->b:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    .line 245
    iget v10, v5, Lcom/shabakaty/downloader/dv3;->a:I

    .line 246
    iget-object v5, v5, Lcom/shabakaty/downloader/dv3;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v12, "video/hevc"

    :goto_3d
    move/from16 v22, v10

    move-object/from16 v39, v9

    goto :goto_3f

    :cond_66
    const v13, 0x64766343

    if-eq v9, v13, :cond_82

    const v13, 0x64767643

    if-ne v9, v13, :cond_67

    goto/16 :goto_4e

    :cond_67
    const v13, 0x76706343

    if-ne v9, v13, :cond_6a

    if-nez v12, :cond_68

    const/4 v9, 0x1

    goto :goto_3e

    :cond_68
    const/4 v9, 0x0

    :goto_3e
    const/4 v10, 0x0

    .line 247
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    const v9, 0x76703038

    if-ne v6, v9, :cond_69

    const-string v12, "video/x-vnd.on2.vp8"

    goto :goto_3f

    :cond_69
    const-string v12, "video/x-vnd.on2.vp9"

    :goto_3f
    move-object/from16 v9, v39

    goto :goto_45

    :cond_6a
    const v13, 0x61763143

    if-ne v9, v13, :cond_6c

    if-nez v12, :cond_6b

    const/4 v9, 0x1

    goto :goto_40

    :cond_6b
    const/4 v9, 0x0

    :goto_40
    const/4 v10, 0x0

    .line 248
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    const-string v9, "video/av01"

    move-object v12, v9

    goto :goto_42

    :cond_6c
    const v13, 0x64323633

    if-ne v9, v13, :cond_6e

    if-nez v12, :cond_6d

    const/4 v9, 0x1

    goto :goto_41

    :cond_6d
    const/4 v9, 0x0

    :goto_41
    const/4 v10, 0x0

    .line 249
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    move-object/from16 v12, v35

    :goto_42
    move/from16 v43, v4

    move/from16 v42, v6

    goto/16 :goto_4f

    :cond_6e
    const v13, 0x65736473

    if-ne v9, v13, :cond_71

    if-nez v12, :cond_6f

    const/4 v9, 0x1

    goto :goto_43

    :cond_6f
    const/4 v9, 0x0

    :goto_43
    const/4 v12, 0x0

    .line 250
    invoke-static {v9, v12}, Lcom/shabakaty/downloader/q91;->a(ZLjava/lang/String;)V

    .line 251
    invoke-static {v3, v10}, Lcom/shabakaty/downloader/be;->a(Lcom/shabakaty/downloader/ka3;I)Landroid/util/Pair;

    move-result-object v9

    .line 252
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 253
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [B

    if-eqz v9, :cond_70

    .line 254
    invoke-static {v9}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v9

    goto :goto_44

    :cond_70
    move-object/from16 v9, v39

    :goto_44
    move-object v12, v10

    :goto_45
    move/from16 v43, v4

    move/from16 v42, v6

    move-object/from16 v39, v9

    goto/16 :goto_4f

    :cond_71
    const v13, 0x70617370

    if-ne v9, v13, :cond_72

    add-int/lit8 v10, v10, 0x8

    .line 255
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 256
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v9

    .line 257
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v10

    int-to-float v9, v9

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/4 v10, 0x1

    move/from16 v43, v4

    move/from16 v42, v6

    move v14, v9

    move/from16 v9, v40

    const/16 v36, 0x1

    goto/16 :goto_50

    :cond_72
    const v13, 0x73763364

    if-ne v9, v13, :cond_76

    add-int/lit8 v8, v10, 0x8

    :goto_46
    sub-int v9, v8, v10

    if-ge v9, v15, :cond_74

    .line 258
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 259
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v9

    .line 260
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v13

    move/from16 v42, v6

    const v6, 0x70726f6a

    if-ne v13, v6, :cond_73

    .line 261
    iget-object v6, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int/2addr v9, v8

    .line 262
    invoke-static {v6, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    goto :goto_47

    :cond_73
    add-int/2addr v8, v9

    move/from16 v6, v42

    goto :goto_46

    :cond_74
    move/from16 v42, v6

    const/4 v8, 0x0

    :cond_75
    :goto_47
    move/from16 v43, v4

    goto/16 :goto_4f

    :cond_76
    move/from16 v42, v6

    const v6, 0x73743364

    if-ne v9, v6, :cond_7b

    .line 263
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v6

    const/4 v9, 0x3

    .line 264
    invoke-virtual {v3, v9}, Lcom/shabakaty/downloader/ka3;->F(I)V

    if-nez v6, :cond_75

    .line 265
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v6

    if-eqz v6, :cond_7a

    const/4 v10, 0x1

    if-eq v6, v10, :cond_79

    const/4 v10, 0x2

    if-eq v6, v10, :cond_78

    if-eq v6, v9, :cond_77

    goto :goto_47

    :cond_77
    const/4 v6, 0x3

    move/from16 v43, v4

    const/4 v9, 0x3

    goto/16 :goto_50

    :cond_78
    const/4 v9, 0x2

    goto :goto_48

    :cond_79
    const/4 v9, 0x1

    goto :goto_48

    :cond_7a
    const/4 v9, 0x0

    :goto_48
    move/from16 v43, v4

    goto/16 :goto_50

    :cond_7b
    const v6, 0x636f6c72

    if-ne v9, v6, :cond_75

    .line 266
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v6

    const v9, 0x6e636c78

    if-ne v6, v9, :cond_7c

    const/4 v9, 0x1

    goto :goto_49

    :cond_7c
    const/4 v9, 0x0

    :goto_49
    if-nez v9, :cond_7f

    const v10, 0x6e636c63

    if-ne v6, v10, :cond_7d

    goto :goto_4b

    :cond_7d
    const-string v9, "Unsupported color type: "

    .line 267
    invoke-static {v6}, Lcom/shabakaty/downloader/zd;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_7e

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4a

    :cond_7e
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4a
    const-string v9, "AtomParsers"

    .line 268
    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 269
    :cond_7f
    :goto_4b
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v6

    .line 270
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v10

    const/4 v13, 0x2

    .line 271
    invoke-virtual {v3, v13}, Lcom/shabakaty/downloader/ka3;->F(I)V

    if-eqz v9, :cond_80

    .line 272
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_80

    const/4 v9, 0x1

    goto :goto_4c

    :cond_80
    const/4 v9, 0x0

    .line 273
    :goto_4c
    new-instance v13, Lcom/shabakaty/downloader/v50;

    .line 274
    invoke-static {v6}, Lcom/shabakaty/downloader/v50;->a(I)I

    move-result v6

    if-eqz v9, :cond_81

    const/4 v9, 0x1

    goto :goto_4d

    :cond_81
    const/4 v9, 0x2

    .line 275
    :goto_4d
    invoke-static {v10}, Lcom/shabakaty/downloader/v50;->b(I)I

    move-result v10

    move/from16 v43, v4

    const/4 v4, 0x0

    invoke-direct {v13, v6, v9, v10, v4}, Lcom/shabakaty/downloader/v50;-><init>(III[B)V

    move-object/from16 v37, v13

    goto :goto_4f

    :cond_82
    :goto_4e
    move/from16 v43, v4

    move/from16 v42, v6

    .line 276
    invoke-static {v3}, Lcom/shabakaty/downloader/yu0;->c(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yu0;

    move-result-object v4

    if-eqz v4, :cond_83

    .line 277
    iget-object v4, v4, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "video/dolby-vision"

    move-object v12, v5

    move/from16 v9, v40

    move-object v5, v4

    goto :goto_50

    :cond_83
    :goto_4f
    move/from16 v9, v40

    :goto_50
    add-int/2addr v2, v15

    move-object/from16 v15, v39

    move-object/from16 v13, v41

    move/from16 v6, v42

    move/from16 v4, v43

    goto/16 :goto_39

    :cond_84
    move/from16 v43, v4

    move/from16 v40, v9

    move-object/from16 v39, v15

    :goto_51
    if-nez v12, :cond_85

    move/from16 v0, v33

    goto :goto_52

    .line 278
    :cond_85
    invoke-static {v11}, Lcom/shabakaty/downloader/ae;->a(I)Lcom/shabakaty/downloader/wh1$b;

    move-result-object v2

    .line 279
    iput-object v12, v2, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 280
    iput-object v5, v2, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 281
    iput v0, v2, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 282
    iput v1, v2, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 283
    iput v14, v2, Lcom/shabakaty/downloader/wh1$b;->t:F

    move/from16 v0, v33

    .line 284
    iput v0, v2, Lcom/shabakaty/downloader/wh1$b;->s:I

    .line 285
    iput-object v8, v2, Lcom/shabakaty/downloader/wh1$b;->u:[B

    move/from16 v9, v40

    .line 286
    iput v9, v2, Lcom/shabakaty/downloader/wh1$b;->v:I

    move-object/from16 v15, v39

    .line 287
    iput-object v15, v2, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    move-object/from16 v9, v38

    .line 288
    iput-object v9, v2, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    move-object/from16 v1, v37

    .line 289
    iput-object v1, v2, Lcom/shabakaty/downloader/wh1$b;->w:Lcom/shabakaty/downloader/v50;

    .line 290
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v19

    :goto_52
    add-int v13, v43, v7

    .line 291
    invoke-virtual {v3, v13}, Lcom/shabakaty/downloader/ka3;->E(I)V

    add-int/lit8 v10, v34, 0x1

    move-object/from16 v1, p4

    move/from16 v12, v16

    move-object/from16 v9, v21

    move/from16 v6, v23

    move-object/from16 v5, v24

    move-wide/from16 v7, v27

    move-wide/from16 v15, v29

    move-object/from16 v2, v31

    move-object/from16 v4, v32

    goto/16 :goto_e

    :cond_86
    move-object/from16 v31, v2

    move-object/from16 v32, v4

    move-wide/from16 v27, v7

    move-object/from16 v21, v9

    move-wide/from16 v29, v15

    move/from16 v16, v12

    const/4 v5, 0x0

    if-nez p5, :cond_8c

    const v0, 0x65647473

    move-object/from16 v4, v32

    .line 292
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/zd$a;->b(I)Lcom/shabakaty/downloader/zd$a;

    move-result-object v0

    if-eqz v0, :cond_8d

    const v1, 0x656c7374

    .line 293
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v0

    if-nez v0, :cond_87

    move-object v0, v5

    goto :goto_56

    .line 294
    :cond_87
    iget-object v0, v0, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0x8

    .line 295
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 296
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 297
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v2

    .line 298
    new-array v3, v2, [J

    .line 299
    new-array v6, v2, [J

    const/4 v7, 0x0

    :goto_53
    if-ge v7, v2, :cond_8b

    const/4 v8, 0x1

    if-ne v1, v8, :cond_88

    .line 300
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v9

    goto :goto_54

    :cond_88
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v9

    :goto_54
    aput-wide v9, v3, v7

    if-ne v1, v8, :cond_89

    .line 301
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v9

    goto :goto_55

    :cond_89
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v9

    int-to-long v9, v9

    :goto_55
    aput-wide v9, v6, v7

    .line 302
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->p()S

    move-result v9

    if-ne v9, v8, :cond_8a

    const/4 v8, 0x2

    .line 303
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/ka3;->F(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 304
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_8b
    invoke-static {v3, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_56
    if-eqz v0, :cond_8d

    .line 306
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [J

    .line 307
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    goto :goto_57

    :cond_8c
    move-object/from16 v4, v32

    :cond_8d
    move-object/from16 v23, v5

    move-object/from16 v24, v23

    :goto_57
    if-nez v19, :cond_8e

    goto :goto_58

    .line 308
    :cond_8e
    new-instance v5, Lcom/shabakaty/downloader/wo4;

    move-object/from16 v0, v31

    .line 309
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 310
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v10, v5

    move/from16 v12, v16

    move-wide/from16 v15, v29

    move-wide/from16 v17, v27

    invoke-direct/range {v10 .. v24}, Lcom/shabakaty/downloader/wo4;-><init>(IIJJJLcom/shabakaty/downloader/wh1;I[Lcom/shabakaty/downloader/xo4;I[J[J)V

    :goto_58
    move-object/from16 v0, p7

    .line 311
    :goto_59
    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/dn1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/wo4;

    if-nez v1, :cond_8f

    move-object/from16 v3, p1

    move-object/from16 v2, v26

    goto :goto_5a

    :cond_8f
    const v2, 0x6d646961

    .line 312
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/zd$a;->b(I)Lcom/shabakaty/downloader/zd$a;

    move-result-object v2

    .line 313
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x6d696e66

    .line 314
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zd$a;->b(I)Lcom/shabakaty/downloader/zd$a;

    move-result-object v2

    .line 315
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374626c

    .line 316
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zd$a;->b(I)Lcom/shabakaty/downloader/zd$a;

    move-result-object v2

    .line 317
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p1

    .line 318
    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/be;->d(Lcom/shabakaty/downloader/wo4;Lcom/shabakaty/downloader/zd$a;Lcom/shabakaty/downloader/no1;)Lcom/shabakaty/downloader/gp4;

    move-result-object v1

    move-object/from16 v2, v26

    .line 319
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5a
    add-int/lit8 v1, v25, 0x1

    move-object/from16 v0, p0

    move v3, v1

    move-object/from16 v1, p4

    goto/16 :goto_0

    :cond_90
    return-object v2
.end method
