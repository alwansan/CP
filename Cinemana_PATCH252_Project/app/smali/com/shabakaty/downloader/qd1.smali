.class public final Lcom/shabakaty/downloader/qd1;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# instance fields
.field public final a:[B

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:Z

.field public final d:Lcom/shabakaty/downloader/rd1$a;

.field public e:Lcom/shabakaty/downloader/p91;

.field public f:Lcom/shabakaty/downloader/fp4;

.field public g:I

.field public h:Lcom/shabakaty/downloader/ps2;

.field public i:Lcom/shabakaty/downloader/vd1;

.field public j:I

.field public k:I

.field public l:Lcom/shabakaty/downloader/pd1;

.field public m:I

.field public n:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hw3;->t:Lcom/shabakaty/downloader/hw3;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/qd1;->a:[B

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ka3;-><init>([BI)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qd1;->c:Z

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/rd1$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rd1$a;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qd1;->d:Lcom/shabakaty/downloader/rd1$a;

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/qd1;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/qd1;->g:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/qd1;->l:Lcom/shabakaty/downloader/pd1;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/shabakaty/downloader/dm;->e(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 4
    :goto_1
    iput-wide v1, p0, Lcom/shabakaty/downloader/qd1;->n:J

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/qd1;->m:I

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ka3;->A(I)V

    return-void
.end method

.method public final c()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/qd1;->n:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    .line 2
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    iget v2, v2, Lcom/shabakaty/downloader/vd1;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/qd1;->f:Lcom/shabakaty/downloader/fp4;

    const/4 v7, 0x1

    iget v8, p0, Lcom/shabakaty/downloader/qd1;->m:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    invoke-interface/range {v4 .. v10}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/qd1;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    const/4 v5, 0x2

    if-eq v2, v3, :cond_21

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/16 v8, 0x18

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eq v2, v5, :cond_1f

    const/4 v12, 0x7

    const/4 v13, 0x6

    if-eq v2, v10, :cond_18

    const-wide/16 v14, 0x0

    const-wide/16 v16, -0x1

    const/4 v8, 0x5

    if-eq v2, v9, :cond_14

    if-ne v2, v8, :cond_13

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->f:Lcom/shabakaty/downloader/fp4;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->l:Lcom/shabakaty/downloader/pd1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/shabakaty/downloader/dm;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->l:Lcom/shabakaty/downloader/pd1;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/dm;->a(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I

    move-result v4

    goto/16 :goto_b

    .line 8
    :cond_0
    iget-wide v8, v0, Lcom/shabakaty/downloader/qd1;->n:J

    cmp-long v2, v8, v16

    if-nez v2, :cond_5

    .line 9
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 11
    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/o91;->l(I)V

    new-array v6, v3, [B

    .line 12
    invoke-interface {v1, v6, v4, v3}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 13
    aget-byte v6, v6, v4

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 14
    :goto_0
    invoke-interface {v1, v5}, Lcom/shabakaty/downloader/o91;->l(I)V

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x6

    .line 15
    :goto_1
    new-instance v5, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v5, v12}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 16
    iget-object v7, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 17
    invoke-static {v1, v7, v4, v12}, Lcom/shabakaty/downloader/q91;->c(Lcom/shabakaty/downloader/o91;[BII)I

    move-result v7

    .line 18
    invoke-virtual {v5, v7}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 20
    :try_start_0
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->z()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    iget v1, v2, Lcom/shabakaty/downloader/vd1;->b:I

    int-to-long v1, v1

    mul-long v7, v7, v1

    :goto_2
    move-wide v14, v7

    goto :goto_3

    :catch_0
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    .line 22
    iput-wide v14, v0, Lcom/shabakaty/downloader/qd1;->n:J

    goto/16 :goto_b

    .line 23
    :cond_4
    invoke-static {v11, v11}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 24
    :cond_5
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    .line 25
    iget v5, v2, Lcom/shabakaty/downloader/ka3;->c:I

    const v6, 0x8000

    if-ge v5, v6, :cond_8

    .line 26
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    sub-int/2addr v6, v5

    .line 27
    invoke-interface {v1, v2, v5, v6}, Lcom/shabakaty/downloader/o91;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_7

    .line 28
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/ka3;->D(I)V

    goto :goto_5

    .line 29
    :cond_7
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v1

    if-nez v1, :cond_9

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qd1;->c()V

    const/4 v4, -0x1

    goto/16 :goto_b

    :cond_8
    const/4 v3, 0x0

    .line 31
    :cond_9
    :goto_5
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    .line 32
    iget v2, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 33
    iget v5, v0, Lcom/shabakaty/downloader/qd1;->m:I

    iget v6, v0, Lcom/shabakaty/downloader/qd1;->j:I

    if-ge v5, v6, :cond_a

    sub-int/2addr v6, v5

    .line 34
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 35
    :cond_a
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    .line 36
    iget-object v5, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    .line 37
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget v5, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 39
    :goto_6
    iget v6, v1, Lcom/shabakaty/downloader/ka3;->c:I

    add-int/lit8 v6, v6, -0x10

    if-gt v5, v6, :cond_c

    .line 40
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 41
    iget-object v6, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    iget v8, v0, Lcom/shabakaty/downloader/qd1;->k:I

    iget-object v9, v0, Lcom/shabakaty/downloader/qd1;->d:Lcom/shabakaty/downloader/rd1$a;

    invoke-static {v1, v6, v8, v9}, Lcom/shabakaty/downloader/rd1;->b(Lcom/shabakaty/downloader/ka3;Lcom/shabakaty/downloader/vd1;ILcom/shabakaty/downloader/rd1$a;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 42
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 43
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->d:Lcom/shabakaty/downloader/rd1$a;

    iget-wide v5, v1, Lcom/shabakaty/downloader/rd1$a;->a:J

    goto :goto_a

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_10

    .line 44
    :goto_7
    iget v3, v1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 45
    iget v6, v0, Lcom/shabakaty/downloader/qd1;->j:I

    sub-int v6, v3, v6

    if-gt v5, v6, :cond_f

    .line 46
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 47
    :try_start_1
    iget-object v3, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    iget v6, v0, Lcom/shabakaty/downloader/qd1;->k:I

    iget-object v8, v0, Lcom/shabakaty/downloader/qd1;->d:Lcom/shabakaty/downloader/rd1$a;

    .line 48
    invoke-static {v1, v3, v6, v8}, Lcom/shabakaty/downloader/rd1;->b(Lcom/shabakaty/downloader/ka3;Lcom/shabakaty/downloader/vd1;ILcom/shabakaty/downloader/rd1$a;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    const/4 v3, 0x0

    .line 49
    :goto_8
    iget v6, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 50
    iget v8, v1, Lcom/shabakaty/downloader/ka3;->c:I

    if-le v6, v8, :cond_d

    const/4 v3, 0x0

    :cond_d
    if-eqz v3, :cond_e

    .line 51
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 52
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->d:Lcom/shabakaty/downloader/rd1$a;

    iget-wide v5, v1, Lcom/shabakaty/downloader/rd1$a;->a:J

    goto :goto_a

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 53
    :cond_f
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_9

    .line 54
    :cond_10
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    :goto_9
    move-wide/from16 v5, v16

    .line 55
    :goto_a
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    .line 56
    iget v3, v1, Lcom/shabakaty/downloader/ka3;->b:I

    sub-int/2addr v3, v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 58
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->f:Lcom/shabakaty/downloader/fp4;

    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v1, v2, v3}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 59
    iget v1, v0, Lcom/shabakaty/downloader/qd1;->m:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/shabakaty/downloader/qd1;->m:I

    cmp-long v1, v5, v16

    if-eqz v1, :cond_11

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/qd1;->c()V

    .line 61
    iput v4, v0, Lcom/shabakaty/downloader/qd1;->m:I

    .line 62
    iput-wide v5, v0, Lcom/shabakaty/downloader/qd1;->n:J

    .line 63
    :cond_11
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v1

    if-ge v1, v7, :cond_12

    .line 64
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v1

    .line 65
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    .line 66
    iget-object v3, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 67
    iget v2, v2, Lcom/shabakaty/downloader/ka3;->b:I

    .line 68
    invoke-static {v3, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 70
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/ka3;->D(I)V

    :cond_12
    :goto_b
    return v4

    .line 71
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 72
    :cond_14
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    new-array v2, v5, [B

    .line 73
    invoke-interface {v1, v2, v4, v5}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 74
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v5

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_17

    .line 75
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 76
    iput v2, v0, Lcom/shabakaty/downloader/qd1;->k:I

    .line 77
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->e:Lcom/shabakaty/downloader/p91;

    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    .line 78
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v5

    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v23

    .line 80
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    .line 81
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    iget-object v3, v1, Lcom/shabakaty/downloader/vd1;->k:Lcom/shabakaty/downloader/vd1$a;

    if-eqz v3, :cond_15

    .line 83
    new-instance v3, Lcom/shabakaty/downloader/ud1;

    invoke-direct {v3, v1, v5, v6}, Lcom/shabakaty/downloader/ud1;-><init>(Lcom/shabakaty/downloader/vd1;J)V

    goto :goto_c

    :cond_15
    cmp-long v3, v23, v16

    if-eqz v3, :cond_16

    .line 84
    iget-wide v9, v1, Lcom/shabakaty/downloader/vd1;->j:J

    cmp-long v3, v9, v14

    if-lez v3, :cond_16

    .line 85
    new-instance v3, Lcom/shabakaty/downloader/pd1;

    iget v7, v0, Lcom/shabakaty/downloader/qd1;->k:I

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    move/from16 v20, v7

    move-wide/from16 v21, v5

    invoke-direct/range {v18 .. v24}, Lcom/shabakaty/downloader/pd1;-><init>(Lcom/shabakaty/downloader/vd1;IJJ)V

    iput-object v3, v0, Lcom/shabakaty/downloader/qd1;->l:Lcom/shabakaty/downloader/pd1;

    .line 86
    iget-object v3, v3, Lcom/shabakaty/downloader/dm;->a:Lcom/shabakaty/downloader/dm$a;

    goto :goto_c

    .line 87
    :cond_16
    new-instance v3, Lcom/shabakaty/downloader/vz3$b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vd1;->d()J

    move-result-wide v5

    .line 88
    invoke-direct {v3, v5, v6, v14, v15}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 89
    :goto_c
    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 90
    iput v8, v0, Lcom/shabakaty/downloader/qd1;->g:I

    return v4

    .line 91
    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    const-string v1, "First frame does not start with sync code."

    .line 92
    invoke-static {v1, v11}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 93
    :cond_18
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    const/4 v5, 0x0

    :goto_d
    if-nez v5, :cond_1e

    .line 94
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 95
    new-instance v5, Lcom/shabakaty/downloader/a55;

    new-array v6, v9, [B

    invoke-direct {v5, v6, v3, v11}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    .line 96
    iget-object v6, v5, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v6, [B

    invoke-interface {v1, v6, v4, v9}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 97
    invoke-virtual {v5}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v6

    .line 98
    invoke-virtual {v5, v12}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    .line 99
    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    add-int/2addr v5, v9

    if-nez v7, :cond_19

    const/16 v2, 0x26

    new-array v5, v2, [B

    .line 100
    invoke-interface {v1, v5, v4, v2}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 101
    new-instance v2, Lcom/shabakaty/downloader/vd1;

    invoke-direct {v2, v5, v9}, Lcom/shabakaty/downloader/vd1;-><init>([BI)V

    goto/16 :goto_f

    :cond_19
    if-eqz v2, :cond_1d

    if-ne v7, v10, :cond_1a

    .line 102
    new-instance v7, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v7, v5}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 103
    iget-object v14, v7, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 104
    invoke-interface {v1, v14, v4, v5}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 105
    invoke-static {v7}, Lcom/shabakaty/downloader/sd1;->b(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/vd1$a;

    move-result-object v5

    .line 106
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/vd1;->b(Lcom/shabakaty/downloader/vd1$a;)Lcom/shabakaty/downloader/vd1;

    move-result-object v2

    goto/16 :goto_f

    :cond_1a
    if-ne v7, v9, :cond_1b

    .line 107
    new-instance v7, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v7, v5}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 108
    iget-object v14, v7, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 109
    invoke-interface {v1, v14, v4, v5}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 110
    invoke-virtual {v7, v9}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 111
    invoke-static {v7, v4, v4}, Lcom/shabakaty/downloader/e55;->b(Lcom/shabakaty/downloader/ka3;ZZ)Lcom/shabakaty/downloader/e55$a;

    move-result-object v5

    .line 112
    iget-object v5, v5, Lcom/shabakaty/downloader/e55$a;->a:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/vd1;->a(Ljava/util/List;Ljava/util/List;)Lcom/shabakaty/downloader/ps2;

    move-result-object v5

    .line 114
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/vd1;->f(Lcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/ps2;

    move-result-object v25

    .line 115
    new-instance v5, Lcom/shabakaty/downloader/vd1;

    iget v15, v2, Lcom/shabakaty/downloader/vd1;->a:I

    iget v7, v2, Lcom/shabakaty/downloader/vd1;->b:I

    iget v14, v2, Lcom/shabakaty/downloader/vd1;->c:I

    iget v12, v2, Lcom/shabakaty/downloader/vd1;->d:I

    iget v11, v2, Lcom/shabakaty/downloader/vd1;->e:I

    iget v10, v2, Lcom/shabakaty/downloader/vd1;->g:I

    iget v3, v2, Lcom/shabakaty/downloader/vd1;->h:I

    iget-wide v8, v2, Lcom/shabakaty/downloader/vd1;->j:J

    iget-object v2, v2, Lcom/shabakaty/downloader/vd1;->k:Lcom/shabakaty/downloader/vd1$a;

    move/from16 v17, v14

    move-object v14, v5

    move/from16 v16, v7

    move/from16 v18, v12

    move/from16 v19, v11

    move/from16 v20, v10

    move/from16 v21, v3

    move-wide/from16 v22, v8

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v25}, Lcom/shabakaty/downloader/vd1;-><init>(IIIIIIIJLcom/shabakaty/downloader/vd1$a;Lcom/shabakaty/downloader/ps2;)V

    goto/16 :goto_e

    :cond_1b
    if-ne v7, v13, :cond_1c

    .line 116
    new-instance v3, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v3, v5}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 117
    iget-object v7, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 118
    invoke-interface {v1, v7, v4, v5}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    const/4 v5, 0x4

    .line 119
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 120
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v15

    .line 121
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    .line 122
    sget-object v7, Lcom/shabakaty/downloader/iz;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5, v7}, Lcom/shabakaty/downloader/ka3;->r(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v16

    .line 123
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    .line 124
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ka3;->q(I)Ljava/lang/String;

    move-result-object v17

    .line 125
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v18

    .line 126
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v19

    .line 127
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v20

    .line 128
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v21

    .line 129
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    .line 130
    new-array v7, v5, [B

    .line 131
    iget-object v8, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v9, v3, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v8, v9, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget v8, v3, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v8, v5

    iput v8, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 133
    new-instance v3, Lcom/shabakaty/downloader/ic3;

    move-object v14, v3

    move-object/from16 v22, v7

    invoke-direct/range {v14 .. v22}, Lcom/shabakaty/downloader/ic3;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    .line 134
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/vd1;->a(Ljava/util/List;Ljava/util/List;)Lcom/shabakaty/downloader/ps2;

    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/vd1;->f(Lcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/ps2;

    move-result-object v25

    .line 137
    new-instance v5, Lcom/shabakaty/downloader/vd1;

    iget v15, v2, Lcom/shabakaty/downloader/vd1;->a:I

    iget v3, v2, Lcom/shabakaty/downloader/vd1;->b:I

    iget v7, v2, Lcom/shabakaty/downloader/vd1;->c:I

    iget v8, v2, Lcom/shabakaty/downloader/vd1;->d:I

    iget v9, v2, Lcom/shabakaty/downloader/vd1;->e:I

    iget v10, v2, Lcom/shabakaty/downloader/vd1;->g:I

    iget v11, v2, Lcom/shabakaty/downloader/vd1;->h:I

    iget-wide v12, v2, Lcom/shabakaty/downloader/vd1;->j:J

    iget-object v2, v2, Lcom/shabakaty/downloader/vd1;->k:Lcom/shabakaty/downloader/vd1$a;

    move-object v14, v5

    move/from16 v16, v3

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move-wide/from16 v22, v12

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v25}, Lcom/shabakaty/downloader/vd1;-><init>(IIIIIIIJLcom/shabakaty/downloader/vd1$a;Lcom/shabakaty/downloader/ps2;)V

    :goto_e
    move-object v2, v5

    goto :goto_f

    .line 138
    :cond_1c
    invoke-interface {v1, v5}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 139
    :goto_f
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    iput-object v2, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    move v5, v6

    const/4 v3, 0x1

    const/16 v8, 0x18

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x6

    goto/16 :goto_d

    .line 140
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 141
    :cond_1e
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    .line 142
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    iget v1, v1, Lcom/shabakaty/downloader/vd1;->c:I

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/qd1;->j:I

    .line 144
    iget-object v1, v0, Lcom/shabakaty/downloader/qd1;->f:Lcom/shabakaty/downloader/fp4;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->i:Lcom/shabakaty/downloader/vd1;

    iget-object v3, v0, Lcom/shabakaty/downloader/qd1;->a:[B

    iget-object v5, v0, Lcom/shabakaty/downloader/qd1;->h:Lcom/shabakaty/downloader/ps2;

    .line 145
    invoke-virtual {v2, v3, v5}, Lcom/shabakaty/downloader/vd1;->e([BLcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/wh1;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    const/4 v2, 0x4

    .line 146
    iput v2, v0, Lcom/shabakaty/downloader/qd1;->g:I

    return v4

    :cond_1f
    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 147
    invoke-interface {v1, v3, v4, v2}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 148
    aget-byte v1, v3, v4

    int-to-long v1, v1

    const-wide/16 v8, 0xff

    and-long/2addr v1, v8

    const/16 v10, 0x18

    shl-long/2addr v1, v10

    const/4 v10, 0x1

    aget-byte v10, v3, v10

    int-to-long v10, v10

    and-long/2addr v10, v8

    shl-long/2addr v10, v7

    or-long/2addr v1, v10

    aget-byte v5, v3, v5

    int-to-long v10, v5

    and-long/2addr v10, v8

    shl-long v5, v10, v6

    or-long/2addr v1, v5

    const/4 v5, 0x3

    aget-byte v3, v3, v5

    int-to-long v6, v3

    and-long/2addr v6, v8

    or-long/2addr v1, v6

    const-wide/32 v6, 0x664c6143

    cmp-long v3, v1, v6

    if-nez v3, :cond_20

    .line 149
    iput v5, v0, Lcom/shabakaty/downloader/qd1;->g:I

    return v4

    :cond_20
    const-string v1, "Failed to read FLAC stream marker."

    const/4 v2, 0x0

    .line 150
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 151
    :cond_21
    iget-object v2, v0, Lcom/shabakaty/downloader/qd1;->a:[B

    array-length v3, v2

    invoke-interface {v1, v2, v4, v3}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 152
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 153
    iput v5, v0, Lcom/shabakaty/downloader/qd1;->g:I

    return v4

    .line 154
    :cond_22
    iget-boolean v2, v0, Lcom/shabakaty/downloader/qd1;->c:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 155
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 156
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->j()J

    move-result-wide v5

    .line 157
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/sd1;->a(Lcom/shabakaty/downloader/o91;Z)Lcom/shabakaty/downloader/ps2;

    move-result-object v2

    .line 158
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->j()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-int v5, v7

    .line 159
    invoke-interface {v1, v5}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 160
    iput-object v2, v0, Lcom/shabakaty/downloader/qd1;->h:Lcom/shabakaty/downloader/ps2;

    .line 161
    iput v3, v0, Lcom/shabakaty/downloader/qd1;->g:I

    return v4
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qd1;->e:Lcom/shabakaty/downloader/p91;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qd1;->f:Lcom/shabakaty/downloader/fp4;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/p91;->b()V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/sd1;->a(Lcom/shabakaty/downloader/o91;Z)Lcom/shabakaty/downloader/ps2;

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 2
    invoke-interface {p1, v2, v0, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 3
    aget-byte p1, v2, v0

    int-to-long v3, p1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    const/4 p1, 0x2

    const/4 v1, 0x1

    aget-byte v7, v2, v1

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const/4 v7, 0x3

    aget-byte p1, v2, p1

    int-to-long v8, p1

    and-long/2addr v8, v5

    const/16 p1, 0x8

    shl-long/2addr v8, p1

    or-long/2addr v3, v8

    aget-byte p1, v2, v7

    int-to-long v7, p1

    and-long/2addr v5, v7

    or-long v2, v3, v5

    const-wide/32 v4, 0x664c6143

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
