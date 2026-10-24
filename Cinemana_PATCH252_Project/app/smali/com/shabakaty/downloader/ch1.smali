.class public final Lcom/shabakaty/downloader/ch1;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ka3;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public final d:Lcom/shabakaty/downloader/ka3;

.field public final e:Lcom/shabakaty/downloader/ty3;

.field public f:Lcom/shabakaty/downloader/p91;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Lcom/shabakaty/downloader/bf;

.field public p:Lcom/shabakaty/downloader/u25;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dx4;->u:Lcom/shabakaty/downloader/dx4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ch1;->b:Lcom/shabakaty/downloader/ka3;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ch1;->c:Lcom/shabakaty/downloader/ka3;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ch1;->d:Lcom/shabakaty/downloader/ka3;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ty3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ty3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ch1;->e:Lcom/shabakaty/downloader/ty3;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/ch1;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 2

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/ch1;->g:I

    .line 2
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ch1;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/ch1;->g:I

    .line 4
    :goto_0
    iput p3, p0, Lcom/shabakaty/downloader/ch1;->j:I

    return-void
.end method

.method public final c()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ch1;->n:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->f:Lcom/shabakaty/downloader/p91;

    new-instance v1, Lcom/shabakaty/downloader/vz3$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    .line 3
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 4
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ch1;->n:Z

    :cond_0
    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/o91;)Lcom/shabakaty/downloader/ka3;
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ch1;->l:I

    iget-object v1, p0, Lcom/shabakaty/downloader/ch1;->d:Lcom/shabakaty/downloader/ka3;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    .line 3
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 4
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 5
    iput-object v0, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 6
    iput v4, v1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 7
    iput v4, v1, Lcom/shabakaty/downloader/ka3;->b:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->d:Lcom/shabakaty/downloader/ka3;

    iget v1, p0, Lcom/shabakaty/downloader/ch1;->l:I

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->d:Lcom/shabakaty/downloader/ka3;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 12
    iget v1, p0, Lcom/shabakaty/downloader/ch1;->l:I

    invoke-interface {p1, v0, v4, v1}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/ch1;->d:Lcom/shabakaty/downloader/ka3;

    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->f:Lcom/shabakaty/downloader/p91;

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    iget v2, v0, Lcom/shabakaty/downloader/ch1;->g:I

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_d

    const/4 v10, 0x3

    if-eq v2, v6, :cond_c

    if-eq v2, v10, :cond_a

    if-ne v2, v7, :cond_9

    .line 3
    iget-boolean v2, v0, Lcom/shabakaty/downloader/ch1;->h:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    .line 4
    iget-wide v2, v0, Lcom/shabakaty/downloader/ch1;->i:J

    iget-wide v14, v0, Lcom/shabakaty/downloader/ch1;->m:J

    add-long/2addr v2, v14

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->e:Lcom/shabakaty/downloader/ty3;

    .line 6
    iget-wide v2, v2, Lcom/shabakaty/downloader/ty3;->b:J

    cmp-long v14, v2, v12

    if-nez v14, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 7
    :cond_2
    iget-wide v2, v0, Lcom/shabakaty/downloader/ch1;->m:J

    .line 8
    :goto_1
    iget v14, v0, Lcom/shabakaty/downloader/ch1;->k:I

    if-ne v14, v4, :cond_3

    iget-object v4, v0, Lcom/shabakaty/downloader/ch1;->o:Lcom/shabakaty/downloader/bf;

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ch1;->c()V

    .line 10
    iget-object v4, v0, Lcom/shabakaty/downloader/ch1;->o:Lcom/shabakaty/downloader/bf;

    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/ch1;->d(Lcom/shabakaty/downloader/o91;)Lcom/shabakaty/downloader/ka3;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/shabakaty/downloader/mk4;->a(Lcom/shabakaty/downloader/ka3;J)Z

    move-result v2

    goto :goto_2

    :cond_3
    if-ne v14, v5, :cond_4

    .line 11
    iget-object v4, v0, Lcom/shabakaty/downloader/ch1;->p:Lcom/shabakaty/downloader/u25;

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ch1;->c()V

    .line 13
    iget-object v4, v0, Lcom/shabakaty/downloader/ch1;->p:Lcom/shabakaty/downloader/u25;

    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/ch1;->d(Lcom/shabakaty/downloader/o91;)Lcom/shabakaty/downloader/ka3;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/shabakaty/downloader/mk4;->a(Lcom/shabakaty/downloader/ka3;J)Z

    move-result v2

    goto :goto_2

    :cond_4
    const/16 v4, 0x12

    if-ne v14, v4, :cond_6

    .line 14
    iget-boolean v4, v0, Lcom/shabakaty/downloader/ch1;->n:Z

    if-nez v4, :cond_6

    .line 15
    iget-object v4, v0, Lcom/shabakaty/downloader/ch1;->e:Lcom/shabakaty/downloader/ty3;

    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/ch1;->d(Lcom/shabakaty/downloader/o91;)Lcom/shabakaty/downloader/ka3;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/shabakaty/downloader/mk4;->a(Lcom/shabakaty/downloader/ka3;J)Z

    move-result v2

    .line 16
    iget-object v3, v0, Lcom/shabakaty/downloader/ch1;->e:Lcom/shabakaty/downloader/ty3;

    .line 17
    iget-wide v4, v3, Lcom/shabakaty/downloader/ty3;->b:J

    cmp-long v14, v4, v12

    if-eqz v14, :cond_5

    .line 18
    iget-object v14, v0, Lcom/shabakaty/downloader/ch1;->f:Lcom/shabakaty/downloader/p91;

    new-instance v15, Lcom/shabakaty/downloader/l02;

    .line 19
    iget-object v10, v3, Lcom/shabakaty/downloader/ty3;->d:[J

    .line 20
    iget-object v3, v3, Lcom/shabakaty/downloader/ty3;->c:[J

    .line 21
    invoke-direct {v15, v10, v3, v4, v5}, Lcom/shabakaty/downloader/l02;-><init>([J[JJ)V

    .line 22
    invoke-interface {v14, v15}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 23
    iput-boolean v9, v0, Lcom/shabakaty/downloader/ch1;->n:Z

    :cond_5
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    .line 24
    :cond_6
    iget v2, v0, Lcom/shabakaty/downloader/ch1;->l:I

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/o91;->q(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 25
    :goto_3
    iget-boolean v4, v0, Lcom/shabakaty/downloader/ch1;->h:Z

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    .line 26
    iput-boolean v9, v0, Lcom/shabakaty/downloader/ch1;->h:Z

    .line 27
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->e:Lcom/shabakaty/downloader/ty3;

    .line 28
    iget-wide v4, v2, Lcom/shabakaty/downloader/ty3;->b:J

    cmp-long v2, v4, v12

    if-nez v2, :cond_7

    .line 29
    iget-wide v4, v0, Lcom/shabakaty/downloader/ch1;->m:J

    neg-long v10, v4

    goto :goto_4

    :cond_7
    const-wide/16 v10, 0x0

    :goto_4
    iput-wide v10, v0, Lcom/shabakaty/downloader/ch1;->i:J

    .line 30
    :cond_8
    iput v7, v0, Lcom/shabakaty/downloader/ch1;->j:I

    .line 31
    iput v6, v0, Lcom/shabakaty/downloader/ch1;->g:I

    if-eqz v3, :cond_0

    return v8

    .line 32
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 33
    :cond_a
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->c:Lcom/shabakaty/downloader/ka3;

    .line 34
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v4, 0xb

    .line 35
    invoke-interface {v1, v2, v8, v4, v9}, Lcom/shabakaty/downloader/o91;->f([BIIZ)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    .line 36
    :cond_b
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 37
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v2

    iput v2, v0, Lcom/shabakaty/downloader/ch1;->k:I

    .line 38
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->v()I

    move-result v2

    iput v2, v0, Lcom/shabakaty/downloader/ch1;->l:I

    .line 39
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->v()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/shabakaty/downloader/ch1;->m:J

    .line 40
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v4, v2

    iget-wide v11, v0, Lcom/shabakaty/downloader/ch1;->m:J

    or-long/2addr v4, v11

    const-wide/16 v11, 0x3e8

    mul-long v4, v4, v11

    iput-wide v4, v0, Lcom/shabakaty/downloader/ch1;->m:J

    .line 41
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 42
    iput v7, v0, Lcom/shabakaty/downloader/ch1;->g:I

    const/4 v8, 0x1

    :goto_5
    if-nez v8, :cond_0

    return v3

    .line 43
    :cond_c
    iget v2, v0, Lcom/shabakaty/downloader/ch1;->j:I

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 44
    iput v8, v0, Lcom/shabakaty/downloader/ch1;->j:I

    .line 45
    iput v10, v0, Lcom/shabakaty/downloader/ch1;->g:I

    goto/16 :goto_0

    .line 46
    :cond_d
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->b:Lcom/shabakaty/downloader/ka3;

    .line 47
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 48
    invoke-interface {v1, v2, v8, v5, v9}, Lcom/shabakaty/downloader/o91;->f([BIIZ)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_7

    .line 49
    :cond_e
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 50
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 51
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v2

    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    :goto_6
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    const/4 v8, 0x1

    :cond_10
    if-eqz v10, :cond_11

    .line 52
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->o:Lcom/shabakaty/downloader/bf;

    if-nez v2, :cond_11

    .line 53
    new-instance v2, Lcom/shabakaty/downloader/bf;

    iget-object v10, v0, Lcom/shabakaty/downloader/ch1;->f:Lcom/shabakaty/downloader/p91;

    .line 54
    invoke-interface {v10, v4, v9}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/bf;-><init>(Lcom/shabakaty/downloader/fp4;)V

    iput-object v2, v0, Lcom/shabakaty/downloader/ch1;->o:Lcom/shabakaty/downloader/bf;

    :cond_11
    if-eqz v8, :cond_12

    .line 55
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->p:Lcom/shabakaty/downloader/u25;

    if-nez v2, :cond_12

    .line 56
    new-instance v2, Lcom/shabakaty/downloader/u25;

    iget-object v4, v0, Lcom/shabakaty/downloader/ch1;->f:Lcom/shabakaty/downloader/p91;

    .line 57
    invoke-interface {v4, v5, v6}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/u25;-><init>(Lcom/shabakaty/downloader/fp4;)V

    iput-object v2, v0, Lcom/shabakaty/downloader/ch1;->p:Lcom/shabakaty/downloader/u25;

    .line 58
    :cond_12
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->f:Lcom/shabakaty/downloader/p91;

    invoke-interface {v2}, Lcom/shabakaty/downloader/p91;->b()V

    .line 59
    iget-object v2, v0, Lcom/shabakaty/downloader/ch1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v2

    sub-int/2addr v2, v5

    add-int/2addr v2, v7

    iput v2, v0, Lcom/shabakaty/downloader/ch1;->j:I

    .line 60
    iput v6, v0, Lcom/shabakaty/downloader/ch1;->g:I

    const/4 v8, 0x1

    :goto_7
    if-nez v8, :cond_0

    return v3
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ch1;->f:Lcom/shabakaty/downloader/p91;

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->v()I

    move-result v0

    const v1, 0x464c56

    if-eq v0, v1, :cond_0

    return v2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v1, 0x2

    .line 8
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v1, 0x4

    .line 13
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v0

    .line 16
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 17
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/o91;->l(I)V

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 20
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 22
    iget-object p1, p0, Lcom/shabakaty/downloader/ch1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
