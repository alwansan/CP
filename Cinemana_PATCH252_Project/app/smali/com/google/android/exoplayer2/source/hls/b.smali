.class public final Lcom/google/android/exoplayer2/source/hls/b;
.super Lcom/shabakaty/downloader/lo2;
.source "HlsMediaChunk.java"


# static fields
.field public static final L:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final A:Z

.field public final B:Z

.field public C:Lcom/shabakaty/downloader/jt1;

.field public D:Lcom/google/android/exoplayer2/source/hls/d;

.field public E:I

.field public F:Z

.field public volatile G:Z

.field public H:Z

.field public I:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public J:Z

.field public K:Z

.field public final k:I

.field public final l:I

.field public final m:Landroid/net/Uri;

.field public final n:Z

.field public final o:I

.field public final p:Lcom/shabakaty/downloader/vl0;

.field public final q:Lcom/shabakaty/downloader/yl0;

.field public final r:Lcom/shabakaty/downloader/jt1;

.field public final s:Z

.field public final t:Z

.field public final u:Lcom/shabakaty/downloader/qn4;

.field public final v:Lcom/shabakaty/downloader/ht1;

.field public final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/shabakaty/downloader/o01;

.field public final y:Lcom/shabakaty/downloader/px1;

.field public final z:Lcom/shabakaty/downloader/ka3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/b;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ht1;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ZLcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/o01;Lcom/shabakaty/downloader/jt1;Lcom/shabakaty/downloader/px1;Lcom/shabakaty/downloader/ka3;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ht1;",
            "Lcom/shabakaty/downloader/vl0;",
            "Lcom/shabakaty/downloader/yl0;",
            "Lcom/shabakaty/downloader/wh1;",
            "Z",
            "Lcom/shabakaty/downloader/vl0;",
            "Lcom/shabakaty/downloader/yl0;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZIZZ",
            "Lcom/shabakaty/downloader/qn4;",
            "Lcom/shabakaty/downloader/o01;",
            "Lcom/shabakaty/downloader/jt1;",
            "Lcom/shabakaty/downloader/px1;",
            "Lcom/shabakaty/downloader/ka3;",
            "Z)V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/downloader/lo2;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 2
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->A:Z

    move/from16 v0, p19

    .line 3
    iput v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->o:I

    move/from16 v0, p20

    .line 4
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->K:Z

    move/from16 v0, p21

    .line 5
    iput v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->l:I

    .line 6
    iput-object v13, v12, Lcom/google/android/exoplayer2/source/hls/b;->q:Lcom/shabakaty/downloader/yl0;

    move-object/from16 v0, p6

    .line 7
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->p:Lcom/shabakaty/downloader/vl0;

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->F:Z

    move/from16 v0, p8

    .line 9
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->B:Z

    move-object/from16 v0, p9

    .line 10
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->m:Landroid/net/Uri;

    move/from16 v0, p23

    .line 11
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->s:Z

    move-object/from16 v0, p24

    .line 12
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->u:Lcom/shabakaty/downloader/qn4;

    move/from16 v0, p22

    .line 13
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->t:Z

    move-object v0, p1

    .line 14
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->v:Lcom/shabakaty/downloader/ht1;

    move-object/from16 v0, p10

    .line 15
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->w:Ljava/util/List;

    move-object/from16 v0, p25

    .line 16
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->x:Lcom/shabakaty/downloader/o01;

    move-object/from16 v0, p26

    .line 17
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->r:Lcom/shabakaty/downloader/jt1;

    move-object/from16 v0, p27

    .line 18
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->y:Lcom/shabakaty/downloader/px1;

    move-object/from16 v0, p28

    .line 19
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    move/from16 v0, p29

    .line 20
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->n:Z

    .line 21
    sget-object v0, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 22
    sget-object v0, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    .line 23
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->I:Lcom/google/common/collect/p;

    .line 24
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/b;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lcom/google/android/exoplayer2/source/hls/b;->k:I

    return-void
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    .line 4
    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->D:Lcom/google/android/exoplayer2/source/hls/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->C:Lcom/shabakaty/downloader/jt1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->r:Lcom/shabakaty/downloader/jt1;

    if-eqz v0, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/ap;

    .line 4
    iget-object v3, v3, Lcom/shabakaty/downloader/ap;->a:Lcom/shabakaty/downloader/n91;

    instance-of v4, v3, Lcom/shabakaty/downloader/jr4;

    if-nez v4, :cond_1

    instance-of v3, v3, Lcom/shabakaty/downloader/ol1;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->C:Lcom/shabakaty/downloader/jt1;

    .line 6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/b;->F:Z

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->F:Z

    if-nez v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->p:Lcom/shabakaty/downloader/vl0;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->q:Lcom/shabakaty/downloader/yl0;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->p:Lcom/shabakaty/downloader/vl0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/b;->q:Lcom/shabakaty/downloader/yl0;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/hls/b;->B:Z

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/exoplayer2/source/hls/b;->e(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Z)V

    .line 13
    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/b;->E:I

    .line 14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/b;->F:Z

    .line 15
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->G:Z

    if-nez v0, :cond_9

    .line 16
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->t:Z

    if-nez v0, :cond_8

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->u:Lcom/shabakaty/downloader/qn4;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/b;->s:Z

    iget-wide v4, p0, Lcom/shabakaty/downloader/zz;->g:J

    .line 18
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-wide v6, v0, Lcom/shabakaty/downloader/qn4;->a:J

    const-wide v8, 0x7ffffffffffffffeL

    cmp-long v10, v6, v8

    if-nez v10, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 20
    iget-wide v6, v0, Lcom/shabakaty/downloader/qn4;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :cond_5
    if-eqz v3, :cond_6

    .line 22
    :try_start_3
    iget-object v1, v0, Lcom/shabakaty/downloader/qn4;->d:Ljava/lang/ThreadLocal;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_4

    .line 23
    :cond_6
    :goto_3
    iget-wide v3, v0, Lcom/shabakaty/downloader/qn4;->b:J

    cmp-long v1, v3, v8

    if-nez v1, :cond_7

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 25
    :cond_7
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 26
    :goto_5
    iget-object v0, p0, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    iget-object v1, p0, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/b;->A:Z

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/exoplayer2/source/hls/b;->e(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Z)V

    goto :goto_6

    :catchall_0
    move-exception v1

    .line 27
    :try_start_5
    monitor-exit v0

    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 28
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 29
    :cond_8
    :goto_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->G:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->H:Z

    :cond_9
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->G:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->H:Z

    return v0
