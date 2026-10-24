.class public Lcom/shabakaty/downloader/t53;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# instance fields
.field public a:Lcom/shabakaty/downloader/p91;

.field public b:Lcom/shabakaty/downloader/vd4;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dx4;->v:Lcom/shabakaty/downloader/dx4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t53;->b:Lcom/shabakaty/downloader/vd4;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/vd4;->a:Lcom/shabakaty/downloader/u53;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/u53;->a:Lcom/shabakaty/downloader/v53;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v53;->b()V

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/u53;->b:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->A(I)V

    const/4 v2, -0x1

    .line 5
    iput v2, v1, Lcom/shabakaty/downloader/u53;->c:I

    .line 6
    iput-boolean v3, v1, Lcom/shabakaty/downloader/u53;->e:Z

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 7
    iget-boolean p1, v0, Lcom/shabakaty/downloader/vd4;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vd4;->e(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, v0, Lcom/shabakaty/downloader/vd4;->h:I

    if-eqz p1, :cond_1

    .line 9
    iget p1, v0, Lcom/shabakaty/downloader/vd4;->i:I

    int-to-long p1, p1

    mul-long p1, p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    .line 10
    iput-wide p1, v0, Lcom/shabakaty/downloader/vd4;->e:J

    .line 11
    iget-object p3, v0, Lcom/shabakaty/downloader/vd4;->d:Lcom/shabakaty/downloader/w53;

    sget p4, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {p3, p1, p2}, Lcom/shabakaty/downloader/w53;->c(J)V

    const/4 p1, 0x2

    .line 12
    iput p1, v0, Lcom/shabakaty/downloader/vd4;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/o91;)Z
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v53;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v53;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/v53;->a(Lcom/shabakaty/downloader/o91;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/shabakaty/downloader/v53;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget v0, v0, Lcom/shabakaty/downloader/v53;->e:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 5
    iget-object v4, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 6
    invoke-interface {p1, v4, v3, v0}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 7
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 8
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/td1;

    invoke-direct {p1}, Lcom/shabakaty/downloader/td1;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/t53;->b:Lcom/shabakaty/downloader/vd4;

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 13
    :try_start_0
    invoke-static {v1, v2, v1}, Lcom/shabakaty/downloader/e55;->c(ILcom/shabakaty/downloader/ka3;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/shabakaty/downloader/pa3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/c55;

    invoke-direct {p1}, Lcom/shabakaty/downloader/c55;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/t53;->b:Lcom/shabakaty/downloader/vd4;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 16
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p1

    sget-object v0, Lcom/shabakaty/downloader/m83;->o:[B

    array-length v4, v0

    if-ge p1, v4, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 17
    :cond_4
    array-length p1, v0

    new-array p1, p1, [B

    .line 18
    array-length v4, v0

    .line 19
    iget-object v5, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v6, v2, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v5, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget v5, v2, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/shabakaty/downloader/ka3;->b:I

    .line 21
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_5

    .line 22
    new-instance p1, Lcom/shabakaty/downloader/m83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/m83;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/t53;->b:Lcom/shabakaty/downloader/vd4;

    :goto_3
    return v1

    :cond_5
    :goto_4
    return v3
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/t53;->a:Lcom/shabakaty/downloader/p91;

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/t53;->b:Lcom/shabakaty/downloader/vd4;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/t53;->c(Lcom/shabakaty/downloader/o91;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to determine bitstream type"

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lcom/shabakaty/downloader/t53;->c:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/t53;->a:Lcom/shabakaty/downloader/p91;

    invoke-interface {v2, v4, v5}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v2

    .line 8
    iget-object v6, v0, Lcom/shabakaty/downloader/t53;->a:Lcom/shabakaty/downloader/p91;

    invoke-interface {v6}, Lcom/shabakaty/downloader/p91;->b()V

    .line 9
    iget-object v6, v0, Lcom/shabakaty/downloader/t53;->b:Lcom/shabakaty/downloader/vd4;

    iget-object v7, v0, Lcom/shabakaty/downloader/t53;->a:Lcom/shabakaty/downloader/p91;

    .line 10
    iput-object v7, v6, Lcom/shabakaty/downloader/vd4;->c:Lcom/shabakaty/downloader/p91;

    .line 11
    iput-object v2, v6, Lcom/shabakaty/downloader/vd4;->b:Lcom/shabakaty/downloader/fp4;

    .line 12
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/vd4;->e(Z)V

    .line 13
    iput-boolean v5, v0, Lcom/shabakaty/downloader/t53;->c:Z

    .line 14
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/t53;->b:Lcom/shabakaty/downloader/vd4;

    .line 15
    iget-object v6, v2, Lcom/shabakaty/downloader/vd4;->b:Lcom/shabakaty/downloader/fp4;

    invoke-static {v6}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget v6, Lcom/shabakaty/downloader/sy4;->a:I

    .line 17
    iget v6, v2, Lcom/shabakaty/downloader/vd4;->h:I

    const-wide/16 v7, -0x1

    const/4 v10, 0x3

    const/4 v14, 0x2

    if-eqz v6, :cond_c

    if-eq v6, v5, :cond_b

    if-eq v6, v14, :cond_4

    if-ne v6, v10, :cond_3

    goto/16 :goto_5

    .line 18
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 19
    :cond_4
    iget-object v3, v2, Lcom/shabakaty/downloader/vd4;->d:Lcom/shabakaty/downloader/w53;

    .line 20
    invoke-interface {v3, v1}, Lcom/shabakaty/downloader/w53;->b(Lcom/shabakaty/downloader/o91;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-ltz v3, :cond_5

    move-object/from16 v3, p2

    .line 21
    iput-wide v11, v3, Lcom/shabakaty/downloader/ie3;->a:J

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_5
    cmp-long v3, v11, v7

    if-gez v3, :cond_6

    const-wide/16 v15, 0x2

    add-long/2addr v11, v15

    neg-long v11, v11

    .line 22
    invoke-virtual {v2, v11, v12}, Lcom/shabakaty/downloader/vd4;->b(J)V

    .line 23
    :cond_6
    iget-boolean v3, v2, Lcom/shabakaty/downloader/vd4;->l:Z

    if-nez v3, :cond_7

    .line 24
    iget-object v3, v2, Lcom/shabakaty/downloader/vd4;->d:Lcom/shabakaty/downloader/w53;

    invoke-interface {v3}, Lcom/shabakaty/downloader/w53;->a()Lcom/shabakaty/downloader/vz3;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v6, v2, Lcom/shabakaty/downloader/vd4;->c:Lcom/shabakaty/downloader/p91;

    invoke-interface {v6, v3}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 26
    iput-boolean v5, v2, Lcom/shabakaty/downloader/vd4;->l:Z

    .line 27
    :cond_7
    iget-wide v5, v2, Lcom/shabakaty/downloader/vd4;->k:J

    cmp-long v3, v5, v13

    if-gtz v3, :cond_9

    iget-object v3, v2, Lcom/shabakaty/downloader/vd4;->a:Lcom/shabakaty/downloader/u53;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/u53;->b(Lcom/shabakaty/downloader/o91;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 28
    :cond_8
    iput v10, v2, Lcom/shabakaty/downloader/vd4;->h:I

    :goto_1
    const/4 v4, -0x1

    goto/16 :goto_9

    .line 29
    :cond_9
    :goto_2
    iput-wide v13, v2, Lcom/shabakaty/downloader/vd4;->k:J

    .line 30
    iget-object v1, v2, Lcom/shabakaty/downloader/vd4;->a:Lcom/shabakaty/downloader/u53;

    .line 31
    iget-object v1, v1, Lcom/shabakaty/downloader/u53;->b:Lcom/shabakaty/downloader/ka3;

    .line 32
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/vd4;->c(Lcom/shabakaty/downloader/ka3;)J

    move-result-wide v5

    cmp-long v3, v5, v13

    if-ltz v3, :cond_a

    .line 33
    iget-wide v9, v2, Lcom/shabakaty/downloader/vd4;->g:J

    add-long v11, v9, v5

    iget-wide v13, v2, Lcom/shabakaty/downloader/vd4;->e:J

    cmp-long v3, v11, v13

    if-ltz v3, :cond_a

    const-wide/32 v11, 0xf4240

    mul-long v9, v9, v11

    .line 34
    iget v3, v2, Lcom/shabakaty/downloader/vd4;->i:I

    int-to-long v11, v3

    div-long v14, v9, v11

    .line 35
    iget-object v3, v2, Lcom/shabakaty/downloader/vd4;->b:Lcom/shabakaty/downloader/fp4;

    .line 36
    iget v9, v1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 37
    invoke-interface {v3, v1, v9}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 38
    iget-object v13, v2, Lcom/shabakaty/downloader/vd4;->b:Lcom/shabakaty/downloader/fp4;

    const/16 v16, 0x1

    .line 39
    iget v1, v1, Lcom/shabakaty/downloader/ka3;->c:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v1

    .line 40
    invoke-interface/range {v13 .. v19}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 41
    iput-wide v7, v2, Lcom/shabakaty/downloader/vd4;->e:J

    .line 42
    :cond_a
    iget-wide v7, v2, Lcom/shabakaty/downloader/vd4;->g:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/shabakaty/downloader/vd4;->g:J

    goto/16 :goto_9

    .line 43
    :cond_b
    iget-wide v5, v2, Lcom/shabakaty/downloader/vd4;->f:J

    long-to-int v3, v5

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 44
    iput v14, v2, Lcom/shabakaty/downloader/vd4;->h:I

    goto/16 :goto_9

    .line 45
    :cond_c
    :goto_3
    iget-object v6, v2, Lcom/shabakaty/downloader/vd4;->a:Lcom/shabakaty/downloader/u53;

    invoke-virtual {v6, v1}, Lcom/shabakaty/downloader/u53;->b(Lcom/shabakaty/downloader/o91;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 46
    iput v10, v2, Lcom/shabakaty/downloader/vd4;->h:I

    const/4 v9, 0x0

    goto :goto_4

    .line 47
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v11

    iget-wide v9, v2, Lcom/shabakaty/downloader/vd4;->f:J

    sub-long/2addr v11, v9

    iput-wide v11, v2, Lcom/shabakaty/downloader/vd4;->k:J

    .line 48
    iget-object v11, v2, Lcom/shabakaty/downloader/vd4;->a:Lcom/shabakaty/downloader/u53;

    .line 49
    iget-object v11, v11, Lcom/shabakaty/downloader/u53;->b:Lcom/shabakaty/downloader/ka3;

    .line 50
    iget-object v12, v2, Lcom/shabakaty/downloader/vd4;->j:Lcom/shabakaty/downloader/vd4$b;

    invoke-virtual {v2, v11, v9, v10, v12}, Lcom/shabakaty/downloader/vd4;->d(Lcom/shabakaty/downloader/ka3;JLcom/shabakaty/downloader/vd4$b;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 51
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/shabakaty/downloader/vd4;->f:J

    const/4 v10, 0x3

    goto :goto_3

    :cond_e
    const/4 v9, 0x1

    :goto_4
    if-nez v9, :cond_f

    :goto_5
    goto :goto_1

    .line 52
    :cond_f
    iget-object v6, v2, Lcom/shabakaty/downloader/vd4;->j:Lcom/shabakaty/downloader/vd4$b;

    iget-object v6, v6, Lcom/shabakaty/downloader/vd4$b;->a:Lcom/shabakaty/downloader/wh1;

    iget v9, v6, Lcom/shabakaty/downloader/wh1;->Q:I

    iput v9, v2, Lcom/shabakaty/downloader/vd4;->i:I

    .line 53
    iget-boolean v9, v2, Lcom/shabakaty/downloader/vd4;->m:Z

    if-nez v9, :cond_10

    .line 54
    iget-object v9, v2, Lcom/shabakaty/downloader/vd4;->b:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v9, v6}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 55
    iput-boolean v5, v2, Lcom/shabakaty/downloader/vd4;->m:Z

    .line 56
    :cond_10
    iget-object v6, v2, Lcom/shabakaty/downloader/vd4;->j:Lcom/shabakaty/downloader/vd4$b;

    iget-object v6, v6, Lcom/shabakaty/downloader/vd4$b;->b:Lcom/shabakaty/downloader/w53;

    if-eqz v6, :cond_11

    .line 57
    iput-object v6, v2, Lcom/shabakaty/downloader/vd4;->d:Lcom/shabakaty/downloader/w53;

    :goto_6
    const/4 v1, 0x2

    goto :goto_8

    .line 58
    :cond_11
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-nez v6, :cond_12

    .line 59
    new-instance v1, Lcom/shabakaty/downloader/vd4$c;

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/vd4$c;-><init>(Lcom/shabakaty/downloader/vd4$a;)V

    iput-object v1, v2, Lcom/shabakaty/downloader/vd4;->d:Lcom/shabakaty/downloader/w53;

    goto :goto_6

    .line 60
    :cond_12
    iget-object v3, v2, Lcom/shabakaty/downloader/vd4;->a:Lcom/shabakaty/downloader/u53;

    .line 61
    iget-object v3, v3, Lcom/shabakaty/downloader/u53;->a:Lcom/shabakaty/downloader/v53;

    .line 62
    iget v6, v3, Lcom/shabakaty/downloader/v53;->a:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_13

    const/16 v18, 0x1

    goto :goto_7

    :cond_13
    const/16 v18, 0x0

    .line 63
    :goto_7
    new-instance v5, Lcom/shabakaty/downloader/so0;

    iget-wide v10, v2, Lcom/shabakaty/downloader/vd4;->f:J

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v12

    iget v1, v3, Lcom/shabakaty/downloader/v53;->d:I

    iget v6, v3, Lcom/shabakaty/downloader/v53;->e:I

    add-int/2addr v1, v6

    int-to-long v6, v1

    iget-wide v8, v3, Lcom/shabakaty/downloader/v53;->b:J

    move-wide/from16 v16, v8

    move-object v8, v5

    move-object v9, v2

    const/4 v1, 0x2

    move-wide v14, v6

    invoke-direct/range {v8 .. v18}, Lcom/shabakaty/downloader/so0;-><init>(Lcom/shabakaty/downloader/vd4;JJJJZ)V

    iput-object v5, v2, Lcom/shabakaty/downloader/vd4;->d:Lcom/shabakaty/downloader/w53;

    .line 65
    :goto_8
    iput v1, v2, Lcom/shabakaty/downloader/vd4;->h:I

    .line 66
    iget-object v1, v2, Lcom/shabakaty/downloader/vd4;->a:Lcom/shabakaty/downloader/u53;

    .line 67
    iget-object v2, v1, Lcom/shabakaty/downloader/u53;->b:Lcom/shabakaty/downloader/ka3;

    .line 68
    iget-object v3, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 69
    array-length v5, v3

    const v6, 0xfe01

    if-ne v5, v6, :cond_14

    goto :goto_9

    .line 70
    :cond_14
    iget v5, v2, Lcom/shabakaty/downloader/ka3;->c:I

    .line 71
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 72
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iget-object v1, v1, Lcom/shabakaty/downloader/u53;->b:Lcom/shabakaty/downloader/ka3;

    .line 73
    iget v1, v1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 74
    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    :goto_9
    return v4
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/t53;->a:Lcom/shabakaty/downloader/p91;

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/t53;->c(Lcom/shabakaty/downloader/o91;)Z

    move-result p1
    :try_end_0
    .catch Lcom/shabakaty/downloader/pa3; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
