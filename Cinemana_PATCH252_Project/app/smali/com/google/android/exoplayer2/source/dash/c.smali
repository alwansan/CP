.class public Lcom/google/android/exoplayer2/source/dash/c;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/c$b;,
        Lcom/google/android/exoplayer2/source/dash/c$c;,
        Lcom/google/android/exoplayer2/source/dash/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/kj2;

.field public final b:Lcom/shabakaty/downloader/ok;

.field public final c:[I

.field public final d:I

.field public final e:Lcom/shabakaty/downloader/vl0;

.field public final f:J

.field public final g:I

.field public final h:Lcom/google/android/exoplayer2/source/dash/d$c;

.field public final i:[Lcom/google/android/exoplayer2/source/dash/c$b;

.field public j:Lcom/shabakaty/downloader/f81;

.field public k:Lcom/shabakaty/downloader/zk0;

.field public l:I

.field public m:Ljava/io/IOException;

.field public n:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/ok;I[ILcom/shabakaty/downloader/f81;ILcom/shabakaty/downloader/vl0;JIZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/d$c;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/a00$a;",
            "Lcom/shabakaty/downloader/kj2;",
            "Lcom/shabakaty/downloader/zk0;",
            "Lcom/shabakaty/downloader/ok;",
            "I[I",
            "Lcom/shabakaty/downloader/f81;",
            "I",
            "Lcom/shabakaty/downloader/vl0;",
            "JIZ",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/d$c;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move/from16 v5, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p1

    .line 2
    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/c;->a:Lcom/shabakaty/downloader/kj2;

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/c;->k:Lcom/shabakaty/downloader/zk0;

    .line 4
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/c;->b:Lcom/shabakaty/downloader/ok;

    move-object/from16 v6, p5

    .line 5
    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/c;->c:[I

    .line 6
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    .line 7
    iput v5, v0, Lcom/google/android/exoplayer2/source/dash/c;->d:I

    move-object/from16 v6, p8

    .line 8
    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/c;->e:Lcom/shabakaty/downloader/vl0;

    .line 9
    iput v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->l:I

    move-wide/from16 v6, p9

    .line 10
    iput-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/c;->f:J

    move/from16 v6, p11

    .line 11
    iput v6, v0, Lcom/google/android/exoplayer2/source/dash/c;->g:I

    move-object/from16 v12, p14

    .line 12
    iput-object v12, v0, Lcom/google/android/exoplayer2/source/dash/c;->h:Lcom/google/android/exoplayer2/source/dash/d$c;

    .line 13
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/zk0;->d(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v22

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/c;->g()Ljava/util/ArrayList;

    move-result-object v1

    .line 15
    invoke-interface/range {p6 .. p6}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/dash/c$b;

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    const/4 v3, 0x0

    const/4 v14, 0x0

    .line 16
    :goto_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    array-length v6, v6

    if-ge v14, v6, :cond_8

    .line 17
    invoke-interface {v4, v14}, Lcom/shabakaty/downloader/hp4;->d(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/shabakaty/downloader/ur3;

    .line 18
    iget-object v6, v15, Lcom/shabakaty/downloader/ur3;->s:Lcom/google/common/collect/p;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/ok;->d(Ljava/util/List;)Lcom/shabakaty/downloader/nk;

    move-result-object v6

    .line 19
    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    new-instance v24, Lcom/google/android/exoplayer2/source/dash/c$b;

    if-eqz v6, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    iget-object v6, v15, Lcom/shabakaty/downloader/ur3;->s:Lcom/google/common/collect/p;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/nk;

    :goto_1
    move-object/from16 v17, v6

    sget-object v6, Lcom/shabakaty/downloader/zo;->A:Lcom/shabakaty/downloader/a00$a;

    iget-object v11, v15, Lcom/shabakaty/downloader/ur3;->r:Lcom/shabakaty/downloader/wh1;

    .line 21
    check-cast v6, Lcom/shabakaty/downloader/wx;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/shabakaty/downloader/zo;->A:Lcom/shabakaty/downloader/a00$a;

    .line 22
    iget-object v6, v11, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    .line 23
    invoke-static {v6}, Lcom/shabakaty/downloader/nt2;->l(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "application/x-rawcc"

    .line 24
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 25
    new-instance v6, Lcom/shabakaty/downloader/vm3;

    invoke-direct {v6, v11}, Lcom/shabakaty/downloader/vm3;-><init>(Lcom/shabakaty/downloader/wh1;)V

    :goto_2
    move-object v3, v11

    goto :goto_7

    :cond_1
    const/4 v6, 0x0

    move-object/from16 v18, v6

    goto :goto_8

    :cond_2
    const/4 v7, 0x1

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    const-string v8, "video/webm"

    .line 26
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "audio/webm"

    .line 27
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "application/webm"

    .line 28
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "video/x-matroska"

    .line 29
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "audio/x-matroska"

    .line 30
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "application/x-matroska"

    .line 31
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_6

    .line 32
    new-instance v6, Lcom/shabakaty/downloader/yn2;

    invoke-direct {v6, v7}, Lcom/shabakaty/downloader/yn2;-><init>(I)V

    goto :goto_2

    :cond_6
    if-eqz p12, :cond_7

    const/4 v6, 0x4

    const/4 v7, 0x4

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    .line 33
    :goto_6
    new-instance v16, Lcom/shabakaty/downloader/ol1;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, v16

    move-object/from16 v10, p13

    move-object v3, v11

    move-object/from16 v11, p14

    invoke-direct/range {v6 .. v11}, Lcom/shabakaty/downloader/ol1;-><init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/wo4;Ljava/util/List;Lcom/shabakaty/downloader/fp4;)V

    .line 34
    :goto_7
    new-instance v7, Lcom/shabakaty/downloader/zo;

    invoke-direct {v7, v6, v5, v3}, Lcom/shabakaty/downloader/zo;-><init>(Lcom/shabakaty/downloader/n91;ILcom/shabakaty/downloader/wh1;)V

    move-object/from16 v18, v7

    :goto_8
    const-wide/16 v19, 0x0

    .line 35
    invoke-virtual {v15}, Lcom/shabakaty/downloader/ur3;->b()Lcom/shabakaty/downloader/dl0;

    move-result-object v21

    move-object v3, v13

    move-object/from16 v13, v24

    move v6, v14

    move-object v7, v15

    move-wide/from16 v14, v22

    move-object/from16 v16, v7

    invoke-direct/range {v13 .. v21}, Lcom/google/android/exoplayer2/source/dash/c$b;-><init>(JLcom/shabakaty/downloader/ur3;Lcom/shabakaty/downloader/nk;Lcom/shabakaty/downloader/a00;JLcom/shabakaty/downloader/dl0;)V

    aput-object v24, v3, v6

    add-int/lit8 v14, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lcom/shabakaty/downloader/a00;

    if-eqz v3, :cond_0

    .line 3
    check-cast v3, Lcom/shabakaty/downloader/zo;

    .line 4
    iget-object v3, v3, Lcom/shabakaty/downloader/zo;->r:Lcom/shabakaty/downloader/n91;

    invoke-interface {v3}, Lcom/shabakaty/downloader/n91;->a()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->a:Lcom/shabakaty/downloader/kj2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kj2;->b()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public c(Lcom/shabakaty/downloader/f81;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/zk0;I)V
    .locals 5

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Lcom/shabakaty/downloader/zk0;

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:I

    .line 3
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zk0;->e(I)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/c;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/hp4;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ur3;

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    aget-object v4, v3, v1

    .line 8
    invoke-virtual {v4, p1, p2, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;->a(JLcom/shabakaty/downloader/ur3;)Lcom/google/android/exoplayer2/source/dash/c$b;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Lcom/shabakaty/downloader/tl; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/io/IOException;

    :cond_0
    return-void
.end method

.method public final f(J)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Lcom/shabakaty/downloader/zk0;

    iget-wide v1, v0, Lcom/shabakaty/downloader/zk0;->a:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:I

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v0

    iget-wide v3, v0, Lcom/shabakaty/downloader/vb3;->b:J

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v0

    sub-long v3, p1, v0

    :goto_0
    return-wide v3
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/ur3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Lcom/shabakaty/downloader/zk0;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:I

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->c:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/l4;

    iget-object v5, v5, Lcom/shabakaty/downloader/l4;->c:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final h(Lcom/google/android/exoplayer2/source/dash/c$b;Lcom/shabakaty/downloader/lo2;JJJ)J
    .locals 11

    move-object v0, p1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lo2;->c()J

    move-result-wide v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    move-wide v4, p3

    invoke-interface {v1, p3, p4, v2, v3}, Lcom/shabakaty/downloader/dl0;->u0(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    add-long v5, v1, v3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    .line 3
    invoke-static/range {v5 .. v10}, Lcom/shabakaty/downloader/sy4;->j(JJJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 16

    move-wide/from16 v1, p1

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 2
    iget-object v6, v5, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    if-eqz v6, :cond_2

    .line 3
    iget-wide v3, v5, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    invoke-interface {v6, v1, v2, v3, v4}, Lcom/shabakaty/downloader/dl0;->u0(JJ)J

    move-result-wide v3

    iget-wide v8, v5, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    add-long/2addr v3, v8

    .line 4
    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/source/dash/c$b;->f(J)J

    move-result-wide v8

    .line 5
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/dash/c$b;->d()J

    move-result-wide v10

    cmp-long v0, v8, v1

    if-gez v0, :cond_1

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v5, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/dl0;->I0()J

    move-result-wide v12

    iget-wide v14, v5, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    add-long/2addr v12, v14

    add-long/2addr v12, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v12, v10

    cmp-long v0, v3, v12

    if-gez v0, :cond_1

    goto :goto_1

    :cond_0
    const-wide/16 v10, 0x1

    :goto_1
    add-long/2addr v3, v10

    .line 7
    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/source/dash/c$b;->f(J)J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_2

    :cond_1
    move-wide v5, v8

    :goto_2
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    move-wide v3, v8

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/wz3;->a(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/f81;->u(JLcom/shabakaty/downloader/zz;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public m(Lcom/shabakaty/downloader/zz;)V
    .locals 13

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/u02;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/u02;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    iget-object v0, v0, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/hp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    aget-object v2, v1, v0

    .line 5
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    if-nez v3, :cond_1

    .line 6
    iget-object v9, v2, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lcom/shabakaty/downloader/a00;

    move-object v3, v9

    check-cast v3, Lcom/shabakaty/downloader/zo;

    .line 7
    iget-object v3, v3, Lcom/shabakaty/downloader/zo;->y:Lcom/shabakaty/downloader/vz3;

    instance-of v4, v3, Lcom/shabakaty/downloader/c00;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/shabakaty/downloader/c00;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 8
    new-instance v12, Lcom/shabakaty/downloader/ly5;

    iget-object v7, v2, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lcom/shabakaty/downloader/ur3;

    iget-wide v4, v7, Lcom/shabakaty/downloader/ur3;->t:J

    invoke-direct {v12, v3, v4, v5}, Lcom/shabakaty/downloader/ly5;-><init>(Lcom/shabakaty/downloader/c00;J)V

    .line 9
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/c$b;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    iget-object v8, v2, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lcom/shabakaty/downloader/nk;

    iget-wide v10, v2, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/google/android/exoplayer2/source/dash/c$b;-><init>(JLcom/shabakaty/downloader/ur3;Lcom/shabakaty/downloader/nk;Lcom/shabakaty/downloader/a00;JLcom/shabakaty/downloader/dl0;)V

    .line 10
    aput-object v3, v1, v0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->h:Lcom/google/android/exoplayer2/source/dash/d$c;

    if-eqz v0, :cond_4

    .line 12
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/d$c;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-wide v3, p1, Lcom/shabakaty/downloader/zz;->h:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    .line 13
    :cond_2
    iget-wide v1, p1, Lcom/shabakaty/downloader/zz;->h:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/d$c;->d:J

    .line 14
    :cond_3
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/dash/d$c;->e:Lcom/google/android/exoplayer2/source/dash/d;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/source/dash/d;->y:Z

    :cond_4
    return-void
.end method

.method public n(JJLjava/util/List;Lcom/shabakaty/downloader/b00;)V
    .locals 53
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

    move-object/from16 v9, p0

    move-object/from16 v10, p6

    .line 1
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/io/IOException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sub-long v11, p3, p1

    .line 2
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->k:Lcom/shabakaty/downloader/zk0;

    iget-wide v0, v0, Lcom/shabakaty/downloader/zk0;->a:J

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v0

    iget-object v2, v9, Lcom/google/android/exoplayer2/source/dash/c;->k:Lcom/shabakaty/downloader/zk0;

    iget v3, v9, Lcom/google/android/exoplayer2/source/dash/c;->l:I

    .line 4
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v2

    iget-wide v2, v2, Lcom/shabakaty/downloader/vb3;->b:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    add-long v2, v2, p3

    .line 5
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->h:Lcom/google/android/exoplayer2/source/dash/d$c;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_7

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/d$c;->e:Lcom/google/android/exoplayer2/source/dash/d;

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/d;->w:Lcom/shabakaty/downloader/zk0;

    iget-boolean v4, v1, Lcom/shabakaty/downloader/zk0;->d:Z

    if-nez v4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 8
    :cond_1
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/dash/d;->z:Z

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-wide v4, v1, Lcom/shabakaty/downloader/zk0;->h:J

    .line 10
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/d;->v:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_5

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/d;->x:J

    .line 13
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/d;->s:Lcom/google/android/exoplayer2/source/dash/d$b;

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    .line 14
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 15
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->d0:J

    cmp-long v6, v4, v13

    if-eqz v6, :cond_3

    cmp-long v6, v4, v1

    if-gez v6, :cond_4

    .line 16
    :cond_3
    iput-wide v1, v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->d0:J

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/d;->a()V

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    return-void

    .line 18
    :cond_7
    iget-wide v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->f:J

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/sy4;->v(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v5

    .line 19
    invoke-virtual {v9, v5, v6}, Lcom/google/android/exoplayer2/source/dash/c;->f(J)J

    move-result-wide v3

    .line 20
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v24, 0x0

    if-eqz v0, :cond_8

    move-object/from16 v8, p5

    move-object/from16 v25, v24

    goto :goto_2

    :cond_8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    move-object/from16 v8, p5

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lo2;

    move-object/from16 v25, v0

    .line 21
    :goto_2
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v2

    new-array v1, v2, [Lcom/shabakaty/downloader/mo2;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_b

    .line 22
    iget-object v7, v9, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    aget-object v7, v7, v0

    .line 23
    iget-object v13, v7, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    if-nez v13, :cond_9

    .line 24
    sget-object v7, Lcom/shabakaty/downloader/mo2;->a:Lcom/shabakaty/downloader/mo2;

    aput-object v7, v1, v0

    move/from16 v26, v0

    move-object/from16 v27, v1

    move/from16 v28, v2

    move-wide/from16 v29, v3

    move-wide/from16 v31, v11

    const/4 v12, 0x1

    move-wide v10, v5

    goto :goto_4

    .line 25
    :cond_9
    invoke-virtual {v7, v5, v6}, Lcom/google/android/exoplayer2/source/dash/c$b;->b(J)J

    move-result-wide v13

    .line 26
    invoke-virtual {v7, v5, v6}, Lcom/google/android/exoplayer2/source/dash/c$b;->c(J)J

    move-result-wide v20

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v27, v1

    move-object v1, v7

    move/from16 v28, v2

    move-object/from16 v2, v25

    move-wide/from16 v29, v3

    move-wide/from16 v3, p3

    move-wide/from16 v31, v11

    move-wide v10, v5

    move-wide v5, v13

    move-object/from16 v17, v7

    const/4 v12, 0x1

    move-wide/from16 v7, v20

    .line 27
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/c;->h(Lcom/google/android/exoplayer2/source/dash/c$b;Lcom/shabakaty/downloader/lo2;JJJ)J

    move-result-wide v18

    cmp-long v0, v18, v13

    if-gez v0, :cond_a

    .line 28
    sget-object v0, Lcom/shabakaty/downloader/mo2;->a:Lcom/shabakaty/downloader/mo2;

    aput-object v0, v27, v26

    goto :goto_4

    .line 29
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$c;

    move-object/from16 v16, v0

    move-wide/from16 v22, v29

    invoke-direct/range {v16 .. v23}, Lcom/google/android/exoplayer2/source/dash/c$c;-><init>(Lcom/google/android/exoplayer2/source/dash/c$b;JJJ)V

    aput-object v0, v27, v26

    :goto_4
    add-int/lit8 v0, v26, 0x1

    move-object/from16 v8, p5

    move-wide v5, v10

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v29

    move-wide/from16 v11, v31

    const/4 v7, 0x1

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v10, p6

    goto :goto_3

    :cond_b
    move-object/from16 v27, v1

    move-wide/from16 v29, v3

    move-wide/from16 v31, v11

    const/4 v12, 0x1

    move-wide v10, v5

    .line 30
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->k:Lcom/shabakaty/downloader/zk0;

    iget-boolean v0, v0, Lcom/shabakaty/downloader/zk0;->d:Z

    const-wide/16 v13, 0x0

    if-nez v0, :cond_c

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_5

    .line 31
    :cond_c
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    aget-object v0, v0, v15

    invoke-virtual {v0, v10, v11}, Lcom/google/android/exoplayer2/source/dash/c$b;->c(J)J

    move-result-wide v0

    .line 32
    iget-object v2, v9, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    aget-object v2, v2, v15

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/c$b;->e(J)J

    move-result-wide v0

    .line 33
    invoke-virtual {v9, v10, v11}, Lcom/google/android/exoplayer2/source/dash/c;->f(J)J

    move-result-wide v2

    .line 34
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v0, v0, p1

    .line 35
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v5, v0

    .line 36
    :goto_5
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    move-wide/from16 v1, p1

    move-wide/from16 v3, v31

    move-object/from16 v7, p5

    move-object/from16 v8, v27

    invoke-interface/range {v0 .. v8}, Lcom/shabakaty/downloader/f81;->h(JJJLjava/util/List;[Lcom/shabakaty/downloader/mo2;)V

    .line 37
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    .line 38
    invoke-interface {v0}, Lcom/shabakaty/downloader/f81;->i()I

    move-result v0

    .line 39
    iget-object v1, v9, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    aget-object v1, v1, v0

    .line 40
    iget-object v2, v9, Lcom/google/android/exoplayer2/source/dash/c;->b:Lcom/shabakaty/downloader/ok;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lcom/shabakaty/downloader/ur3;

    iget-object v3, v3, Lcom/shabakaty/downloader/ur3;->s:Lcom/google/common/collect/p;

    .line 41
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ok;->d(Ljava/util/List;)Lcom/shabakaty/downloader/nk;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 42
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lcom/shabakaty/downloader/nk;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/nk;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 43
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/c$b;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lcom/shabakaty/downloader/ur3;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lcom/shabakaty/downloader/a00;

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    move-object/from16 v31, v3

    move-wide/from16 v32, v4

    move-object/from16 v34, v6

    move-object/from16 v35, v2

    move-object/from16 v36, v7

    move-wide/from16 v37, v12

    move-object/from16 v39, v1

    invoke-direct/range {v31 .. v39}, Lcom/google/android/exoplayer2/source/dash/c$b;-><init>(JLcom/shabakaty/downloader/ur3;Lcom/shabakaty/downloader/nk;Lcom/shabakaty/downloader/a00;JLcom/shabakaty/downloader/dl0;)V

    .line 44
    iget-object v1, v9, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    aput-object v3, v1, v0

    move-object v12, v3

    goto :goto_6

    :cond_d
    move-object v12, v1

    .line 45
    :goto_6
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lcom/shabakaty/downloader/a00;

    if-eqz v0, :cond_12

    .line 46
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lcom/shabakaty/downloader/ur3;

    .line 47
    check-cast v0, Lcom/shabakaty/downloader/zo;

    .line 48
    iget-object v0, v0, Lcom/shabakaty/downloader/zo;->z:[Lcom/shabakaty/downloader/wh1;

    if-nez v0, :cond_e

    .line 49
    iget-object v0, v1, Lcom/shabakaty/downloader/ur3;->v:Lcom/shabakaty/downloader/qm3;

    goto :goto_7

    :cond_e
    move-object/from16 v0, v24

    .line 50
    :goto_7
    iget-object v2, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    if-nez v2, :cond_f

    .line 51
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ur3;->c()Lcom/shabakaty/downloader/qm3;

    move-result-object v24

    :cond_f
    move-object/from16 v1, v24

    if-nez v0, :cond_10

    if-eqz v1, :cond_12

    .line 52
    :cond_10
    iget-object v3, v9, Lcom/google/android/exoplayer2/source/dash/c;->e:Lcom/shabakaty/downloader/vl0;

    iget-object v2, v9, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    .line 53
    invoke-interface {v2}, Lcom/shabakaty/downloader/f81;->p()Lcom/shabakaty/downloader/wh1;

    move-result-object v5

    iget-object v2, v9, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    .line 54
    invoke-interface {v2}, Lcom/shabakaty/downloader/f81;->q()I

    move-result v6

    iget-object v2, v9, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    .line 55
    invoke-interface {v2}, Lcom/shabakaty/downloader/f81;->s()Ljava/lang/Object;

    move-result-object v7

    .line 56
    iget-object v2, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lcom/shabakaty/downloader/ur3;

    if-eqz v0, :cond_11

    .line 57
    iget-object v4, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lcom/shabakaty/downloader/nk;

    iget-object v4, v4, Lcom/shabakaty/downloader/nk;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1, v4}, Lcom/shabakaty/downloader/qm3;->a(Lcom/shabakaty/downloader/qm3;Ljava/lang/String;)Lcom/shabakaty/downloader/qm3;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_11
    move-object v0, v1

    .line 59
    :goto_8
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lcom/shabakaty/downloader/nk;

    iget-object v1, v1, Lcom/shabakaty/downloader/nk;->a:Ljava/lang/String;

    .line 60
    invoke-static {v2, v1, v0, v15}, Lcom/shabakaty/downloader/el0;->a(Lcom/shabakaty/downloader/ur3;Ljava/lang/String;Lcom/shabakaty/downloader/qm3;I)Lcom/shabakaty/downloader/yl0;

    move-result-object v4

    .line 61
    new-instance v0, Lcom/shabakaty/downloader/u02;

    iget-object v8, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lcom/shabakaty/downloader/a00;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/u02;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;Lcom/shabakaty/downloader/a00;)V

    move-object/from16 v10, p6

    .line 62
    iput-object v0, v10, Lcom/shabakaty/downloader/b00;->r:Ljava/lang/Object;

    return-void

    :cond_12
    move-wide v0, v10

    move-object/from16 v10, p6

    .line 63
    iget-wide v13, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v13, v2

    if-eqz v11, :cond_13

    const/4 v7, 0x1

    goto :goto_9

    :cond_13
    const/4 v7, 0x0

    .line 64
    :goto_9
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/c$b;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_14

    .line 65
    iput-boolean v7, v10, Lcom/shabakaty/downloader/b00;->s:Z

    return-void

    .line 66
    :cond_14
    invoke-virtual {v12, v0, v1}, Lcom/google/android/exoplayer2/source/dash/c$b;->b(J)J

    move-result-wide v17

    .line 67
    invoke-virtual {v12, v0, v1}, Lcom/google/android/exoplayer2/source/dash/c$b;->c(J)J

    move-result-wide v19

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v25

    move-wide/from16 v3, p3

    move-wide/from16 v5, v17

    move v15, v7

    move-wide/from16 v7, v19

    .line 68
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/c;->h(Lcom/google/android/exoplayer2/source/dash/c$b;Lcom/shabakaty/downloader/lo2;JJJ)J

    move-result-wide v0

    cmp-long v2, v0, v17

    if-gez v2, :cond_15

    .line 69
    new-instance v0, Lcom/shabakaty/downloader/tl;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tl;-><init>()V

    iput-object v0, v9, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/io/IOException;

    return-void

    :cond_15
    cmp-long v2, v0, v19

    if-gtz v2, :cond_20

    .line 70
    iget-boolean v3, v9, Lcom/google/android/exoplayer2/source/dash/c;->n:Z

    if-eqz v3, :cond_16

    if-ltz v2, :cond_16

    goto/16 :goto_10

    :cond_16
    if-eqz v15, :cond_17

    .line 71
    invoke-virtual {v12, v0, v1}, Lcom/google/android/exoplayer2/source/dash/c$b;->f(J)J

    move-result-wide v2

    cmp-long v4, v2, v13

    if-ltz v4, :cond_17

    const/4 v2, 0x1

    .line 72
    iput-boolean v2, v10, Lcom/shabakaty/downloader/b00;->s:Z

    return-void

    .line 73
    :cond_17
    iget v2, v9, Lcom/google/android/exoplayer2/source/dash/c;->g:I

    int-to-long v2, v2

    sub-long v19, v19, v0

    const-wide/16 v4, 0x1

    add-long v6, v19, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    const/4 v2, 0x1

    if-eqz v11, :cond_18

    :goto_a
    if-le v3, v2, :cond_18

    int-to-long v6, v3

    add-long/2addr v6, v0

    sub-long/2addr v6, v4

    .line 74
    invoke-virtual {v12, v6, v7}, Lcom/google/android/exoplayer2/source/dash/c$b;->f(J)J

    move-result-wide v6

    cmp-long v8, v6, v13

    if-ltz v8, :cond_18

    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 75
    :cond_18
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    move-wide/from16 v41, p3

    goto :goto_b

    :cond_19
    const-wide v41, -0x7fffffffffffffffL    # -4.9E-324

    .line 76
    :goto_b
    iget-object v6, v9, Lcom/google/android/exoplayer2/source/dash/c;->e:Lcom/shabakaty/downloader/vl0;

    iget v7, v9, Lcom/google/android/exoplayer2/source/dash/c;->d:I

    iget-object v8, v9, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    .line 77
    invoke-interface {v8}, Lcom/shabakaty/downloader/f81;->p()Lcom/shabakaty/downloader/wh1;

    move-result-object v8

    iget-object v11, v9, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    .line 78
    invoke-interface {v11}, Lcom/shabakaty/downloader/f81;->q()I

    move-result v35

    iget-object v11, v9, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    .line 79
    invoke-interface {v11}, Lcom/shabakaty/downloader/f81;->s()Ljava/lang/Object;

    move-result-object v36

    .line 80
    iget-object v11, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lcom/shabakaty/downloader/ur3;

    .line 81
    iget-object v13, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    iget-wide v14, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    sub-long v14, v0, v14

    invoke-interface {v13, v14, v15}, Lcom/shabakaty/downloader/dl0;->d(J)J

    move-result-wide v37

    .line 82
    iget-object v13, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    iget-wide v14, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    sub-long v14, v0, v14

    invoke-interface {v13, v14, v15}, Lcom/shabakaty/downloader/dl0;->S(J)Lcom/shabakaty/downloader/qm3;

    move-result-object v13

    .line 83
    iget-object v14, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lcom/shabakaty/downloader/a00;

    const/16 v15, 0x8

    if-nez v14, :cond_1b

    .line 84
    invoke-virtual {v12, v0, v1}, Lcom/google/android/exoplayer2/source/dash/c$b;->e(J)J

    move-result-wide v39

    move-wide/from16 v2, v29

    .line 85
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/c$b;->g(JJ)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v15, 0x0

    .line 86
    :cond_1a
    iget-object v2, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lcom/shabakaty/downloader/nk;

    iget-object v2, v2, Lcom/shabakaty/downloader/nk;->a:Ljava/lang/String;

    .line 87
    invoke-static {v11, v2, v13, v15}, Lcom/shabakaty/downloader/el0;->a(Lcom/shabakaty/downloader/ur3;Ljava/lang/String;Lcom/shabakaty/downloader/qm3;I)Lcom/shabakaty/downloader/yl0;

    move-result-object v33

    .line 88
    new-instance v2, Lcom/shabakaty/downloader/d84;

    move-object/from16 v31, v2

    move-object/from16 v32, v6

    move-object/from16 v34, v8

    move-wide/from16 v41, v0

    move/from16 v43, v7

    move-object/from16 v44, v8

    invoke-direct/range {v31 .. v44}, Lcom/shabakaty/downloader/d84;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJJILcom/shabakaty/downloader/wh1;)V

    move-object v0, v10

    goto/16 :goto_f

    :cond_1b
    move-wide/from16 v51, v29

    const/4 v7, 0x1

    :goto_c
    if-ge v7, v3, :cond_1d

    int-to-long v4, v7

    add-long/2addr v4, v0

    .line 89
    iget-object v14, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    iget-wide v9, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    sub-long/2addr v4, v9

    invoke-interface {v14, v4, v5}, Lcom/shabakaty/downloader/dl0;->S(J)Lcom/shabakaty/downloader/qm3;

    move-result-object v4

    .line 90
    iget-object v5, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lcom/shabakaty/downloader/nk;

    iget-object v5, v5, Lcom/shabakaty/downloader/nk;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {v13, v4, v5}, Lcom/shabakaty/downloader/qm3;->a(Lcom/shabakaty/downloader/qm3;Ljava/lang/String;)Lcom/shabakaty/downloader/qm3;

    move-result-object v4

    if-nez v4, :cond_1c

    goto :goto_d

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p6

    move-object v13, v4

    const-wide/16 v4, 0x1

    goto :goto_c

    :cond_1d
    :goto_d
    int-to-long v3, v2

    add-long/2addr v3, v0

    const-wide/16 v9, 0x1

    sub-long/2addr v3, v9

    .line 92
    invoke-virtual {v12, v3, v4}, Lcom/google/android/exoplayer2/source/dash/c$b;->e(J)J

    move-result-wide v39

    .line 93
    iget-wide v9, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->e:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v16

    if-eqz v5, :cond_1e

    cmp-long v5, v9, v39

    if-gtz v5, :cond_1e

    move-wide/from16 v43, v9

    goto :goto_e

    :cond_1e
    move-wide/from16 v43, v16

    :goto_e
    move-wide/from16 v9, v51

    .line 94
    invoke-virtual {v12, v3, v4, v9, v10}, Lcom/google/android/exoplayer2/source/dash/c$b;->g(JJ)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v15, 0x0

    .line 95
    :cond_1f
    iget-object v3, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lcom/shabakaty/downloader/nk;

    iget-object v3, v3, Lcom/shabakaty/downloader/nk;->a:Ljava/lang/String;

    .line 96
    invoke-static {v11, v3, v13, v15}, Lcom/shabakaty/downloader/el0;->a(Lcom/shabakaty/downloader/ur3;Ljava/lang/String;Lcom/shabakaty/downloader/qm3;I)Lcom/shabakaty/downloader/yl0;

    move-result-object v33

    .line 97
    iget-wide v3, v11, Lcom/shabakaty/downloader/ur3;->t:J

    neg-long v3, v3

    move-wide/from16 v48, v3

    .line 98
    new-instance v3, Lcom/shabakaty/downloader/bd0;

    move-object/from16 v31, v3

    iget-object v4, v12, Lcom/google/android/exoplayer2/source/dash/c$b;->a:Lcom/shabakaty/downloader/a00;

    move-object/from16 v50, v4

    move-object/from16 v32, v6

    move-object/from16 v34, v8

    move-wide/from16 v45, v0

    move/from16 v47, v2

    invoke-direct/range {v31 .. v50}, Lcom/shabakaty/downloader/bd0;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJJJJIJLcom/shabakaty/downloader/a00;)V

    move-object/from16 v0, p6

    move-object v2, v3

    .line 99
    :goto_f
    iput-object v2, v0, Lcom/shabakaty/downloader/b00;->r:Ljava/lang/Object;

    return-void

    :cond_20
    :goto_10
    move-object v0, v10

    .line 100
    iput-boolean v15, v0, Lcom/shabakaty/downloader/b00;->s:Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

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
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->h:Lcom/google/android/exoplayer2/source/dash/d$c;

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    .line 2
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/dash/d$c;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget-wide v4, p1, Lcom/shabakaty/downloader/zz;->g:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/dash/d$c;->e:Lcom/google/android/exoplayer2/source/dash/d;

    .line 4
    iget-object v3, p2, Lcom/google/android/exoplayer2/source/dash/d;->w:Lcom/shabakaty/downloader/zk0;

    iget-boolean v3, v3, Lcom/shabakaty/downloader/zk0;->d:Z

    if-nez v3, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-boolean v3, p2, Lcom/google/android/exoplayer2/source/dash/d;->z:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/d;->a()V

    :goto_1
    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Lcom/shabakaty/downloader/zk0;

    iget-boolean p2, p2, Lcom/shabakaty/downloader/zk0;->d:Z

    if-nez p2, :cond_6

    instance-of p2, p1, Lcom/shabakaty/downloader/lo2;

    if-eqz p2, :cond_6

    iget-object p2, p3, Lcom/shabakaty/downloader/gj2$c;->a:Ljava/io/IOException;

    instance-of v2, p2, Lcom/shabakaty/downloader/fw1$e;

    if-eqz v2, :cond_6

    check-cast p2, Lcom/shabakaty/downloader/fw1$e;

    iget p2, p2, Lcom/shabakaty/downloader/fw1$e;->s:I

    const/16 v2, 0x194

    if-ne p2, v2, :cond_6

    .line 8
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    iget-object v3, p1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    .line 9
    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/hp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v2

    aget-object p2, p2, v2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/c$b;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    .line 11
    iget-object v4, p2, Lcom/google/android/exoplayer2/source/dash/c$b;->d:Lcom/shabakaty/downloader/dl0;

    invoke-interface {v4}, Lcom/shabakaty/downloader/dl0;->I0()J

    move-result-wide v4

    iget-wide v6, p2, Lcom/google/android/exoplayer2/source/dash/c$b;->f:J

    add-long/2addr v4, v6

    add-long/2addr v4, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v4, v2

    .line 12
    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/lo2;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lo2;->c()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-lez p2, :cond_6

    .line 13
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->n:Z

    return v1

    .line 14
    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    iget-object v2, p1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    invoke-interface {p2, v2}, Lcom/shabakaty/downloader/hp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result p2

    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:[Lcom/google/android/exoplayer2/source/dash/c$b;

    aget-object p2, v2, p2

    .line 16
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->b:Lcom/shabakaty/downloader/ok;

    iget-object v3, p2, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lcom/shabakaty/downloader/ur3;

    iget-object v3, v3, Lcom/shabakaty/downloader/ur3;->s:Lcom/google/common/collect/p;

    .line 17
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ok;->d(Ljava/util/List;)Lcom/shabakaty/downloader/nk;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 18
    iget-object v3, p2, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lcom/shabakaty/downloader/nk;

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/nk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 19
    :cond_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    iget-object v3, p2, Lcom/google/android/exoplayer2/source/dash/c$b;->b:Lcom/shabakaty/downloader/ur3;

    iget-object v3, v3, Lcom/shabakaty/downloader/ur3;->s:Lcom/google/common/collect/p;

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 21
    invoke-interface {v2}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    if-ge v7, v6, :cond_9

    .line 22
    invoke-interface {v2, v7, v4, v5}, Lcom/shabakaty/downloader/f81;->k(IJ)Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v8, v8, 0x1

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 23
    :cond_9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 24
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 25
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/nk;

    iget v5, v5, Lcom/shabakaty/downloader/nk;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 26
    :cond_a
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 27
    new-instance v4, Lcom/shabakaty/downloader/gj2$a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/c;->b:Lcom/shabakaty/downloader/ok;

    .line 28
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 30
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ok;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    .line 31
    :goto_6
    move-object v9, v3

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_b

    .line 32
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/nk;

    iget v9, v9, Lcom/shabakaty/downloader/nk;->c:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 33
    :cond_b
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v3

    sub-int v3, v2, v3

    .line 34
    invoke-direct {v4, v2, v3, v6, v8}, Lcom/shabakaty/downloader/gj2$a;-><init>(IIII)V

    const/4 v2, 0x2

    .line 35
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/gj2$a;->a(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 36
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/gj2$a;->a(I)Z

    move-result v3

    if-nez v3, :cond_c

    return v0

    .line 37
    :cond_c
    check-cast p4, Lcom/shabakaty/downloader/po0;

    invoke-virtual {p4, v4, p3}, Lcom/shabakaty/downloader/po0;->a(Lcom/shabakaty/downloader/gj2$a;Lcom/shabakaty/downloader/gj2$c;)Lcom/shabakaty/downloader/gj2$b;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 38
    iget p4, p3, Lcom/shabakaty/downloader/gj2$b;->a:I

    invoke-virtual {v4, p4}, Lcom/shabakaty/downloader/gj2$a;->a(I)Z

    move-result p4

    if-nez p4, :cond_d

    goto :goto_7

    .line 39
    :cond_d
    iget p4, p3, Lcom/shabakaty/downloader/gj2$b;->a:I

    if-ne p4, v2, :cond_e

    .line 40
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Lcom/shabakaty/downloader/f81;

    iget-object p1, p1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    .line 41
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/hp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result p1

    iget-wide p3, p3, Lcom/shabakaty/downloader/gj2$b;->b:J

    .line 42
    invoke-interface {p2, p1, p3, p4}, Lcom/shabakaty/downloader/f81;->j(IJ)Z

    move-result v0

    goto :goto_7

    :cond_e
    if-ne p4, v1, :cond_f

    .line 43
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->b:Lcom/shabakaty/downloader/ok;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/dash/c$b;->c:Lcom/shabakaty/downloader/nk;

    iget-wide p3, p3, Lcom/shabakaty/downloader/gj2$b;->b:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p3

    .line 45
    iget-object p3, p2, Lcom/shabakaty/downloader/nk;->b:Ljava/lang/String;

    iget-object p4, p1, Lcom/shabakaty/downloader/ok;->a:Ljava/util/Map;

    invoke-static {p3, v2, v3, p4}, Lcom/shabakaty/downloader/ok;->a(Ljava/lang/Object;JLjava/util/Map;)V

    .line 46
    iget p2, p2, Lcom/shabakaty/downloader/nk;->c:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p1, p1, Lcom/shabakaty/downloader/ok;->b:Ljava/util/Map;

    invoke-static {p2, v2, v3, p1}, Lcom/shabakaty/downloader/ok;->a(Ljava/lang/Object;JLjava/util/Map;)V

    const/4 v0, 0x1

    :cond_f
    :goto_7
    return v0
.end method