.end method

.method public final e(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Z)V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 1
    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/b;->E:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v2, p3

    move-object p3, p2

    goto :goto_1

    .line 2
    :cond_1
    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/b;->E:I

    int-to-long v2, p3

    invoke-virtual {p2, v2, v3}, Lcom/shabakaty/downloader/yl0;->d(J)Lcom/shabakaty/downloader/yl0;

    move-result-object p3

    const/4 v2, 0x0

    .line 3
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/source/hls/b;->h(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;)Lcom/shabakaty/downloader/co0;

    move-result-object p3

    if-eqz v2, :cond_2

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/b;->E:I

    invoke-virtual {p3, v2}, Lcom/shabakaty/downloader/co0;->q(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_2
    :goto_2
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/b;->G:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/b;->C:Lcom/shabakaty/downloader/jt1;

    check-cast v2, Lcom/shabakaty/downloader/ap;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/ap;->a:Lcom/shabakaty/downloader/n91;

    sget-object v3, Lcom/shabakaty/downloader/ap;->d:Lcom/shabakaty/downloader/ie3;

    invoke-interface {v2, p3, v3}, Lcom/shabakaty/downloader/n91;->f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I

    move-result v2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 7
    :cond_4
    :try_start_2
    iget-wide v0, p3, Lcom/shabakaty/downloader/co0;->d:J

    .line 8
    iget-wide p2, p2, Lcom/shabakaty/downloader/yl0;->f:J

    :goto_4
    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/b;->E:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p2

    goto :goto_7

    :catch_0
    move-exception v0

    .line 9
    :try_start_3
    iget-object v1, p0, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v1, v1, Lcom/shabakaty/downloader/wh1;->v:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_5

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->C:Lcom/shabakaty/downloader/jt1;

    check-cast v0, Lcom/shabakaty/downloader/ap;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ap;->a:Lcom/shabakaty/downloader/n91;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Lcom/shabakaty/downloader/n91;->b(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    iget-wide v0, p3, Lcom/shabakaty/downloader/co0;->d:J

    .line 13
    iget-wide p2, p2, Lcom/shabakaty/downloader/yl0;->f:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 14
    :goto_5
    :try_start_5
    invoke-interface {p1}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    return-void

    .line 15
    :cond_5
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 16
    :goto_6
    :try_start_7
    iget-wide v1, p3, Lcom/shabakaty/downloader/co0;->d:J

    .line 17
    iget-wide p2, p2, Lcom/shabakaty/downloader/yl0;->f:J

    sub-long/2addr v1, p2

    long-to-int p2, v1

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/b;->E:I

    .line 18
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    if-eqz p1, :cond_6

    .line 19
    :try_start_8
    invoke-interface {p1}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 20
    :catch_2
    :cond_6
    throw p2
.end method

.method public g(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->I:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/b;->I:Lcom/google/common/collect/p;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final h(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;)Lcom/shabakaty/downloader/co0;
    .locals 20
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractor"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-interface/range {p1 .. p2}, Lcom/shabakaty/downloader/vl0;->a(Lcom/shabakaty/downloader/yl0;)J

    move-result-wide v6

    .line 2
    new-instance v8, Lcom/shabakaty/downloader/co0;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yl0;->f:J

    move-object v2, v8

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/co0;-><init>(Lcom/shabakaty/downloader/rl0;JJ)V

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/b;->C:Lcom/shabakaty/downloader/jt1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_29

    .line 4
    invoke-virtual {v8}, Lcom/shabakaty/downloader/co0;->p()V

    const/16 v2, 0x8

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    :try_start_0
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 6
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    .line 7
    iget-object v7, v7, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 8
    invoke-virtual {v8, v7, v4, v9}, Lcom/shabakaty/downloader/co0;->s([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->v()I

    move-result v7

    const v10, 0x494433

    if-eq v7, v10, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 11
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->s()I

    move-result v7

    add-int/lit8 v10, v7, 0xa

    .line 12
    iget-object v11, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    .line 13
    iget-object v12, v11, Lcom/shabakaty/downloader/ka3;->a:[B

    array-length v13, v12

    if-le v10, v13, :cond_1

    .line 14
    invoke-virtual {v11, v10}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 15
    iget-object v10, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    .line 16
    iget-object v10, v10, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 17
    invoke-static {v12, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :cond_1
    iget-object v10, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    .line 19
    iget-object v10, v10, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 20
    invoke-virtual {v8, v10, v9, v7}, Lcom/shabakaty/downloader/co0;->s([BII)V

    .line 21
    iget-object v9, v1, Lcom/google/android/exoplayer2/source/hls/b;->y:Lcom/shabakaty/downloader/px1;

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    .line 22
    iget-object v10, v10, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 23
    invoke-virtual {v9, v10, v7}, Lcom/shabakaty/downloader/px1;->d([BI)Lcom/shabakaty/downloader/ps2;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    iget-object v9, v7, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    array-length v9, v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_4

    .line 25
    iget-object v11, v7, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    aget-object v11, v11, v10

    .line 26
    instance-of v12, v11, Lcom/shabakaty/downloader/yf3;

    if-eqz v12, :cond_3

    .line 27
    check-cast v11, Lcom/shabakaty/downloader/yf3;

    .line 28
    iget-object v12, v11, Lcom/shabakaty/downloader/yf3;->s:Ljava/lang/String;

    const-string v13, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 29
    iget-object v7, v11, Lcom/shabakaty/downloader/yf3;->t:[B

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    .line 30
    iget-object v9, v9, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 31
    invoke-static {v7, v4, v9, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 33
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7, v2}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 34
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v9

    const-wide v11, 0x1ffffffffL

    and-long/2addr v9, v11

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    move-wide v9, v5

    .line 35
    :goto_2
    iput v4, v8, Lcom/shabakaty/downloader/co0;->f:I

    .line 36
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->r:Lcom/shabakaty/downloader/jt1;

    if-eqz v7, :cond_d

    .line 37
    check-cast v7, Lcom/shabakaty/downloader/ap;

    .line 38
    iget-object v0, v7, Lcom/shabakaty/downloader/ap;->a:Lcom/shabakaty/downloader/n91;

    instance-of v2, v0, Lcom/shabakaty/downloader/jr4;

    if-nez v2, :cond_6

    instance-of v0, v0, Lcom/shabakaty/downloader/ol1;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :goto_4
    xor-int/2addr v0, v3

    .line 39
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 40
    iget-object v0, v7, Lcom/shabakaty/downloader/ap;->a:Lcom/shabakaty/downloader/n91;

    instance-of v2, v0, Lcom/google/android/exoplayer2/source/hls/e;

    if-eqz v2, :cond_7

    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/e;

    iget-object v2, v7, Lcom/shabakaty/downloader/ap;->b:Lcom/shabakaty/downloader/wh1;

    iget-object v2, v2, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    iget-object v13, v7, Lcom/shabakaty/downloader/ap;->c:Lcom/shabakaty/downloader/qn4;

    invoke-direct {v0, v2, v13}, Lcom/google/android/exoplayer2/source/hls/e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/qn4;)V

    goto :goto_5

    .line 42
    :cond_7
    instance-of v2, v0, Lcom/shabakaty/downloader/s4;

    if-eqz v2, :cond_8

    .line 43
    new-instance v0, Lcom/shabakaty/downloader/s4;

    .line 44
    invoke-direct {v0, v4}, Lcom/shabakaty/downloader/s4;-><init>(I)V

    goto :goto_5

    .line 45
    :cond_8
    instance-of v2, v0, Lcom/shabakaty/downloader/w1;

    if-eqz v2, :cond_9

    .line 46
    new-instance v0, Lcom/shabakaty/downloader/w1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/w1;-><init>()V

    goto :goto_5

    .line 47
    :cond_9
    instance-of v2, v0, Lcom/shabakaty/downloader/z1;

    if-eqz v2, :cond_a

    .line 48
    new-instance v0, Lcom/shabakaty/downloader/z1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/z1;-><init>()V

    goto :goto_5

    .line 49
    :cond_a
    instance-of v0, v0, Lcom/shabakaty/downloader/bv2;

    if-eqz v0, :cond_b

    .line 50
    new-instance v0, Lcom/shabakaty/downloader/bv2;

    .line 51
    invoke-direct {v0, v4, v5, v6}, Lcom/shabakaty/downloader/bv2;-><init>(IJ)V

    .line 52
    :goto_5
    new-instance v2, Lcom/shabakaty/downloader/ap;

    iget-object v13, v7, Lcom/shabakaty/downloader/ap;->b:Lcom/shabakaty/downloader/wh1;

    iget-object v7, v7, Lcom/shabakaty/downloader/ap;->c:Lcom/shabakaty/downloader/qn4;

    invoke-direct {v2, v0, v13, v7}, Lcom/shabakaty/downloader/ap;-><init>(Lcom/shabakaty/downloader/n91;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/qn4;)V

    move-wide/from16 v18, v9

    const/4 v6, 0x0

    goto/16 :goto_17

    .line 53
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected extractor type for recreation: "

    iget-object v3, v7, Lcom/shabakaty/downloader/ap;->a:Lcom/shabakaty/downloader/n91;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_6
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_d
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->v:Lcom/shabakaty/downloader/ht1;

    iget-object v0, v0, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    iget-object v13, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget-object v14, v1, Lcom/google/android/exoplayer2/source/hls/b;->w:Ljava/util/List;

    iget-object v15, v1, Lcom/google/android/exoplayer2/source/hls/b;->u:Lcom/shabakaty/downloader/qn4;

    .line 56
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/vl0;->o()Ljava/util/Map;

    move-result-object v16

    .line 57
    check-cast v7, Lcom/shabakaty/downloader/io0;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v7, v13, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {v7}, Lcom/shabakaty/downloader/cl3;->g(Ljava/lang/String;)I

    move-result v7

    .line 59
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/downloader/cl3;->h(Ljava/util/Map;)I

    move-result v5

    .line 60
    invoke-static {v0}, Lcom/shabakaty/downloader/cl3;->i(Landroid/net/Uri;)I

    move-result v0

    .line 61
    new-instance v6, Ljava/util/ArrayList;

    sget-object v4, Lcom/shabakaty/downloader/io0;->b:[I

    array-length v11, v4

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    invoke-static {v7, v6}, Lcom/shabakaty/downloader/io0;->a(ILjava/util/List;)V

    .line 63
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/io0;->a(ILjava/util/List;)V

    .line 64
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/io0;->a(ILjava/util/List;)V

    .line 65
    array-length v11, v4

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_e

    aget v2, v4, v12

    .line 66
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/io0;->a(ILjava/util/List;)V

    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0x8

    goto :goto_7

    .line 67
    :cond_e
    invoke-virtual {v8}, Lcom/shabakaty/downloader/co0;->p()V

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 68
    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_24

    .line 69
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v2, 0xb

    if-eqz v12, :cond_20

    if-eq v12, v3, :cond_1f

    const/4 v3, 0x2

    if-eq v12, v3, :cond_1e

    const/4 v3, 0x7

    if-eq v12, v3, :cond_1d

    const/16 v3, 0x8

    if-eq v12, v3, :cond_17

    if-eq v12, v2, :cond_10

    const/16 v3, 0xd

    if-eq v12, v3, :cond_f

    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    const/4 v3, 0x0

    goto :goto_9

    .line 70
    :cond_f
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/e;

    iget-object v2, v13, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    invoke-direct {v3, v2, v15}, Lcom/google/android/exoplayer2/source/hls/e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/qn4;)V

    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    :goto_9
    const/4 v9, 0x0

    goto/16 :goto_13

    :cond_10
    if-eqz v14, :cond_11

    const/16 v2, 0x30

    move-object/from16 v17, v6

    move-object v3, v14

    goto :goto_a

    .line 71
    :cond_11
    new-instance v2, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v2}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v3, "application/cea-608"

    .line 72
    iput-object v3, v2, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 73
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v2

    .line 74
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x10

    move-object v3, v2

    move-object/from16 v17, v6

    const/16 v2, 0x10

    .line 75
    :goto_a
    iget-object v6, v13, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    .line 76
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    move-wide/from16 v18, v9

    const-string v9, "audio/mp4a-latm"

    .line 77
    invoke-static {v6, v9}, Lcom/shabakaty/downloader/nt2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    goto :goto_b

    :cond_12
    const/4 v9, 0x0

    :goto_b
    if-nez v9, :cond_13

    or-int/lit8 v2, v2, 0x2

    :cond_13
    const-string v9, "video/avc"

    .line 78
    invoke-static {v6, v9}, Lcom/shabakaty/downloader/nt2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    goto :goto_c

    :cond_14
    const/4 v6, 0x0

    :goto_c
    if-nez v6, :cond_16

    or-int/lit8 v2, v2, 0x4

    goto :goto_d

    :cond_15
    move-wide/from16 v18, v9

    .line 79
    :cond_16
    :goto_d
    new-instance v6, Lcom/shabakaty/downloader/jr4;

    new-instance v9, Lcom/shabakaty/downloader/fp0;

    invoke-direct {v9, v2, v3}, Lcom/shabakaty/downloader/fp0;-><init>(ILjava/util/List;)V

    const v2, 0x1b8a0

    const/4 v3, 0x2

    .line 80
    invoke-direct {v6, v3, v15, v9, v2}, Lcom/shabakaty/downloader/jr4;-><init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/kr4$c;I)V

    move-object v3, v6

    goto :goto_9

    :cond_17
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    .line 81
    new-instance v3, Lcom/shabakaty/downloader/ol1;

    .line 82
    iget-object v2, v13, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-nez v2, :cond_18

    goto :goto_f

    :cond_18
    const/4 v6, 0x0

    .line 83
    :goto_e
    iget-object v9, v2, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    array-length v10, v9

    if-ge v6, v10, :cond_1a

    .line 84
    aget-object v9, v9, v6

    .line 85
    instance-of v10, v9, Lcom/shabakaty/downloader/rt1;

    if-eqz v10, :cond_19

    .line 86
    check-cast v9, Lcom/shabakaty/downloader/rt1;

    iget-object v2, v9, Lcom/shabakaty/downloader/rt1;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v6, 0x1

    xor-int/2addr v2, v6

    goto :goto_10

    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1a
    :goto_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_1b

    const/4 v2, 0x4

    goto :goto_11

    :cond_1b
    const/4 v2, 0x0

    :goto_11
    if-eqz v14, :cond_1c

    move-object v6, v14

    goto :goto_12

    .line 87
    :cond_1c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    :goto_12
    const/4 v9, 0x0

    invoke-direct {v3, v2, v15, v9, v6}, Lcom/shabakaty/downloader/ol1;-><init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/wo4;Ljava/util/List;)V

    :goto_13
    const/4 v6, 0x0

    goto :goto_14

    :cond_1d
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    const/4 v9, 0x0

    .line 88
    new-instance v3, Lcom/shabakaty/downloader/bv2;

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    invoke-direct {v3, v6, v9, v10}, Lcom/shabakaty/downloader/bv2;-><init>(IJ)V

    goto :goto_14

    :cond_1e
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    const/4 v6, 0x0

    .line 89
    new-instance v3, Lcom/shabakaty/downloader/s4;

    .line 90
    invoke-direct {v3, v6}, Lcom/shabakaty/downloader/s4;-><init>(I)V

    goto :goto_14

    :cond_1f
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    const/4 v6, 0x0

    .line 91
    new-instance v3, Lcom/shabakaty/downloader/z1;

    invoke-direct {v3}, Lcom/shabakaty/downloader/z1;-><init>()V

    goto :goto_14

    :cond_20
    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    const/4 v6, 0x0

    .line 92
    new-instance v3, Lcom/shabakaty/downloader/w1;

    invoke-direct {v3}, Lcom/shabakaty/downloader/w1;-><init>()V

    .line 93
    :goto_14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :try_start_1
    invoke-interface {v3, v8}, Lcom/shabakaty/downloader/n91;->h(Lcom/shabakaty/downloader/o91;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-virtual {v8}, Lcom/shabakaty/downloader/co0;->p()V

    goto :goto_15

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v8}, Lcom/shabakaty/downloader/co0;->p()V

    .line 96
    throw v2

    .line 97
    :catch_1
    invoke-virtual {v8}, Lcom/shabakaty/downloader/co0;->p()V

    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_21

    .line 98
    new-instance v0, Lcom/shabakaty/downloader/ap;

    invoke-direct {v0, v3, v13, v15}, Lcom/shabakaty/downloader/ap;-><init>(Lcom/shabakaty/downloader/n91;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/qn4;)V

    goto :goto_16

    :cond_21
    if-nez v11, :cond_23

    if-eq v12, v7, :cond_22

    if-eq v12, v5, :cond_22

    if-eq v12, v0, :cond_22

    const/16 v2, 0xb

    if-ne v12, v2, :cond_23

    :cond_22
    move-object v11, v3

    :cond_23
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v17

    move-wide/from16 v9, v18

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_24
    move-wide/from16 v18, v9

    const/4 v6, 0x0

    .line 99
    new-instance v0, Lcom/shabakaty/downloader/ap;

    .line 100
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-direct {v0, v11, v13, v15}, Lcom/shabakaty/downloader/ap;-><init>(Lcom/shabakaty/downloader/n91;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/qn4;)V

    :goto_16
    move-object v2, v0

    .line 102
    :goto_17
    iput-object v2, v1, Lcom/google/android/exoplayer2/source/hls/b;->C:Lcom/shabakaty/downloader/jt1;

    .line 103
    check-cast v2, Lcom/shabakaty/downloader/ap;

    .line 104
    iget-object v0, v2, Lcom/shabakaty/downloader/ap;->a:Lcom/shabakaty/downloader/n91;

    instance-of v2, v0, Lcom/shabakaty/downloader/s4;

    if-nez v2, :cond_26

    instance-of v2, v0, Lcom/shabakaty/downloader/w1;

    if-nez v2, :cond_26

    instance-of v2, v0, Lcom/shabakaty/downloader/z1;

    if-nez v2, :cond_26

    instance-of v0, v0, Lcom/shabakaty/downloader/bv2;

    if-eqz v0, :cond_25

    goto :goto_18

    :cond_25
    const/4 v0, 0x0

    goto :goto_19

    :cond_26
    :goto_18
    const/4 v0, 0x1

    :goto_19
    if-eqz v0, :cond_28

    .line 105
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/b;->D:Lcom/google/android/exoplayer2/source/hls/d;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v18, v2

    if-eqz v4, :cond_27

    .line 106
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/b;->u:Lcom/shabakaty/downloader/qn4;

    move-wide/from16 v9, v18

    invoke-virtual {v2, v9, v10}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v2

    goto :goto_1a

    .line 107
    :cond_27
    iget-wide v2, v1, Lcom/shabakaty/downloader/zz;->g:J

    .line 108
    :goto_1a
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/d;->B(J)V

    goto :goto_1b

    .line 109
    :cond_28
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/b;->D:Lcom/google/android/exoplayer2/source/hls/d;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/d;->B(J)V

    .line 110
    :goto_1b
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/b;->D:Lcom/google/android/exoplayer2/source/hls/d;

    .line 111
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/d;->N:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 112
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/b;->C:Lcom/shabakaty/downloader/jt1;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/b;->D:Lcom/google/android/exoplayer2/source/hls/d;

    check-cast v0, Lcom/shabakaty/downloader/ap;

    .line 113
    iget-object v0, v0, Lcom/shabakaty/downloader/ap;->a:Lcom/shabakaty/downloader/n91;

    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/n91;->g(Lcom/shabakaty/downloader/p91;)V

    goto :goto_1c

    :cond_29
    const/4 v6, 0x0

    .line 114
    :goto_1c
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/b;->D:Lcom/google/android/exoplayer2/source/hls/d;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/b;->x:Lcom/shabakaty/downloader/o01;

    .line 115
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->m0:Lcom/shabakaty/downloader/o01;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 116
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->m0:Lcom/shabakaty/downloader/o01;

    const/4 v4, 0x0

    .line 117
    :goto_1d
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v5, v3

    if-ge v4, v5, :cond_2b

    .line 118
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/d;->e0:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_2a

    .line 119
    aget-object v3, v3, v4

    .line 120
    iput-object v2, v3, Lcom/google/android/exoplayer2/source/hls/d$d;->J:Lcom/shabakaty/downloader/o01;

    const/4 v5, 0x1

    .line 121
    iput-boolean v5, v3, Lcom/shabakaty/downloader/bx3;->A:Z

    goto :goto_1e

    :cond_2a
    const/4 v5, 0x1

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2b
    return-object v8
.end method
