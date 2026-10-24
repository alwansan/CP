.class public final Lcom/shabakaty/downloader/cv3;
.super Ljava/lang/Object;
.source "RtspMediaTrack.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/zu3;

.field public final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zo2;Landroid/net/Uri;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/zo2;->i:Lcom/google/common/collect/r;

    const-string v3, "control"

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v2}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 6
    iget v6, v1, Lcom/shabakaty/downloader/zo2;->e:I

    if-lez v6, :cond_1

    .line 7
    iput v6, v2, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 8
    :cond_1
    iget-object v6, v1, Lcom/shabakaty/downloader/zo2;->j:Lcom/shabakaty/downloader/zo2$c;

    iget v7, v6, Lcom/shabakaty/downloader/zo2$c;->a:I

    .line 9
    iget-object v6, v6, Lcom/shabakaty/downloader/zo2$c;->b:Ljava/lang/String;

    .line 10
    invoke-static {v6}, Lcom/shabakaty/downloader/j96;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x7290cac7

    const/4 v11, 0x2

    const/4 v12, -0x1

    if-eq v9, v10, :cond_6

    const v10, 0xfc51

    if-eq v9, v10, :cond_4

    const v10, 0x217d28

    if-eq v9, v10, :cond_2

    goto :goto_1

    :cond_2
    const-string v9, "H264"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x2

    goto :goto_2

    :cond_4
    const-string v9, "AC3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const-string v9, "MPEG4-GENERIC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :goto_1
    const/4 v8, -0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    const-string v9, "video/avc"

    const-string v10, "audio/mp4a-latm"

    const-string v13, "audio/ac3"

    if-eqz v8, :cond_a

    if-eq v8, v5, :cond_9

    if-ne v8, v11, :cond_8

    move-object v6, v9

    goto :goto_3

    .line 11
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object v6, v13

    goto :goto_3

    :cond_a
    move-object v6, v10

    .line 12
    :goto_3
    iput-object v6, v2, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 13
    iget-object v8, v1, Lcom/shabakaty/downloader/zo2;->j:Lcom/shabakaty/downloader/zo2$c;

    iget v8, v8, Lcom/shabakaty/downloader/zo2$c;->c:I

    .line 14
    iget-object v14, v1, Lcom/shabakaty/downloader/zo2;->a:Ljava/lang/String;

    const-string v15, "audio"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 15
    iget-object v14, v1, Lcom/shabakaty/downloader/zo2;->j:Lcom/shabakaty/downloader/zo2$c;

    iget v14, v14, Lcom/shabakaty/downloader/zo2$c;->d:I

    if-eq v14, v12, :cond_b

    goto :goto_4

    .line 16
    :cond_b
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v14, 0x6

    goto :goto_4

    :cond_c
    const/4 v14, 0x1

    .line 17
    :goto_4
    iput v8, v2, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 18
    iput v14, v2, Lcom/shabakaty/downloader/wh1$b;->x:I

    goto :goto_5

    :cond_d
    const/4 v14, -0x1

    .line 19
    :goto_5
    iget-object v15, v1, Lcom/shabakaty/downloader/zo2;->i:Lcom/google/common/collect/r;

    const-string v12, "fmtp"

    invoke-virtual {v15, v12}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_e

    .line 20
    sget-object v12, Lcom/google/common/collect/c0;->x:Lcom/google/common/collect/r;

    move-object/from16 v19, v3

    goto/16 :goto_8

    .line 21
    :cond_e
    sget v15, Lcom/shabakaty/downloader/sy4;->a:I

    const-string v15, " "

    .line 22
    invoke-virtual {v12, v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 23
    array-length v4, v15

    if-ne v4, v11, :cond_f

    const/4 v4, 0x1

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4, v12}, Lcom/shabakaty/downloader/md;->c(ZLjava/lang/Object;)V

    .line 24
    aget-object v4, v15, v5

    const-string v12, ";\\s?"

    const/4 v15, 0x0

    invoke-virtual {v4, v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    .line 25
    array-length v11, v4

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_7
    if-ge v5, v11, :cond_11

    aget-object v15, v4, v5

    move-object/from16 v17, v4

    const-string v4, "="

    .line 26
    invoke-static {v15, v4}, Lcom/shabakaty/downloader/sy4;->Q(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move/from16 v18, v11

    const/4 v15, 0x0

    .line 27
    aget-object v11, v4, v15

    const/4 v15, 0x1

    aget-object v4, v4, v15

    move/from16 v15, v16

    add-int/lit8 v16, v15, 0x1

    move-object/from16 v19, v3

    mul-int/lit8 v3, v16, 0x2

    .line 28
    array-length v1, v12

    if-le v3, v1, :cond_10

    .line 29
    array-length v1, v12

    .line 30
    invoke-static {v1, v3}, Lcom/google/common/collect/n$b;->a(II)I

    move-result v1

    .line 31
    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    .line 32
    :cond_10
    invoke-static {v11, v4}, Lcom/google/common/collect/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    mul-int/lit8 v1, v15, 0x2

    .line 33
    aput-object v11, v12, v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 34
    aput-object v4, v12, v1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v17

    move/from16 v11, v18

    move-object/from16 v3, v19

    const/4 v15, 0x0

    goto :goto_7

    :cond_11
    move-object/from16 v19, v3

    move/from16 v15, v16

    .line 35
    invoke-static {v15, v12}, Lcom/google/common/collect/c0;->i(I[Ljava/lang/Object;)Lcom/google/common/collect/c0;

    move-result-object v12

    .line 36
    :goto_8
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x3313c2e

    if-eq v1, v3, :cond_14

    const v3, 0xb269698

    if-eq v1, v3, :cond_13

    const v3, 0x4f62373a

    if-eq v1, v3, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v15, 0x1

    goto :goto_a

    :cond_13
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v15, 0x2

    goto :goto_a

    :cond_14
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v15, 0x0

    goto :goto_a

    :cond_15
    :goto_9
    const/4 v15, -0x1

    :goto_a
    const-string v1, "profile-level-id"

    if-eqz v15, :cond_1b

    const/4 v3, 0x1

    if-eq v15, v3, :cond_16

    const/4 v15, 0x0

    goto/16 :goto_e

    .line 37
    :cond_16
    invoke-virtual {v12}, Lcom/google/common/collect/r;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-static {v4}, Lcom/shabakaty/downloader/md;->b(Z)V

    const-string v3, "sprop-parameter-sets"

    .line 38
    invoke-virtual {v12, v3}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_17

    const/4 v15, 0x1

    goto :goto_b

    :cond_17
    const/4 v15, 0x0

    .line 39
    :goto_b
    invoke-static {v15}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 40
    invoke-virtual {v12, v3}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 41
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    const-string v4, ","

    const/4 v5, -0x1

    .line 43
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 44
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    const/4 v15, 0x1

    goto :goto_c

    :cond_18
    const/4 v15, 0x0

    :goto_c
    invoke-static {v15}, Lcom/shabakaty/downloader/md;->b(Z)V

    const/4 v15, 0x0

    .line 45
    aget-object v4, v3, v15

    .line 46
    invoke-static {v4}, Lcom/shabakaty/downloader/cv3;->a(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    .line 47
    invoke-static {v3}, Lcom/shabakaty/downloader/cv3;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 48
    invoke-static {v4, v3}, Lcom/google/common/collect/p;->F(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v3

    .line 49
    iput-object v3, v2, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 50
    check-cast v3, Lcom/shabakaty/downloader/oq3;

    invoke-virtual {v3, v15}, Lcom/shabakaty/downloader/oq3;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 51
    sget-object v4, Lcom/shabakaty/downloader/gw2;->a:[B

    array-length v4, v4

    array-length v5, v3

    .line 52
    invoke-static {v3, v4, v5}, Lcom/shabakaty/downloader/gw2;->d([BII)Lcom/shabakaty/downloader/gw2$b;

    move-result-object v3

    .line 53
    iget v4, v3, Lcom/shabakaty/downloader/gw2$b;->g:F

    .line 54
    iput v4, v2, Lcom/shabakaty/downloader/wh1$b;->t:F

    .line 55
    iget v4, v3, Lcom/shabakaty/downloader/gw2$b;->f:I

    .line 56
    iput v4, v2, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 57
    iget v4, v3, Lcom/shabakaty/downloader/gw2$b;->e:I

    .line 58
    iput v4, v2, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 59
    invoke-virtual {v12, v1}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1a

    const-string v3, "avc1."

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_19
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 61
    :goto_d
    iput-object v1, v2, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    goto :goto_e

    .line 62
    :cond_1a
    iget v1, v3, Lcom/shabakaty/downloader/gw2$b;->a:I

    iget v4, v3, Lcom/shabakaty/downloader/gw2$b;->b:I

    iget v3, v3, Lcom/shabakaty/downloader/gw2$b;->c:I

    .line 63
    invoke-static {v1, v4, v3}, Lcom/shabakaty/downloader/s40;->a(III)Ljava/lang/String;

    move-result-object v1

    .line 64
    iput-object v1, v2, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    :goto_e
    const/4 v4, 0x1

    goto :goto_12

    :cond_1b
    const/4 v3, -0x1

    const/4 v15, 0x0

    if-eq v14, v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_f

    :cond_1c
    const/4 v3, 0x0

    .line 65
    :goto_f
    invoke-static {v3}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 66
    invoke-virtual {v12}, Lcom/google/common/collect/r;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 67
    invoke-virtual {v12, v1}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_10

    :cond_1d
    const/4 v3, 0x0

    .line 68
    :goto_10
    invoke-static {v3}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 69
    invoke-virtual {v12, v1}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mp4a.40."

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_1e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 72
    :goto_11
    iput-object v1, v2, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 73
    invoke-static {v8, v14}, Lcom/shabakaty/downloader/c;->a(II)[B

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v1

    .line 75
    iput-object v1, v2, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    :goto_12
    if-lez v8, :cond_1f

    const/4 v1, 0x1

    goto :goto_13

    :cond_1f
    const/4 v1, 0x0

    .line 76
    :goto_13
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->b(Z)V

    const/16 v1, 0x60

    if-lt v7, v1, :cond_20

    goto :goto_14

    :cond_20
    const/4 v4, 0x0

    .line 77
    :goto_14
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 78
    new-instance v1, Lcom/shabakaty/downloader/zu3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v2

    invoke-direct {v1, v2, v7, v8, v12}, Lcom/shabakaty/downloader/zu3;-><init>(Lcom/shabakaty/downloader/wh1;IILjava/util/Map;)V

    .line 79
    iput-object v1, v0, Lcom/shabakaty/downloader/cv3;->a:Lcom/shabakaty/downloader/zu3;

    move-object/from16 v1, p1

    .line 80
    iget-object v1, v1, Lcom/shabakaty/downloader/zo2;->i:Lcom/google/common/collect/r;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/net/Uri;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_21

    move-object v1, v2

    goto :goto_15

    :cond_21
    const-string v2, "*"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v1, p2

    goto :goto_15

    .line 84
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 85
    :goto_15
    iput-object v1, v0, Lcom/shabakaty/downloader/cv3;->b:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    array-length v1, p0

    sget-object v2, Lcom/shabakaty/downloader/gw2;->a:[B

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 3
    array-length v3, v2

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v2, v2

    array-length v3, p0

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/cv3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/cv3;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/cv3;->a:Lcom/shabakaty/downloader/zu3;

    iget-object v3, p1, Lcom/shabakaty/downloader/cv3;->a:Lcom/shabakaty/downloader/zu3;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zu3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/cv3;->b:Landroid/net/Uri;

    iget-object p1, p1, Lcom/shabakaty/downloader/cv3;->b:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cv3;->a:Lcom/shabakaty/downloader/zu3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zu3;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/cv3;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
