.class public abstract Lcom/shabakaty/downloader/ak;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lcom/shabakaty/downloader/bd3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/nn4$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/nn4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nn4$c;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->I()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final G(I)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->e()Lcom/shabakaty/downloader/bd3$b;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bd3$b;->a:Lcom/shabakaty/downloader/xd1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xd1;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final P()V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->b0()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->Z()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 5
    invoke-interface {p0, v0, v1, v2}, Lcom/shabakaty/downloader/bd3;->d(IJ)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->d0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v0

    .line 8
    invoke-interface {p0, v0, v1, v2}, Lcom/shabakaty/downloader/bd3;->d(IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Q()V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->A()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/ak;->g0(J)V

    return-void
.end method

.method public final T()V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->W()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/ak;->g0(J)V

    return-void
.end method

.method public final X()J
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4$c;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final Y()Lcom/shabakaty/downloader/dp2;
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/nn4$c;->c:Lcom/shabakaty/downloader/dp2;

    :goto_0
    return-object v0
.end method

.method public final Z()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v1

    .line 4
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->w()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 5
    :cond_1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->N()Z

    move-result v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/nn4;->e(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final a0()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v1

    .line 4
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->w()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 5
    :cond_1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->N()Z

    move-result v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/nn4;->l(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final b0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->Z()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->a0()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d0()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/shabakaty/downloader/nn4$c;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e0()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f0()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/shabakaty/downloader/nn4$c;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g0(J)V
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->V()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->K()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ak;->q(J)V

    return-void
.end method

.method public final h0(Lcom/shabakaty/downloader/dp2;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/shabakaty/downloader/bd3;->o(Ljava/util/List;Z)V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/bd3;->z(Z)V

    return-void
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/bd3;->z(Z)V

    return-void
.end method

.method public final q(J)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/shabakaty/downloader/bd3;->d(IJ)V

    return-void
.end method

.method public final x()V
    .locals 8

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->c0()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->e0()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->f0()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->a0()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 6
    invoke-interface {p0, v0, v2, v3}, Lcom/shabakaty/downloader/bd3;->d(IJ)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->V()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->k()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v0, v5

    if-gtz v7, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->a0()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 9
    invoke-interface {p0, v0, v2, v3}, Lcom/shabakaty/downloader/bd3;->d(IJ)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/ak;->q(J)V

    :cond_3
    :goto_0
    return-void
.end method
