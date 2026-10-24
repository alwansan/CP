.class public final Lcom/shabakaty/downloader/hf2;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Lcom/shabakaty/downloader/l21;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:Lcom/shabakaty/downloader/a55;

.field public d:Lcom/shabakaty/downloader/fp4;

.field public e:Ljava/lang/String;

.field public f:Lcom/shabakaty/downloader/wh1;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:I

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/hf2;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/hf2;->b:Lcom/shabakaty/downloader/ka3;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/a55;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p1, v1, v2}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/hf2;->c:Lcom/shabakaty/downloader/a55;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/shabakaty/downloader/hf2;->k:J

    return-void
.end method

.method public static f(Lcom/shabakaty/downloader/a55;)J
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hf2;->d:Lcom/shabakaty/downloader/fp4;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    if-lez v0, :cond_1f

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/hf2;->g:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1c

    const/16 v1, 0x8

    const/4 v5, 0x3

    if-eq v0, v3, :cond_19

    if-ne v0, v5, :cond_18

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    iget v3, p0, Lcom/shabakaty/downloader/hf2;->i:I

    iget v6, p0, Lcom/shabakaty/downloader/hf2;->h:I

    sub-int/2addr v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/hf2;->c:Lcom/shabakaty/downloader/a55;

    iget-object v3, v3, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v3, [B

    iget v6, p0, Lcom/shabakaty/downloader/hf2;->h:I

    invoke-virtual {p1, v3, v6, v0}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 6
    iget v3, p0, Lcom/shabakaty/downloader/hf2;->h:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/shabakaty/downloader/hf2;->h:I

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/hf2;->i:I

    if-ne v3, v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/hf2;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/hf2;->c:Lcom/shabakaty/downloader/a55;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_f

    .line 11
    iput-boolean v2, p0, Lcom/shabakaty/downloader/hf2;->l:Z

    .line 12
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 13
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iput v7, p0, Lcom/shabakaty/downloader/hf2;->m:I

    if-nez v7, :cond_e

    if-ne v3, v2, :cond_2

    .line 14
    invoke-static {v0}, Lcom/shabakaty/downloader/hf2;->f(Lcom/shabakaty/downloader/a55;)J

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x6

    .line 16
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    iput v8, p0, Lcom/shabakaty/downloader/hf2;->n:I

    const/4 v8, 0x4

    .line 17
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v9

    .line 18
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v10

    if-nez v9, :cond_c

    if-nez v10, :cond_c

    if-nez v3, :cond_3

    .line 19
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->h()I

    move-result v9

    .line 20
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/hf2;->g(Lcom/shabakaty/downloader/a55;)I

    move-result v10

    .line 21
    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/a55;->s(I)V

    add-int/lit8 v9, v10, 0x7

    .line 22
    div-int/2addr v9, v1

    new-array v9, v9, [B

    .line 23
    invoke-virtual {v0, v9, v4, v10}, Lcom/shabakaty/downloader/a55;->l([BII)V

    .line 24
    new-instance v10, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v10}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    iget-object v11, p0, Lcom/shabakaty/downloader/hf2;->e:Ljava/lang/String;

    .line 25
    iput-object v11, v10, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string v11, "audio/mp4a-latm"

    .line 26
    iput-object v11, v10, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 27
    iget-object v11, p0, Lcom/shabakaty/downloader/hf2;->u:Ljava/lang/String;

    .line 28
    iput-object v11, v10, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 29
    iget v11, p0, Lcom/shabakaty/downloader/hf2;->t:I

    .line 30
    iput v11, v10, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 31
    iget v11, p0, Lcom/shabakaty/downloader/hf2;->r:I

    .line 32
    iput v11, v10, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 33
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 34
    iput-object v9, v10, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 35
    iget-object v9, p0, Lcom/shabakaty/downloader/hf2;->a:Ljava/lang/String;

    .line 36
    iput-object v9, v10, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v10}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v9

    .line 38
    iget-object v10, p0, Lcom/shabakaty/downloader/hf2;->f:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/wh1;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 39
    iput-object v9, p0, Lcom/shabakaty/downloader/hf2;->f:Lcom/shabakaty/downloader/wh1;

    const-wide/32 v10, 0x3d090000

    .line 40
    iget v12, v9, Lcom/shabakaty/downloader/wh1;->Q:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    iput-wide v10, p0, Lcom/shabakaty/downloader/hf2;->s:J

    .line 41
    iget-object v10, p0, Lcom/shabakaty/downloader/hf2;->d:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v10, v9}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    goto :goto_2

    .line 42
    :cond_3
    invoke-static {v0}, Lcom/shabakaty/downloader/hf2;->f(Lcom/shabakaty/downloader/a55;)J

    move-result-wide v9

    long-to-int v10, v9

    .line 43
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/hf2;->g(Lcom/shabakaty/downloader/a55;)I

    move-result v9

    sub-int/2addr v10, v9

    .line 44
    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 45
    :cond_4
    :goto_2
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v9

    iput v9, p0, Lcom/shabakaty/downloader/hf2;->o:I

    if-eqz v9, :cond_9

    if-eq v9, v2, :cond_8

    if-eq v9, v5, :cond_7

    if-eq v9, v8, :cond_7

    const/4 v5, 0x5

    if-eq v9, v5, :cond_7

    if-eq v9, v7, :cond_6

    const/4 v5, 0x7

    if-ne v9, v5, :cond_5

    goto :goto_3

    .line 46
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 47
    :cond_6
    :goto_3
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto :goto_4

    .line 48
    :cond_7
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto :goto_4

    :cond_8
    const/16 v5, 0x9

    .line 49
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto :goto_4

    .line 50
    :cond_9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 51
    :goto_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v5

    iput-boolean v5, p0, Lcom/shabakaty/downloader/hf2;->p:Z

    const-wide/16 v7, 0x0

    .line 52
    iput-wide v7, p0, Lcom/shabakaty/downloader/hf2;->q:J

    if-eqz v5, :cond_b

    if-ne v3, v2, :cond_a

    .line 53
    invoke-static {v0}, Lcom/shabakaty/downloader/hf2;->f(Lcom/shabakaty/downloader/a55;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shabakaty/downloader/hf2;->q:J

    goto :goto_5

    .line 54
    :cond_a
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v2

    .line 55
    iget-wide v7, p0, Lcom/shabakaty/downloader/hf2;->q:J

    shl-long/2addr v7, v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/shabakaty/downloader/hf2;->q:J

    if-nez v2, :cond_a

    .line 56
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 57
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto :goto_6

    .line 58
    :cond_c
    invoke-static {v6, v6}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 59
    :cond_d
    invoke-static {v6, v6}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 60
    :cond_e
    invoke-static {v6, v6}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 61
    :cond_f
    iget-boolean v2, p0, Lcom/shabakaty/downloader/hf2;->l:Z

    if-nez v2, :cond_10

    goto :goto_9

    .line 62
    :cond_10
    :goto_6
    iget v2, p0, Lcom/shabakaty/downloader/hf2;->m:I

    if-nez v2, :cond_17

    .line 63
    iget v2, p0, Lcom/shabakaty/downloader/hf2;->n:I

    if-nez v2, :cond_16

    .line 64
    iget v2, p0, Lcom/shabakaty/downloader/hf2;->o:I

    if-nez v2, :cond_15

    const/4 v2, 0x0

    .line 65
    :goto_7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v3

    add-int v9, v2, v3

    const/16 v2, 0xff

    if-eq v3, v2, :cond_14

    .line 66
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->h()I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_11

    .line 67
    iget-object v2, p0, Lcom/shabakaty/downloader/hf2;->b:Lcom/shabakaty/downloader/ka3;

    shr-int/lit8 v1, v1, 0x3

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_8

    .line 68
    :cond_11
    iget-object v1, p0, Lcom/shabakaty/downloader/hf2;->b:Lcom/shabakaty/downloader/ka3;

    .line 69
    iget-object v1, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    mul-int/lit8 v2, v9, 0x8

    .line 70
    invoke-virtual {v0, v1, v4, v2}, Lcom/shabakaty/downloader/a55;->l([BII)V

    .line 71
    iget-object v1, p0, Lcom/shabakaty/downloader/hf2;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 72
    :goto_8
    iget-object v1, p0, Lcom/shabakaty/downloader/hf2;->d:Lcom/shabakaty/downloader/fp4;

    iget-object v2, p0, Lcom/shabakaty/downloader/hf2;->b:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v1, v2, v9}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 73
    iget-wide v6, p0, Lcom/shabakaty/downloader/hf2;->k:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v1

    if-eqz v3, :cond_12

    .line 74
    iget-object v5, p0, Lcom/shabakaty/downloader/hf2;->d:Lcom/shabakaty/downloader/fp4;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 75
    iget-wide v1, p0, Lcom/shabakaty/downloader/hf2;->k:J

    iget-wide v5, p0, Lcom/shabakaty/downloader/hf2;->s:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/shabakaty/downloader/hf2;->k:J

    .line 76
    :cond_12
    iget-boolean v1, p0, Lcom/shabakaty/downloader/hf2;->p:Z

    if-eqz v1, :cond_13

    .line 77
    iget-wide v1, p0, Lcom/shabakaty/downloader/hf2;->q:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 78
    :cond_13
    :goto_9
    iput v4, p0, Lcom/shabakaty/downloader/hf2;->g:I

    goto/16 :goto_0

    :cond_14
    move v2, v9

    goto :goto_7

    .line 79
    :cond_15
    invoke-static {v6, v6}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 80
    :cond_16
    invoke-static {v6, v6}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 81
    :cond_17
    invoke-static {v6, v6}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 82
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 83
    :cond_19
    iget v0, p0, Lcom/shabakaty/downloader/hf2;->j:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/hf2;->i:I

    .line 84
    iget-object v1, p0, Lcom/shabakaty/downloader/hf2;->b:Lcom/shabakaty/downloader/ka3;

    .line 85
    iget-object v2, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 86
    array-length v3, v2

    if-le v0, v3, :cond_1b

    .line 87
    array-length v3, v2

    if-ge v3, v0, :cond_1a

    .line 88
    new-array v2, v0, [B

    :cond_1a
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 89
    iget-object v0, p0, Lcom/shabakaty/downloader/hf2;->c:Lcom/shabakaty/downloader/a55;

    iget-object v1, p0, Lcom/shabakaty/downloader/hf2;->b:Lcom/shabakaty/downloader/ka3;

    .line 90
    iget-object v1, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 91
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a55;->p([B)V

    .line 92
    :cond_1b
    iput v4, p0, Lcom/shabakaty/downloader/hf2;->h:I

    .line 93
    iput v5, p0, Lcom/shabakaty/downloader/hf2;->g:I

    goto/16 :goto_0

    .line 94
    :cond_1c
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_1d

    .line 95
    iput v0, p0, Lcom/shabakaty/downloader/hf2;->j:I

    .line 96
    iput v3, p0, Lcom/shabakaty/downloader/hf2;->g:I

    goto/16 :goto_0

    :cond_1d
    if-eq v0, v1, :cond_0

    .line 97
    iput v4, p0, Lcom/shabakaty/downloader/hf2;->g:I

    goto/16 :goto_0

    .line 98
    :cond_1e
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 99
    iput v2, p0, Lcom/shabakaty/downloader/hf2;->g:I

    goto/16 :goto_0

    :cond_1f
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/hf2;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Lcom/shabakaty/downloader/hf2;->k:J

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/hf2;->l:Z

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hf2;->d:Lcom/shabakaty/downloader/fp4;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/hf2;->e:Ljava/lang/String;

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
    iput-wide p1, p0, Lcom/shabakaty/downloader/hf2;->k:J

    :cond_0
    return-void
.end method

.method public final g(Lcom/shabakaty/downloader/a55;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/a55;->b()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/c;->e(Lcom/shabakaty/downloader/a55;Z)Lcom/shabakaty/downloader/c$b;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/c$b;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/shabakaty/downloader/hf2;->u:Ljava/lang/String;

    .line 4
    iget v2, v1, Lcom/shabakaty/downloader/c$b;->a:I

    iput v2, p0, Lcom/shabakaty/downloader/hf2;->r:I

    .line 5
    iget v1, v1, Lcom/shabakaty/downloader/c$b;->b:I

    iput v1, p0, Lcom/shabakaty/downloader/hf2;->t:I

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/a55;->b()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method
