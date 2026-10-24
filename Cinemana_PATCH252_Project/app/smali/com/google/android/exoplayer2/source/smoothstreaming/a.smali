.class public Lcom/google/android/exoplayer2/source/smoothstreaming/a;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/smoothstreaming/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/kj2;

.field public final b:I

.field public final c:[Lcom/shabakaty/downloader/a00;

.field public final d:Lcom/shabakaty/downloader/vl0;

.field public e:Lcom/shabakaty/downloader/f81;

.field public f:Lcom/shabakaty/downloader/wa4;

.field public g:I

.field public h:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/wa4;ILcom/shabakaty/downloader/f81;Lcom/shabakaty/downloader/vl0;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    .line 2
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->a:Lcom/shabakaty/downloader/kj2;

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Lcom/shabakaty/downloader/wa4;

    .line 4
    iput v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    .line 5
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    move-object/from16 v4, p5

    .line 6
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->d:Lcom/shabakaty/downloader/vl0;

    .line 7
    iget-object v4, v1, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    aget-object v2, v4, v2

    .line 8
    invoke-interface/range {p4 .. p4}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v4

    new-array v4, v4, [Lcom/shabakaty/downloader/a00;

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lcom/shabakaty/downloader/a00;

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lcom/shabakaty/downloader/a00;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 10
    invoke-interface {v3, v5}, Lcom/shabakaty/downloader/hp4;->d(I)I

    move-result v8

    .line 11
    iget-object v6, v2, Lcom/shabakaty/downloader/wa4$b;->j:[Lcom/shabakaty/downloader/wh1;

    aget-object v6, v6, v8

    .line 12
    iget-object v7, v6, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    const/4 v14, 0x0

    if-eqz v7, :cond_0

    .line 13
    iget-object v7, v1, Lcom/shabakaty/downloader/wa4;->e:Lcom/shabakaty/downloader/wa4$a;

    .line 14
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v7, v7, Lcom/shabakaty/downloader/wa4$a;->c:[Lcom/shabakaty/downloader/xo4;

    move-object/from16 v18, v7

    goto :goto_1

    :cond_0
    move-object/from16 v18, v14

    .line 16
    :goto_1
    iget v9, v2, Lcom/shabakaty/downloader/wa4$b;->a:I

    const/4 v7, 0x2

    if-ne v9, v7, :cond_1

    const/4 v7, 0x4

    const/16 v19, 0x4

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    .line 17
    :goto_2
    new-instance v15, Lcom/shabakaty/downloader/wo4;

    iget-wide v10, v2, Lcom/shabakaty/downloader/wa4$b;->c:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 p3, v5

    iget-wide v4, v1, Lcom/shabakaty/downloader/wa4;->g:J

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v15

    move-object/from16 v22, v15

    move-wide v14, v4

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v21}, Lcom/shabakaty/downloader/wo4;-><init>(IIJJJLcom/shabakaty/downloader/wh1;I[Lcom/shabakaty/downloader/xo4;I[J[J)V

    .line 18
    new-instance v4, Lcom/shabakaty/downloader/ol1;

    const/4 v5, 0x3

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v8, v22

    const/4 v9, 0x0

    invoke-direct {v4, v5, v9, v8, v7}, Lcom/shabakaty/downloader/ol1;-><init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/wo4;Ljava/util/List;)V

    .line 20
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lcom/shabakaty/downloader/a00;

    new-instance v7, Lcom/shabakaty/downloader/zo;

    iget v8, v2, Lcom/shabakaty/downloader/wa4$b;->a:I

    invoke-direct {v7, v4, v8, v6}, Lcom/shabakaty/downloader/zo;-><init>(Lcom/shabakaty/downloader/n91;ILcom/shabakaty/downloader/wh1;)V

    aput-object v7, v5, p3

    add-int/lit8 v5, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lcom/shabakaty/downloader/a00;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    check-cast v3, Lcom/shabakaty/downloader/zo;

    .line 3
    iget-object v3, v3, Lcom/shabakaty/downloader/zo;->r:Lcom/shabakaty/downloader/n91;

    invoke-interface {v3}, Lcom/shabakaty/downloader/n91;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->a:Lcom/shabakaty/downloader/kj2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kj2;->b()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public c(Lcom/shabakaty/downloader/f81;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/wa4;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Lcom/shabakaty/downloader/wa4;

    iget-object v0, v0, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    aget-object v0, v0, v1

    .line 2
    iget v2, v0, Lcom/shabakaty/downloader/wa4$b;->k:I

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    aget-object v1, v3, v1

    if-eqz v2, :cond_2

    .line 4
    iget v3, v1, Lcom/shabakaty/downloader/wa4$b;->k:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    .line 5
    iget-object v4, v0, Lcom/shabakaty/downloader/wa4$b;->o:[J

    aget-wide v5, v4, v3

    .line 6
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/wa4$b;->b(I)J

    move-result-wide v3

    add-long/2addr v3, v5

    const/4 v5, 0x0

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/wa4$b;->o:[J

    aget-wide v5, v1, v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    goto :goto_1

    .line 9
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    invoke-virtual {v0, v5, v6}, Lcom/shabakaty/downloader/wa4$b;->c(J)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    .line 11
    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Lcom/shabakaty/downloader/wa4;

    return-void
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Lcom/shabakaty/downloader/wa4;

    iget-object v0, v0, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    aget-object v0, v0, v1

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/wa4$b;->o:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/shabakaty/downloader/sy4;->f([JJZZ)I

    move-result v1

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/wa4$b;->o:[J

    aget-wide v7, v3, v1

    cmp-long v4, v7, p1

    if-gez v4, :cond_0

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/wa4$b;->k:I

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    add-int/2addr v1, v2

    .line 5
    aget-wide v0, v3, v1

    move-wide v9, v0

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    move-object v4, p3

    move-wide v5, p1

    .line 6
    invoke-virtual/range {v4 .. v10}, Lcom/shabakaty/downloader/wz3;->a(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public l(JLcom/shabakaty/downloader/zz;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/shabakaty/downloader/zz;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/lo2;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/f81;->u(JLcom/shabakaty/downloader/zz;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public m(Lcom/shabakaty/downloader/zz;)V
    .locals 0

    return-void
.end method

.method public final n(JJLjava/util/List;Lcom/shabakaty/downloader/b00;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/lo2;",
            ">;",
            "Lcom/shabakaty/downloader/b00;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v10, p3

    move-object/from16 v12, p6

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Lcom/shabakaty/downloader/wa4;

    iget-object v2, v1, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    iget v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    aget-object v13, v2, v3

    .line 3
    iget v2, v13, Lcom/shabakaty/downloader/wa4$b;->k:I

    const/4 v14, 0x1

    if-nez v2, :cond_1

    .line 4
    iget-boolean v1, v1, Lcom/shabakaty/downloader/wa4;->d:Z

    xor-int/2addr v1, v14

    iput-boolean v1, v12, Lcom/shabakaty/downloader/b00;->s:Z

    return-void

    .line 5
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v13, Lcom/shabakaty/downloader/wa4$b;->o:[J

    invoke-static {v1, v10, v11, v14, v14}, Lcom/shabakaty/downloader/sy4;->f([JJZZ)I

    move-result v1

    move-object/from16 v15, p5

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    move-object/from16 v15, p5

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/lo2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/lo2;->c()J

    move-result-wide v1

    iget v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-gez v1, :cond_3

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/tl;

    invoke-direct {v1}, Lcom/shabakaty/downloader/tl;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    return-void

    :cond_3
    :goto_0
    move v9, v1

    .line 9
    iget v1, v13, Lcom/shabakaty/downloader/wa4$b;->k:I

    if-lt v9, v1, :cond_4

    .line 10
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Lcom/shabakaty/downloader/wa4;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/wa4;->d:Z

    xor-int/2addr v1, v14

    iput-boolean v1, v12, Lcom/shabakaty/downloader/b00;->s:Z

    return-void

    :cond_4
    sub-long v4, v10, p1

    .line 11
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->f:Lcom/shabakaty/downloader/wa4;

    iget-boolean v2, v1, Lcom/shabakaty/downloader/wa4;->d:Z

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_5

    move-wide/from16 v6, v16

    goto :goto_1

    .line 12
    :cond_5
    iget-object v1, v1, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    iget v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->b:I

    aget-object v1, v1, v2

    .line 13
    iget v2, v1, Lcom/shabakaty/downloader/wa4$b;->k:I

    add-int/lit8 v2, v2, -0x1

    .line 14
    iget-object v3, v1, Lcom/shabakaty/downloader/wa4$b;->o:[J

    aget-wide v6, v3, v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/wa4$b;->b(I)J

    move-result-wide v1

    add-long/2addr v1, v6

    sub-long v1, v1, p1

    move-wide v6, v1

    .line 16
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    invoke-interface {v1}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v1

    new-array v8, v1, [Lcom/shabakaty/downloader/mo2;

    const/16 v18, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    .line 17
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/hp4;->d(I)I

    move-result v3

    .line 18
    new-instance v14, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;

    invoke-direct {v14, v13, v3, v9}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;-><init>(Lcom/shabakaty/downloader/wa4$b;II)V

    aput-object v14, v8, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v14, 0x1

    goto :goto_2

    .line 19
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    move-wide/from16 v2, p1

    move-object v14, v8

    move-object/from16 v8, p5

    move v10, v9

    move-object v9, v14

    invoke-interface/range {v1 .. v9}, Lcom/shabakaty/downloader/f81;->h(JJJLjava/util/List;[Lcom/shabakaty/downloader/mo2;)V

    .line 20
    iget-object v1, v13, Lcom/shabakaty/downloader/wa4$b;->o:[J

    aget-wide v36, v1, v10

    .line 21
    invoke-virtual {v13, v10}, Lcom/shabakaty/downloader/wa4$b;->b(I)J

    move-result-wide v1

    add-long v27, v1, v36

    .line 22
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    move-wide/from16 v29, p3

    goto :goto_3

    :cond_7
    move-wide/from16 v29, v16

    .line 23
    :goto_3
    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->g:I

    add-int v9, v10, v1

    .line 24
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    invoke-interface {v1}, Lcom/shabakaty/downloader/f81;->i()I

    move-result v1

    .line 25
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->c:[Lcom/shabakaty/downloader/a00;

    aget-object v38, v2, v1

    .line 26
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/hp4;->d(I)I

    move-result v1

    .line 27
    iget-object v2, v13, Lcom/shabakaty/downloader/wa4$b;->j:[Lcom/shabakaty/downloader/wh1;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 28
    iget-object v2, v13, Lcom/shabakaty/downloader/wa4$b;->n:Ljava/util/List;

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 29
    iget-object v2, v13, Lcom/shabakaty/downloader/wa4$b;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_a

    const/4 v14, 0x1

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_6
    invoke-static {v14}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 30
    iget-object v2, v13, Lcom/shabakaty/downloader/wa4$b;->j:[Lcom/shabakaty/downloader/wh1;

    aget-object v1, v2, v1

    iget v1, v1, Lcom/shabakaty/downloader/wh1;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v2, v13, Lcom/shabakaty/downloader/wa4$b;->n:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v3, v13, Lcom/shabakaty/downloader/wa4$b;->m:Ljava/lang/String;

    const-string v4, "{bitrate}"

    .line 33
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{Bitrate}"

    .line 34
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "{start time}"

    .line 35
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "{start_time}"

    .line 36
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 37
    iget-object v2, v13, Lcom/shabakaty/downloader/wa4$b;->l:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 38
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    .line 39
    invoke-interface {v1}, Lcom/shabakaty/downloader/f81;->p()Lcom/shabakaty/downloader/wh1;

    move-result-object v22

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->d:Lcom/shabakaty/downloader/vl0;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    .line 40
    invoke-interface {v2}, Lcom/shabakaty/downloader/f81;->q()I

    move-result v23

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    .line 41
    invoke-interface {v2}, Lcom/shabakaty/downloader/f81;->s()Ljava/lang/Object;

    move-result-object v24

    .line 42
    new-instance v3, Lcom/shabakaty/downloader/yl0;

    move-object/from16 v21, v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    .line 43
    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/yl0;-><init>(Landroid/net/Uri;JJ)V

    .line 44
    new-instance v2, Lcom/shabakaty/downloader/bd0;

    move-object/from16 v19, v2

    const-wide v31, -0x7fffffffffffffffL    # -4.9E-324

    int-to-long v3, v9

    move-wide/from16 v33, v3

    const/16 v35, 0x1

    move-object/from16 v20, v1

    move-wide/from16 v25, v36

    invoke-direct/range {v19 .. v38}, Lcom/shabakaty/downloader/bd0;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJJJJIJLcom/shabakaty/downloader/a00;)V

    .line 45
    iput-object v2, v12, Lcom/shabakaty/downloader/b00;->r:Ljava/lang/Object;

    return-void
.end method

.method public o(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/lo2;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->h:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/f81;->n(JLjava/util/List;)I

    move-result p1

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public p(Lcom/shabakaty/downloader/zz;ZLcom/shabakaty/downloader/gj2$c;Lcom/shabakaty/downloader/gj2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/kp4;->a(Lcom/shabakaty/downloader/f81;)Lcom/shabakaty/downloader/gj2$a;

    move-result-object v0

    .line 3
    check-cast p4, Lcom/shabakaty/downloader/po0;

    invoke-virtual {p4, v0, p3}, Lcom/shabakaty/downloader/po0;->a(Lcom/shabakaty/downloader/gj2$a;Lcom/shabakaty/downloader/gj2$c;)Lcom/shabakaty/downloader/gj2$b;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 4
    iget p2, p3, Lcom/shabakaty/downloader/gj2$b;->a:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;->e:Lcom/shabakaty/downloader/f81;

    iget-object p1, p1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    .line 5
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/hp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result p1

    iget-wide p3, p3, Lcom/shabakaty/downloader/gj2$b;->b:J

    .line 6
    invoke-interface {p2, p1, p3, p4}, Lcom/shabakaty/downloader/f81;->j(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
