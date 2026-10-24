.class public Lcom/shabakaty/downloader/d00;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/shabakaty/downloader/dx3;
.implements Lcom/shabakaty/downloader/o04;
.implements Lcom/shabakaty/downloader/ij2$b;
.implements Lcom/shabakaty/downloader/ij2$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d00$a;,
        Lcom/shabakaty/downloader/d00$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shabakaty/downloader/e00;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/dx3;",
        "Lcom/shabakaty/downloader/o04;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/zz;",
        ">;",
        "Lcom/shabakaty/downloader/ij2$f;"
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/b00;

.field public final B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/oj;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/oj;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Lcom/shabakaty/downloader/bx3;

.field public final E:[Lcom/shabakaty/downloader/bx3;

.field public final F:Lcom/shabakaty/downloader/qj;

.field public G:Lcom/shabakaty/downloader/zz;

.field public H:Lcom/shabakaty/downloader/wh1;

.field public I:Lcom/shabakaty/downloader/d00$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d00$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public J:J

.field public K:J

.field public L:I

.field public M:Lcom/shabakaty/downloader/oj;

.field public N:Z

.field public final r:I

.field public final s:[I

.field public final t:[Lcom/shabakaty/downloader/wh1;

.field public final u:[Z

.field public final v:Lcom/shabakaty/downloader/e00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final w:Lcom/shabakaty/downloader/o04$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o04$a<",
            "Lcom/shabakaty/downloader/d00<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final x:Lcom/shabakaty/downloader/yq2$a;

.field public final y:Lcom/shabakaty/downloader/gj2;

.field public final z:Lcom/shabakaty/downloader/ij2;


# direct methods
.method public constructor <init>(I[I[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/e00;Lcom/shabakaty/downloader/o04$a;Lcom/shabakaty/downloader/fn0;JLcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lcom/google/android/exoplayer2/Format;",
            "TT;",
            "Lcom/shabakaty/downloader/o04$a<",
            "Lcom/shabakaty/downloader/d00<",
            "TT;>;>;",
            "Lcom/shabakaty/downloader/fn0;",
            "J",
            "Lcom/shabakaty/downloader/u01;",
            "Lcom/shabakaty/downloader/s01$a;",
            "Lcom/shabakaty/downloader/gj2;",
            "Lcom/shabakaty/downloader/yq2$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/d00;->r:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [I

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/shabakaty/downloader/d00;->s:[I

    if-nez p3, :cond_1

    new-array p3, v0, [Lcom/shabakaty/downloader/wh1;

    .line 4
    :cond_1
    iput-object p3, p0, Lcom/shabakaty/downloader/d00;->t:[Lcom/shabakaty/downloader/wh1;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/d00;->w:Lcom/shabakaty/downloader/o04$a;

    .line 7
    iput-object p12, p0, Lcom/shabakaty/downloader/d00;->x:Lcom/shabakaty/downloader/yq2$a;

    .line 8
    iput-object p11, p0, Lcom/shabakaty/downloader/d00;->y:Lcom/shabakaty/downloader/gj2;

    .line 9
    new-instance p3, Lcom/shabakaty/downloader/ij2;

    const-string p4, "ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    .line 10
    new-instance p3, Lcom/shabakaty/downloader/b00;

    invoke-direct {p3, v0}, Lcom/shabakaty/downloader/b00;-><init>(I)V

    iput-object p3, p0, Lcom/shabakaty/downloader/d00;->A:Lcom/shabakaty/downloader/b00;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    .line 12
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/d00;->C:Ljava/util/List;

    .line 13
    array-length p2, p2

    .line 14
    new-array p3, p2, [Lcom/shabakaty/downloader/bx3;

    iput-object p3, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    .line 15
    new-array p3, p2, [Z

    iput-object p3, p0, Lcom/shabakaty/downloader/d00;->u:[Z

    add-int/lit8 p3, p2, 0x1

    .line 16
    new-array p4, p3, [I

    .line 17
    new-array p3, p3, [Lcom/shabakaty/downloader/bx3;

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p5

    .line 19
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p11, Lcom/shabakaty/downloader/bx3;

    .line 21
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-direct {p11, p6, p5, p9, p10}, Lcom/shabakaty/downloader/bx3;-><init>(Lcom/shabakaty/downloader/fn0;Landroid/os/Looper;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;)V

    .line 24
    iput-object p11, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    .line 25
    aput p1, p4, v0

    .line 26
    aput-object p11, p3, v0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 27
    invoke-static {p6}, Lcom/shabakaty/downloader/bx3;->g(Lcom/shabakaty/downloader/fn0;)Lcom/shabakaty/downloader/bx3;

    move-result-object p1

    .line 28
    iget-object p5, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    aput-object p1, p5, v0

    add-int/lit8 p5, v0, 0x1

    .line 29
    aput-object p1, p3, p5

    .line 30
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->s:[I

    aget p1, p1, v0

    aput p1, p4, p5

    move v0, p5

    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/qj;

    invoke-direct {p1, p4, p3}, Lcom/shabakaty/downloader/qj;-><init>([I[Lcom/shabakaty/downloader/bx3;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/d00;->F:Lcom/shabakaty/downloader/qj;

    .line 32
    iput-wide p7, p0, Lcom/shabakaty/downloader/d00;->J:J

    .line 33
    iput-wide p7, p0, Lcom/shabakaty/downloader/d00;->K:J

    return-void
.end method


# virtual methods
.method public M0(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    .line 3
    iget v1, v0, Lcom/shabakaty/downloader/bx3;->r:I

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/shabakaty/downloader/bx3;->i(JZZ)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    .line 6
    iget p2, p1, Lcom/shabakaty/downloader/bx3;->r:I

    const/4 v0, 0x0

    if-le p2, v1, :cond_2

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget v1, p1, Lcom/shabakaty/downloader/bx3;->q:I

    if-nez v1, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/shabakaty/downloader/bx3;->o:[J

    iget v2, p1, Lcom/shabakaty/downloader/bx3;->s:I

    aget-wide v2, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v2

    :goto_0
    monitor-exit p1

    const/4 p1, 0x0

    .line 9
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length v4, v3

    if-ge p1, v4, :cond_2

    .line 10
    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/shabakaty/downloader/d00;->u:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v1, v2, p3, v4}, Lcom/shabakaty/downloader/bx3;->i(JZZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 11
    monitor-exit p1

    throw p2

    .line 12
    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/d00;->s(II)I

    move-result p1

    .line 13
    iget p2, p0, Lcom/shabakaty/downloader/d00;->L:I

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_3

    .line 15
    iget-object p2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-static {p2, v0, p1}, Lcom/shabakaty/downloader/sy4;->M(Ljava/util/List;II)V

    .line 16
    iget p2, p0, Lcom/shabakaty/downloader/d00;->L:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/shabakaty/downloader/d00;->L:I

    :cond_3
    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bx3;->D()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bx3;->D()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    invoke-interface {v0}, Lcom/shabakaty/downloader/e00;->a()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->I:Lcom/shabakaty/downloader/d00$b;

    if-eqz v0, :cond_2

    .line 6
    check-cast v0, Lcom/google/android/exoplayer2/source/dash/b;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/b;->E:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/d$c;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/bx3;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij2;->f(I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bx3;->y()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    invoke-interface {v0}, Lcom/shabakaty/downloader/e00;->b()V

    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/d00;->J:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/d00;->N:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->n()Lcom/shabakaty/downloader/oj;

    move-result-object v0

    iget-wide v0, v0, Lcom/shabakaty/downloader/zz;->h:J

    :goto_0
    return-wide v0
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/d00;->N:Z

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bx3;->w(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(J)Z
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/shabakaty/downloader/d00;->N:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ij2;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 4
    iget-wide v4, v0, Lcom/shabakaty/downloader/d00;->J:J

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, Lcom/shabakaty/downloader/d00;->C:Ljava/util/List;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d00;->n()Lcom/shabakaty/downloader/oj;

    move-result-object v4

    iget-wide v4, v4, Lcom/shabakaty/downloader/zz;->h:J

    :goto_0
    move-object v11, v3

    move-wide v9, v4

    .line 7
    iget-object v6, v0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    iget-object v12, v0, Lcom/shabakaty/downloader/d00;->A:Lcom/shabakaty/downloader/b00;

    move-wide/from16 v7, p1

    invoke-interface/range {v6 .. v12}, Lcom/shabakaty/downloader/e00;->n(JJLjava/util/List;Lcom/shabakaty/downloader/b00;)V

    .line 8
    iget-object v3, v0, Lcom/shabakaty/downloader/d00;->A:Lcom/shabakaty/downloader/b00;

    iget-boolean v4, v3, Lcom/shabakaty/downloader/b00;->s:Z

    .line 9
    iget-object v5, v3, Lcom/shabakaty/downloader/b00;->r:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/zz;

    const/4 v6, 0x0

    .line 10
    iput-object v6, v3, Lcom/shabakaty/downloader/b00;->r:Ljava/lang/Object;

    .line 11
    iput-boolean v2, v3, Lcom/shabakaty/downloader/b00;->s:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v4, :cond_2

    .line 12
    iput-wide v6, v0, Lcom/shabakaty/downloader/d00;->J:J

    .line 13
    iput-boolean v3, v0, Lcom/shabakaty/downloader/d00;->N:Z

    return v3

    :cond_2
    if-nez v5, :cond_3

    return v2

    .line 14
    :cond_3
    iput-object v5, v0, Lcom/shabakaty/downloader/d00;->G:Lcom/shabakaty/downloader/zz;

    .line 15
    instance-of v4, v5, Lcom/shabakaty/downloader/oj;

    if-eqz v4, :cond_7

    .line 16
    move-object v4, v5

    check-cast v4, Lcom/shabakaty/downloader/oj;

    if-eqz v1, :cond_5

    .line 17
    iget-wide v8, v4, Lcom/shabakaty/downloader/zz;->g:J

    iget-wide v10, v0, Lcom/shabakaty/downloader/d00;->J:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_4

    .line 18
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    .line 19
    iput-wide v10, v1, Lcom/shabakaty/downloader/bx3;->u:J

    .line 20
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length v8, v1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v1, v9

    .line 21
    iget-wide v11, v0, Lcom/shabakaty/downloader/d00;->J:J

    .line 22
    iput-wide v11, v10, Lcom/shabakaty/downloader/bx3;->u:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 23
    :cond_4
    iput-wide v6, v0, Lcom/shabakaty/downloader/d00;->J:J

    .line 24
    :cond_5
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->F:Lcom/shabakaty/downloader/qj;

    .line 25
    iput-object v1, v4, Lcom/shabakaty/downloader/oj;->m:Lcom/shabakaty/downloader/qj;

    .line 26
    iget-object v6, v1, Lcom/shabakaty/downloader/qj;->b:[Lcom/shabakaty/downloader/bx3;

    array-length v6, v6

    new-array v6, v6, [I

    .line 27
    :goto_2
    iget-object v7, v1, Lcom/shabakaty/downloader/qj;->b:[Lcom/shabakaty/downloader/bx3;

    array-length v8, v7

    if-ge v2, v8, :cond_6

    .line 28
    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/shabakaty/downloader/bx3;->u()I

    move-result v7

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 29
    :cond_6
    iput-object v6, v4, Lcom/shabakaty/downloader/oj;->n:[I

    .line 30
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_7
    instance-of v1, v5, Lcom/shabakaty/downloader/u02;

    if-eqz v1, :cond_8

    .line 32
    move-object v1, v5

    check-cast v1, Lcom/shabakaty/downloader/u02;

    iget-object v2, v0, Lcom/shabakaty/downloader/d00;->F:Lcom/shabakaty/downloader/qj;

    .line 33
    iput-object v2, v1, Lcom/shabakaty/downloader/u02;->k:Lcom/shabakaty/downloader/a00$b;

    .line 34
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    iget-object v2, v0, Lcom/shabakaty/downloader/d00;->y:Lcom/shabakaty/downloader/gj2;

    iget v4, v5, Lcom/shabakaty/downloader/zz;->c:I

    .line 35
    check-cast v2, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v2

    .line 36
    invoke-virtual {v1, v5, v0, v2}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    move-result-wide v10

    .line 37
    iget-object v12, v0, Lcom/shabakaty/downloader/d00;->x:Lcom/shabakaty/downloader/yq2$a;

    new-instance v13, Lcom/shabakaty/downloader/hj2;

    iget-wide v7, v5, Lcom/shabakaty/downloader/zz;->a:J

    iget-object v9, v5, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;J)V

    iget v14, v5, Lcom/shabakaty/downloader/zz;->c:I

    iget v15, v0, Lcom/shabakaty/downloader/d00;->r:I

    iget-object v1, v5, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v2, v5, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v4, v5, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v6, v5, Lcom/shabakaty/downloader/zz;->g:J

    iget-wide v8, v5, Lcom/shabakaty/downloader/zz;->h:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-virtual/range {v12 .. v22}, Lcom/shabakaty/downloader/yq2$a;->n(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    return v3

    :cond_9
    :goto_4
    return v2
.end method

.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 30

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zz;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    .line 3
    iget-wide v13, v2, Lcom/shabakaty/downloader/uc4;->b:J

    .line 4
    instance-of v2, v1, Lcom/shabakaty/downloader/oj;

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v15, v3, -0x1

    const-wide/16 v3, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x1

    cmp-long v5, v13, v3

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v15}, Lcom/shabakaty/downloader/d00;->p(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    .line 7
    :goto_1
    new-instance v9, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v1, Lcom/shabakaty/downloader/zz;->a:J

    iget-object v6, v1, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    .line 8
    iget-object v3, v1, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    .line 9
    iget-object v7, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 10
    iget-object v8, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    move-object v3, v9

    move/from16 p1, v15

    move-object v15, v9

    move-wide/from16 v9, p2

    move/from16 v17, v2

    move v2, v12

    move-wide/from16 v11, p4

    .line 11
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/fp2;

    iget v4, v1, Lcom/shabakaty/downloader/zz;->c:I

    iget v5, v0, Lcom/shabakaty/downloader/d00;->r:I

    iget-object v6, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v7, v1, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v8, v1, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/shabakaty/downloader/zz;->g:J

    .line 13
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v24

    iget-wide v9, v1, Lcom/shabakaty/downloader/zz;->h:J

    .line 14
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v26

    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, v8

    invoke-direct/range {v18 .. v27}, Lcom/shabakaty/downloader/fp2;-><init>(IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/gj2$c;

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct {v4, v15, v3, v5, v6}, Lcom/shabakaty/downloader/gj2$c;-><init>(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;I)V

    .line 16
    iget-object v3, v0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    iget-object v6, v0, Lcom/shabakaty/downloader/d00;->y:Lcom/shabakaty/downloader/gj2;

    invoke-interface {v3, v1, v2, v4, v6}, Lcom/shabakaty/downloader/e00;->p(Lcom/shabakaty/downloader/zz;ZLcom/shabakaty/downloader/gj2$c;Lcom/shabakaty/downloader/gj2;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    .line 17
    sget-object v2, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    if-eqz v17, :cond_5

    move/from16 v3, p1

    .line 18
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/d00;->m(I)Lcom/shabakaty/downloader/oj;

    move-result-object v3

    if-ne v3, v1, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 19
    :goto_2
    invoke-static {v11}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 20
    iget-object v3, v0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    iget-wide v7, v0, Lcom/shabakaty/downloader/d00;->K:J

    iput-wide v7, v0, Lcom/shabakaty/downloader/d00;->J:J

    goto :goto_3

    :cond_3
    const-string v2, "ChunkSampleStream"

    const-string v3, "Ignoring attempt to cancel non-cancelable load."

    .line 22
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-nez v2, :cond_7

    .line 23
    iget-object v2, v0, Lcom/shabakaty/downloader/d00;->y:Lcom/shabakaty/downloader/gj2;

    check-cast v2, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/po0;->c(Lcom/shabakaty/downloader/gj2$c;)J

    move-result-wide v2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v7

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    .line 24
    invoke-static {v4, v2, v3}, Lcom/shabakaty/downloader/ij2;->c(ZJ)Lcom/shabakaty/downloader/ij2$c;

    move-result-object v2

    goto :goto_4

    .line 25
    :cond_6
    sget-object v2, Lcom/shabakaty/downloader/ij2;->f:Lcom/shabakaty/downloader/ij2$c;

    .line 26
    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ij2$c;->a()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 27
    iget-object v4, v0, Lcom/shabakaty/downloader/d00;->x:Lcom/shabakaty/downloader/yq2$a;

    iget v7, v1, Lcom/shabakaty/downloader/zz;->c:I

    iget v8, v0, Lcom/shabakaty/downloader/d00;->r:I

    iget-object v9, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v10, v1, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v11, v1, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v12, v1, Lcom/shabakaty/downloader/zz;->g:J

    move v14, v7

    iget-wide v6, v1, Lcom/shabakaty/downloader/zz;->h:J

    move-object/from16 v17, v4

    move-object/from16 v18, v15

    move/from16 v19, v14

    move/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move-wide/from16 v24, v12

    move-wide/from16 v26, v6

    move-object/from16 v28, p6

    move/from16 v29, v3

    invoke-virtual/range {v17 .. v29}, Lcom/shabakaty/downloader/yq2$a;->j(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v3, :cond_8

    const/4 v1, 0x0

    .line 28
    iput-object v1, v0, Lcom/shabakaty/downloader/d00;->G:Lcom/shabakaty/downloader/zz;

    .line 29
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->y:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->w:Lcom/shabakaty/downloader/o04$a;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    :cond_8
    return-object v2
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 15

    move-object v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zz;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lcom/shabakaty/downloader/d00;->G:Lcom/shabakaty/downloader/zz;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/e00;->m(Lcom/shabakaty/downloader/zz;)V

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v1, Lcom/shabakaty/downloader/zz;->a:J

    iget-object v6, v1, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    .line 5
    iget-object v3, v1, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    .line 6
    iget-object v7, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 7
    iget-object v8, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 8
    iget-wide v13, v3, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 9
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 10
    iget-object v3, v0, Lcom/shabakaty/downloader/d00;->y:Lcom/shabakaty/downloader/gj2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, v0, Lcom/shabakaty/downloader/d00;->x:Lcom/shabakaty/downloader/yq2$a;

    iget v5, v1, Lcom/shabakaty/downloader/zz;->c:I

    iget v6, v0, Lcom/shabakaty/downloader/d00;->r:I

    iget-object v7, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v8, v1, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v9, v1, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/shabakaty/downloader/zz;->g:J

    iget-wide v12, v1, Lcom/shabakaty/downloader/zz;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/shabakaty/downloader/yq2$a;->h(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    .line 12
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->w:Lcom/shabakaty/downloader/o04$a;

    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->M:Lcom/shabakaty/downloader/oj;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result v0

    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    .line 4
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->r()V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/d00;->N:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/shabakaty/downloader/bx3;->C(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;IZ)I

    move-result p1

    return p1
.end method

.method public i(J)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/d00;->N:Z

    invoke-virtual {v0, p1, p2, v2}, Lcom/shabakaty/downloader/bx3;->s(JZ)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/d00;->M:Lcom/shabakaty/downloader/oj;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result p2

    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v0

    sub-int/2addr p2, v0

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/bx3;->I(I)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->r()V

    return p1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    return v0
.end method

.method public l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 15

    move-object v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zz;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lcom/shabakaty/downloader/d00;->G:Lcom/shabakaty/downloader/zz;

    .line 3
    iput-object v2, v0, Lcom/shabakaty/downloader/d00;->M:Lcom/shabakaty/downloader/oj;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v1, Lcom/shabakaty/downloader/zz;->a:J

    iget-object v6, v1, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    .line 5
    iget-object v3, v1, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    .line 6
    iget-object v7, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 7
    iget-object v8, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 8
    iget-wide v13, v3, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 9
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 10
    iget-object v3, v0, Lcom/shabakaty/downloader/d00;->y:Lcom/shabakaty/downloader/gj2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, v0, Lcom/shabakaty/downloader/d00;->x:Lcom/shabakaty/downloader/yq2$a;

    iget v5, v1, Lcom/shabakaty/downloader/zz;->c:I

    iget v6, v0, Lcom/shabakaty/downloader/d00;->r:I

    iget-object v7, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v8, v1, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v9, v1, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/shabakaty/downloader/zz;->g:J

    iget-wide v12, v1, Lcom/shabakaty/downloader/zz;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/shabakaty/downloader/yq2$a;->e(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->v()V

    goto :goto_0

    .line 14
    :cond_0
    instance-of v1, v1, Lcom/shabakaty/downloader/oj;

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/d00;->m(I)Lcom/shabakaty/downloader/oj;

    .line 16
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-wide v1, v0, Lcom/shabakaty/downloader/d00;->K:J

    iput-wide v1, v0, Lcom/shabakaty/downloader/d00;->J:J

    .line 18
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->w:Lcom/shabakaty/downloader/o04$a;

    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    :cond_2
    return-void
.end method

.method public final m(I)Lcom/shabakaty/downloader/oj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/oj;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/shabakaty/downloader/sy4;->M(Ljava/util/List;II)V

    .line 3
    iget p1, p0, Lcom/shabakaty/downloader/d00;->L:I

    iget-object v1, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/d00;->L:I

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/bx3;->l(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 7
    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/bx3;->l(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final n()Lcom/shabakaty/downloader/oj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/oj;

    return-object v0
.end method

.method public o()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/d00;->N:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/d00;->J:J

    return-wide v0

    .line 4
    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/d00;->K:J

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->n()Lcom/shabakaty/downloader/oj;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/lo2;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/oj;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    iget-wide v2, v2, Lcom/shabakaty/downloader/zz;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 9
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/bx3;->o()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final p(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/oj;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 4
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method public q()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/d00;->J:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/d00;->L:I

    add-int/lit8 v1, v1, -0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/d00;->s(II)I

    move-result v0

    .line 4
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/d00;->L:I

    if-gt v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 5
    iput v2, p0, Lcom/shabakaty/downloader/d00;->L:I

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/oj;

    .line 7
    iget-object v9, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->H:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/wh1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->x:Lcom/shabakaty/downloader/yq2$a;

    iget v3, p0, Lcom/shabakaty/downloader/d00;->r:I

    iget v5, v1, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v6, v1, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v7, v1, Lcom/shabakaty/downloader/zz;->g:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/yq2$a;->b(ILcom/shabakaty/downloader/wh1;ILjava/lang/Object;J)V

    .line 10
    :cond_0
    iput-object v9, p0, Lcom/shabakaty/downloader/d00;->H:Lcom/shabakaty/downloader/wh1;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/oj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public t(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->d()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->G:Lcom/shabakaty/downloader/zz;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of v1, v0, Lcom/shabakaty/downloader/oj;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/d00;->p(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    iget-object v3, p0, Lcom/shabakaty/downloader/d00;->C:Ljava/util/List;

    invoke-interface {v2, p1, p2, v0, v3}, Lcom/shabakaty/downloader/e00;->l(JLcom/shabakaty/downloader/zz;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij2;->a()V

    if-eqz v1, :cond_2

    .line 10
    check-cast v0, Lcom/shabakaty/downloader/oj;

    iput-object v0, p0, Lcom/shabakaty/downloader/d00;->M:Lcom/shabakaty/downloader/oj;

    :cond_2
    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    iget-object v1, p0, Lcom/shabakaty/downloader/d00;->C:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lcom/shabakaty/downloader/e00;->o(JLjava/util/List;)I

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_8

    .line 13
    iget-object p2, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 14
    iget-object p2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    const/4 v0, -0x1

    if-ge p1, p2, :cond_5

    .line 15
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d00;->p(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    :goto_1
    if-ne p1, v0, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->n()Lcom/shabakaty/downloader/oj;

    move-result-object p2

    iget-wide v4, p2, Lcom/shabakaty/downloader/zz;->h:J

    .line 17
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d00;->m(I)Lcom/shabakaty/downloader/oj;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 19
    iget-wide v0, p0, Lcom/shabakaty/downloader/d00;->K:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/d00;->J:J

    :cond_7
    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcom/shabakaty/downloader/d00;->N:Z

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->x:Lcom/shabakaty/downloader/yq2$a;

    iget v1, p0, Lcom/shabakaty/downloader/d00;->r:I

    iget-wide v2, p1, Lcom/shabakaty/downloader/zz;->g:J

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/yq2$a;->p(IJJ)V

    :cond_8
    :goto_2
    return-void
.end method

.method public u(Lcom/shabakaty/downloader/d00$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d00$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/d00;->I:Lcom/shabakaty/downloader/d00$b;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/bx3;->B()V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bx3;->B()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    return-void
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bx3;->E(Z)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/bx3;->E(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(J)V
    .locals 10

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/d00;->K:J

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lcom/shabakaty/downloader/d00;->J:J

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/oj;

    .line 6
    iget-wide v4, v2, Lcom/shabakaty/downloader/zz;->g:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_1

    .line 7
    iget-wide v4, v2, Lcom/shabakaty/downloader/oj;->k:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v4, v7

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move-object v2, v3

    :goto_2
    const/4 v1, 0x1

    if-eqz v2, :cond_6

    .line 8
    iget-object v4, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result v2

    .line 9
    monitor-enter v4

    .line 10
    :try_start_0
    invoke-virtual {v4}, Lcom/shabakaty/downloader/bx3;->F()V

    .line 11
    iget v5, v4, Lcom/shabakaty/downloader/bx3;->r:I

    if-lt v2, v5, :cond_5

    iget v6, v4, Lcom/shabakaty/downloader/bx3;->q:I

    add-int/2addr v6, v5

    if-le v2, v6, :cond_4

    goto :goto_3

    :cond_4
    const-wide/high16 v6, -0x8000000000000000L

    .line 12
    iput-wide v6, v4, Lcom/shabakaty/downloader/bx3;->u:J

    sub-int/2addr v2, v5

    .line 13
    iput v2, v4, Lcom/shabakaty/downloader/bx3;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v4

    const/4 v2, 0x1

    goto :goto_5

    .line 15
    :cond_5
    :goto_3
    monitor-exit v4

    const/4 v2, 0x0

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v4

    throw p1

    .line 16
    :cond_6
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->c()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 18
    :goto_4
    invoke-virtual {v2, p1, p2, v4}, Lcom/shabakaty/downloader/bx3;->G(JZ)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_8

    .line 19
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    .line 20
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v2

    .line 21
    invoke-virtual {p0, v2, v0}, Lcom/shabakaty/downloader/d00;->s(II)I

    move-result v2

    iput v2, p0, Lcom/shabakaty/downloader/d00;->L:I

    .line 22
    iget-object v2, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length v3, v2

    :goto_6
    if-ge v0, v3, :cond_b

    aget-object v4, v2, v0

    .line 23
    invoke-virtual {v4, p1, p2, v1}, Lcom/shabakaty/downloader/bx3;->G(JZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 24
    :cond_8
    iput-wide p1, p0, Lcom/shabakaty/downloader/d00;->J:J

    .line 25
    iput-boolean v0, p0, Lcom/shabakaty/downloader/d00;->N:Z

    .line 26
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 27
    iput v0, p0, Lcom/shabakaty/downloader/d00;->L:I

    .line 28
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 29
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->D:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/bx3;->j()V

    .line 30
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->E:[Lcom/shabakaty/downloader/bx3;

    array-length p2, p1

    :goto_7
    if-ge v0, p2, :cond_9

    aget-object v1, p1, v0

    .line 31
    invoke-virtual {v1}, Lcom/shabakaty/downloader/bx3;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 32
    :cond_9
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij2;->a()V

    goto :goto_8

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/shabakaty/downloader/d00;->z:Lcom/shabakaty/downloader/ij2;

    .line 34
    iput-object v3, p1, Lcom/shabakaty/downloader/ij2;->c:Ljava/io/IOException;

    .line 35
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00;->v()V

    :cond_b
    :goto_8
    return-void
.end method
