.class public final Lcom/shabakaty/downloader/zm2;
.super Lcom/shabakaty/downloader/f90;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zm2$b;,
        Lcom/shabakaty/downloader/zm2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/f90<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/uq2;

.field public final B:Z

.field public final C:Lcom/shabakaty/downloader/nn4$c;

.field public final D:Lcom/shabakaty/downloader/nn4$b;

.field public E:Lcom/shabakaty/downloader/zm2$a;

.field public F:Lcom/shabakaty/downloader/ym2;

.field public G:Z

.field public H:Z

.field public I:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uq2;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f90;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zm2;->A:Lcom/shabakaty/downloader/uq2;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/uq2;->n()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/shabakaty/downloader/zm2;->B:Z

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/nn4$c;

    invoke-direct {p2}, Lcom/shabakaty/downloader/nn4$c;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/zm2;->C:Lcom/shabakaty/downloader/nn4$c;

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/nn4$b;

    invoke-direct {p2}, Lcom/shabakaty/downloader/nn4$b;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/zm2;->D:Lcom/shabakaty/downloader/nn4$b;

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/uq2;->o()Lcom/shabakaty/downloader/nn4;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/zm2$a;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v1}, Lcom/shabakaty/downloader/zm2$a;-><init>(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 9
    iput-boolean v0, p0, Lcom/shabakaty/downloader/zm2;->I:Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/uq2;->h()Lcom/shabakaty/downloader/dp2;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/zm2$a;

    new-instance v0, Lcom/shabakaty/downloader/zm2$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/zm2$b;-><init>(Lcom/shabakaty/downloader/dp2;)V

    sget-object p1, Lcom/shabakaty/downloader/nn4$c;->r:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    invoke-direct {p2, v0, p1, v1}, Lcom/shabakaty/downloader/zm2$a;-><init>(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    :goto_1
    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/ym2;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ym2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/ym2;-><init>(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)V

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/zm2;->A:Lcom/shabakaty/downloader/uq2;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/ym2;->g(Lcom/shabakaty/downloader/uq2;)V

    .line 3
    iget-boolean p2, p0, Lcom/shabakaty/downloader/zm2;->H:Z

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 5
    iget-object p3, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 6
    iget-object p3, p3, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 7
    sget-object p3, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/uq2$a;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ym2;->a(Lcom/shabakaty/downloader/uq2$a;)V

    goto :goto_0

    .line 13
    :cond_1
    iput-object v0, p0, Lcom/shabakaty/downloader/zm2;->F:Lcom/shabakaty/downloader/ym2;

    .line 14
    iget-boolean p1, p0, Lcom/shabakaty/downloader/zm2;->G:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/shabakaty/downloader/zm2;->G:Z

    const/4 p1, 0x0

    .line 16
    iget-object p2, p0, Lcom/shabakaty/downloader/zm2;->A:Lcom/shabakaty/downloader/uq2;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90;->A(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final C(J)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->F:Lcom/shabakaty/downloader/ym2;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    iget-object v2, v0, Lcom/shabakaty/downloader/ym2;->r:Lcom/shabakaty/downloader/uq2$a;

    iget-object v2, v2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zm2$a;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    iget-object v3, p0, Lcom/shabakaty/downloader/zm2;->D:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/nn4;->f(ILcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v1

    iget-wide v1, v1, Lcom/shabakaty/downloader/nn4$b;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 4
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    :cond_1
    iput-wide p1, v0, Lcom/shabakaty/downloader/ym2;->z:J

    return-void
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/zm2;->B(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/ym2;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/shabakaty/downloader/dp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->A:Lcom/shabakaty/downloader/uq2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/uq2;->h()Lcom/shabakaty/downloader/dp2;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/kp2;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ym2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ym2;->d()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->F:Lcom/shabakaty/downloader/ym2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/zm2;->F:Lcom/shabakaty/downloader/ym2;

    :cond_0
    return-void
.end method

.method public v(Lcom/shabakaty/downloader/sp4;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/f90;->z:Lcom/shabakaty/downloader/sp4;

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/f90;->y:Landroid/os/Handler;

    .line 3
    iget-boolean p1, p0, Lcom/shabakaty/downloader/zm2;->B:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/zm2;->G:Z

    const/4 p1, 0x0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->A:Lcom/shabakaty/downloader/uq2;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/f90;->A(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2;)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/zm2;->H:Z

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/zm2;->G:Z

    .line 3
    invoke-super {p0}, Lcom/shabakaty/downloader/f90;->x()V

    return-void
.end method

.method public y(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/uq2$a;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/uq2$a;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2;Lcom/shabakaty/downloader/nn4;)V
    .locals 9

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/lang/Void;

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zm2;->H:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/zm2$a;

    iget-object v2, v0, Lcom/shabakaty/downloader/zm2$a;->c:Ljava/lang/Object;

    iget-object v0, v0, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    invoke-direct {v1, p3, v2, v0}, Lcom/shabakaty/downloader/zm2$a;-><init>(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->F:Lcom/shabakaty/downloader/ym2;

    if-eqz v0, :cond_6

    .line 7
    iget-wide v0, v0, Lcom/shabakaty/downloader/ym2;->z:J

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/zm2;->C(J)V

    goto/16 :goto_3

    .line 9
    :cond_0
    invoke-virtual {p3}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zm2;->I:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/zm2$a;

    iget-object v2, v0, Lcom/shabakaty/downloader/zm2$a;->c:Ljava/lang/Object;

    iget-object v0, v0, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    invoke-direct {v1, p3, v2, v0}, Lcom/shabakaty/downloader/zm2$a;-><init>(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/nn4$c;->r:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/zm2$a;

    invoke-direct {v2, p3, v0, v1}, Lcom/shabakaty/downloader/zm2$a;-><init>(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 15
    :goto_0
    iput-object v1, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    goto/16 :goto_3

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->C:Lcom/shabakaty/downloader/nn4$c;

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->C:Lcom/shabakaty/downloader/nn4$c;

    .line 18
    iget-wide v2, v0, Lcom/shabakaty/downloader/nn4$c;->m:J

    .line 19
    iget-object v6, v0, Lcom/shabakaty/downloader/nn4$c;->a:Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->F:Lcom/shabakaty/downloader/ym2;

    if-eqz v0, :cond_3

    .line 21
    iget-wide v4, v0, Lcom/shabakaty/downloader/ym2;->s:J

    .line 22
    iget-object v7, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/ym2;->r:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v8, p0, Lcom/shabakaty/downloader/zm2;->D:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v7, v0, v8}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->D:Lcom/shabakaty/downloader/nn4$b;

    .line 24
    iget-wide v7, v0, Lcom/shabakaty/downloader/nn4$b;->e:J

    add-long/2addr v7, v4

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    iget-object v4, p0, Lcom/shabakaty/downloader/zm2;->C:Lcom/shabakaty/downloader/nn4$c;

    .line 26
    invoke-virtual {v0, v1, v4}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v0

    .line 27
    iget-wide v0, v0, Lcom/shabakaty/downloader/nn4$c;->m:J

    cmp-long v4, v7, v0

    if-eqz v4, :cond_3

    move-wide v4, v7

    goto :goto_1

    :cond_3
    move-wide v4, v2

    .line 28
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/zm2;->C:Lcom/shabakaty/downloader/nn4$c;

    iget-object v2, p0, Lcom/shabakaty/downloader/zm2;->D:Lcom/shabakaty/downloader/nn4$b;

    const/4 v3, 0x0

    move-object v0, p3

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 30
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 32
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zm2;->I:Z

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 34
    new-instance v1, Lcom/shabakaty/downloader/zm2$a;

    iget-object v4, v0, Lcom/shabakaty/downloader/zm2$a;->c:Ljava/lang/Object;

    iget-object v0, v0, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    invoke-direct {v1, p3, v4, v0}, Lcom/shabakaty/downloader/zm2$a;-><init>(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 35
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/zm2$a;

    invoke-direct {v0, p3, v6, v1}, Lcom/shabakaty/downloader/zm2$a;-><init>(Lcom/shabakaty/downloader/nn4;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    .line 36
    :goto_2
    iput-object v1, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 37
    iget-object v0, p0, Lcom/shabakaty/downloader/zm2;->F:Lcom/shabakaty/downloader/ym2;

    if-eqz v0, :cond_6

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/zm2;->C(J)V

    .line 39
    iget-object v0, v0, Lcom/shabakaty/downloader/ym2;->r:Lcom/shabakaty/downloader/uq2$a;

    iget-object v1, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 40
    iget-object v2, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 41
    iget-object v2, v2, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 42
    sget-object v2, Lcom/shabakaty/downloader/zm2$a;->e:Ljava/lang/Object;

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    iget-object v1, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 45
    iget-object v1, v1, Lcom/shabakaty/downloader/zm2$a;->d:Ljava/lang/Object;

    .line 46
    :cond_5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uq2$a;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/shabakaty/downloader/zm2;->I:Z

    .line 48
    iput-boolean v1, p0, Lcom/shabakaty/downloader/zm2;->H:Z

    .line 49
    iget-object v1, p0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/rj;->w(Lcom/shabakaty/downloader/nn4;)V

    if-eqz v0, :cond_7

    .line 50
    iget-object v1, p0, Lcom/shabakaty/downloader/zm2;->F:Lcom/shabakaty/downloader/ym2;

    .line 51
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ym2;->a(Lcom/shabakaty/downloader/uq2$a;)V

    :cond_7
    return-void
.end method
