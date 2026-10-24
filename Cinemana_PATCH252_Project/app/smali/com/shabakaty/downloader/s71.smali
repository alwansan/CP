.class public final Lcom/shabakaty/downloader/s71;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/shabakaty/downloader/kp2$a;
.implements Lcom/shabakaty/downloader/lp4$a;
.implements Lcom/shabakaty/downloader/cr2$d;
.implements Lcom/shabakaty/downloader/qo0$a;
.implements Lcom/shabakaty/downloader/vd3$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/s71$b;,
        Lcom/shabakaty/downloader/s71$a;,
        Lcom/shabakaty/downloader/s71$c;,
        Lcom/shabakaty/downloader/s71$f;,
        Lcom/shabakaty/downloader/s71$g;,
        Lcom/shabakaty/downloader/s71$e;,
        Lcom/shabakaty/downloader/s71$d;
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/nn4$c;

.field public final B:Lcom/shabakaty/downloader/nn4$b;

.field public final C:J

.field public final D:Z

.field public final E:Lcom/shabakaty/downloader/qo0;

.field public final F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/s71$c;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Lcom/shabakaty/downloader/w30;

.field public final H:Lcom/shabakaty/downloader/s71$e;

.field public final I:Lcom/shabakaty/downloader/op2;

.field public final J:Lcom/shabakaty/downloader/cr2;

.field public final K:Lcom/shabakaty/downloader/ej2;

.field public L:Lcom/shabakaty/downloader/wz3;

.field public M:Lcom/shabakaty/downloader/yc3;

.field public N:Lcom/shabakaty/downloader/s71$d;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:I

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:Lcom/shabakaty/downloader/s71$g;

.field public a0:J

.field public b0:I

.field public c0:Z

.field public d0:Lcom/shabakaty/downloader/i71;

