.class public final Lcom/shabakaty/downloader/rh3;
.super Lcom/shabakaty/downloader/rj;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/qh3$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/rh3$b;
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/oh3$a;

.field public final B:Lcom/shabakaty/downloader/u01;

.field public final C:Lcom/shabakaty/downloader/gj2;

.field public final D:I

.field public E:Z

.field public F:J

.field public G:Z

.field public H:Z

.field public I:Lcom/shabakaty/downloader/sp4;

.field public final x:Lcom/shabakaty/downloader/dp2;

.field public final y:Lcom/shabakaty/downloader/dp2$g;

.field public final z:Lcom/shabakaty/downloader/vl0$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/oh3$a;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/gj2;ILcom/shabakaty/downloader/rh3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rj;-><init>()V

    .line 2
    iget-object p7, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 3
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p7, p0, Lcom/shabakaty/downloader/rh3;->y:Lcom/shabakaty/downloader/dp2$g;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/rh3;->x:Lcom/shabakaty/downloader/dp2;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/rh3;->z:Lcom/shabakaty/downloader/vl0$a;

    .line 7
    iput-object p3, p0, Lcom/shabakaty/downloader/rh3;->A:Lcom/shabakaty/downloader/oh3$a;

    .line 8
    iput-object p4, p0, Lcom/shabakaty/downloader/rh3;->B:Lcom/shabakaty/downloader/u01;

    .line 9
    iput-object p5, p0, Lcom/shabakaty/downloader/rh3;->C:Lcom/shabakaty/downloader/gj2;

    .line 10
    iput p6, p0, Lcom/shabakaty/downloader/rh3;->D:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/shabakaty/downloader/rh3;->E:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide p1, p0, Lcom/shabakaty/downloader/rh3;->F:J

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;
    .locals 14

    move-object v12, p0

    move-object v0, p1

    .line 1
    iget-object v1, v12, Lcom/shabakaty/downloader/rh3;->z:Lcom/shabakaty/downloader/vl0$a;

    invoke-interface {v1}, Lcom/shabakaty/downloader/vl0$a;->a()Lcom/shabakaty/downloader/vl0;

    move-result-object v2

    .line 2
    iget-object v1, v12, Lcom/shabakaty/downloader/rh3;->I:Lcom/shabakaty/downloader/sp4;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 4
    :cond_0
    new-instance v13, Lcom/shabakaty/downloader/qh3;

    iget-object v1, v12, Lcom/shabakaty/downloader/rh3;->y:Lcom/shabakaty/downloader/dp2$g;

    iget-object v1, v1, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    iget-object v3, v12, Lcom/shabakaty/downloader/rh3;->A:Lcom/shabakaty/downloader/oh3$a;

    .line 5
    check-cast v3, Lcom/shabakaty/downloader/cu;

    iget-object v3, v3, Lcom/shabakaty/downloader/cu;->s:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/s91;

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/tk1;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/tk1;-><init>(Lcom/shabakaty/downloader/s91;)V

    .line 7
    iget-object v5, v12, Lcom/shabakaty/downloader/rh3;->B:Lcom/shabakaty/downloader/u01;

    .line 8
    iget-object v3, v12, Lcom/shabakaty/downloader/rj;->u:Lcom/shabakaty/downloader/s01$a;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, p1}, Lcom/shabakaty/downloader/s01$a;->g(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/s01$a;

    move-result-object v7

    .line 9
    iget-object v8, v12, Lcom/shabakaty/downloader/rh3;->C:Lcom/shabakaty/downloader/gj2;

    .line 10
    iget-object v3, v12, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    const-wide/16 v9, 0x0

    invoke-virtual {v3, v6, p1, v9, v10}, Lcom/shabakaty/downloader/yq2$a;->r(ILcom/shabakaty/downloader/uq2$a;J)Lcom/shabakaty/downloader/yq2$a;

    move-result-object v9

    .line 11
    iget-object v0, v12, Lcom/shabakaty/downloader/rh3;->y:Lcom/shabakaty/downloader/dp2$g;

    iget-object v10, v0, Lcom/shabakaty/downloader/dp2$g;->f:Ljava/lang/String;

    iget v11, v12, Lcom/shabakaty/downloader/rh3;->D:I

    move-object v0, v13

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/downloader/qh3;-><init>(Landroid/net/Uri;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/oh3;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/qh3$b;Lcom/shabakaty/downloader/fn0;Ljava/lang/String;I)V

    return-object v13
.end method

.method public h()Lcom/shabakaty/downloader/dp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rh3;->x:Lcom/shabakaty/downloader/dp2;

    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/kp2;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qh3;

    .line 2
    iget-boolean v0, p1, Lcom/shabakaty/downloader/qh3;->M:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bx3;->B()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/qh3;->G:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iput-object v1, p1, Lcom/shabakaty/downloader/qh3;->H:Lcom/shabakaty/downloader/kp2$a;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Lcom/shabakaty/downloader/qh3;->c0:Z

    return-void
.end method

.method public v(Lcom/shabakaty/downloader/sp4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/rh3;->I:Lcom/shabakaty/downloader/sp4;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/rh3;->B:Lcom/shabakaty/downloader/u01;

    invoke-interface {p1}, Lcom/shabakaty/downloader/u01;->g()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rh3;->y()V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rh3;->B:Lcom/shabakaty/downloader/u01;

    invoke-interface {v0}, Lcom/shabakaty/downloader/u01;->a()V

    return-void
.end method

.method public final y()V
    .locals 9

    .line 1
    new-instance v8, Lcom/shabakaty/downloader/b84;

    iget-wide v1, p0, Lcom/shabakaty/downloader/rh3;->F:J

    iget-boolean v3, p0, Lcom/shabakaty/downloader/rh3;->G:Z

    iget-boolean v5, p0, Lcom/shabakaty/downloader/rh3;->H:Z

    iget-object v7, p0, Lcom/shabakaty/downloader/rh3;->x:Lcom/shabakaty/downloader/dp2;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/b84;-><init>(JZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;)V

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/rh3;->E:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/rh3$a;

    invoke-direct {v0, v8}, Lcom/shabakaty/downloader/rh3$a;-><init>(Lcom/shabakaty/downloader/nn4;)V

    move-object v8, v0

    .line 4
    :cond_0
    invoke-virtual {p0, v8}, Lcom/shabakaty/downloader/rj;->w(Lcom/shabakaty/downloader/nn4;)V

    return-void
.end method

.method public z(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/shabakaty/downloader/rh3;->F:J

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/rh3;->E:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/shabakaty/downloader/rh3;->F:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/rh3;->G:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/rh3;->H:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 3
    :cond_1
    iput-wide p1, p0, Lcom/shabakaty/downloader/rh3;->F:J

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/rh3;->G:Z

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/rh3;->H:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/shabakaty/downloader/rh3;->E:Z

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rh3;->y()V

    return-void
.end method
