.class public abstract Lcom/shabakaty/downloader/bk;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/shabakaty/downloader/lr3;
.implements Lcom/shabakaty/downloader/mr3;


# instance fields
.field public A:Z

.field public B:Z

.field public final r:I

.field public final s:Lcom/shabakaty/downloader/yh1;

.field public t:Lcom/shabakaty/downloader/nr3;

.field public u:I

.field public v:I

.field public w:Lcom/shabakaty/downloader/dx3;

.field public x:[Lcom/shabakaty/downloader/wh1;

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/bk;->r:I

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/yh1;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/yh1;-><init>(ILcom/shabakaty/downloader/io2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/bk;->s:Lcom/shabakaty/downloader/yh1;

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/bk;->z:J

    return-void
.end method


# virtual methods
.method public final A()Lcom/shabakaty/downloader/yh1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bk;->s:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bk;->s:Lcom/shabakaty/downloader/yh1;

    return-object v0
.end method

.method public abstract B()V
.end method

.method public C(ZZ)V
    .locals 0

    return-void
.end method

.method public abstract D(JZ)V
.end method

.method public E()V
    .locals 0

    return-void
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public G()V
    .locals 0

    return-void
.end method

.method public abstract H([Lcom/shabakaty/downloader/wh1;JJ)V
.end method

.method public final I(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bk;->w:Lcom/shabakaty/downloader/dx3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/dx3;->h(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 5
    iput-wide p1, p0, Lcom/shabakaty/downloader/bk;->z:J

    .line 6
    iget-boolean p1, p0, Lcom/shabakaty/downloader/bk;->A:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 7
    :cond_1
    iget-wide v0, p2, Lcom/shabakaty/downloader/bn0;->v:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/bk;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/shabakaty/downloader/bn0;->v:J

    .line 8
    iget-wide p1, p0, Lcom/shabakaty/downloader/bk;->z:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/bk;->z:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 9
    iget-object p2, p1, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/wh1;

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-wide v0, p2, Lcom/shabakaty/downloader/wh1;->G:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {p2}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v0

    iget-wide v1, p2, Lcom/shabakaty/downloader/wh1;->G:J

    iget-wide v3, p0, Lcom/shabakaty/downloader/bk;->y:J

    add-long/2addr v1, v3

    .line 13
    iput-wide v1, v0, Lcom/shabakaty/downloader/wh1$b;->o:J

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p2

    .line 15
    iput-object p2, p1, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    :cond_3
    :goto_1
    return p3
.end method

.method public final f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/bk;->u:I

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bk;->v:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bk;->s:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->b()V

    .line 3
    iput v2, p0, Lcom/shabakaty/downloader/bk;->v:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/bk;->w:Lcom/shabakaty/downloader/dx3;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/bk;->x:[Lcom/shabakaty/downloader/wh1;

    .line 6
    iput-boolean v2, p0, Lcom/shabakaty/downloader/bk;->A:Z

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->B()V

    return-void
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bk;->v:I

    return v0
.end method

.method public final h(Lcom/shabakaty/downloader/nr3;[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/dx3;JZZJJ)V
    .locals 9

    move-object v7, p0

    move v8, p6

    .line 1
    iget v0, v7, Lcom/shabakaty/downloader/bk;->v:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    move-object v0, p1

    .line 2
    iput-object v0, v7, Lcom/shabakaty/downloader/bk;->t:Lcom/shabakaty/downloader/nr3;

    .line 3
    iput v1, v7, Lcom/shabakaty/downloader/bk;->v:I

    move/from16 v0, p7

    .line 4
    invoke-virtual {p0, p6, v0}, Lcom/shabakaty/downloader/bk;->C(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/bk;->r([Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/dx3;JJ)V

    move-wide v0, p4

    .line 6
    invoke-virtual {p0, p4, p5, p6}, Lcom/shabakaty/downloader/bk;->D(JZ)V

    return-void
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/bk;->z:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/bk;->A:Z

    return-void
.end method

.method public final k()Lcom/shabakaty/downloader/mr3;
    .locals 0

    return-object p0
.end method

.method public synthetic m(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/kr3;->a(Lcom/shabakaty/downloader/lr3;FF)V

    return-void
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final q()Lcom/shabakaty/downloader/dx3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bk;->w:Lcom/shabakaty/downloader/dx3;

    return-object v0
.end method

.method public final r([Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/dx3;JJ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/bk;->A:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/bk;->w:Lcom/shabakaty/downloader/dx3;

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/bk;->z:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 4
    iput-wide p3, p0, Lcom/shabakaty/downloader/bk;->z:J

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/bk;->x:[Lcom/shabakaty/downloader/wh1;

    .line 6
    iput-wide p5, p0, Lcom/shabakaty/downloader/bk;->y:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/bk;->H([Lcom/shabakaty/downloader/wh1;JJ)V

    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bk;->v:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bk;->s:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->E()V

    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bk;->w:Lcom/shabakaty/downloader/dx3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/dx3;->b()V

    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bk;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/bk;->v:I

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->F()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bk;->v:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iput v1, p0, Lcom/shabakaty/downloader/bk;->v:I

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->G()V

    return-void
.end method

.method public final t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/bk;->z:J

    return-wide v0
.end method

.method public final u(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/bk;->A:Z

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/bk;->z:J

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/bk;->D(JZ)V

    return-void
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/bk;->A:Z

    return v0
.end method

.method public w()Lcom/shabakaty/downloader/no2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bk;->r:I

    return v0
.end method

.method public final y(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;I)Lcom/shabakaty/downloader/i71;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;
    .locals 13

    move-object v1, p0

    move-object v0, p2

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v3, v1, Lcom/shabakaty/downloader/bk;->B:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 2
    iput-boolean v3, v1, Lcom/shabakaty/downloader/bk;->B:Z

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/mr3;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v4
    :try_end_0
    .catch Lcom/shabakaty/downloader/i71; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x7

    .line 4
    iput-boolean v3, v1, Lcom/shabakaty/downloader/bk;->B:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    iput-boolean v3, v1, Lcom/shabakaty/downloader/bk;->B:Z

    .line 5
    throw v2

    .line 6
    :catch_0
    iput-boolean v3, v1, Lcom/shabakaty/downloader/bk;->B:Z

    :cond_0
    const/4 v4, 0x4

    .line 7
    :goto_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/lr3;->getName()Ljava/lang/String;

    move-result-object v7

    .line 8
    iget v8, v1, Lcom/shabakaty/downloader/bk;->u:I

    .line 9
    new-instance v12, Lcom/shabakaty/downloader/i71;

    if-nez v0, :cond_1

    const/4 v10, 0x4

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, v12

    move-object v4, p1

    move/from16 v6, p4

    move-object v9, p2

    move/from16 v11, p3

    .line 10
    invoke-direct/range {v2 .. v11}, Lcom/shabakaty/downloader/i71;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/shabakaty/downloader/wh1;IZ)V

    return-object v12
.end method