.field public final r:[Lcom/shabakaty/downloader/lr3;

.field public final s:[Lcom/shabakaty/downloader/mr3;

.field public final t:Lcom/shabakaty/downloader/lp4;

.field public final u:Lcom/shabakaty/downloader/mp4;

.field public final v:Lcom/shabakaty/downloader/fj2;

.field public final w:Lcom/shabakaty/downloader/qi;

.field public final x:Lcom/shabakaty/downloader/fs1;

.field public final y:Landroid/os/HandlerThread;

.field public final z:Landroid/os/Looper;


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/lr3;Lcom/shabakaty/downloader/lp4;Lcom/shabakaty/downloader/mp4;Lcom/shabakaty/downloader/fj2;Lcom/shabakaty/downloader/qi;IZLcom/shabakaty/downloader/k6;Lcom/shabakaty/downloader/wz3;Lcom/shabakaty/downloader/ej2;JZLandroid/os/Looper;Lcom/shabakaty/downloader/w30;Lcom/shabakaty/downloader/s71$e;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p16

    .line 2
    iput-object v6, v0, Lcom/shabakaty/downloader/s71;->H:Lcom/shabakaty/downloader/s71$e;

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    .line 4
    iput-object v2, v0, Lcom/shabakaty/downloader/s71;->t:Lcom/shabakaty/downloader/lp4;

    move-object v6, p3

    .line 5
    iput-object v6, v0, Lcom/shabakaty/downloader/s71;->u:Lcom/shabakaty/downloader/mp4;

    move-object v7, p4

    .line 6
    iput-object v7, v0, Lcom/shabakaty/downloader/s71;->v:Lcom/shabakaty/downloader/fj2;

    .line 7
    iput-object v3, v0, Lcom/shabakaty/downloader/s71;->w:Lcom/shabakaty/downloader/qi;

    move/from16 v8, p6

    .line 8
    iput v8, v0, Lcom/shabakaty/downloader/s71;->T:I

    move/from16 v8, p7

    .line 9
    iput-boolean v8, v0, Lcom/shabakaty/downloader/s71;->U:Z

    move-object/from16 v8, p9

    .line 10
    iput-object v8, v0, Lcom/shabakaty/downloader/s71;->L:Lcom/shabakaty/downloader/wz3;

    move-object/from16 v8, p10

    .line 11
    iput-object v8, v0, Lcom/shabakaty/downloader/s71;->K:Lcom/shabakaty/downloader/ej2;

    move/from16 v8, p13

    .line 12
    iput-boolean v8, v0, Lcom/shabakaty/downloader/s71;->P:Z

    .line 13
    iput-object v5, v0, Lcom/shabakaty/downloader/s71;->G:Lcom/shabakaty/downloader/w30;

    .line 14
    invoke-interface {p4}, Lcom/shabakaty/downloader/fj2;->b()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/shabakaty/downloader/s71;->C:J

    .line 15
    invoke-interface {p4}, Lcom/shabakaty/downloader/fj2;->a()Z

    move-result v7

    iput-boolean v7, v0, Lcom/shabakaty/downloader/s71;->D:Z

    .line 16
    invoke-static {p3}, Lcom/shabakaty/downloader/yc3;->i(Lcom/shabakaty/downloader/mp4;)Lcom/shabakaty/downloader/yc3;

    move-result-object v6

    iput-object v6, v0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 17
    new-instance v7, Lcom/shabakaty/downloader/s71$d;

    invoke-direct {v7, v6}, Lcom/shabakaty/downloader/s71$d;-><init>(Lcom/shabakaty/downloader/yc3;)V

    iput-object v7, v0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    .line 18
    array-length v6, v1

    new-array v6, v6, [Lcom/shabakaty/downloader/mr3;

    iput-object v6, v0, Lcom/shabakaty/downloader/s71;->s:[Lcom/shabakaty/downloader/mr3;

    const/4 v6, 0x0

    .line 19
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_0

    .line 20
    aget-object v7, v1, v6

    invoke-interface {v7, v6}, Lcom/shabakaty/downloader/lr3;->f(I)V

    .line 21
    iget-object v7, v0, Lcom/shabakaty/downloader/s71;->s:[Lcom/shabakaty/downloader/mr3;

    aget-object v8, v1, v6

    invoke-interface {v8}, Lcom/shabakaty/downloader/lr3;->k()Lcom/shabakaty/downloader/mr3;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/qo0;

    invoke-direct {v1, p0, v5}, Lcom/shabakaty/downloader/qo0;-><init>(Lcom/shabakaty/downloader/qo0$a;Lcom/shabakaty/downloader/w30;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/nn4$c;

    invoke-direct {v1}, Lcom/shabakaty/downloader/nn4$c;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    .line 25
    new-instance v1, Lcom/shabakaty/downloader/nn4$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/nn4$b;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    .line 26
    iput-object v0, v2, Lcom/shabakaty/downloader/lp4;->a:Lcom/shabakaty/downloader/lp4$a;

    .line 27
    iput-object v3, v2, Lcom/shabakaty/downloader/lp4;->b:Lcom/shabakaty/downloader/qi;

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lcom/shabakaty/downloader/s71;->c0:Z

    .line 29
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    new-instance v2, Lcom/shabakaty/downloader/op2;

    invoke-direct {v2, v4, v1}, Lcom/shabakaty/downloader/op2;-><init>(Lcom/shabakaty/downloader/k6;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 31
    new-instance v2, Lcom/shabakaty/downloader/cr2;

    invoke-direct {v2, p0, v4, v1}, Lcom/shabakaty/downloader/cr2;-><init>(Lcom/shabakaty/downloader/cr2$d;Lcom/shabakaty/downloader/k6;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    .line 32
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/shabakaty/downloader/s71;->y:Landroid/os/HandlerThread;

    .line 33
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 34
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/s71;->z:Landroid/os/Looper;

    .line 35
    invoke-interface {v5, v1, p0}, Lcom/shabakaty/downloader/w30;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/shabakaty/downloader/fs1;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    return-void
.end method

.method public static K(Lcom/shabakaty/downloader/s71$c;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/nn4;IZLcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;)Z
    .locals 11

    move-object v0, p0

    move-object v8, p1

    move-object v1, p2

    move-object/from16 v7, p6

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/s71$c;->u:Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v2, :cond_1

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/s71$c;->r:Lcom/shabakaty/downloader/vd3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/s71$c;->r:Lcom/shabakaty/downloader/vd3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v1

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/s71$g;

    iget-object v4, v0, Lcom/shabakaty/downloader/s71$c;->r:Lcom/shabakaty/downloader/vd3;

    .line 5
    iget-object v5, v4, Lcom/shabakaty/downloader/vd3;->d:Lcom/shabakaty/downloader/nn4;

    .line 6
    iget v4, v4, Lcom/shabakaty/downloader/vd3;->h:I

    .line 7
    invoke-direct {v3, v5, v4, v1, v2}, Lcom/shabakaty/downloader/s71$g;-><init>(Lcom/shabakaty/downloader/nn4;IJ)V

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 8
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/s71;->M(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/s71$g;ZIZLcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    return v10

    .line 9
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/shabakaty/downloader/s71$c;->f(IJLjava/lang/Object;)V

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/s71$c;->r:Lcom/shabakaty/downloader/vd3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v9

    .line 14
    :cond_1
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    return v10

    .line 15
    :cond_2
    iget-object v3, v0, Lcom/shabakaty/downloader/s71$c;->r:Lcom/shabakaty/downloader/vd3;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iput v2, v0, Lcom/shabakaty/downloader/s71$c;->s:I

    .line 17
    iget-object v2, v0, Lcom/shabakaty/downloader/s71$c;->u:Ljava/lang/Object;

    invoke-virtual {p2, v2, v7}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 18
    iget-boolean v2, v7, Lcom/shabakaty/downloader/nn4$b;->f:Z

    if-eqz v2, :cond_3

    iget v2, v7, Lcom/shabakaty/downloader/nn4$b;->c:I

    move-object/from16 v3, p5

    .line 19
    invoke-virtual {p2, v2, v3}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v2

    iget v2, v2, Lcom/shabakaty/downloader/nn4$c;->o:I

    iget-object v4, v0, Lcom/shabakaty/downloader/s71$c;->u:Ljava/lang/Object;

    .line 20
    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 21
    iget-wide v1, v0, Lcom/shabakaty/downloader/s71$c;->t:J

    .line 22
    iget-wide v4, v7, Lcom/shabakaty/downloader/nn4$b;->e:J

    add-long v5, v1, v4

    .line 23
    iget-object v1, v0, Lcom/shabakaty/downloader/s71$c;->u:Ljava/lang/Object;

    .line 24
    invoke-virtual {p1, v1, v7}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget v4, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 26
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/shabakaty/downloader/s71$c;->f(IJLjava/lang/Object;)V

    :cond_3
    return v9
.end method

.method public static M(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/s71$g;ZIZLcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nn4;",
            "Lcom/shabakaty/downloader/s71$g;",
            "ZIZ",
            "Lcom/shabakaty/downloader/nn4$c;",
            "Lcom/shabakaty/downloader/nn4$b;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/s71$g;->a:Lcom/shabakaty/downloader/nn4;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 4
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/shabakaty/downloader/s71$g;->b:I

    iget-wide v5, v0, Lcom/shabakaty/downloader/s71$g;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0, v10}, Lcom/shabakaty/downloader/nn4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 7
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/shabakaty/downloader/nn4$b;->f:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/shabakaty/downloader/nn4$b;->c:I

    move-object/from16 v11, p5

    .line 9
    invoke-virtual {v10, v2, v11}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v2

    iget v2, v2, Lcom/shabakaty/downloader/nn4$c;->o:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    invoke-virtual {v10, v3}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 11
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget v3, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 12
    iget-wide v4, v0, Lcom/shabakaty/downloader/s71$g;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    .line 14
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/s71;->N(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IZLjava/lang/Object;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/nn4;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0, v0, v8}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v0

    iget v3, v0, Lcom/shabakaty/downloader/nn4$b;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method public static N(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IZLjava/lang/Object;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/nn4;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p5, p4}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result p4

    .line 2
    invoke-virtual {p5}, Lcom/shabakaty/downloader/nn4;->i()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 3
    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/nn4;->d(ILcom/shabakaty/downloader/nn4$b;Lcom/shabakaty/downloader/nn4$c;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p5, v4}, Lcom/shabakaty/downloader/nn4;->m(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p6, p4}, Lcom/shabakaty/downloader/nn4;->m(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static i(Lcom/shabakaty/downloader/f81;)[Lcom/shabakaty/downloader/wh1;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    new-array v2, v1, [Lcom/shabakaty/downloader/wh1;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/hp4;->c(I)Lcom/shabakaty/downloader/wh1;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static w(Lcom/shabakaty/downloader/lr3;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/lr3;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(Lcom/shabakaty/downloader/yc3;Lcom/shabakaty/downloader/nn4$b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object p0

    iget-boolean p0, p0, Lcom/shabakaty/downloader/nn4$b;->f:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 2
    iget-boolean v2, v0, Lcom/shabakaty/downloader/s71$d;->a:Z

    iget-object v3, v0, Lcom/shabakaty/downloader/s71$d;->b:Lcom/shabakaty/downloader/yc3;

    if-eq v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/shabakaty/downloader/s71$d;->a:Z

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/s71$d;->b:Lcom/shabakaty/downloader/yc3;

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->H:Lcom/shabakaty/downloader/s71$e;

    check-cast v1, Lcom/shabakaty/downloader/p71;

    iget-object v1, v1, Lcom/shabakaty/downloader/p71;->s:Lcom/shabakaty/downloader/q71;

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/q71;->f:Lcom/shabakaty/downloader/fs1;

    new-instance v3, Lcom/shabakaty/downloader/or;

    invoke-direct {v3, v1, v0}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/q71;Lcom/shabakaty/downloader/s71$d;)V

    check-cast v2, Lcom/shabakaty/downloader/yj4;

    .line 6
    iget-object v0, v2, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/s71$d;

    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/s71$d;-><init>(Lcom/shabakaty/downloader/yc3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    :cond_1
    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr2;->c()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/s71;->r(Lcom/shabakaty/downloader/nn4;Z)V

    return-void
.end method

.method public final C(Lcom/shabakaty/downloader/s71$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr2;->e()I

    move-result p1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->b(Z)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Lcom/shabakaty/downloader/cr2;->i:Lcom/shabakaty/downloader/t54;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr2;->c()Lcom/shabakaty/downloader/nn4;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, v2}, Lcom/shabakaty/downloader/s71;->r(Lcom/shabakaty/downloader/nn4;Z)V

    return-void
.end method

.method public final D()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/shabakaty/downloader/s71;->H(ZZZZ)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/s71;->v:Lcom/shabakaty/downloader/fj2;

    invoke-interface {v2}, Lcom/shabakaty/downloader/fj2;->c()V

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v2, v2, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/s71;->f0(I)V

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    iget-object v4, p0, Lcom/shabakaty/downloader/s71;->w:Lcom/shabakaty/downloader/qi;

    invoke-interface {v4}, Lcom/shabakaty/downloader/qi;->c()Lcom/shabakaty/downloader/sp4;

    move-result-object v4

    .line 6
    iget-boolean v5, v2, Lcom/shabakaty/downloader/cr2;->j:Z

    xor-int/2addr v5, v1

    invoke-static {v5}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 7
    iput-object v4, v2, Lcom/shabakaty/downloader/cr2;->k:Lcom/shabakaty/downloader/sp4;

    .line 8
    :goto_1
    iget-object v4, v2, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 9
    iget-object v4, v2, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/cr2$c;

    .line 10
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/cr2;->g(Lcom/shabakaty/downloader/cr2$c;)V

    .line 11
    iget-object v5, v2, Lcom/shabakaty/downloader/cr2;->h:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_1
    iput-boolean v1, v2, Lcom/shabakaty/downloader/cr2;->j:Z

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/yj4;->e(I)Z

    return-void
.end method

.method public final E()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/shabakaty/downloader/s71;->H(ZZZZ)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->v:Lcom/shabakaty/downloader/fj2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/fj2;->e()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/s71;->f0(I)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->y:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s71;->O:Z

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final F(IILcom/shabakaty/downloader/t54;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr2;->e()I

    move-result v3

    if-gt p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 4
    iput-object p3, v0, Lcom/shabakaty/downloader/cr2;->i:Lcom/shabakaty/downloader/t54;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/cr2;->i(II)V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr2;->c()Lcom/shabakaty/downloader/nn4;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, v2}, Lcom/shabakaty/downloader/s71;->r(Lcom/shabakaty/downloader/nn4;Z)V

    return-void
.end method

.method public final G()V
    .locals 20

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qo0;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/ad3;->a:F

    .line 2
    iget-object v1, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    move-object v3, v2

    const/4 v2, 0x1

    :goto_0
    if-eqz v3, :cond_f

    .line 5
    iget-boolean v4, v3, Lcom/shabakaty/downloader/lp2;->d:Z

    if-nez v4, :cond_0

    goto/16 :goto_8

    .line 6
    :cond_0
    iget-object v4, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v4, v4, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v3, v0, v4}, Lcom/shabakaty/downloader/lp2;->i(FLcom/shabakaty/downloader/nn4;)Lcom/shabakaty/downloader/mp4;

    move-result-object v13

    .line 7
    iget-object v4, v3, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    const/16 v18, 0x0

    if-eqz v4, :cond_4

    .line 8
    iget-object v5, v4, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    array-length v5, v5

    iget-object v6, v13, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    array-length v6, v6

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 9
    :goto_1
    iget-object v6, v13, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 10
    invoke-virtual {v13, v4, v5}, Lcom/shabakaty/downloader/mp4;->a(Lcom/shabakaty/downloader/mp4;I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_d

    const/4 v9, 0x4

    if-eqz v2, :cond_a

    .line 11
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 12
    iget-object v8, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 13
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/op2;->n(Lcom/shabakaty/downloader/lp2;)Z

    move-result v16

    .line 14
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v0, v0

    new-array v6, v0, [Z

    .line 15
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v14, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move-object v12, v8

    move-object/from16 v17, v6

    .line 16
    invoke-virtual/range {v12 .. v17}, Lcom/shabakaty/downloader/lp2;->a(Lcom/shabakaty/downloader/mp4;JZ[Z)J

    move-result-wide v12

    .line 17
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->e:I

    if-eq v1, v9, :cond_5

    iget-wide v0, v0, Lcom/shabakaty/downloader/yc3;->s:J

    cmp-long v2, v12, v0

    if-eqz v2, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 18
    :goto_4
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v2, v0, Lcom/shabakaty/downloader/yc3;->d:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object/from16 v19, v6

    move-wide/from16 v6, v16

    move-object v11, v8

    move v8, v14

    move v9, v15

    .line 19
    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    iput-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    if-eqz v14, :cond_6

    .line 20
    invoke-virtual {v10, v12, v13}, Lcom/shabakaty/downloader/s71;->J(J)V

    .line 21
    :cond_6
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 22
    :goto_5
    iget-object v2, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 23
    aget-object v2, v2, v1

    .line 24
    invoke-static {v2}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 25
    iget-object v3, v11, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    aget-object v3, v3, v1

    .line 26
    aget-boolean v4, v0, v1

    if-eqz v4, :cond_8

    .line 27
    invoke-interface {v2}, Lcom/shabakaty/downloader/lr3;->q()Lcom/shabakaty/downloader/dx3;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 28
    invoke-virtual {v10, v2}, Lcom/shabakaty/downloader/s71;->d(Lcom/shabakaty/downloader/lr3;)V

    goto :goto_6

    .line 29
    :cond_7
    aget-boolean v3, v19, v1

    if-eqz v3, :cond_8

    .line 30
    iget-wide v3, v10, Lcom/shabakaty/downloader/s71;->a0:J

    invoke-interface {v2, v3, v4}, Lcom/shabakaty/downloader/lr3;->u(J)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 31
    :cond_9
    invoke-virtual {v10, v0}, Lcom/shabakaty/downloader/s71;->h([Z)V

    goto :goto_7

    .line 32
    :cond_a
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/op2;->n(Lcom/shabakaty/downloader/lp2;)Z

    .line 33
    iget-boolean v0, v3, Lcom/shabakaty/downloader/lp2;->d:Z

    if-eqz v0, :cond_b

    .line 34
    iget-object v0, v3, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v0, v0, Lcom/shabakaty/downloader/np2;->b:J

    iget-wide v4, v10, Lcom/shabakaty/downloader/s71;->a0:J

    .line 35
    iget-wide v6, v3, Lcom/shabakaty/downloader/lp2;->o:J

    sub-long/2addr v4, v6

    .line 36
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const/4 v7, 0x0

    .line 37
    iget-object v0, v3, Lcom/shabakaty/downloader/lp2;->i:[Lcom/shabakaty/downloader/mr3;

    array-length v0, v0

    new-array v8, v0, [Z

    move-object v4, v13

    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/lp2;->a(Lcom/shabakaty/downloader/mp4;JZ[Z)J

    :cond_b
    :goto_7
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v10, v4}, Lcom/shabakaty/downloader/s71;->q(Z)V

    .line 39
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->z()V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->n0()V

    .line 42
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    const/4 v1, 0x2

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yj4;->e(I)Z

    :cond_c
    return-void

    :cond_d
    const/4 v4, 0x1

    if-ne v3, v1, :cond_e

    const/4 v2, 0x0

    .line 43
    :cond_e
    iget-object v3, v3, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto/16 :goto_0

    :cond_f
    :goto_8
    return-void
.end method

.method public final H(ZZZZ)V
    .locals 29

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Lcom/shabakaty/downloader/s71;->d0:Lcom/shabakaty/downloader/i71;

    const/4 v3, 0x0

    .line 4
    iput-boolean v3, v1, Lcom/shabakaty/downloader/s71;->R:Z

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    .line 6
    iput-boolean v3, v0, Lcom/shabakaty/downloader/qo0;->w:Z

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    .line 8
    iget-boolean v4, v0, Lcom/shabakaty/downloader/rb4;->s:Z

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/rb4;->l()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/rb4;->a(J)V

    .line 10
    iput-boolean v3, v0, Lcom/shabakaty/downloader/rb4;->s:Z

    :cond_0
    const-wide/16 v4, 0x0

    .line 11
    iput-wide v4, v1, Lcom/shabakaty/downloader/s71;->a0:J

    .line 12
    iget-object v4, v1, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_1

    aget-object v0, v4, v6

    .line 13
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/s71;->d(Lcom/shabakaty/downloader/lr3;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/i71; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    .line 14
    invoke-static {v7, v8, v0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 15
    iget-object v4, v1, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    .line 16
    :try_start_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/lr3;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 17
    invoke-static {v7, v0, v8}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 18
    :cond_2
    iput v3, v1, Lcom/shabakaty/downloader/s71;->Y:I

    .line 19
    iget-object v0, v1, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v4, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 20
    iget-wide v5, v0, Lcom/shabakaty/downloader/yc3;->s:J

    .line 21
    iget-object v0, v1, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v7, v1, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/s71;->y(Lcom/shabakaty/downloader/yc3;Lcom/shabakaty/downloader/nn4$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    .line 22
    :cond_3
    iget-object v0, v1, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v7, v0, Lcom/shabakaty/downloader/yc3;->s:J

    goto :goto_6

    .line 23
    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v7, v0, Lcom/shabakaty/downloader/yc3;->c:J

    :goto_6
    if-eqz p2, :cond_5

    .line 24
    iput-object v2, v1, Lcom/shabakaty/downloader/s71;->Z:Lcom/shabakaty/downloader/s71$g;

    .line 25
    iget-object v0, v1, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 26
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/s71;->l(Lcom/shabakaty/downloader/nn4;)Landroid/util/Pair;

    move-result-object v0

    .line 27
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/uq2$a;

    .line 28
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    iget-object v0, v1, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    goto :goto_7

    :cond_5
    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    const/4 v0, 0x0

    .line 30
    :goto_7
    iget-object v4, v1, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/op2;->b()V

    .line 31
    iput-boolean v3, v1, Lcom/shabakaty/downloader/s71;->S:Z

    .line 32
    new-instance v15, Lcom/shabakaty/downloader/yc3;

    iget-object v4, v1, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v5, v4, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget v11, v4, Lcom/shabakaty/downloader/yc3;->e:I

    if-eqz p4, :cond_6

    goto :goto_8

    .line 33
    :cond_6
    iget-object v2, v4, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    :goto_8
    move-object v12, v2

    const/4 v13, 0x0

    if-eqz v0, :cond_7

    .line 34
    sget-object v2, Lcom/shabakaty/downloader/cp4;->u:Lcom/shabakaty/downloader/cp4;

    goto :goto_9

    :cond_7
    iget-object v2, v4, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    :goto_9
    move-object v14, v2

    if-eqz v0, :cond_8

    .line 35
    iget-object v2, v1, Lcom/shabakaty/downloader/s71;->u:Lcom/shabakaty/downloader/mp4;

    goto :goto_a

    :cond_8
    iget-object v2, v4, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    :goto_a
    if-eqz v0, :cond_9

    .line 36
    sget-object v0, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 37
    sget-object v0, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    goto :goto_b

    .line 38
    :cond_9
    iget-object v0, v4, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    :goto_b
    move-object/from16 v16, v0

    iget-boolean v0, v4, Lcom/shabakaty/downloader/yc3;->l:Z

    move/from16 v18, v0

    iget v0, v4, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v19, v0

    iget-object v0, v4, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v20, v0

    const-wide/16 v23, 0x0

    iget-boolean v0, v1, Lcom/shabakaty/downloader/s71;->X:Z

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object v4, v15

    move-object/from16 v6, v17

    move-wide/from16 v9, v25

    move-object v0, v15

    move-object v15, v2

    move-wide/from16 v21, v25

    invoke-direct/range {v4 .. v28}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    iput-object v0, v1, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    if-eqz p3, :cond_b

    .line 39
    iget-object v2, v1, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    .line 40
    iget-object v0, v2, Lcom/shabakaty/downloader/cr2;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/cr2$b;

    .line 41
    :try_start_2
    iget-object v0, v5, Lcom/shabakaty/downloader/cr2$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v6, v5, Lcom/shabakaty/downloader/cr2$b;->b:Lcom/shabakaty/downloader/uq2$b;

    invoke-interface {v0, v6}, Lcom/shabakaty/downloader/uq2;->i(Lcom/shabakaty/downloader/uq2$b;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    const-string v6, "MediaSourceList"

    const-string v7, "Failed to release child source."

    .line 42
    invoke-static {v6, v7, v0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :goto_d
    iget-object v0, v5, Lcom/shabakaty/downloader/cr2$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v6, v5, Lcom/shabakaty/downloader/cr2$b;->c:Lcom/shabakaty/downloader/cr2$a;

    invoke-interface {v0, v6}, Lcom/shabakaty/downloader/uq2;->c(Lcom/shabakaty/downloader/yq2;)V

    .line 44
    iget-object v0, v5, Lcom/shabakaty/downloader/cr2$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v5, v5, Lcom/shabakaty/downloader/cr2$b;->c:Lcom/shabakaty/downloader/cr2$a;

    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/uq2;->a(Lcom/shabakaty/downloader/s01;)V

    goto :goto_c

    .line 45
    :cond_a
    iget-object v0, v2, Lcom/shabakaty/downloader/cr2;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46
    iget-object v0, v2, Lcom/shabakaty/downloader/cr2;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 47
    iput-boolean v3, v2, Lcom/shabakaty/downloader/cr2;->j:Z

    :cond_b
    return-void
.end method

.method public final I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-boolean v0, v0, Lcom/shabakaty/downloader/np2;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/s71;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s71;->Q:Z

    return-void
.end method

.method public final J(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, v0, Lcom/shabakaty/downloader/lp2;->o:J

    add-long/2addr p1, v0

    .line 4
    :goto_0
    iput-wide p1, p0, Lcom/shabakaty/downloader/s71;->a0:J

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/rb4;->a(J)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    .line 8
    invoke-static {v2}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-wide v3, p0, Lcom/shabakaty/downloader/s71;->a0:J

    invoke-interface {v2, v3, v4}, Lcom/shabakaty/downloader/lr3;->u(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    :goto_2
    if-eqz p1, :cond_5

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 13
    iget-object p2, p2, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v3, p2, v2

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v3}, Lcom/shabakaty/downloader/f81;->t()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 15
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final L(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/nn4;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/s71$c;

    iget v5, p0, Lcom/shabakaty/downloader/s71;->T:I

    iget-boolean v6, p0, Lcom/shabakaty/downloader/s71;->U:Z

    iget-object v7, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-object v8, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    move-object v3, p1

    move-object v4, p2

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/shabakaty/downloader/s71;->K(Lcom/shabakaty/downloader/s71$c;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/nn4;IZLcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s71$c;

    iget-object v1, v1, Lcom/shabakaty/downloader/s71$c;->r:Lcom/shabakaty/downloader/vd3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/vd3;->c(Z)V

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final O(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    add-long/2addr p1, p3

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    .line 4
    iget-object p3, v0, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final P(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v0, v0, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v3, v1, Lcom/shabakaty/downloader/yc3;->s:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/s71;->S(Lcom/shabakaty/downloader/uq2$a;JZZ)J

    move-result-wide v3

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v1, v1, Lcom/shabakaty/downloader/yc3;->s:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v5, v1, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v7, v1, Lcom/shabakaty/downloader/yc3;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 8
    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    :cond_0
    return-void
.end method

.method public final Q(Lcom/shabakaty/downloader/s71$g;)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 2
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget v4, v11, Lcom/shabakaty/downloader/s71;->T:I

    iget-boolean v5, v11, Lcom/shabakaty/downloader/s71;->U:Z

    iget-object v6, v11, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-object v7, v11, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/s71;->M(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/s71$g;ZIZLcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v7, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v7, v7, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 5
    invoke-virtual {v11, v7}, Lcom/shabakaty/downloader/s71;->l(Lcom/shabakaty/downloader/nn4;)Landroid/util/Pair;

    move-result-object v7

    .line 6
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/shabakaty/downloader/uq2$a;

    .line 7
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 8
    iget-object v7, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v7, v7, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v17, v4

    :goto_0
    move-wide v4, v12

    move-wide/from16 v12, v17

    goto :goto_4

    .line 9
    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 11
    iget-wide v9, v0, Lcom/shabakaty/downloader/s71$g;->c:J

    cmp-long v14, v9, v4

    if-nez v14, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v12

    .line 12
    :goto_1
    iget-object v14, v11, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget-object v15, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v15, v15, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 13
    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/shabakaty/downloader/op2;->o(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;J)Lcom/shabakaty/downloader/uq2$a;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 15
    iget-object v4, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v4, v4, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v5, v7, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v12, v11, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v4, v5, v12}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 16
    iget-object v4, v11, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    iget v5, v7, Lcom/shabakaty/downloader/mp2;->b:I

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/nn4$b;->d(I)I

    move-result v4

    iget v5, v7, Lcom/shabakaty/downloader/mp2;->c:I

    if-ne v4, v5, :cond_2

    .line 17
    iget-object v4, v11, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    .line 18
    iget-object v4, v4, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    iget-wide v4, v4, Lcom/shabakaty/downloader/k4;->c:J

    move-wide v12, v4

    goto :goto_2

    :cond_2
    move-wide v12, v2

    :goto_2
    move-wide v4, v12

    move-wide v12, v9

    const/4 v10, 0x1

    move-object v9, v7

    goto :goto_4

    .line 19
    :cond_3
    iget-wide v14, v0, Lcom/shabakaty/downloader/s71$g;->c:J

    cmp-long v16, v14, v4

    if-nez v16, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    move-wide/from16 v17, v9

    move v10, v4

    move-object v9, v7

    goto :goto_0

    .line 20
    :goto_4
    :try_start_0
    iget-object v7, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v7, v7, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 21
    iput-object v0, v11, Lcom/shabakaty/downloader/s71;->Z:Lcom/shabakaty/downloader/s71$g;

    goto :goto_5

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    .line 22
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v1, v1, Lcom/shabakaty/downloader/yc3;->e:I

    if-eq v1, v8, :cond_6

    .line 23
    invoke-virtual {v11, v0}, Lcom/shabakaty/downloader/s71;->f0(I)V

    .line 24
    :cond_6
    invoke-virtual {v11, v6, v8, v6, v8}, Lcom/shabakaty/downloader/s71;->H(ZZZZ)V

    :goto_5
    move-wide v7, v4

    goto/16 :goto_9

    .line 25
    :cond_7
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v9, v1}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 26
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 27
    iget-object v1, v1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-eqz v1, :cond_8

    .line 28
    iget-boolean v7, v1, Lcom/shabakaty/downloader/lp2;->d:Z

    if-eqz v7, :cond_8

    cmp-long v7, v4, v2

    if-eqz v7, :cond_8

    .line 29
    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    iget-object v2, v11, Lcom/shabakaty/downloader/s71;->L:Lcom/shabakaty/downloader/wz3;

    .line 30
    invoke-interface {v1, v4, v5, v2}, Lcom/shabakaty/downloader/kp2;->k(JLcom/shabakaty/downloader/wz3;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v4

    .line 31
    :goto_6
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v14

    iget-object v3, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v6, v3, Lcom/shabakaty/downloader/yc3;->s:J

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_b

    iget-object v3, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v6, v3, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    .line 32
    :cond_9
    iget-wide v7, v3, Lcom/shabakaty/downloader/yc3;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 33
    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    iput-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    return-void

    :cond_a
    move-wide v1, v4

    .line 34
    :cond_b
    :try_start_1
    iget-object v3, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v3, v3, Lcom/shabakaty/downloader/yc3;->e:I

    if-ne v3, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 35
    :goto_7
    invoke-virtual {v11, v9, v1, v2, v0}, Lcom/shabakaty/downloader/s71;->R(Lcom/shabakaty/downloader/uq2$a;JZ)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v0, v4, v14

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v8, v10

    .line 36
    :try_start_2
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v4, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v5, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/s71;->m0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v10, v8

    move-wide v7, v14

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 37
    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    iput-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    return-void

    :catchall_0
    move-exception v0

    move v10, v8

    move-wide v7, v14

    goto :goto_a

    :catchall_1
    move-exception v0

    move-wide v7, v4

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    iput-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 38
    throw v0
.end method

.method public final R(Lcom/shabakaty/downloader/uq2$a;JZ)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/s71;->S(Lcom/shabakaty/downloader/uq2$a;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final S(Lcom/shabakaty/downloader/uq2$a;JZZ)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->k0()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s71;->R:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    .line 3
    iget-object p5, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget p5, p5, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/s71;->f0(I)V

    .line 5
    :cond_1
    iget-object p5, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 6
    iget-object p5, p5, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    .line 7
    iget-object v3, v2, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v3, v3, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, v2, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v3, 0x0

    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    .line 9
    iget-wide p4, v2, Lcom/shabakaty/downloader/lp2;->o:J

    add-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length p4, p1

    const/4 p5, 0x0

    :goto_2
    if-ge p5, p4, :cond_5

    aget-object v5, p1, p5

    .line 11
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/s71;->d(Lcom/shabakaty/downloader/lr3;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    .line 12
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 13
    iget-object p4, p1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-eq p4, v2, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/op2;->a()Lcom/shabakaty/downloader/lp2;

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/op2;->n(Lcom/shabakaty/downloader/lp2;)Z

    .line 16
    iput-wide v3, v2, Lcom/shabakaty/downloader/lp2;->o:J

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->g()V

    :cond_7
    if-eqz v2, :cond_a

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/op2;->n(Lcom/shabakaty/downloader/lp2;)Z

    .line 19
    iget-boolean p1, v2, Lcom/shabakaty/downloader/lp2;->d:Z

    if-nez p1, :cond_8

    .line 20
    iget-object p1, v2, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/np2;->b(J)Lcom/shabakaty/downloader/np2;

    move-result-object p1

    iput-object p1, v2, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    goto :goto_4

    .line 22
    :cond_8
    iget-boolean p1, v2, Lcom/shabakaty/downloader/lp2;->e:Z

    if-eqz p1, :cond_9

    .line 23
    iget-object p1, v2, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/kp2;->p0(J)J

    move-result-wide p1

    .line 24
    iget-object p3, v2, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    iget-wide p4, p0, Lcom/shabakaty/downloader/s71;->C:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Lcom/shabakaty/downloader/s71;->D:Z

    invoke-interface {p3, p4, p5, v2}, Lcom/shabakaty/downloader/kp2;->M0(JZ)V

    move-wide p2, p1

    .line 25
    :cond_9
    :goto_4
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/s71;->J(J)V

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->z()V

    goto :goto_5

    .line 27
    :cond_a
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/op2;->b()V

    .line 28
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/s71;->J(J)V

    .line 29
    :goto_5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/s71;->q(Z)V

    .line 30
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast p1, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/yj4;->e(I)Z

    return-wide p2
.end method

.method public final T(Lcom/shabakaty/downloader/vd3;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/vd3;->g:Landroid/os/Looper;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->z:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->c(Lcom/shabakaty/downloader/vd3;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget p1, p1, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast p1, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/yj4;->e(I)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    const/16 v1, 0xf

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yj4;->c(ILjava/lang/Object;)Lcom/shabakaty/downloader/fs1$a;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/yj4$b;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final U(Lcom/shabakaty/downloader/vd3;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/vd3;->g:Landroid/os/Looper;

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vd3;->c(Z)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->G:Lcom/shabakaty/downloader/w30;

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/w30;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/shabakaty/downloader/fs1;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/or;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/s71;Lcom/shabakaty/downloader/vd3;)V

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/yj4;

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final V(Lcom/shabakaty/downloader/lr3;J)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/lr3;->j()V

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/bm4;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/bm4;

    .line 4
    iget-boolean v0, p1, Lcom/shabakaty/downloader/bk;->A:Z

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 6
    iput-wide p2, p1, Lcom/shabakaty/downloader/bm4;->Q:J

    :cond_0
    return-void
.end method

.method public final W(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/s71;->V:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/s71;->V:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    invoke-static {v2}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v2}, Lcom/shabakaty/downloader/lr3;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    monitor-enter p0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final X(Lcom/shabakaty/downloader/s71$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 2
    iget v0, p1, Lcom/shabakaty/downloader/s71$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/s71$g;

    new-instance v1, Lcom/shabakaty/downloader/wd3;

    .line 4
    iget-object v2, p1, Lcom/shabakaty/downloader/s71$a;->a:Ljava/util/List;

    .line 5
    iget-object v3, p1, Lcom/shabakaty/downloader/s71$a;->b:Lcom/shabakaty/downloader/t54;

    .line 6
    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/wd3;-><init>(Ljava/util/Collection;Lcom/shabakaty/downloader/t54;)V

    .line 7
    iget v2, p1, Lcom/shabakaty/downloader/s71$a;->c:I

    .line 8
    iget-wide v3, p1, Lcom/shabakaty/downloader/s71$a;->d:J

    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/s71$g;-><init>(Lcom/shabakaty/downloader/nn4;IJ)V

    iput-object v0, p0, Lcom/shabakaty/downloader/s71;->Z:Lcom/shabakaty/downloader/s71$g;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    .line 11
    iget-object v1, p1, Lcom/shabakaty/downloader/s71$a;->a:Ljava/util/List;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/s71$a;->b:Lcom/shabakaty/downloader/t54;

    .line 13
    iget-object v2, v0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/cr2;->i(II)V

    .line 14
    iget-object v2, v0, Lcom/shabakaty/downloader/cr2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lcom/shabakaty/downloader/cr2;->a(ILjava/util/List;Lcom/shabakaty/downloader/t54;)Lcom/shabakaty/downloader/nn4;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/s71;->r(Lcom/shabakaty/downloader/nn4;Z)V

    return-void
.end method

.method public final Y(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/s71;->X:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/s71;->X:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->e:I

    if-nez p1, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    const/4 v0, 0x2

    check-cast p1, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/yj4;->e(I)Z

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yc3;->c(Z)Lcom/shabakaty/downloader/yc3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    :goto_1
    return-void
.end method

.method public final Z(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/s71;->P:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->I()V

    .line 3
    iget-boolean p1, p0, Lcom/shabakaty/downloader/s71;->Q:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->P(Z)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->q(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/shabakaty/downloader/s71$a;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr2;->e()I

    move-result p2

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/s71$a;->a:Ljava/util/List;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/s71$a;->b:Lcom/shabakaty/downloader/t54;

    .line 6
    invoke-virtual {v0, p2, v1, p1}, Lcom/shabakaty/downloader/cr2;->a(ILjava/util/List;Lcom/shabakaty/downloader/t54;)Lcom/shabakaty/downloader/nn4;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/s71;->r(Lcom/shabakaty/downloader/nn4;Z)V

    return-void
.end method

.method public final a0(ZIZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 2
    iget-object p3, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p3, Lcom/shabakaty/downloader/s71$d;->a:Z

    .line 4
    iput-boolean v0, p3, Lcom/shabakaty/downloader/s71$d;->f:Z

    .line 5
    iput p4, p3, Lcom/shabakaty/downloader/s71$d;->g:I

    .line 6
    iget-object p3, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {p3, p1, p2}, Lcom/shabakaty/downloader/yc3;->d(ZI)Lcom/shabakaty/downloader/yc3;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/shabakaty/downloader/s71;->R:Z

    .line 8
    iget-object p3, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 9
    iget-object p3, p3, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    :goto_0
    if-eqz p3, :cond_2

    .line 10
    iget-object p4, p3, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 11
    iget-object p4, p4, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    array-length v0, p4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p4, v1

    if-eqz v2, :cond_0

    .line 12
    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/f81;->l(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p3, p3, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->g0()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->k0()V

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->n0()V

    goto :goto_2

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget p1, p1, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->i0()V

    .line 19
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast p1, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/yj4;->e(I)Z

    goto :goto_2

    :cond_4
    if-ne p1, p3, :cond_5

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast p1, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/yj4;->e(I)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/o04;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/kp2;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yj4;->c(ILjava/lang/Object;)Lcom/shabakaty/downloader/fs1$a;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/yj4$b;->b()V

    return-void
.end method

.method public final b0(Lcom/shabakaty/downloader/ad3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qo0;->e(Lcom/shabakaty/downloader/ad3;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qo0;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object p1

    .line 3
    iget v0, p1, Lcom/shabakaty/downloader/ad3;->a:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/shabakaty/downloader/s71;->t(Lcom/shabakaty/downloader/ad3;FZZ)V

    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/vd3;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vd3;->b()Z

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p1, Lcom/shabakaty/downloader/vd3;->a:Lcom/shabakaty/downloader/vd3$b;

    .line 3
    iget v2, p1, Lcom/shabakaty/downloader/vd3;->e:I

    .line 4
    iget-object v3, p1, Lcom/shabakaty/downloader/vd3;->f:Ljava/lang/Object;

    .line 5
    invoke-interface {v1, v2, v3}, Lcom/shabakaty/downloader/vd3$b;->p(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vd3;->c(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vd3;->c(Z)V

    .line 7
    throw v1
.end method

.method public final c0(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/s71;->T:I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 3
    iput p1, v0, Lcom/shabakaty/downloader/op2;->f:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/op2;->q(Lcom/shabakaty/downloader/nn4;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->P(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->q(Z)V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/lr3;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/lr3;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/qo0;->t:Lcom/shabakaty/downloader/lr3;

    if-ne p1, v2, :cond_2

    const/4 v2, 0x0

    .line 4
    iput-object v2, v0, Lcom/shabakaty/downloader/qo0;->u:Lcom/shabakaty/downloader/no2;

    .line 5
    iput-object v2, v0, Lcom/shabakaty/downloader/qo0;->t:Lcom/shabakaty/downloader/lr3;

    .line 6
    iput-boolean v1, v0, Lcom/shabakaty/downloader/qo0;->v:Z

    .line 7
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/lr3;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/lr3;->stop()V

    .line 9
    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/lr3;->g()V

    .line 10
    iget p1, p0, Lcom/shabakaty/downloader/s71;->Y:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/shabakaty/downloader/s71;->Y:I

    return-void
.end method

.method public final d0(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/s71;->U:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 3
    iput-boolean p1, v0, Lcom/shabakaty/downloader/op2;->g:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/op2;->q(Lcom/shabakaty/downloader/nn4;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->P(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->q(Z)V

    return-void
.end method

.method public final e()V
    .locals 36

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->G:Lcom/shabakaty/downloader/w30;

    invoke-interface {v0}, Lcom/shabakaty/downloader/w30;->a()J

    move-result-wide v11

    .line 2
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    const/4 v13, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_2d

    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    .line 3
    iget-boolean v0, v0, Lcom/shabakaty/downloader/cr2;->j:Z

    if-nez v0, :cond_0

    goto/16 :goto_1a

    .line 4
    :cond_0
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget-wide v1, v10, Lcom/shabakaty/downloader/s71;->a0:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/op2;->m(J)V

    .line 5
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-boolean v2, v2, Lcom/shabakaty/downloader/np2;->i:Z

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lp2;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v1, v1, Lcom/shabakaty/downloader/np2;->e:J

    cmp-long v3, v1, v14

    if-eqz v3, :cond_1

    iget v0, v0, Lcom/shabakaty/downloader/op2;->k:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_9

    .line 8
    iget-object v1, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget-wide v2, v10, Lcom/shabakaty/downloader/s71;->a0:J

    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 9
    iget-object v4, v1, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    if-nez v4, :cond_3

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/yc3;->s:J

    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/op2;->d(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJ)Lcom/shabakaty/downloader/np2;

    move-result-object v0

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/shabakaty/downloader/op2;->c(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/lp2;J)Lcom/shabakaty/downloader/np2;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_9

    .line 12
    iget-object v1, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget-object v2, v10, Lcom/shabakaty/downloader/s71;->s:[Lcom/shabakaty/downloader/mr3;

    iget-object v3, v10, Lcom/shabakaty/downloader/s71;->t:Lcom/shabakaty/downloader/lp4;

    iget-object v4, v10, Lcom/shabakaty/downloader/s71;->v:Lcom/shabakaty/downloader/fj2;

    .line 13
    invoke-interface {v4}, Lcom/shabakaty/downloader/fj2;->h()Lcom/shabakaty/downloader/fn0;

    move-result-object v21

    iget-object v4, v10, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->u:Lcom/shabakaty/downloader/mp4;

    .line 14
    iget-object v6, v1, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    if-nez v6, :cond_5

    .line 15
    iget-object v6, v0, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/shabakaty/downloader/np2;->c:J

    cmp-long v16, v6, v14

    if-eqz v16, :cond_4

    goto :goto_3

    :cond_4
    const-wide/16 v6, 0x0

    :goto_3
    move-wide/from16 v18, v6

    goto :goto_4

    .line 16
    :cond_5
    iget-wide v14, v6, Lcom/shabakaty/downloader/lp2;->o:J

    .line 17
    iget-object v6, v6, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v6, v6, Lcom/shabakaty/downloader/np2;->e:J

    add-long/2addr v14, v6

    iget-wide v6, v0, Lcom/shabakaty/downloader/np2;->b:J

    sub-long/2addr v14, v6

    move-wide/from16 v18, v14

    .line 18
    :goto_4
    new-instance v6, Lcom/shabakaty/downloader/lp2;

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v0

    move-object/from16 v24, v5

    invoke-direct/range {v16 .. v24}, Lcom/shabakaty/downloader/lp2;-><init>([Lcom/shabakaty/downloader/mr3;JLcom/shabakaty/downloader/lp4;Lcom/shabakaty/downloader/fn0;Lcom/shabakaty/downloader/cr2;Lcom/shabakaty/downloader/np2;Lcom/shabakaty/downloader/mp4;)V

    .line 19
    iget-object v2, v1, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    if-eqz v2, :cond_7

    .line 20
    iget-object v3, v2, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    if-ne v6, v3, :cond_6

    goto :goto_5

    .line 21
    :cond_6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lp2;->b()V

    .line 22
    iput-object v6, v2, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    .line 23
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lp2;->c()V

    goto :goto_5

    .line 24
    :cond_7
    iput-object v6, v1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 25
    iput-object v6, v1, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    .line 26
    :goto_5
    iput-object v13, v1, Lcom/shabakaty/downloader/op2;->l:Ljava/lang/Object;

    .line 27
    iput-object v6, v1, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    .line 28
    iget v2, v1, Lcom/shabakaty/downloader/op2;->k:I

    add-int/2addr v2, v8

    iput v2, v1, Lcom/shabakaty/downloader/op2;->k:I

    .line 29
    invoke-virtual {v1}, Lcom/shabakaty/downloader/op2;->l()V

    .line 30
    iget-object v1, v6, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    iget-wide v2, v0, Lcom/shabakaty/downloader/np2;->b:J

    invoke-interface {v1, v10, v2, v3}, Lcom/shabakaty/downloader/kp2;->B0(Lcom/shabakaty/downloader/kp2$a;J)V

    .line 31
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 32
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-ne v0, v6, :cond_8

    .line 33
    invoke-virtual {v6}, Lcom/shabakaty/downloader/lp2;->e()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/shabakaty/downloader/s71;->J(J)V

    .line 34
    :cond_8
    invoke-virtual {v10, v9}, Lcom/shabakaty/downloader/s71;->q(Z)V

    .line 35
    :cond_9
    iget-boolean v0, v10, Lcom/shabakaty/downloader/s71;->S:Z

    if-eqz v0, :cond_a

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->v()Z

    move-result v0

    iput-boolean v0, v10, Lcom/shabakaty/downloader/s71;->S:Z

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->l0()V

    goto :goto_6

    .line 38
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->z()V

    .line 39
    :goto_6
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 40
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-nez v0, :cond_b

    goto/16 :goto_12

    .line 41
    :cond_b
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    if-eqz v1, :cond_1b

    .line 42
    iget-boolean v1, v10, Lcom/shabakaty/downloader/s71;->Q:Z

    if-eqz v1, :cond_c

    goto/16 :goto_f

    .line 43
    :cond_c
    iget-boolean v1, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    .line 44
    :goto_7
    iget-object v2, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v3, v2

    if-ge v1, v3, :cond_12

    .line 45
    aget-object v2, v2, v1

    .line 46
    iget-object v3, v0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    aget-object v3, v3, v1

    .line 47
    invoke-interface {v2}, Lcom/shabakaty/downloader/lr3;->q()Lcom/shabakaty/downloader/dx3;

    move-result-object v4

    if-ne v4, v3, :cond_11

    if-eqz v3, :cond_10

    .line 48
    invoke-interface {v2}, Lcom/shabakaty/downloader/lr3;->i()Z

    move-result v3

    if-nez v3, :cond_10

    .line 49
    iget-object v3, v0, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    .line 50
    iget-object v4, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-boolean v4, v4, Lcom/shabakaty/downloader/np2;->f:Z

    if-eqz v4, :cond_f

    iget-boolean v4, v3, Lcom/shabakaty/downloader/lp2;->d:Z

    if-eqz v4, :cond_f

    instance-of v4, v2, Lcom/shabakaty/downloader/bm4;

    if-nez v4, :cond_e

    .line 51
    invoke-interface {v2}, Lcom/shabakaty/downloader/lr3;->t()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/shabakaty/downloader/lp2;->e()J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-ltz v6, :cond_f

    :cond_e
    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    :goto_9
    const/4 v1, 0x0

    goto :goto_a

    :cond_12
    const/4 v1, 0x1

    :goto_a
    if-nez v1, :cond_13

    goto/16 :goto_12

    .line 52
    :cond_13
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    .line 53
    iget-boolean v2, v1, Lcom/shabakaty/downloader/lp2;->d:Z

    if-nez v2, :cond_14

    iget-wide v2, v10, Lcom/shabakaty/downloader/s71;->a0:J

    .line 54
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lp2;->e()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_14

    goto/16 :goto_12

    .line 55
    :cond_14
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 56
    iget-object v1, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 57
    iget-object v2, v1, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-eqz v2, :cond_15

    .line 58
    iget-object v2, v2, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    const/4 v2, 0x0

    .line 59
    :goto_b
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 60
    iget-object v2, v1, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    .line 61
    iget-object v2, v2, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    .line 62
    iput-object v2, v1, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    .line 63
    invoke-virtual {v1}, Lcom/shabakaty/downloader/op2;->l()V

    .line 64
    iget-object v1, v1, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    .line 65
    iget-object v2, v1, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 66
    iget-boolean v3, v1, Lcom/shabakaty/downloader/lp2;->d:Z

    if-eqz v3, :cond_17

    iget-object v3, v1, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    .line 67
    invoke-interface {v3}, Lcom/shabakaty/downloader/kp2;->x0()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_17

    .line 68
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lp2;->e()J

    move-result-wide v0

    .line 69
    iget-object v2, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1f

    aget-object v5, v2, v4

    .line 70
    invoke-interface {v5}, Lcom/shabakaty/downloader/lr3;->q()Lcom/shabakaty/downloader/dx3;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 71
    invoke-virtual {v10, v5, v0, v1}, Lcom/shabakaty/downloader/s71;->V(Lcom/shabakaty/downloader/lr3;J)V

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_17
    const/4 v3, 0x0

    .line 72
    :goto_d
    iget-object v4, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v4, v4

    if-ge v3, v4, :cond_1f

    .line 73
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/mp4;->b(I)Z

    move-result v4

    .line 74
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mp4;->b(I)Z

    move-result v5

    if-eqz v4, :cond_1a

    .line 75
    iget-object v4, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/shabakaty/downloader/lr3;->v()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 76
    iget-object v4, v10, Lcom/shabakaty/downloader/s71;->s:[Lcom/shabakaty/downloader/mr3;

    aget-object v4, v4, v3

    check-cast v4, Lcom/shabakaty/downloader/bk;

    .line 77
    iget v4, v4, Lcom/shabakaty/downloader/bk;->r:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_18

    const/4 v4, 0x1

    goto :goto_e

    :cond_18
    const/4 v4, 0x0

    .line 78
    :goto_e
    iget-object v6, v0, Lcom/shabakaty/downloader/mp4;->b:[Lcom/shabakaty/downloader/nr3;

    aget-object v6, v6, v3

    .line 79
    iget-object v7, v2, Lcom/shabakaty/downloader/mp4;->b:[Lcom/shabakaty/downloader/nr3;

    aget-object v7, v7, v3

    if-eqz v5, :cond_19

    .line 80
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/nr3;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v4, :cond_1a

    .line 81
    :cond_19
    iget-object v4, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    aget-object v4, v4, v3

    .line 82
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lp2;->e()J

    move-result-wide v5

    .line 83
    invoke-virtual {v10, v4, v5, v6}, Lcom/shabakaty/downloader/s71;->V(Lcom/shabakaty/downloader/lr3;J)V

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 84
    :cond_1b
    :goto_f
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/np2;->i:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v10, Lcom/shabakaty/downloader/s71;->Q:Z

    if-eqz v1, :cond_1f

    :cond_1c
    const/4 v1, 0x0

    .line 85
    :goto_10
    iget-object v2, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v3, v2

    if-ge v1, v3, :cond_1f

    .line 86
    aget-object v2, v2, v1

    .line 87
    iget-object v3, v0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1e

    .line 88
    invoke-interface {v2}, Lcom/shabakaty/downloader/lr3;->q()Lcom/shabakaty/downloader/dx3;

    move-result-object v4

    if-ne v4, v3, :cond_1e

    .line 89
    invoke-interface {v2}, Lcom/shabakaty/downloader/lr3;->i()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 90
    iget-object v3, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v3, v3, Lcom/shabakaty/downloader/np2;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1d

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1d

    .line 91
    iget-wide v5, v0, Lcom/shabakaty/downloader/lp2;->o:J

    add-long/2addr v3, v5

    goto :goto_11

    :cond_1d
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 92
    :goto_11
    invoke-virtual {v10, v2, v3, v4}, Lcom/shabakaty/downloader/s71;->V(Lcom/shabakaty/downloader/lr3;J)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 93
    :cond_1f
    :goto_12
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 94
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-eqz v1, :cond_27

    .line 95
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-eq v0, v1, :cond_27

    .line 96
    iget-boolean v0, v1, Lcom/shabakaty/downloader/lp2;->g:Z

    if-eqz v0, :cond_20

    goto :goto_16

    .line 97
    :cond_20
    iget-object v0, v1, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 98
    :goto_13
    iget-object v4, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v5, v4

    if-ge v2, v5, :cond_26

    .line 99
    aget-object v14, v4, v2

    .line 100
    invoke-static {v14}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_15

    .line 101
    :cond_21
    invoke-interface {v14}, Lcom/shabakaty/downloader/lr3;->q()Lcom/shabakaty/downloader/dx3;

    move-result-object v4

    iget-object v5, v1, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    aget-object v5, v5, v2

    if-eq v4, v5, :cond_22

    const/4 v4, 0x1

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    .line 102
    :goto_14
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/mp4;->b(I)Z

    move-result v5

    if-eqz v5, :cond_23

    if-nez v4, :cond_23

    goto :goto_15

    .line 103
    :cond_23
    invoke-interface {v14}, Lcom/shabakaty/downloader/lr3;->v()Z

    move-result v4

    if-nez v4, :cond_24

    .line 104
    iget-object v4, v0, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/shabakaty/downloader/s71;->i(Lcom/shabakaty/downloader/f81;)[Lcom/shabakaty/downloader/wh1;

    move-result-object v15

    .line 105
    iget-object v4, v1, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    aget-object v16, v4, v2

    .line 106
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lp2;->e()J

    move-result-wide v17

    .line 107
    iget-wide v4, v1, Lcom/shabakaty/downloader/lp2;->o:J

    move-wide/from16 v19, v4

    .line 108
    invoke-interface/range {v14 .. v20}, Lcom/shabakaty/downloader/lr3;->r([Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/dx3;JJ)V

    goto :goto_15

    .line 109
    :cond_24
    invoke-interface {v14}, Lcom/shabakaty/downloader/lr3;->b()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 110
    invoke-virtual {v10, v14}, Lcom/shabakaty/downloader/s71;->d(Lcom/shabakaty/downloader/lr3;)V

    goto :goto_15

    :cond_25
    const/4 v3, 0x1

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_26
    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_27

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->g()V

    :cond_27
    :goto_16
    const/4 v0, 0x0

    .line 112
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->g0()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_18

    .line 113
    :cond_28
    iget-boolean v1, v10, Lcom/shabakaty/downloader/s71;->Q:Z

    if-eqz v1, :cond_29

    goto :goto_18

    .line 114
    :cond_29
    iget-object v1, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 115
    iget-object v1, v1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-nez v1, :cond_2a

    goto :goto_18

    .line 116
    :cond_2a
    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    if-eqz v1, :cond_2b

    .line 117
    iget-wide v2, v10, Lcom/shabakaty/downloader/s71;->a0:J

    .line 118
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lp2;->e()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2b

    iget-boolean v1, v1, Lcom/shabakaty/downloader/lp2;->g:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_19

    :cond_2b
    :goto_18
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2c

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->A()V

    .line 120
    :cond_2c
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 121
    iget-object v14, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 122
    invoke-virtual {v0}, Lcom/shabakaty/downloader/op2;->a()Lcom/shabakaty/downloader/lp2;

    move-result-object v15

    .line 123
    iget-object v0, v15, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v1, v0, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v6, v0, Lcom/shabakaty/downloader/np2;->b:J

    iget-wide v4, v0, Lcom/shabakaty/downloader/np2;->c:J

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide v2, v6

    const/4 v13, 0x1

    move/from16 v8, v16

    move/from16 v9, v17

    .line 124
    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    iput-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 125
    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v0, v15, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v2, v0, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v14, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v4, v0, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/s71;->m0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;J)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->I()V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->n0()V

    const/4 v0, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    goto :goto_17

    :cond_2d
    :goto_1a
    const/4 v13, 0x1

    .line 128
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v1, 0x2

    if-eq v0, v13, :cond_5b

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2e

    goto/16 :goto_35

    .line 129
    :cond_2e
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 130
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    const-wide/16 v3, 0xa

    if-nez v0, :cond_2f

    .line 131
    invoke-virtual {v10, v11, v12, v3, v4}, Lcom/shabakaty/downloader/s71;->O(JJ)V

    return-void

    :cond_2f
    const-string v5, "doSomeWork"

    .line 132
    invoke-static {v5}, Lcom/shabakaty/downloader/md;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->n0()V

    .line 134
    iget-boolean v5, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    const-wide/16 v6, 0x3e8

    if-eqz v5, :cond_39

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    mul-long v8, v8, v6

    .line 136
    iget-object v5, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    iget-object v14, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v14, v14, Lcom/shabakaty/downloader/yc3;->s:J

    iget-wide v6, v10, Lcom/shabakaty/downloader/s71;->C:J

    sub-long/2addr v14, v6

    iget-boolean v6, v10, Lcom/shabakaty/downloader/s71;->D:Z

    invoke-interface {v5, v14, v15, v6}, Lcom/shabakaty/downloader/kp2;->M0(JZ)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 137
    :goto_1b
    iget-object v14, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v15, v14

    if-ge v7, v15, :cond_38

    .line 138
    aget-object v14, v14, v7

    .line 139
    invoke-static {v14}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v15

    if-nez v15, :cond_30

    goto :goto_22

    .line 140
    :cond_30
    iget-wide v3, v10, Lcom/shabakaty/downloader/s71;->a0:J

    invoke-interface {v14, v3, v4, v8, v9}, Lcom/shabakaty/downloader/lr3;->o(JJ)V

    if-eqz v5, :cond_31

    .line 141
    invoke-interface {v14}, Lcom/shabakaty/downloader/lr3;->b()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    goto :goto_1c

    :cond_31
    const/4 v3, 0x0

    .line 142
    :goto_1c
    iget-object v4, v0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    aget-object v4, v4, v7

    invoke-interface {v14}, Lcom/shabakaty/downloader/lr3;->q()Lcom/shabakaty/downloader/dx3;

    move-result-object v5

    if-eq v4, v5, :cond_32

    const/4 v4, 0x1

    goto :goto_1d

    :cond_32
    const/4 v4, 0x0

    :goto_1d
    if-nez v4, :cond_33

    .line 143
    invoke-interface {v14}, Lcom/shabakaty/downloader/lr3;->i()Z

    move-result v5

    if-eqz v5, :cond_33

    const/4 v5, 0x1

    goto :goto_1e

    :cond_33
    const/4 v5, 0x0

    :goto_1e
    if-nez v4, :cond_35

    if-nez v5, :cond_35

    .line 144
    invoke-interface {v14}, Lcom/shabakaty/downloader/lr3;->d()Z

    move-result v4

    if-nez v4, :cond_35

    invoke-interface {v14}, Lcom/shabakaty/downloader/lr3;->b()Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_1f

    :cond_34
    const/4 v4, 0x0

    goto :goto_20

    :cond_35
    :goto_1f
    const/4 v4, 0x1

    :goto_20
    if-eqz v6, :cond_36

    if-eqz v4, :cond_36

    const/4 v5, 0x1

    goto :goto_21

    :cond_36
    const/4 v5, 0x0

    :goto_21
    if-nez v4, :cond_37

    .line 145
    invoke-interface {v14}, Lcom/shabakaty/downloader/lr3;->s()V

    :cond_37
    move v6, v5

    move v5, v3

    :goto_22
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v3, 0xa

    goto :goto_1b

    :cond_38
    move v8, v5

    goto :goto_23

    .line 146
    :cond_39
    iget-object v3, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v3}, Lcom/shabakaty/downloader/kp2;->d0()V

    const/4 v6, 0x1

    const/4 v8, 0x1

    .line 147
    :goto_23
    iget-object v3, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v3, v3, Lcom/shabakaty/downloader/np2;->e:J

    if-eqz v8, :cond_3b

    .line 148
    iget-boolean v5, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-eqz v5, :cond_3b

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v7

    if-eqz v5, :cond_3a

    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v7, v5, Lcom/shabakaty/downloader/yc3;->s:J

    cmp-long v5, v3, v7

    if-gtz v5, :cond_3b

    :cond_3a
    const/4 v9, 0x1

    goto :goto_24

    :cond_3b
    const/4 v9, 0x0

    :goto_24
    if-eqz v9, :cond_3c

    .line 149
    iget-boolean v3, v10, Lcom/shabakaty/downloader/s71;->Q:Z

    if-eqz v3, :cond_3c

    const/4 v3, 0x0

    .line 150
    iput-boolean v3, v10, Lcom/shabakaty/downloader/s71;->Q:Z

    .line 151
    iget-object v4, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v4, v4, Lcom/shabakaty/downloader/yc3;->m:I

    const/4 v5, 0x5

    invoke-virtual {v10, v3, v4, v3, v5}, Lcom/shabakaty/downloader/s71;->a0(ZIZI)V

    goto :goto_25

    :cond_3c
    const/4 v3, 0x0

    :goto_25
    const/4 v4, 0x3

    if-eqz v9, :cond_3d

    .line 152
    iget-object v5, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-boolean v5, v5, Lcom/shabakaty/downloader/np2;->i:Z

    if-eqz v5, :cond_3d

    .line 153
    invoke-virtual {v10, v2}, Lcom/shabakaty/downloader/s71;->f0(I)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->k0()V

    goto/16 :goto_2f

    .line 155
    :cond_3d
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v7, v5, Lcom/shabakaty/downloader/yc3;->e:I

    if-ne v7, v1, :cond_46

    .line 156
    iget v7, v10, Lcom/shabakaty/downloader/s71;->Y:I

    if-nez v7, :cond_3e

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->x()Z

    move-result v9

    goto/16 :goto_2b

    :cond_3e
    if-nez v6, :cond_3f

    goto/16 :goto_29

    .line 158
    :cond_3f
    iget-boolean v7, v5, Lcom/shabakaty/downloader/yc3;->g:Z

    if-nez v7, :cond_40

    goto :goto_2a

    .line 159
    :cond_40
    iget-object v5, v5, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v7, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 160
    iget-object v7, v7, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 161
    iget-object v7, v7, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v7, v7, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v10, v5, v7}, Lcom/shabakaty/downloader/s71;->h0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 162
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->K:Lcom/shabakaty/downloader/ej2;

    check-cast v5, Lcom/shabakaty/downloader/no0;

    .line 163
    iget-wide v7, v5, Lcom/shabakaty/downloader/no0;->i:J

    move-wide/from16 v32, v7

    goto :goto_26

    :cond_41
    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    .line 164
    :goto_26
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 165
    iget-object v5, v5, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    .line 166
    invoke-virtual {v5}, Lcom/shabakaty/downloader/lp2;->f()Z

    move-result v7

    if-eqz v7, :cond_42

    iget-object v7, v5, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-boolean v7, v7, Lcom/shabakaty/downloader/np2;->i:Z

    if-eqz v7, :cond_42

    const/4 v9, 0x1

    goto :goto_27

    :cond_42
    const/4 v9, 0x0

    .line 167
    :goto_27
    iget-object v7, v5, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v7, v7, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v7

    if-eqz v7, :cond_43

    iget-boolean v5, v5, Lcom/shabakaty/downloader/lp2;->d:Z

    if-nez v5, :cond_43

    const/4 v5, 0x1

    goto :goto_28

    :cond_43
    const/4 v5, 0x0

    :goto_28
    if-nez v9, :cond_45

    if-nez v5, :cond_45

    .line 168
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->v:Lcom/shabakaty/downloader/fj2;

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->m()J

    move-result-wide v28

    iget-object v7, v10, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    .line 170
    invoke-virtual {v7}, Lcom/shabakaty/downloader/qo0;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object v7

    iget v7, v7, Lcom/shabakaty/downloader/ad3;->a:F

    iget-boolean v8, v10, Lcom/shabakaty/downloader/s71;->R:Z

    move-object/from16 v27, v5

    move/from16 v30, v7

    move/from16 v31, v8

    .line 171
    invoke-interface/range {v27 .. v33}, Lcom/shabakaty/downloader/fj2;->f(JFZJ)Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_2a

    :cond_44
    :goto_29
    const/4 v9, 0x0

    goto :goto_2b

    :cond_45
    :goto_2a
    const/4 v9, 0x1

    :goto_2b
    if-eqz v9, :cond_46

    .line 172
    invoke-virtual {v10, v4}, Lcom/shabakaty/downloader/s71;->f0(I)V

    const/4 v5, 0x0

    .line 173
    iput-object v5, v10, Lcom/shabakaty/downloader/s71;->d0:Lcom/shabakaty/downloader/i71;

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->g0()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->i0()V

    goto :goto_2f

    .line 176
    :cond_46
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v5, v5, Lcom/shabakaty/downloader/yc3;->e:I

    if-ne v5, v4, :cond_4f

    iget v5, v10, Lcom/shabakaty/downloader/s71;->Y:I

    if-nez v5, :cond_47

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->x()Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_2f

    :cond_47
    if-nez v6, :cond_4f

    .line 178
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->g0()Z

    move-result v5

    iput-boolean v5, v10, Lcom/shabakaty/downloader/s71;->R:Z

    .line 179
    invoke-virtual {v10, v1}, Lcom/shabakaty/downloader/s71;->f0(I)V

    .line 180
    iget-boolean v5, v10, Lcom/shabakaty/downloader/s71;->R:Z

    if-eqz v5, :cond_4e

    .line 181
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 182
    iget-object v5, v5, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    :goto_2c
    if-eqz v5, :cond_4b

    .line 183
    iget-object v6, v5, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 184
    iget-object v6, v6, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    array-length v7, v6

    const/4 v9, 0x0

    :goto_2d
    if-ge v9, v7, :cond_4a

    aget-object v8, v6, v9

    if-eqz v8, :cond_49

    .line 185
    invoke-interface {v8}, Lcom/shabakaty/downloader/f81;->v()V

    :cond_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 186
    :cond_4a
    iget-object v5, v5, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_2c

    .line 187
    :cond_4b
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->K:Lcom/shabakaty/downloader/ej2;

    check-cast v5, Lcom/shabakaty/downloader/no0;

    .line 188
    iget-wide v6, v5, Lcom/shabakaty/downloader/no0;->i:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v6, v8

    if-nez v14, :cond_4c

    goto :goto_2e

    .line 189
    :cond_4c
    iget-wide v14, v5, Lcom/shabakaty/downloader/no0;->b:J

    add-long/2addr v6, v14

    iput-wide v6, v5, Lcom/shabakaty/downloader/no0;->i:J

    .line 190
    iget-wide v14, v5, Lcom/shabakaty/downloader/no0;->h:J

    cmp-long v18, v14, v8

    if-eqz v18, :cond_4d

    cmp-long v18, v6, v14

    if-lez v18, :cond_4d

    .line 191
    iput-wide v14, v5, Lcom/shabakaty/downloader/no0;->i:J

    .line 192
    :cond_4d
    iput-wide v8, v5, Lcom/shabakaty/downloader/no0;->m:J

    .line 193
    :cond_4e
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->k0()V

    .line 194
    :cond_4f
    :goto_2f
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v5, v5, Lcom/shabakaty/downloader/yc3;->e:I

    if-ne v5, v1, :cond_53

    const/4 v9, 0x0

    .line 195
    :goto_30
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v6, v5

    if-ge v9, v6, :cond_51

    .line 196
    aget-object v5, v5, v9

    invoke-static {v5}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    aget-object v5, v5, v9

    .line 197
    invoke-interface {v5}, Lcom/shabakaty/downloader/lr3;->q()Lcom/shabakaty/downloader/dx3;

    move-result-object v5

    iget-object v6, v0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    aget-object v6, v6, v9

    if-ne v5, v6, :cond_50

    .line 198
    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    aget-object v5, v5, v9

    invoke-interface {v5}, Lcom/shabakaty/downloader/lr3;->s()V

    :cond_50
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    .line 199
    :cond_51
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-boolean v5, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    if-nez v5, :cond_53

    iget-wide v5, v0, Lcom/shabakaty/downloader/yc3;->r:J

    const-wide/32 v7, 0x7a120

    cmp-long v0, v5, v7

    if-gez v0, :cond_53

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->v()Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_31

    .line 201
    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Playback stuck buffering and not loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_53
    :goto_31
    iget-boolean v0, v10, Lcom/shabakaty/downloader/s71;->X:Z

    iget-object v5, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-boolean v6, v5, Lcom/shabakaty/downloader/yc3;->o:Z

    if-eq v0, v6, :cond_54

    .line 203
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/yc3;->c(Z)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    iput-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 204
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->g0()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->e:I

    if-eq v0, v4, :cond_56

    :cond_55
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->e:I

    if-ne v0, v1, :cond_58

    .line 205
    :cond_56
    iget-boolean v0, v10, Lcom/shabakaty/downloader/s71;->X:Z

    if-eqz v0, :cond_57

    iget-boolean v0, v10, Lcom/shabakaty/downloader/s71;->W:Z

    if-eqz v0, :cond_57

    const/4 v9, 0x0

    goto :goto_32

    :cond_57
    const-wide/16 v0, 0xa

    .line 206
    invoke-virtual {v10, v11, v12, v0, v1}, Lcom/shabakaty/downloader/s71;->O(JJ)V

    const/4 v9, 0x1

    :goto_32
    xor-int/2addr v9, v13

    goto :goto_34

    .line 207
    :cond_58
    iget v4, v10, Lcom/shabakaty/downloader/s71;->Y:I

    if-eqz v4, :cond_59

    if-eq v0, v2, :cond_59

    const-wide/16 v4, 0x3e8

    .line 208
    invoke-virtual {v10, v11, v12, v4, v5}, Lcom/shabakaty/downloader/s71;->O(JJ)V

    goto :goto_33

    .line 209
    :cond_59
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    .line 210
    iget-object v0, v0, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_33
    const/4 v9, 0x0

    .line 211
    :goto_34
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    if-eq v1, v9, :cond_5a

    .line 212
    new-instance v1, Lcom/shabakaty/downloader/yc3;

    move-object v11, v1

    iget-object v12, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v13, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v14, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->d:J

    move-wide/from16 v16, v4

    iget v2, v0, Lcom/shabakaty/downloader/yc3;->e:I

    move/from16 v18, v2

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    move-object/from16 v19, v2

    iget-boolean v2, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    move/from16 v20, v2

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    move-object/from16 v24, v2

    iget-boolean v2, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    move/from16 v25, v2

    iget v2, v0, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v26, v2

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v27, v2

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v28, v4

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v30, v4

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move-wide/from16 v32, v4

    iget-boolean v0, v0, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v34, v0

    move/from16 v35, v9

    invoke-direct/range {v11 .. v35}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    .line 213
    iput-object v1, v10, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 214
    :cond_5a
    iput-boolean v3, v10, Lcom/shabakaty/downloader/s71;->W:Z

    .line 215
    invoke-static {}, Lcom/shabakaty/downloader/md;->g()V

    return-void

    .line 216
    :cond_5b
    :goto_35
    iget-object v0, v10, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    .line 217
    iget-object v0, v0, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final e0(Lcom/shabakaty/downloader/t54;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr2;->e()I

    move-result v1

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/t54;->b()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/t54;->h()Lcom/shabakaty/downloader/t54;

    move-result-object p1

    .line 6
    invoke-interface {p1, v3, v1}, Lcom/shabakaty/downloader/t54;->f(II)Lcom/shabakaty/downloader/t54;

    move-result-object p1

    .line 7
    :cond_0
    iput-object p1, v0, Lcom/shabakaty/downloader/cr2;->i:Lcom/shabakaty/downloader/t54;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr2;->c()Lcom/shabakaty/downloader/nn4;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/s71;->r(Lcom/shabakaty/downloader/nn4;Z)V

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/kp2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yj4;->c(ILjava/lang/Object;)Lcom/shabakaty/downloader/fs1$a;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/yj4$b;->b()V

    return-void
.end method

.method public final f0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->e:I

    if-eq v1, p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yc3;->g(I)Lcom/shabakaty/downloader/yc3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/s71;->h([Z)V

    return-void
.end method

.method public final g0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h([Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v5, v0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 5
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mp4;->b(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    iget-object v5, v0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/shabakaty/downloader/lr3;->reset()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 7
    :goto_1
    iget-object v5, v0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_9

    .line 8
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/mp4;->b(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 9
    aget-boolean v5, p1, v4

    .line 10
    iget-object v7, v0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    aget-object v7, v7, v4

    .line 11
    invoke-static {v7}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_6

    .line 12
    :cond_2
    iget-object v8, v0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 13
    iget-object v9, v8, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    .line 14
    iget-object v8, v8, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-ne v9, v8, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    .line 15
    :goto_2
    iget-object v8, v9, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 16
    iget-object v10, v8, Lcom/shabakaty/downloader/mp4;->b:[Lcom/shabakaty/downloader/nr3;

    aget-object v10, v10, v4

    .line 17
    iget-object v8, v8, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    aget-object v8, v8, v4

    .line 18
    invoke-static {v8}, Lcom/shabakaty/downloader/s71;->i(Lcom/shabakaty/downloader/f81;)[Lcom/shabakaty/downloader/wh1;

    move-result-object v11

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->g0()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v8, v8, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v12, 0x3

    if-ne v8, v12, :cond_4

    const/16 v20, 0x1

    goto :goto_3

    :cond_4
    const/16 v20, 0x0

    :goto_3
    if-nez v5, :cond_5

    if-eqz v20, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 20
    :goto_4
    iget v5, v0, Lcom/shabakaty/downloader/s71;->Y:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/shabakaty/downloader/s71;->Y:I

    .line 21
    iget-object v5, v9, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    aget-object v5, v5, v4

    iget-wide v12, v0, Lcom/shabakaty/downloader/s71;->a0:J

    .line 22
    invoke-virtual {v9}, Lcom/shabakaty/downloader/lp2;->e()J

    move-result-wide v16

    .line 23
    iget-wide v8, v9, Lcom/shabakaty/downloader/lp2;->o:J

    move-wide/from16 v18, v8

    move-object v8, v7

    move-object v9, v10

    move-object v10, v11

    move-object v11, v5

    .line 24
    invoke-interface/range {v8 .. v19}, Lcom/shabakaty/downloader/lr3;->h(Lcom/shabakaty/downloader/nr3;[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/dx3;JZZJJ)V

    const/16 v5, 0x67

    .line 25
    new-instance v6, Lcom/shabakaty/downloader/r71;

    invoke-direct {v6, v0}, Lcom/shabakaty/downloader/r71;-><init>(Lcom/shabakaty/downloader/s71;)V

    invoke-interface {v7, v5, v6}, Lcom/shabakaty/downloader/vd3$b;->p(ILjava/lang/Object;)V

    .line 26
    iget-object v5, v0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v7}, Lcom/shabakaty/downloader/lr3;->w()Lcom/shabakaty/downloader/no2;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 28
    iget-object v8, v5, Lcom/shabakaty/downloader/qo0;->u:Lcom/shabakaty/downloader/no2;

    if-eq v6, v8, :cond_7

    if-nez v8, :cond_6

    .line 29
    iput-object v6, v5, Lcom/shabakaty/downloader/qo0;->u:Lcom/shabakaty/downloader/no2;

    .line 30
    iput-object v7, v5, Lcom/shabakaty/downloader/qo0;->t:Lcom/shabakaty/downloader/lr3;

    .line 31
    iget-object v5, v5, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    .line 32
    iget-object v5, v5, Lcom/shabakaty/downloader/rb4;->v:Lcom/shabakaty/downloader/ad3;

    .line 33
    invoke-interface {v6, v5}, Lcom/shabakaty/downloader/no2;->e(Lcom/shabakaty/downloader/ad3;)V

    goto :goto_5

    .line 34
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    .line 35
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/i71;->b(Ljava/lang/RuntimeException;I)Lcom/shabakaty/downloader/i71;

    move-result-object v1

    .line 36
    throw v1

    :cond_7
    :goto_5
    if-eqz v20, :cond_8

    .line 37
    invoke-interface {v7}, Lcom/shabakaty/downloader/lr3;->start()V

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 38
    :cond_9
    iput-boolean v6, v1, Lcom/shabakaty/downloader/lp2;->g:Z

    return-void
.end method

.method public final h0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object p2

    iget p2, p2, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/nn4$c;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-boolean p2, p1, Lcom/shabakaty/downloader/nn4$c;->i:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Lcom/shabakaty/downloader/nn4$c;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    .line 1
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v3

    .line 2
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/s71;->P(Z)V

    goto/16 :goto_6

    .line 3
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->Y(Z)V

    goto/16 :goto_6

    .line 4
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->Z(Z)V

    goto/16 :goto_6

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->B()V

    goto/16 :goto_6

    .line 6
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/t54;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->e0(Lcom/shabakaty/downloader/t54;)V

    goto/16 :goto_6

    .line 7
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/t54;

    invoke-virtual {p0, v5, v6, p1}, Lcom/shabakaty/downloader/s71;->F(IILcom/shabakaty/downloader/t54;)V

    goto/16 :goto_6

    .line 8
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/s71$b;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->C(Lcom/shabakaty/downloader/s71$b;)V

    goto/16 :goto_6

    .line 9
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/s71$a;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5, p1}, Lcom/shabakaty/downloader/s71;->a(Lcom/shabakaty/downloader/s71$a;I)V

    goto/16 :goto_6

    .line 10
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/s71$a;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->X(Lcom/shabakaty/downloader/s71$a;)V

    goto/16 :goto_6

    .line 11
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ad3;

    .line 12
    iget v5, p1, Lcom/shabakaty/downloader/ad3;->a:F

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/shabakaty/downloader/s71;->t(Lcom/shabakaty/downloader/ad3;FZZ)V

    goto/16 :goto_6

    .line 13
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/vd3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->U(Lcom/shabakaty/downloader/vd3;)V

    goto/16 :goto_6

    .line 14
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/vd3;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->T(Lcom/shabakaty/downloader/vd3;)V

    goto/16 :goto_6

    .line 17
    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5, p1}, Lcom/shabakaty/downloader/s71;->W(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_6

    .line 18
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->d0(Z)V

    goto/16 :goto_6

    .line 19
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->c0(I)V

    goto/16 :goto_6

    .line 20
    :pswitch_f
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->G()V

    goto/16 :goto_6

    .line 21
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/kp2;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->o(Lcom/shabakaty/downloader/kp2;)V

    goto/16 :goto_6

    .line 22
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/kp2;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->s(Lcom/shabakaty/downloader/kp2;)V

    goto/16 :goto_6

    .line 23
    :pswitch_12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->E()V

    return v2

    .line 24
    :pswitch_13
    invoke-virtual {p0, v3, v2}, Lcom/shabakaty/downloader/s71;->j0(ZZ)V

    goto/16 :goto_6

    .line 25
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/wz3;

    .line 26
    iput-object p1, p0, Lcom/shabakaty/downloader/s71;->L:Lcom/shabakaty/downloader/wz3;

    goto/16 :goto_6

    .line 27
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ad3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->b0(Lcom/shabakaty/downloader/ad3;)V

    goto/16 :goto_6

    .line 28
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/s71$g;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s71;->Q(Lcom/shabakaty/downloader/s71$g;)V

    goto/16 :goto_6

    .line 29
    :pswitch_17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->e()V

    goto/16 :goto_6

    .line 30
    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v5, p1, v2, v2}, Lcom/shabakaty/downloader/s71;->a0(ZIZI)V

    goto/16 :goto_6

    .line 31
    :pswitch_19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->D()V
    :try_end_0
    .catch Lcom/shabakaty/downloader/i71; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/shabakaty/downloader/p01$a; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/shabakaty/downloader/pa3; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/shabakaty/downloader/wl0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/shabakaty/downloader/tl; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    .line 32
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_5

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_6

    :cond_5
    const/16 v4, 0x3ec

    .line 33
    :cond_6
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/i71;->b(Ljava/lang/RuntimeException;I)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    .line 34
    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/s71;->j0(ZZ)V

    .line 36
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yc3;->e(Lcom/shabakaty/downloader/i71;)Lcom/shabakaty/downloader/yc3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    goto/16 :goto_6

    :catch_1
    move-exception p1

    const/16 v0, 0x7d0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/s71;->p(Ljava/io/IOException;I)V

    goto/16 :goto_6

    :catch_2
    move-exception p1

    const/16 v0, 0x3ea

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/s71;->p(Ljava/io/IOException;I)V

    goto/16 :goto_6

    :catch_3
    move-exception p1

    .line 39
    iget v0, p1, Lcom/shabakaty/downloader/wl0;->r:I

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/s71;->p(Ljava/io/IOException;I)V

    goto/16 :goto_6

    :catch_4
    move-exception p1

    .line 40
    iget v0, p1, Lcom/shabakaty/downloader/pa3;->s:I

    if-ne v0, v2, :cond_8

    .line 41
    iget-boolean v0, p1, Lcom/shabakaty/downloader/pa3;->r:Z

    if-eqz v0, :cond_7

    const/16 v4, 0xbb9

    goto :goto_5

    :cond_7
    const/16 v4, 0xbbb

    goto :goto_5

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 42
    iget-boolean v0, p1, Lcom/shabakaty/downloader/pa3;->r:Z

    if-eqz v0, :cond_9

    const/16 v4, 0xbba

    goto :goto_5

    :cond_9
    const/16 v4, 0xbbc

    .line 43
    :cond_a
    :goto_5
    invoke-virtual {p0, p1, v4}, Lcom/shabakaty/downloader/s71;->p(Ljava/io/IOException;I)V

    goto :goto_6

    :catch_5
    move-exception p1

    .line 44
    iget v0, p1, Lcom/shabakaty/downloader/p01$a;->r:I

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/s71;->p(Ljava/io/IOException;I)V

    goto :goto_6

    :catch_6
    move-exception p1

    .line 45
    iget v4, p1, Lcom/shabakaty/downloader/i71;->t:I

    if-ne v4, v2, :cond_b

    .line 46
    iget-object v4, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 47
    iget-object v4, v4, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-eqz v4, :cond_b

    .line 48
    iget-object v4, v4, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v4, v4, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/i71;->a(Lcom/shabakaty/downloader/mp2;)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    .line 49
    :cond_b
    iget-boolean v4, p1, Lcom/shabakaty/downloader/i71;->z:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/shabakaty/downloader/s71;->d0:Lcom/shabakaty/downloader/i71;

    if-nez v4, :cond_c

    const-string v0, "Recoverable renderer error"

    .line 50
    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iput-object p1, p0, Lcom/shabakaty/downloader/s71;->d0:Lcom/shabakaty/downloader/i71;

    .line 52
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    const/16 v1, 0x19

    .line 53
    check-cast v0, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yj4;->c(ILjava/lang/Object;)Lcom/shabakaty/downloader/fs1$a;

    move-result-object p1

    .line 54
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    check-cast p1, Lcom/shabakaty/downloader/yj4$b;

    iget-object v0, v0, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    .line 56
    iget-object v1, p1, Lcom/shabakaty/downloader/yj4$b;->a:Landroid/os/Message;

    .line 57
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 59
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yj4$b;->a()V

    goto :goto_6

    .line 60
    :cond_c
    iget-object v4, p0, Lcom/shabakaty/downloader/s71;->d0:Lcom/shabakaty/downloader/i71;

    if-eqz v4, :cond_d

    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->d0:Lcom/shabakaty/downloader/i71;

    .line 63
    :cond_d
    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/s71;->j0(ZZ)V

    .line 65
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yc3;->e(Lcom/shabakaty/downloader/i71;)Lcom/shabakaty/downloader/yc3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 66
    :goto_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->A()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i0()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s71;->R:Z

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lcom/shabakaty/downloader/qo0;->w:Z

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/rb4;->b()V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 6
    invoke-static {v3}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v3}, Lcom/shabakaty/downloader/lr3;->start()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object p2

    iget p2, p2, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-wide v0, p1, Lcom/shabakaty/downloader/nn4$c;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/nn4$c;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-boolean p2, p1, Lcom/shabakaty/downloader/nn4$c;->i:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide p1, p1, Lcom/shabakaty/downloader/nn4$c;->g:J

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/sy4;->v(J)J

    move-result-wide p1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-wide v0, v0, Lcom/shabakaty/downloader/nn4$c;->f:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    .line 6
    iget-wide v0, v0, Lcom/shabakaty/downloader/nn4$b;->e:J

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final j0(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/s71;->V:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/shabakaty/downloader/s71;->H(ZZZZ)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->v:Lcom/shabakaty/downloader/fj2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/fj2;->i()V

    .line 4
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/s71;->f0(I)V

    return-void
.end method

.method public final k()J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    iget-wide v1, v0, Lcom/shabakaty/downloader/lp2;->o:J

    .line 4
    iget-boolean v3, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 6
    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    aget-object v4, v4, v3

    .line 7
    invoke-interface {v4}, Lcom/shabakaty/downloader/lr3;->q()Lcom/shabakaty/downloader/dx3;

    move-result-object v4

    iget-object v5, v0, Lcom/shabakaty/downloader/lp2;->c:[Lcom/shabakaty/downloader/dx3;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/shabakaty/downloader/lr3;->t()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    .line 9
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method public final k0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/qo0;->w:Z

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    .line 4
    iget-boolean v2, v0, Lcom/shabakaty/downloader/rb4;->s:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/rb4;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/rb4;->a(J)V

    .line 6
    iput-boolean v1, v0, Lcom/shabakaty/downloader/rb4;->s:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 8
    invoke-static {v3}, Lcom/shabakaty/downloader/s71;->w(Lcom/shabakaty/downloader/lr3;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {v3}, Lcom/shabakaty/downloader/lr3;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 10
    invoke-interface {v3}, Lcom/shabakaty/downloader/lr3;->stop()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l(Lcom/shabakaty/downloader/nn4;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nn4;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/shabakaty/downloader/uq2$a;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/yc3;->t:Lcom/shabakaty/downloader/uq2$a;

    sget-object p1, Lcom/shabakaty/downloader/yc3;->t:Lcom/shabakaty/downloader/uq2$a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/s71;->U:Z

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/nn4;->a(Z)I

    move-result v6

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-object v5, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 5
    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/shabakaty/downloader/op2;->o(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;J)Lcom/shabakaty/downloader/uq2$a;

    move-result-object v3

    .line 8
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 9
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v3, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, v0, v4}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 11
    iget p1, v3, Lcom/shabakaty/downloader/mp2;->c:I

    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    iget v4, v3, Lcom/shabakaty/downloader/mp2;->b:I

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/nn4$b;->d(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    iget-wide v1, p1, Lcom/shabakaty/downloader/k4;->c:J

    :cond_1
    move-wide v4, v1

    .line 14
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final l0()V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    .line 3
    iget-boolean v2, v0, Lcom/shabakaty/downloader/s71;->S:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/kp2;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    const/4 v11, 0x1

    .line 5
    :goto_1
    iget-object v1, v0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-boolean v2, v1, Lcom/shabakaty/downloader/yc3;->g:Z

    if-eq v11, v2, :cond_2

    .line 6
    new-instance v15, Lcom/shabakaty/downloader/yc3;

    move-object v2, v15

    iget-object v3, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v4, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v5, v1, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v7, v1, Lcom/shabakaty/downloader/yc3;->d:J

    iget v9, v1, Lcom/shabakaty/downloader/yc3;->e:I

    iget-object v10, v1, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    iget-object v12, v1, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v13, v1, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v14, v1, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    move-object/from16 v0, v16

    move-object/from16 v27, v0

    iget-boolean v0, v1, Lcom/shabakaty/downloader/yc3;->l:Z

    move/from16 v16, v0

    iget v0, v1, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v17, v0

    iget-object v0, v1, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v18, v0

    move-object v0, v2

    move-object/from16 v28, v3

    iget-wide v2, v1, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v21, v2

    iget-wide v2, v1, Lcom/shabakaty/downloader/yc3;->s:J

    move-wide/from16 v23, v2

    iget-boolean v2, v1, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v25, v2

    iget-boolean v1, v1, Lcom/shabakaty/downloader/yc3;->p:Z

    move/from16 v26, v1

    move-object v2, v0

    move-object/from16 v3, v28

    invoke-direct/range {v2 .. v26}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    :cond_2
    return-void
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v0, v0, Lcom/shabakaty/downloader/yc3;->q:J

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/s71;->n(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;J)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/s71;->h0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->K:Lcom/shabakaty/downloader/ej2;

    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-object v1, v1, Lcom/shabakaty/downloader/nn4$c;->k:Lcom/shabakaty/downloader/dp2$f;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    check-cast v0, Lcom/shabakaty/downloader/no0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v2, v1, Lcom/shabakaty/downloader/dp2$f;->a:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/shabakaty/downloader/no0;->d:J

    .line 6
    iget-wide v2, v1, Lcom/shabakaty/downloader/dp2$f;->b:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/shabakaty/downloader/no0;->g:J

    .line 7
    iget-wide v2, v1, Lcom/shabakaty/downloader/dp2$f;->c:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/shabakaty/downloader/no0;->h:J

    .line 8
    iget v2, v1, Lcom/shabakaty/downloader/dp2$f;->d:F

    const v3, -0x800001

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x3f7851ec    # 0.97f

    .line 9
    :goto_0
    iput v2, v0, Lcom/shabakaty/downloader/no0;->k:F

    .line 10
    iget v1, v1, Lcom/shabakaty/downloader/dp2$f;->e:F

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x3f83d70a    # 1.03f

    .line 11
    :goto_1
    iput v1, v0, Lcom/shabakaty/downloader/no0;->j:F

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/no0;->a()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_3

    .line 13
    iget-object p3, p0, Lcom/shabakaty/downloader/s71;->K:Lcom/shabakaty/downloader/ej2;

    iget-object p2, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/shabakaty/downloader/s71;->j(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 15
    check-cast p3, Lcom/shabakaty/downloader/no0;

    .line 16
    iput-wide p1, p3, Lcom/shabakaty/downloader/no0;->e:J

    .line 17
    invoke-virtual {p3}, Lcom/shabakaty/downloader/no0;->a()V

    goto :goto_2

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-object p1, p1, Lcom/shabakaty/downloader/nn4$c;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p3}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result p5

    if-nez p5, :cond_4

    .line 20
    iget-object p2, p4, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object p4, p0, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p3, p2, p4}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object p2

    iget p2, p2, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 21
    iget-object p4, p0, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {p3, p2, p4}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object p2

    iget-object p2, p2, Lcom/shabakaty/downloader/nn4$c;->a:Ljava/lang/Object;

    .line 22
    :cond_4
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->K:Lcom/shabakaty/downloader/ej2;

    check-cast p1, Lcom/shabakaty/downloader/no0;

    .line 24
    iput-wide v0, p1, Lcom/shabakaty/downloader/no0;->e:J

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/no0;->a()V

    :cond_5
    :goto_2
    return-void

    .line 26
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qo0;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object p1

    iget p1, p1, Lcom/shabakaty/downloader/ad3;->a:F

    iget-object p2, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object p2, p2, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    iget p3, p2, Lcom/shabakaty/downloader/ad3;->a:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_7

    .line 27
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/qo0;->e(Lcom/shabakaty/downloader/ad3;)V

    :cond_7
    return-void
.end method

.method public final n(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    iget-wide v3, p0, Lcom/shabakaty/downloader/s71;->a0:J

    .line 4
    iget-wide v5, v0, Lcom/shabakaty/downloader/lp2;->o:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 5
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final n0()V
    .locals 24

    move-object/from16 v11, p0

    .line 1
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kp2;->x0()J

    move-result-wide v1

    move-wide v7, v1

    goto :goto_0

    :cond_1
    move-wide v7, v12

    :goto_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    cmp-long v1, v7, v12

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v11, v7, v8}, Lcom/shabakaty/downloader/s71;->J(J)V

    .line 6
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v0, v0, Lcom/shabakaty/downloader/yc3;->s:J

    cmp-long v2, v7, v0

    if-eqz v2, :cond_18

    .line 7
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v5, v0, Lcom/shabakaty/downloader/yc3;->c:J

    const/4 v9, 0x1

    const/4 v10, 0x5

    move-object/from16 v1, p0

    move-wide v3, v7

    .line 8
    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    iput-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    goto/16 :goto_b

    .line 9
    :cond_2
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    iget-object v2, v11, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/op2;->i:Lcom/shabakaty/downloader/lp2;

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 11
    :goto_1
    iget-object v3, v1, Lcom/shabakaty/downloader/qo0;->t:Lcom/shabakaty/downloader/lr3;

    if-eqz v3, :cond_5

    .line 12
    invoke-interface {v3}, Lcom/shabakaty/downloader/lr3;->b()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/shabakaty/downloader/qo0;->t:Lcom/shabakaty/downloader/lr3;

    .line 13
    invoke-interface {v3}, Lcom/shabakaty/downloader/lr3;->d()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/shabakaty/downloader/qo0;->t:Lcom/shabakaty/downloader/lr3;

    .line 14
    invoke-interface {v2}, Lcom/shabakaty/downloader/lr3;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_6

    .line 15
    iput-boolean v14, v1, Lcom/shabakaty/downloader/qo0;->v:Z

    .line 16
    iget-boolean v2, v1, Lcom/shabakaty/downloader/qo0;->w:Z

    if-eqz v2, :cond_a

    .line 17
    iget-object v2, v1, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/rb4;->b()V

    goto :goto_4

    .line 18
    :cond_6
    iget-object v2, v1, Lcom/shabakaty/downloader/qo0;->u:Lcom/shabakaty/downloader/no2;

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v2}, Lcom/shabakaty/downloader/no2;->l()J

    move-result-wide v3

    .line 21
    iget-boolean v5, v1, Lcom/shabakaty/downloader/qo0;->v:Z

    if-eqz v5, :cond_8

    .line 22
    iget-object v5, v1, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/rb4;->l()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_7

    .line 23
    iget-object v2, v1, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    .line 24
    iget-boolean v3, v2, Lcom/shabakaty/downloader/rb4;->s:Z

    if-eqz v3, :cond_a

    .line 25
    invoke-virtual {v2}, Lcom/shabakaty/downloader/rb4;->l()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/rb4;->a(J)V

    .line 26
    iput-boolean v15, v2, Lcom/shabakaty/downloader/rb4;->s:Z

    goto :goto_4

    .line 27
    :cond_7
    iput-boolean v15, v1, Lcom/shabakaty/downloader/qo0;->v:Z

    .line 28
    iget-boolean v5, v1, Lcom/shabakaty/downloader/qo0;->w:Z

    if-eqz v5, :cond_8

    .line 29
    iget-object v5, v1, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/rb4;->b()V

    .line 30
    :cond_8
    iget-object v5, v1, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    invoke-virtual {v5, v3, v4}, Lcom/shabakaty/downloader/rb4;->a(J)V

    .line 31
    invoke-interface {v2}, Lcom/shabakaty/downloader/no2;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object v2

    .line 32
    iget-object v3, v1, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    .line 33
    iget-object v3, v3, Lcom/shabakaty/downloader/rb4;->v:Lcom/shabakaty/downloader/ad3;

    .line 34
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ad3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 35
    iget-object v3, v1, Lcom/shabakaty/downloader/qo0;->r:Lcom/shabakaty/downloader/rb4;

    .line 36
    iget-boolean v4, v3, Lcom/shabakaty/downloader/rb4;->s:Z

    if-eqz v4, :cond_9

    .line 37
    invoke-virtual {v3}, Lcom/shabakaty/downloader/rb4;->l()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/rb4;->a(J)V

    .line 38
    :cond_9
    iput-object v2, v3, Lcom/shabakaty/downloader/rb4;->v:Lcom/shabakaty/downloader/ad3;

    .line 39
    iget-object v3, v1, Lcom/shabakaty/downloader/qo0;->s:Lcom/shabakaty/downloader/qo0$a;

    check-cast v3, Lcom/shabakaty/downloader/s71;

    .line 40
    iget-object v3, v3, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    .line 41
    check-cast v3, Lcom/shabakaty/downloader/yj4;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v2}, Lcom/shabakaty/downloader/yj4;->c(ILjava/lang/Object;)Lcom/shabakaty/downloader/fs1$a;

    move-result-object v2

    .line 42
    check-cast v2, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/yj4$b;->b()V

    .line 43
    :cond_a
    :goto_4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qo0;->l()J

    move-result-wide v1

    .line 44
    iput-wide v1, v11, Lcom/shabakaty/downloader/s71;->a0:J

    .line 45
    iget-wide v3, v0, Lcom/shabakaty/downloader/lp2;->o:J

    sub-long/2addr v1, v3

    .line 46
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v3, v0, Lcom/shabakaty/downloader/yc3;->s:J

    .line 47
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_a

    .line 48
    :cond_b
    iget-boolean v0, v11, Lcom/shabakaty/downloader/s71;->c0:Z

    if-eqz v0, :cond_c

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 49
    iput-boolean v15, v11, Lcom/shabakaty/downloader/s71;->c0:Z

    .line 50
    :cond_c
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v5, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 51
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v0

    .line 52
    iget v5, v11, Lcom/shabakaty/downloader/s71;->b0:I

    iget-object v6, v11, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_d

    .line 53
    iget-object v7, v11, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/s71$c;

    move-wide v9, v1

    move-object v8, v11

    goto :goto_6

    :cond_d
    move-wide v8, v1

    move-object v7, v11

    :goto_5
    move-wide v9, v8

    move-object v8, v7

    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_10

    .line 54
    iget v6, v7, Lcom/shabakaty/downloader/s71$c;->s:I

    if-gt v6, v0, :cond_e

    if-ne v6, v0, :cond_10

    iget-wide v6, v7, Lcom/shabakaty/downloader/s71$c;->t:J

    cmp-long v16, v6, v3

    if-lez v16, :cond_10

    :cond_e
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_f

    .line 55
    iget-object v6, v8, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/shabakaty/downloader/s71$c;

    goto :goto_6

    :cond_f
    move-object v7, v8

    move-wide v8, v9

    goto :goto_5

    .line 56
    :cond_10
    iget-object v6, v8, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    .line 57
    iget-object v6, v8, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/s71$c;

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_14

    .line 58
    iget-object v7, v6, Lcom/shabakaty/downloader/s71$c;->u:Ljava/lang/Object;

    if-eqz v7, :cond_14

    iget v7, v6, Lcom/shabakaty/downloader/s71$c;->s:I

    if-lt v7, v0, :cond_12

    if-ne v7, v0, :cond_14

    iget-wide v14, v6, Lcom/shabakaty/downloader/s71$c;->t:J

    cmp-long v17, v14, v3

    if-gtz v17, :cond_14

    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 59
    iget-object v6, v8, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 60
    iget-object v6, v8, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/s71$c;

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_8

    :cond_13
    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_7

    :cond_14
    :goto_9
    if-eqz v6, :cond_16

    .line 61
    iget-object v14, v6, Lcom/shabakaty/downloader/s71$c;->u:Ljava/lang/Object;

    if-eqz v14, :cond_16

    iget v14, v6, Lcom/shabakaty/downloader/s71$c;->s:I

    if-ne v14, v0, :cond_16

    iget-wide v14, v6, Lcom/shabakaty/downloader/s71$c;->t:J

    cmp-long v17, v14, v3

    if-lez v17, :cond_16

    cmp-long v17, v14, v9

    if-gtz v17, :cond_16

    .line 62
    :try_start_0
    iget-object v14, v6, Lcom/shabakaty/downloader/s71$c;->r:Lcom/shabakaty/downloader/vd3;

    invoke-virtual {v8, v14}, Lcom/shabakaty/downloader/s71;->T(Lcom/shabakaty/downloader/vd3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v6, v6, Lcom/shabakaty/downloader/s71$c;->r:Lcom/shabakaty/downloader/vd3;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v6, v8, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 65
    iget-object v6, v8, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    .line 66
    iget-object v6, v8, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/s71$c;

    goto :goto_9

    :cond_15
    const/4 v6, 0x0

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 67
    iget-object v1, v6, Lcom/shabakaty/downloader/s71$c;->r:Lcom/shabakaty/downloader/vd3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, v8, Lcom/shabakaty/downloader/s71;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    throw v0

    .line 70
    :cond_16
    iput v5, v8, Lcom/shabakaty/downloader/s71;->b0:I

    .line 71
    :cond_17
    :goto_a
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iput-wide v1, v0, Lcom/shabakaty/downloader/yc3;->s:J

    .line 72
    :cond_18
    :goto_b
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 73
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    .line 74
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lp2;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/shabakaty/downloader/yc3;->q:J

    .line 75
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->m()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shabakaty/downloader/yc3;->r:J

    .line 76
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    if-eqz v1, :cond_21

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 77
    invoke-virtual {v11, v1, v0}, Lcom/shabakaty/downloader/s71;->h0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    iget v1, v1, Lcom/shabakaty/downloader/ad3;->a:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_21

    .line 78
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->K:Lcom/shabakaty/downloader/ej2;

    .line 79
    iget-object v4, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v5, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v5, v5, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-wide v8, v0, Lcom/shabakaty/downloader/yc3;->s:J

    invoke-virtual {v11, v4, v5, v8, v9}, Lcom/shabakaty/downloader/s71;->j(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;J)J

    move-result-wide v4

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->m()J

    move-result-wide v8

    .line 81
    check-cast v1, Lcom/shabakaty/downloader/no0;

    .line 82
    iget-wide v14, v1, Lcom/shabakaty/downloader/no0;->d:J

    cmp-long v0, v14, v12

    if-nez v0, :cond_19

    goto/16 :goto_10

    :cond_19
    sub-long v8, v4, v8

    .line 83
    iget-wide v14, v1, Lcom/shabakaty/downloader/no0;->n:J

    cmp-long v0, v14, v12

    if-nez v0, :cond_1a

    .line 84
    iput-wide v8, v1, Lcom/shabakaty/downloader/no0;->n:J

    const-wide/16 v8, 0x0

    .line 85
    iput-wide v8, v1, Lcom/shabakaty/downloader/no0;->o:J

    goto :goto_c

    .line 86
    :cond_1a
    iget v0, v1, Lcom/shabakaty/downloader/no0;->c:F

    long-to-float v6, v14

    mul-float v6, v6, v0

    sub-float v0, v3, v0

    long-to-float v10, v8

    mul-float v0, v0, v10

    add-float/2addr v0, v6

    float-to-long v14, v0

    .line 87
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v1, Lcom/shabakaty/downloader/no0;->n:J

    sub-long/2addr v8, v14

    .line 88
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 89
    iget-wide v14, v1, Lcom/shabakaty/downloader/no0;->o:J

    iget v0, v1, Lcom/shabakaty/downloader/no0;->c:F

    long-to-float v6, v14

    mul-float v6, v6, v0

    sub-float v0, v3, v0

    long-to-float v8, v8

    mul-float v0, v0, v8

    add-float/2addr v0, v6

    float-to-long v8, v0

    .line 90
    iput-wide v8, v1, Lcom/shabakaty/downloader/no0;->o:J

    .line 91
    :goto_c
    iget-wide v8, v1, Lcom/shabakaty/downloader/no0;->m:J

    const-wide/16 v14, 0x3e8

    cmp-long v0, v8, v12

    if-eqz v0, :cond_1b

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v12, v1, Lcom/shabakaty/downloader/no0;->m:J

    sub-long/2addr v8, v12

    cmp-long v0, v8, v14

    if-gez v0, :cond_1b

    .line 93
    iget v3, v1, Lcom/shabakaty/downloader/no0;->l:F

    goto/16 :goto_10

    .line 94
    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/shabakaty/downloader/no0;->m:J

    .line 95
    iget-wide v8, v1, Lcom/shabakaty/downloader/no0;->n:J

    iget-wide v12, v1, Lcom/shabakaty/downloader/no0;->o:J

    const-wide/16 v18, 0x3

    mul-long v12, v12, v18

    add-long v22, v12, v8

    .line 96
    iget-wide v8, v1, Lcom/shabakaty/downloader/no0;->i:J

    const v0, 0x33d6bf95    # 1.0E-7f

    cmp-long v6, v8, v22

    if-lez v6, :cond_1e

    .line 97
    invoke-static {v14, v15}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v8

    .line 98
    iget v6, v1, Lcom/shabakaty/downloader/no0;->l:F

    sub-float/2addr v6, v3

    long-to-float v8, v8

    mul-float v6, v6, v8

    float-to-long v9, v6

    .line 99
    iget v6, v1, Lcom/shabakaty/downloader/no0;->j:F

    sub-float/2addr v6, v3

    mul-float v6, v6, v8

    float-to-long v12, v6

    add-long/2addr v9, v12

    new-array v6, v2, [J

    const/4 v8, 0x0

    aput-wide v22, v6, v8

    .line 100
    iget-wide v12, v1, Lcom/shabakaty/downloader/no0;->f:J

    const/4 v7, 0x1

    aput-wide v12, v6, v7

    const/4 v12, 0x2

    iget-wide v13, v1, Lcom/shabakaty/downloader/no0;->i:J

    sub-long/2addr v13, v9

    aput-wide v13, v6, v12

    .line 101
    invoke-static {v7}, Lcom/shabakaty/downloader/ve3;->b(Z)V

    .line 102
    aget-wide v9, v6, v8

    const/4 v14, 0x1

    :goto_d
    if-ge v14, v2, :cond_1d

    .line 103
    aget-wide v7, v6, v14

    cmp-long v12, v7, v9

    if-lez v12, :cond_1c

    .line 104
    aget-wide v7, v6, v14

    move-wide v9, v7

    :cond_1c
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 105
    :cond_1d
    iput-wide v9, v1, Lcom/shabakaty/downloader/no0;->i:J

    goto :goto_e

    :cond_1e
    const/4 v2, 0x0

    .line 106
    iget v6, v1, Lcom/shabakaty/downloader/no0;->l:F

    sub-float/2addr v6, v3

    .line 107
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v0

    float-to-long v6, v2

    sub-long v18, v4, v6

    .line 108
    iget-wide v6, v1, Lcom/shabakaty/downloader/no0;->i:J

    move-wide/from16 v20, v6

    .line 109
    invoke-static/range {v18 .. v23}, Lcom/shabakaty/downloader/sy4;->j(JJJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/shabakaty/downloader/no0;->i:J

    .line 110
    iget-wide v8, v1, Lcom/shabakaty/downloader/no0;->h:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v8, v12

    if-eqz v2, :cond_1f

    cmp-long v2, v6, v8

    if-lez v2, :cond_1f

    .line 111
    iput-wide v8, v1, Lcom/shabakaty/downloader/no0;->i:J

    .line 112
    :cond_1f
    :goto_e
    iget-wide v6, v1, Lcom/shabakaty/downloader/no0;->i:J

    sub-long/2addr v4, v6

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-wide v8, v1, Lcom/shabakaty/downloader/no0;->a:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_20

    .line 114
    iput v3, v1, Lcom/shabakaty/downloader/no0;->l:F

    goto :goto_f

    :cond_20
    long-to-float v2, v4

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    .line 115
    iget v2, v1, Lcom/shabakaty/downloader/no0;->k:F

    iget v3, v1, Lcom/shabakaty/downloader/no0;->j:F

    .line 116
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/sy4;->h(FFF)F

    move-result v0

    iput v0, v1, Lcom/shabakaty/downloader/no0;->l:F

    .line 117
    :goto_f
    iget v3, v1, Lcom/shabakaty/downloader/no0;->l:F

    .line 118
    :goto_10
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qo0;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/ad3;->a:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_21

    .line 119
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    .line 120
    new-instance v2, Lcom/shabakaty/downloader/ad3;

    iget v1, v1, Lcom/shabakaty/downloader/ad3;->b:F

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/ad3;-><init>(FF)V

    .line 121
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/qo0;->e(Lcom/shabakaty/downloader/ad3;)V

    .line 122
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    .line 123
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qo0;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object v1

    iget v1, v1, Lcom/shabakaty/downloader/ad3;->a:F

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v11, v0, v1, v2, v2}, Lcom/shabakaty/downloader/s71;->t(Lcom/shabakaty/downloader/ad3;FZZ)V

    :cond_21
    return-void
.end method

.method public final o(Lcom/shabakaty/downloader/kp2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-wide v1, p0, Lcom/shabakaty/downloader/s71;->a0:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/op2;->m(J)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->z()V

    return-void
.end method

.method public final p(Ljava/io/IOException;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i71;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/shabakaty/downloader/i71;-><init>(ILjava/lang/Throwable;I)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object p1, p1, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/i71;->a(Lcom/shabakaty/downloader/mp2;)Lcom/shabakaty/downloader/i71;

    move-result-object v0

    :cond_0
    const-string p1, "ExoPlayerImplInternal"

    const-string p2, "Playback error"

    .line 5
    invoke-static {p1, p2, v0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0, v1, v1}, Lcom/shabakaty/downloader/s71;->j0(ZZ)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/yc3;->e(Lcom/shabakaty/downloader/i71;)Lcom/shabakaty/downloader/yc3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    return-void
.end method

.method public final q(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v1, v1, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v2, v2, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    .line 5
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/yc3;->a(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    if-nez v0, :cond_2

    .line 8
    iget-wide v3, v1, Lcom/shabakaty/downloader/yc3;->s:J

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lp2;->d()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/shabakaty/downloader/yc3;->q:J

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->m()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/shabakaty/downloader/yc3;->r:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 11
    iget-boolean p1, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, v0, Lcom/shabakaty/downloader/lp2;->m:Lcom/shabakaty/downloader/cp4;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->v:Lcom/shabakaty/downloader/fj2;

    iget-object v2, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    invoke-interface {v1, v2, p1, v0}, Lcom/shabakaty/downloader/fj2;->d([Lcom/shabakaty/downloader/lr3;Lcom/shabakaty/downloader/cp4;[Lcom/shabakaty/downloader/f81;)V

    :cond_4
    return-void
.end method

.method public final r(Lcom/shabakaty/downloader/nn4;Z)V
    .locals 39

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v8, v11, Lcom/shabakaty/downloader/s71;->Z:Lcom/shabakaty/downloader/s71$g;

    iget-object v9, v11, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget v4, v11, Lcom/shabakaty/downloader/s71;->T:I

    iget-boolean v10, v11, Lcom/shabakaty/downloader/s71;->U:Z

    iget-object v13, v11, Lcom/shabakaty/downloader/s71;->A:Lcom/shabakaty/downloader/nn4$c;

    iget-object v14, v11, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x4

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/s71$f;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/yc3;->t:Lcom/shabakaty/downloader/uq2$a;

    sget-object v18, Lcom/shabakaty/downloader/yc3;->t:Lcom/shabakaty/downloader/uq2$a;

    const-wide/16 v19, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v25}, Lcom/shabakaty/downloader/s71$f;-><init>(Lcom/shabakaty/downloader/uq2$a;JJZZZ)V

    :goto_0
    move-object v7, v0

    goto/16 :goto_13

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 6
    iget-object v1, v2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 7
    invoke-static {v0, v14}, Lcom/shabakaty/downloader/s71;->y(Lcom/shabakaty/downloader/yc3;Lcom/shabakaty/downloader/nn4$b;)Z

    move-result v17

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v17, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-wide v5, v0, Lcom/shabakaty/downloader/yc3;->s:J

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    iget-wide v5, v0, Lcom/shabakaty/downloader/yc3;->c:J

    :goto_2
    move-wide/from16 v21, v5

    if-eqz v8, :cond_6

    const/4 v3, 0x1

    move-object v6, v1

    move-object/from16 v1, p1

    move-object v5, v2

    move-object v2, v8

    move-object/from16 v26, v5

    move v5, v10

    move-object/from16 v27, v6

    move-object v6, v13

    move-object v7, v14

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/s71;->M(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/s71$g;ZIZLcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {v12, v10}, Lcom/shabakaty/downloader/nn4;->a(Z)I

    move-result v1

    move-wide/from16 v4, v21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x4

    goto :goto_5

    .line 13
    :cond_3
    iget-wide v2, v8, Lcom/shabakaty/downloader/s71$g;->c:J

    cmp-long v4, v2, v15

    if-nez v4, :cond_4

    .line 14
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    invoke-virtual {v12, v1, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget v6, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    move-wide/from16 v3, v21

    move-object/from16 v1, v27

    const/4 v5, 0x0

    goto :goto_3

    .line 16
    :cond_4
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, v2

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 18
    :goto_3
    iget v2, v0, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v8, 0x4

    if-ne v2, v8, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v27, v1

    move v1, v6

    const/4 v6, 0x0

    move-wide/from16 v37, v3

    move v3, v2

    move v2, v5

    move-wide/from16 v4, v37

    :goto_5
    move/from16 v36, v2

    move/from16 v34, v3

    move-wide v2, v4

    move/from16 v35, v6

    move-object/from16 v7, v26

    const/4 v5, -0x1

    move v4, v1

    move-object/from16 v1, v27

    goto/16 :goto_b

    :cond_6
    move-object/from16 v27, v1

    move-object/from16 v26, v2

    const/4 v8, 0x4

    .line 19
    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    invoke-virtual {v12, v10}, Lcom/shabakaty/downloader/nn4;->a(Z)I

    move-result v1

    move v6, v1

    move-object/from16 v8, v27

    goto :goto_7

    :cond_7
    move-object/from16 v7, v27

    .line 21
    invoke-virtual {v12, v7}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_9

    .line 22
    iget-object v5, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v10

    move-object/from16 v18, v5

    move-object v5, v7

    const/4 v8, -0x1

    move-object/from16 v6, v18

    move-object v8, v7

    move-object/from16 v7, p1

    .line 23
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/s71;->N(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IZLjava/lang/Object;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/nn4;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 24
    invoke-virtual {v12, v10}, Lcom/shabakaty/downloader/nn4;->a(Z)I

    move-result v1

    const/4 v5, 0x1

    goto :goto_6

    .line 25
    :cond_8
    invoke-virtual {v12, v1, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget v1, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    const/4 v5, 0x0

    :goto_6
    move v3, v5

    move-object/from16 v7, v26

    goto/16 :goto_a

    :cond_9
    move-object v8, v7

    cmp-long v1, v21, v15

    if-nez v1, :cond_a

    .line 26
    invoke-virtual {v12, v8, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget v1, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    move v6, v1

    :goto_7
    move-object/from16 v7, v26

    goto :goto_9

    :cond_a
    if-eqz v17, :cond_c

    .line 27
    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    move-object/from16 v7, v26

    iget-object v2, v7, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 28
    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget v2, v14, Lcom/shabakaty/downloader/nn4$b;->c:I

    invoke-virtual {v1, v2, v13}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v1

    iget v1, v1, Lcom/shabakaty/downloader/nn4$c;->o:I

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v3, v7, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 29
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 30
    iget-wide v1, v14, Lcom/shabakaty/downloader/nn4$b;->e:J

    add-long v5, v21, v1

    .line 31
    invoke-virtual {v12, v8, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget v4, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, v2

    move-wide v4, v3

    goto :goto_8

    :cond_b
    move-object v1, v8

    move-wide/from16 v4, v21

    :goto_8
    move-wide v2, v4

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    goto :goto_b

    :cond_c
    move-object/from16 v7, v26

    const/4 v6, -0x1

    :goto_9
    move v1, v6

    const/4 v3, 0x0

    :goto_a
    move v4, v1

    move/from16 v35, v3

    move-object v1, v8

    move-wide/from16 v2, v21

    const/4 v5, -0x1

    const/16 v34, 0x0

    const/16 v36, 0x0

    :goto_b
    if-eq v4, v5, :cond_d

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 36
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, v2

    move-wide v2, v3

    move-wide/from16 v32, v15

    goto :goto_c

    :cond_d
    move-wide/from16 v32, v2

    .line 38
    :goto_c
    invoke-virtual {v9, v12, v1, v2, v3}, Lcom/shabakaty/downloader/op2;->o(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;J)Lcom/shabakaty/downloader/uq2$a;

    move-result-object v4

    .line 39
    iget v5, v4, Lcom/shabakaty/downloader/mp2;->e:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    iget v5, v7, Lcom/shabakaty/downloader/mp2;->e:I

    if-eq v5, v6, :cond_e

    iget v6, v4, Lcom/shabakaty/downloader/mp2;->b:I

    if-lt v6, v5, :cond_e

    goto :goto_d

    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    const/4 v5, 0x1

    .line 40
    :goto_e
    iget-object v6, v7, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 41
    invoke-virtual {v7}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v8

    if-nez v8, :cond_10

    .line 42
    invoke-virtual {v4}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v8

    if-nez v8, :cond_10

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_f

    :cond_10
    const/4 v5, 0x0

    .line 43
    :goto_f
    invoke-virtual {v12, v1, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    if-eqz v6, :cond_13

    if-nez v17, :cond_13

    cmp-long v1, v21, v32

    if-nez v1, :cond_13

    .line 44
    invoke-virtual {v4}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v4, Lcom/shabakaty/downloader/mp2;->b:I

    .line 45
    invoke-virtual {v14, v1}, Lcom/shabakaty/downloader/nn4$b;->e(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 46
    :cond_11
    invoke-virtual {v7}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v7, Lcom/shabakaty/downloader/mp2;->b:I

    .line 47
    invoke-virtual {v14, v1}, Lcom/shabakaty/downloader/nn4$b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const/4 v1, 0x1

    goto :goto_10

    :cond_13
    const/4 v1, 0x0

    :goto_10
    if-nez v5, :cond_14

    if-eqz v1, :cond_15

    :cond_14
    move-object v4, v7

    .line 48
    :cond_15
    invoke-virtual {v4}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 49
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 50
    iget-wide v0, v0, Lcom/shabakaty/downloader/yc3;->s:J

    goto :goto_11

    .line 51
    :cond_16
    iget-object v0, v4, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 52
    iget v0, v4, Lcom/shabakaty/downloader/mp2;->c:I

    iget v1, v4, Lcom/shabakaty/downloader/mp2;->b:I

    invoke-virtual {v14, v1}, Lcom/shabakaty/downloader/nn4$b;->d(I)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 53
    iget-object v0, v14, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    iget-wide v0, v0, Lcom/shabakaty/downloader/k4;->c:J

    goto :goto_11

    :cond_17
    const-wide/16 v0, 0x0

    :goto_11
    move-wide/from16 v30, v0

    goto :goto_12

    :cond_18
    move-wide/from16 v30, v2

    .line 54
    :goto_12
    new-instance v0, Lcom/shabakaty/downloader/s71$f;

    move-object/from16 v28, v0

    move-object/from16 v29, v4

    invoke-direct/range {v28 .. v36}, Lcom/shabakaty/downloader/s71$f;-><init>(Lcom/shabakaty/downloader/uq2$a;JJZZZ)V

    goto/16 :goto_0

    .line 55
    :goto_13
    iget-object v8, v7, Lcom/shabakaty/downloader/s71$f;->a:Lcom/shabakaty/downloader/uq2$a;

    .line 56
    iget-wide v9, v7, Lcom/shabakaty/downloader/s71$f;->c:J

    .line 57
    iget-boolean v0, v7, Lcom/shabakaty/downloader/s71$f;->d:Z

    .line 58
    iget-wide v13, v7, Lcom/shabakaty/downloader/s71$f;->b:J

    .line 59
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 60
    invoke-virtual {v1, v8}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v1, v1, Lcom/shabakaty/downloader/yc3;->s:J

    cmp-long v3, v13, v1

    if-eqz v3, :cond_19

    goto :goto_14

    :cond_19
    const/16 v17, 0x0

    goto :goto_15

    :cond_1a
    :goto_14
    const/16 v17, 0x1

    :goto_15
    const/16 v18, 0x3

    const/4 v5, 0x0

    .line 61
    :try_start_0
    iget-boolean v1, v7, Lcom/shabakaty/downloader/s71$f;->e:Z

    if-eqz v1, :cond_1c

    .line 62
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget v1, v1, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1b

    const/4 v3, 0x4

    .line 63
    invoke-virtual {v11, v3}, Lcom/shabakaty/downloader/s71;->f0(I)V

    goto :goto_16

    :cond_1b
    const/4 v3, 0x4

    :goto_16
    const/4 v4, 0x0

    .line 64
    invoke-virtual {v11, v4, v4, v4, v6}, Lcom/shabakaty/downloader/s71;->H(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_17

    :cond_1c
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x1

    :goto_17
    if-nez v17, :cond_1d

    .line 65
    :try_start_1
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget-wide v3, v11, Lcom/shabakaty/downloader/s71;->a0:J

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->k()J

    move-result-wide v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p1

    const/4 v15, 0x0

    const/16 v21, 0x4

    const/16 v16, 0x1

    move-wide/from16 v5, v19

    .line 67
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/op2;->r(Lcom/shabakaty/downloader/nn4;JJ)Z

    move-result v0

    if-nez v0, :cond_20

    .line 68
    invoke-virtual {v11, v15}, Lcom/shabakaty/downloader/s71;->P(Z)V

    goto :goto_1a

    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v21, 0x4

    :goto_18
    const/4 v6, 0x0

    goto/16 :goto_1d

    :cond_1d
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v21, 0x4

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-nez v1, :cond_20

    .line 70
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 71
    iget-object v1, v1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    :goto_19
    if-eqz v1, :cond_1f

    .line 72
    iget-object v2, v1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-object v2, v2, Lcom/shabakaty/downloader/np2;->a:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 73
    iget-object v2, v11, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    iget-object v3, v1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    invoke-virtual {v2, v12, v3}, Lcom/shabakaty/downloader/op2;->h(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/np2;)Lcom/shabakaty/downloader/np2;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    .line 74
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lp2;->j()V

    .line 75
    :cond_1e
    iget-object v1, v1, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_19

    .line 76
    :cond_1f
    invoke-virtual {v11, v8, v13, v14, v0}, Lcom/shabakaty/downloader/s71;->R(Lcom/shabakaty/downloader/uq2$a;JZ)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide v13, v0

    .line 77
    :cond_20
    :goto_1a
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v4, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v5, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 78
    iget-boolean v0, v7, Lcom/shabakaty/downloader/s71$f;->f:Z

    if-eqz v0, :cond_21

    move-wide v6, v13

    goto :goto_1b

    :cond_21
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1b
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    .line 79
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/s71;->m0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;J)V

    if-nez v17, :cond_22

    .line 80
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v0, v0, Lcom/shabakaty/downloader/yc3;->c:J

    cmp-long v2, v9, v0

    if-eqz v2, :cond_25

    .line 81
    :cond_22
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v1, v1, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 82
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    if-eqz v17, :cond_23

    if-eqz p2, :cond_23

    .line 83
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v11, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/shabakaty/downloader/nn4$b;->f:Z

    if-nez v0, :cond_23

    goto :goto_1c

    :cond_23
    const/16 v16, 0x0

    .line 85
    :goto_1c
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v5, v0, Lcom/shabakaty/downloader/yc3;->d:J

    .line 86
    invoke-virtual {v12, v1}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    const/16 v18, 0x4

    :cond_24
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v16

    move/from16 v10, v18

    .line 87
    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    iput-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 88
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->I()V

    .line 89
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v11, v12, v0}, Lcom/shabakaty/downloader/s71;->L(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/nn4;)V

    .line 90
    iget-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/yc3;->h(Lcom/shabakaty/downloader/nn4;)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    iput-object v0, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v6, 0x0

    .line 92
    iput-object v6, v11, Lcom/shabakaty/downloader/s71;->Z:Lcom/shabakaty/downloader/s71$g;

    .line 93
    :cond_26
    invoke-virtual {v11, v15}, Lcom/shabakaty/downloader/s71;->q(Z)V

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_18

    :catchall_2
    move-exception v0

    move-object v6, v5

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v21, 0x4

    .line 94
    :goto_1d
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v4, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v5, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 95
    iget-boolean v1, v7, Lcom/shabakaty/downloader/s71$f;->f:Z

    if-eqz v1, :cond_27

    move-wide/from16 v22, v13

    goto :goto_1e

    :cond_27
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v22

    .line 96
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/s71;->m0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;J)V

    if-nez v17, :cond_28

    .line 97
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v1, v1, Lcom/shabakaty/downloader/yc3;->c:J

    cmp-long v3, v9, v1

    if-eqz v3, :cond_2b

    .line 98
    :cond_28
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v2, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v2, v2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 99
    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    if-eqz v17, :cond_29

    if-eqz p2, :cond_29

    .line 100
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, v11, Lcom/shabakaty/downloader/s71;->B:Lcom/shabakaty/downloader/nn4$b;

    .line 101
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/shabakaty/downloader/nn4$b;->f:Z

    if-nez v1, :cond_29

    goto :goto_1f

    :cond_29
    const/16 v16, 0x0

    .line 102
    :goto_1f
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v5, v1, Lcom/shabakaty/downloader/yc3;->d:J

    .line 103
    invoke-virtual {v12, v2}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2a

    const/16 v18, 0x4

    :cond_2a
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v16

    move/from16 v10, v18

    .line 104
    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    iput-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 105
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->I()V

    .line 106
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v11, v12, v1}, Lcom/shabakaty/downloader/s71;->L(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/nn4;)V

    .line 107
    iget-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {v1, v12}, Lcom/shabakaty/downloader/yc3;->h(Lcom/shabakaty/downloader/nn4;)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    iput-object v1, v11, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 109
    iput-object v15, v11, Lcom/shabakaty/downloader/s71;->Z:Lcom/shabakaty/downloader/s71$g;

    :cond_2c
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/s71;->q(Z)V

    .line 111
    throw v0
.end method

.method public final s(Lcom/shabakaty/downloader/kp2;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qo0;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object p1

    iget p1, p1, Lcom/shabakaty/downloader/ad3;->a:F

    iget-object v2, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v2, v2, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 5
    iput-boolean v1, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kp2;->D0()Lcom/shabakaty/downloader/cp4;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/lp2;->m:Lcom/shabakaty/downloader/cp4;

    .line 7
    invoke-virtual {v0, p1, v2}, Lcom/shabakaty/downloader/lp2;->i(FLcom/shabakaty/downloader/nn4;)Lcom/shabakaty/downloader/mp4;

    move-result-object v2

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v3, p1, Lcom/shabakaty/downloader/np2;->b:J

    .line 9
    iget-wide v5, p1, Lcom/shabakaty/downloader/np2;->e:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, v7

    if-eqz p1, :cond_2

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 10
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_2
    const/4 v5, 0x0

    .line 11
    iget-object p1, v0, Lcom/shabakaty/downloader/lp2;->i:[Lcom/shabakaty/downloader/mr3;

    array-length p1, p1

    new-array v6, p1, [Z

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/lp2;->a(Lcom/shabakaty/downloader/mp4;JZ[Z)J

    move-result-wide v1

    .line 12
    iget-wide v3, v0, Lcom/shabakaty/downloader/lp2;->o:J

    iget-object p1, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v5, p1, Lcom/shabakaty/downloader/np2;->b:J

    sub-long/2addr v5, v1

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/shabakaty/downloader/lp2;->o:J

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/np2;->b(J)Lcom/shabakaty/downloader/np2;

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    .line 14
    iget-object p1, v0, Lcom/shabakaty/downloader/lp2;->m:Lcom/shabakaty/downloader/cp4;

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/s71;->v:Lcom/shabakaty/downloader/fj2;

    iget-object v3, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    iget-object v1, v1, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    invoke-interface {v2, v3, p1, v1}, Lcom/shabakaty/downloader/fj2;->d([Lcom/shabakaty/downloader/lr3;Lcom/shabakaty/downloader/cp4;[Lcom/shabakaty/downloader/f81;)V

    .line 17
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-ne v0, p1, :cond_3

    .line 19
    iget-object p1, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v1, p1, Lcom/shabakaty/downloader/np2;->b:J

    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/s71;->J(J)V

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->g()V

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v2, p1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v7, v0, Lcom/shabakaty/downloader/np2;->b:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/yc3;->c:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    move-wide v3, v7

    .line 22
    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/s71;->u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->z()V

    return-void
.end method

.method public final t(Lcom/shabakaty/downloader/ad3;FZZ)V
    .locals 4

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    iget-object p3, p0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/yc3;->f(Lcom/shabakaty/downloader/ad3;)Lcom/shabakaty/downloader/yc3;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 3
    :cond_1
    iget p3, p1, Lcom/shabakaty/downloader/ad3;->a:F

    .line 4
    iget-object p4, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 5
    iget-object p4, p4, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    .line 6
    iget-object v1, p4, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v3, p3}, Lcom/shabakaty/downloader/f81;->r(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object p4, p4, Lcom/shabakaty/downloader/lp2;->l:Lcom/shabakaty/downloader/lp2;

    goto :goto_0

    .line 10
    :cond_4
    iget-object p3, p0, Lcom/shabakaty/downloader/s71;->r:[Lcom/shabakaty/downloader/lr3;

    array-length p4, p3

    :goto_2
    if-ge v0, p4, :cond_6

    aget-object v1, p3, v0

    if-eqz v1, :cond_5

    .line 11
    iget v2, p1, Lcom/shabakaty/downloader/ad3;->a:F

    invoke-interface {v1, p2, v2}, Lcom/shabakaty/downloader/lr3;->m(FF)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final u(Lcom/shabakaty/downloader/uq2$a;JJJZI)Lcom/shabakaty/downloader/yc3;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    move/from16 v1, p9

    .line 1
    iget-boolean v3, v0, Lcom/shabakaty/downloader/s71;->c0:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v8, v3, Lcom/shabakaty/downloader/yc3;->s:J

    cmp-long v3, p2, v8

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v3, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 2
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Lcom/shabakaty/downloader/s71;->c0:Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->I()V

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-object v8, v3, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    .line 5
    iget-object v9, v3, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    .line 6
    iget-object v10, v3, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    .line 7
    iget-object v11, v0, Lcom/shabakaty/downloader/s71;->J:Lcom/shabakaty/downloader/cr2;

    .line 8
    iget-boolean v11, v11, Lcom/shabakaty/downloader/cr2;->j:Z

    if-eqz v11, :cond_b

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 10
    iget-object v3, v3, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-nez v3, :cond_2

    .line 11
    sget-object v8, Lcom/shabakaty/downloader/cp4;->u:Lcom/shabakaty/downloader/cp4;

    goto :goto_2

    .line 12
    :cond_2
    iget-object v8, v3, Lcom/shabakaty/downloader/lp2;->m:Lcom/shabakaty/downloader/cp4;

    :goto_2
    if-nez v3, :cond_3

    .line 13
    iget-object v9, v0, Lcom/shabakaty/downloader/s71;->u:Lcom/shabakaty/downloader/mp4;

    goto :goto_3

    .line 14
    :cond_3
    iget-object v9, v3, Lcom/shabakaty/downloader/lp2;->n:Lcom/shabakaty/downloader/mp4;

    .line 15
    :goto_3
    iget-object v10, v9, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    const/4 v11, 0x4

    const-string v12, "initialCapacity"

    .line 16
    invoke-static {v11, v12}, Lcom/google/common/collect/f;->b(ILjava/lang/String;)I

    new-array v11, v11, [Ljava/lang/Object;

    .line 17
    array-length v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v13, v12, :cond_8

    aget-object v7, v10, v13

    if-eqz v7, :cond_7

    .line 18
    invoke-interface {v7, v4}, Lcom/shabakaty/downloader/hp4;->c(I)Lcom/shabakaty/downloader/wh1;

    move-result-object v7

    .line 19
    iget-object v7, v7, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-nez v7, :cond_5

    .line 20
    new-instance v7, Lcom/shabakaty/downloader/ps2;

    move-object/from16 v16, v8

    new-array v8, v4, [Lcom/shabakaty/downloader/ps2$b;

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    add-int/lit8 v8, v15, 0x1

    .line 21
    array-length v4, v11

    if-ge v4, v8, :cond_4

    .line 22
    array-length v4, v11

    .line 23
    invoke-static {v4, v8}, Lcom/google/common/collect/n$b;->a(II)I

    move-result v4

    invoke-static {v11, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    .line 24
    :cond_4
    aput-object v7, v11, v15

    move v15, v8

    goto :goto_5

    :cond_5
    move-object/from16 v16, v8

    add-int/lit8 v4, v15, 0x1

    .line 25
    array-length v8, v11

    if-ge v8, v4, :cond_6

    .line 26
    array-length v8, v11

    .line 27
    invoke-static {v8, v4}, Lcom/google/common/collect/n$b;->a(II)I

    move-result v8

    invoke-static {v11, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    .line 28
    :cond_6
    aput-object v7, v11, v15

    move v15, v4

    const/4 v14, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v16, v8

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v16

    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v16, v8

    if-eqz v14, :cond_9

    .line 29
    invoke-static {v11, v15}, Lcom/google/common/collect/p;->s([Ljava/lang/Object;I)Lcom/google/common/collect/p;

    move-result-object v4

    goto :goto_6

    .line 30
    :cond_9
    sget-object v4, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 31
    sget-object v4, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    :goto_6
    if-eqz v3, :cond_a

    .line 32
    iget-object v7, v3, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v10, v7, Lcom/shabakaty/downloader/np2;->c:J

    cmp-long v8, v10, v5

    if-eqz v8, :cond_a

    .line 33
    invoke-virtual {v7, v5, v6}, Lcom/shabakaty/downloader/np2;->a(J)Lcom/shabakaty/downloader/np2;

    move-result-object v7

    iput-object v7, v3, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    :cond_a
    move-object v13, v4

    move-object v12, v9

    move-object/from16 v11, v16

    goto :goto_7

    .line 34
    :cond_b
    iget-object v3, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 35
    sget-object v3, Lcom/shabakaty/downloader/cp4;->u:Lcom/shabakaty/downloader/cp4;

    .line 36
    iget-object v4, v0, Lcom/shabakaty/downloader/s71;->u:Lcom/shabakaty/downloader/mp4;

    .line 37
    sget-object v7, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 38
    sget-object v7, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    goto :goto_7

    :cond_c
    move-object v11, v8

    move-object v12, v9

    move-object v13, v10

    :goto_7
    if-eqz p8, :cond_f

    .line 39
    iget-object v3, v0, Lcom/shabakaty/downloader/s71;->N:Lcom/shabakaty/downloader/s71$d;

    .line 40
    iget-boolean v4, v3, Lcom/shabakaty/downloader/s71$d;->d:Z

    if-eqz v4, :cond_e

    iget v4, v3, Lcom/shabakaty/downloader/s71$d;->e:I

    const/4 v7, 0x5

    if-eq v4, v7, :cond_e

    if-ne v1, v7, :cond_d

    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    .line 41
    :goto_8
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->b(Z)V

    goto :goto_9

    :cond_e
    const/4 v4, 0x1

    .line 42
    iput-boolean v4, v3, Lcom/shabakaty/downloader/s71$d;->a:Z

    .line 43
    iput-boolean v4, v3, Lcom/shabakaty/downloader/s71$d;->d:Z

    .line 44
    iput v1, v3, Lcom/shabakaty/downloader/s71$d;->e:I

    .line 45
    :cond_f
    :goto_9
    iget-object v1, v0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/s71;->m()J

    move-result-wide v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 47
    invoke-virtual/range {v1 .. v13}, Lcom/shabakaty/downloader/yc3;->b(Lcom/shabakaty/downloader/uq2$a;JJJJLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    return-object v1
.end method

.method public final v()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v2, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->c()J

    move-result-wide v2

    :goto_0
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v1, v1, Lcom/shabakaty/downloader/np2;->e:J

    .line 4
    iget-boolean v0, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->M:Lcom/shabakaty/downloader/yc3;

    iget-wide v3, v0, Lcom/shabakaty/downloader/yc3;->s:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->g0()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    .line 4
    iget-boolean v1, v0, Lcom/shabakaty/downloader/lp2;->d:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kp2;->c()J

    move-result-wide v1

    .line 5
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/s71;->n(J)J

    move-result-wide v6

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/op2;->h:Lcom/shabakaty/downloader/lp2;

    if-ne v0, v1, :cond_2

    .line 8
    iget-wide v1, p0, Lcom/shabakaty/downloader/s71;->a0:J

    .line 9
    iget-wide v3, v0, Lcom/shabakaty/downloader/lp2;->o:J

    goto :goto_1

    .line 10
    :cond_2
    iget-wide v1, p0, Lcom/shabakaty/downloader/s71;->a0:J

    .line 11
    iget-wide v3, v0, Lcom/shabakaty/downloader/lp2;->o:J

    sub-long/2addr v1, v3

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->f:Lcom/shabakaty/downloader/np2;

    iget-wide v3, v0, Lcom/shabakaty/downloader/np2;->b:J

    :goto_1
    sub-long v4, v1, v3

    .line 13
    iget-object v3, p0, Lcom/shabakaty/downloader/s71;->v:Lcom/shabakaty/downloader/fj2;

    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->E:Lcom/shabakaty/downloader/qo0;

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qo0;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object v0

    iget v8, v0, Lcom/shabakaty/downloader/ad3;->a:F

    .line 15
    invoke-interface/range {v3 .. v8}, Lcom/shabakaty/downloader/fj2;->g(JJF)Z

    move-result v0

    .line 16
    :goto_2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s71;->S:Z

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/s71;->I:Lcom/shabakaty/downloader/op2;

    .line 18
    iget-object v0, v0, Lcom/shabakaty/downloader/op2;->j:Lcom/shabakaty/downloader/lp2;

    .line 19
    iget-wide v1, p0, Lcom/shabakaty/downloader/s71;->a0:J

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lp2;->g()Z

    move-result v3

    invoke-static {v3}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 21
    iget-wide v3, v0, Lcom/shabakaty/downloader/lp2;->o:J

    sub-long/2addr v1, v3

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/lp2;->a:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/kp2;->e(J)Z

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s71;->l0()V

    return-void
.end method
