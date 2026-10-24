.class public final Lcom/shabakaty/downloader/sr1;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Lcom/shabakaty/downloader/l21;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sr1$a;
    }
.end annotation


# static fields
.field public static final q:[D


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/shabakaty/downloader/fp4;

.field public final c:Lcom/shabakaty/downloader/rx4;

.field public final d:Lcom/shabakaty/downloader/ka3;

.field public final e:Lcom/shabakaty/downloader/fw2;

.field public final f:[Z

.field public final g:Lcom/shabakaty/downloader/sr1$a;

.field public h:J

.field public i:Z

.field public j:Z

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/sr1;->q:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/rx4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sr1;->c:Lcom/shabakaty/downloader/rx4;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/sr1;->f:[Z

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/sr1$a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/sr1$a;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/sr1;->g:Lcom/shabakaty/downloader/sr1$a;

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/fw2;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/fw2;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/sr1;->e:Lcom/shabakaty/downloader/fw2;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sr1;->d:Lcom/shabakaty/downloader/ka3;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/sr1;->e:Lcom/shabakaty/downloader/fw2;

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/sr1;->d:Lcom/shabakaty/downloader/ka3;

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lcom/shabakaty/downloader/sr1;->l:J

    .line 10
    iput-wide v0, p0, Lcom/shabakaty/downloader/sr1;->n:J

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/sr1;->b:Lcom/shabakaty/downloader/fp4;

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v2, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 3
    iget v3, v1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 4
    iget-object v4, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 5
    iget-wide v5, v0, Lcom/shabakaty/downloader/sr1;->h:J

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/shabakaty/downloader/sr1;->h:J

    .line 6
    iget-object v5, v0, Lcom/shabakaty/downloader/sr1;->b:Lcom/shabakaty/downloader/fp4;

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 7
    :goto_0
    iget-object v5, v0, Lcom/shabakaty/downloader/sr1;->f:[Z

    invoke-static {v4, v2, v3, v5}, Lcom/shabakaty/downloader/gw2;->b([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 8
    iget-boolean v1, v0, Lcom/shabakaty/downloader/sr1;->j:Z

    if-nez v1, :cond_0

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/sr1;->g:Lcom/shabakaty/downloader/sr1$a;

    invoke-virtual {v1, v4, v2, v3}, Lcom/shabakaty/downloader/sr1$a;->a([BII)V

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/sr1;->e:Lcom/shabakaty/downloader/fw2;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1, v4, v2, v3}, Lcom/shabakaty/downloader/fw2;->a([BII)V

    :cond_1
    return-void

    .line 12
    :cond_2
    iget-object v6, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int/lit8 v7, v5, 0x3

    .line 13
    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v5, v2

    .line 14
    iget-boolean v9, v0, Lcom/shabakaty/downloader/sr1;->j:Z

    const/16 v10, 0xb3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v9, :cond_d

    if-lez v8, :cond_3

    .line 15
    iget-object v9, v0, Lcom/shabakaty/downloader/sr1;->g:Lcom/shabakaty/downloader/sr1$a;

    invoke-virtual {v9, v4, v2, v5}, Lcom/shabakaty/downloader/sr1$a;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 16
    :goto_1
    iget-object v13, v0, Lcom/shabakaty/downloader/sr1;->g:Lcom/shabakaty/downloader/sr1$a;

    .line 17
    iget-boolean v14, v13, Lcom/shabakaty/downloader/sr1$a;->a:Z

    if-eqz v14, :cond_6

    .line 18
    iget v14, v13, Lcom/shabakaty/downloader/sr1$a;->b:I

    sub-int/2addr v14, v9

    iput v14, v13, Lcom/shabakaty/downloader/sr1$a;->b:I

    .line 19
    iget v9, v13, Lcom/shabakaty/downloader/sr1$a;->c:I

    if-nez v9, :cond_5

    const/16 v9, 0xb5

    if-ne v6, v9, :cond_5

    .line 20
    iput v14, v13, Lcom/shabakaty/downloader/sr1$a;->c:I

    goto :goto_2

    .line 21
    :cond_5
    iput-boolean v11, v13, Lcom/shabakaty/downloader/sr1$a;->a:Z

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    if-ne v6, v10, :cond_7

    .line 22
    iput-boolean v12, v13, Lcom/shabakaty/downloader/sr1$a;->a:Z

    .line 23
    :cond_7
    :goto_2
    sget-object v9, Lcom/shabakaty/downloader/sr1$a;->e:[B

    array-length v14, v9

    invoke-virtual {v13, v9, v11, v14}, Lcom/shabakaty/downloader/sr1$a;->a([BII)V

    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_d

    .line 24
    iget-object v9, v0, Lcom/shabakaty/downloader/sr1;->g:Lcom/shabakaty/downloader/sr1$a;

    iget-object v13, v0, Lcom/shabakaty/downloader/sr1;->a:Ljava/lang/String;

    .line 25
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v14, v9, Lcom/shabakaty/downloader/sr1$a;->d:[B

    iget v15, v9, Lcom/shabakaty/downloader/sr1$a;->b:I

    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    const/4 v15, 0x4

    .line 27
    aget-byte v11, v14, v15

    and-int/lit16 v11, v11, 0xff

    const/16 v16, 0x5

    .line 28
    aget-byte v10, v14, v16

    and-int/lit16 v10, v10, 0xff

    const/16 v17, 0x6

    .line 29
    aget-byte v12, v14, v17

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v11, v15

    shr-int/lit8 v17, v10, 0x4

    or-int v11, v11, v17

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v12

    const/4 v12, 0x7

    .line 30
    aget-byte v15, v14, v12

    and-int/lit16 v15, v15, 0xf0

    const/4 v12, 0x4

    shr-int/2addr v15, v12

    const/4 v12, 0x2

    if-eq v15, v12, :cond_a

    const/4 v12, 0x3

    if-eq v15, v12, :cond_9

    const/4 v12, 0x4

    if-eq v15, v12, :cond_8

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    mul-int/lit8 v12, v10, 0x79

    int-to-float v12, v12

    mul-int/lit8 v15, v11, 0x64

    goto :goto_4

    :cond_9
    mul-int/lit8 v12, v10, 0x10

    int-to-float v12, v12

    mul-int/lit8 v15, v11, 0x9

    goto :goto_4

    :cond_a
    mul-int/lit8 v12, v10, 0x4

    int-to-float v12, v12

    mul-int/lit8 v15, v11, 0x3

    :goto_4
    int-to-float v15, v15

    div-float/2addr v12, v15

    .line 31
    :goto_5
    new-instance v15, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v15}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 32
    iput-object v13, v15, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string v13, "video/mpeg2"

    .line 33
    iput-object v13, v15, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 34
    iput v11, v15, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 35
    iput v10, v15, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 36
    iput v12, v15, Lcom/shabakaty/downloader/wh1$b;->t:F

    .line 37
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 38
    iput-object v10, v15, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 39
    invoke-virtual {v15}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v10

    const/4 v13, 0x7

    .line 40
    aget-byte v13, v14, v13

    and-int/lit8 v13, v13, 0xf

    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_c

    .line 41
    sget-object v15, Lcom/shabakaty/downloader/sr1;->q:[D

    array-length v11, v15

    if-ge v13, v11, :cond_c

    .line 42
    aget-wide v11, v15, v13

    .line 43
    iget v9, v9, Lcom/shabakaty/downloader/sr1$a;->c:I

    add-int/lit8 v9, v9, 0x9

    .line 44
    aget-byte v13, v14, v9

    and-int/lit8 v13, v13, 0x60

    shr-int/lit8 v13, v13, 0x5

    .line 45
    aget-byte v9, v14, v9

    and-int/lit8 v9, v9, 0x1f

    if-eq v13, v9, :cond_b

    int-to-double v13, v13

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v18

    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v6

    move v15, v7

    int-to-double v6, v9

    div-double/2addr v13, v6

    mul-double v11, v11, v13

    goto :goto_6

    :cond_b
    move/from16 v16, v6

    move v15, v7

    :goto_6
    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v11

    double-to-long v11, v6

    goto :goto_7

    :cond_c
    move/from16 v16, v6

    move v15, v7

    const-wide/16 v11, 0x0

    .line 46
    :goto_7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 47
    iget-object v7, v0, Lcom/shabakaty/downloader/sr1;->b:Lcom/shabakaty/downloader/fp4;

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/shabakaty/downloader/wh1;

    invoke-interface {v7, v9}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 48
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/shabakaty/downloader/sr1;->k:J

    const/4 v6, 0x1

    .line 49
    iput-boolean v6, v0, Lcom/shabakaty/downloader/sr1;->j:Z

    goto :goto_8

    :cond_d
    move/from16 v16, v6

    move v15, v7

    .line 50
    :goto_8
    iget-object v6, v0, Lcom/shabakaty/downloader/sr1;->e:Lcom/shabakaty/downloader/fw2;

    if-eqz v6, :cond_10

    if-lez v8, :cond_e

    .line 51
    invoke-virtual {v6, v4, v2, v5}, Lcom/shabakaty/downloader/fw2;->a([BII)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_e
    neg-int v2, v8

    .line 52
    :goto_9
    iget-object v6, v0, Lcom/shabakaty/downloader/sr1;->e:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/fw2;->b(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 53
    iget-object v2, v0, Lcom/shabakaty/downloader/sr1;->e:Lcom/shabakaty/downloader/fw2;

    iget-object v6, v2, Lcom/shabakaty/downloader/fw2;->d:[B

    iget v2, v2, Lcom/shabakaty/downloader/fw2;->e:I

    invoke-static {v6, v2}, Lcom/shabakaty/downloader/gw2;->e([BI)I

    move-result v2

    .line 54
    iget-object v6, v0, Lcom/shabakaty/downloader/sr1;->d:Lcom/shabakaty/downloader/ka3;

    sget v7, Lcom/shabakaty/downloader/sy4;->a:I

    iget-object v7, v0, Lcom/shabakaty/downloader/sr1;->e:Lcom/shabakaty/downloader/fw2;

    iget-object v7, v7, Lcom/shabakaty/downloader/fw2;->d:[B

    invoke-virtual {v6, v7, v2}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 55
    iget-object v2, v0, Lcom/shabakaty/downloader/sr1;->c:Lcom/shabakaty/downloader/rx4;

    iget-wide v6, v0, Lcom/shabakaty/downloader/sr1;->n:J

    iget-object v8, v0, Lcom/shabakaty/downloader/sr1;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v6, v7, v8}, Lcom/shabakaty/downloader/rx4;->a(JLcom/shabakaty/downloader/ka3;)V

    :cond_f
    const/16 v2, 0xb2

    move/from16 v6, v16

    if-ne v6, v2, :cond_11

    .line 56
    iget-object v2, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int/lit8 v7, v5, 0x2

    .line 57
    aget-byte v2, v2, v7

    const/4 v7, 0x1

    if-ne v2, v7, :cond_11

    .line 58
    iget-object v2, v0, Lcom/shabakaty/downloader/sr1;->e:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/fw2;->d(I)V

    goto :goto_a

    :cond_10
    move/from16 v6, v16

    :cond_11
    :goto_a
    if-eqz v6, :cond_14

    const/16 v2, 0xb3

    if-ne v6, v2, :cond_12

    goto :goto_b

    :cond_12
    const/16 v2, 0xb8

    if-ne v6, v2, :cond_13

    const/4 v2, 0x1

    .line 59
    iput-boolean v2, v0, Lcom/shabakaty/downloader/sr1;->o:Z

    :cond_13
    move v5, v3

    move-object v14, v4

    goto/16 :goto_11

    :cond_14
    :goto_b
    sub-int v2, v3, v5

    .line 60
    iget-boolean v5, v0, Lcom/shabakaty/downloader/sr1;->p:Z

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_15

    iget-boolean v5, v0, Lcom/shabakaty/downloader/sr1;->j:Z

    if-eqz v5, :cond_15

    iget-wide v8, v0, Lcom/shabakaty/downloader/sr1;->n:J

    cmp-long v5, v8, v13

    if-eqz v5, :cond_15

    .line 61
    iget-boolean v10, v0, Lcom/shabakaty/downloader/sr1;->o:Z

    .line 62
    iget-wide v11, v0, Lcom/shabakaty/downloader/sr1;->h:J

    iget-wide v13, v0, Lcom/shabakaty/downloader/sr1;->m:J

    sub-long/2addr v11, v13

    long-to-int v5, v11

    sub-int v11, v5, v2

    .line 63
    iget-object v7, v0, Lcom/shabakaty/downloader/sr1;->b:Lcom/shabakaty/downloader/fp4;

    const/4 v13, 0x0

    move v12, v2

    move v5, v3

    move-object v14, v4

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface/range {v7 .. v13}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    goto :goto_c

    :cond_15
    move v5, v3

    move-wide/from16 v20, v13

    move-object v14, v4

    move-wide/from16 v3, v20

    .line 64
    :goto_c
    iget-boolean v7, v0, Lcom/shabakaty/downloader/sr1;->i:Z

    if-eqz v7, :cond_17

    iget-boolean v7, v0, Lcom/shabakaty/downloader/sr1;->p:Z

    if-eqz v7, :cond_16

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_f

    .line 65
    :cond_17
    :goto_d
    iget-wide v7, v0, Lcom/shabakaty/downloader/sr1;->h:J

    int-to-long v9, v2

    sub-long/2addr v7, v9

    iput-wide v7, v0, Lcom/shabakaty/downloader/sr1;->m:J

    .line 66
    iget-wide v7, v0, Lcom/shabakaty/downloader/sr1;->l:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_18

    goto :goto_e

    .line 67
    :cond_18
    iget-wide v7, v0, Lcom/shabakaty/downloader/sr1;->n:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_19

    .line 68
    iget-wide v9, v0, Lcom/shabakaty/downloader/sr1;->k:J

    add-long/2addr v7, v9

    goto :goto_e

    :cond_19
    move-wide v7, v3

    .line 69
    :goto_e
    iput-wide v7, v0, Lcom/shabakaty/downloader/sr1;->n:J

    const/4 v2, 0x0

    .line 70
    iput-boolean v2, v0, Lcom/shabakaty/downloader/sr1;->o:Z

    .line 71
    iput-wide v3, v0, Lcom/shabakaty/downloader/sr1;->l:J

    const/4 v3, 0x1

    .line 72
    iput-boolean v3, v0, Lcom/shabakaty/downloader/sr1;->i:Z

    :goto_f
    if-nez v6, :cond_1a

    const/4 v11, 0x1

    goto :goto_10

    :cond_1a
    const/4 v11, 0x0

    .line 73
    :goto_10
    iput-boolean v11, v0, Lcom/shabakaty/downloader/sr1;->p:Z

    :goto_11
    move v3, v5

    move-object v4, v14

    move v2, v15

    goto/16 :goto_0
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr1;->f:[Z

    invoke-static {v0}, Lcom/shabakaty/downloader/gw2;->a([Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sr1;->g:Lcom/shabakaty/downloader/sr1$a;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/sr1$a;->a:Z

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/sr1$a;->b:I

    .line 5
    iput v1, v0, Lcom/shabakaty/downloader/sr1$a;->c:I

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/sr1;->e:Lcom/shabakaty/downloader/fw2;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fw2;->c()V

    :cond_0
    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/shabakaty/downloader/sr1;->h:J

    .line 9
    iput-boolean v1, p0, Lcom/shabakaty/downloader/sr1;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide v0, p0, Lcom/shabakaty/downloader/sr1;->l:J

    .line 11
    iput-wide v0, p0, Lcom/shabakaty/downloader/sr1;->n:J

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/sr1;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/sr1;->b:Lcom/shabakaty/downloader/fp4;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/sr1;->c:Lcom/shabakaty/downloader/rx4;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/rx4;->b(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/sr1;->l:J

    return-void
.end method
