.class public final Lcom/shabakaty/downloader/v30;
.super Lcom/shabakaty/downloader/f90;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/v30$a;,
        Lcom/shabakaty/downloader/v30$b;
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

.field public final B:J

.field public final C:J

.field public final D:Z

.field public final E:Z

.field public final F:Z

.field public final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/u30;",
            ">;"
        }
    .end annotation
.end field

.field public final H:Lcom/shabakaty/downloader/nn4$c;

.field public I:Lcom/shabakaty/downloader/v30$a;

.field public J:Lcom/shabakaty/downloader/v30$b;

.field public K:J

.field public L:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uq2;JJZZZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f90;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/v30;->A:Lcom/shabakaty/downloader/uq2;

    .line 5
    iput-wide p2, p0, Lcom/shabakaty/downloader/v30;->B:J

    .line 6
    iput-wide p4, p0, Lcom/shabakaty/downloader/v30;->C:J

    .line 7
    iput-boolean p6, p0, Lcom/shabakaty/downloader/v30;->D:Z

    .line 8
    iput-boolean p7, p0, Lcom/shabakaty/downloader/v30;->E:Z

    .line 9
    iput-boolean p8, p0, Lcom/shabakaty/downloader/v30;->F:Z

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/v30;->G:Ljava/util/ArrayList;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/nn4$c;

    invoke-direct {p1}, Lcom/shabakaty/downloader/nn4$c;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/v30;->H:Lcom/shabakaty/downloader/nn4$c;

    return-void
.end method


# virtual methods
.method public final B(Lcom/shabakaty/downloader/nn4;)V
    .locals 15

    move-object v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/v30;->H:Lcom/shabakaty/downloader/nn4$c;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    .line 2
    iget-object v0, v1, Lcom/shabakaty/downloader/v30;->H:Lcom/shabakaty/downloader/nn4$c;

    .line 3
    iget-wide v5, v0, Lcom/shabakaty/downloader/nn4$c;->q:J

    .line 4
    iget-object v0, v1, Lcom/shabakaty/downloader/v30;->I:Lcom/shabakaty/downloader/v30$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/shabakaty/downloader/v30;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/shabakaty/downloader/v30;->E:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/v30;->K:J

    sub-long/2addr v2, v5

    .line 6
    iget-wide v9, v1, Lcom/shabakaty/downloader/v30;->C:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v7, v1, Lcom/shabakaty/downloader/v30;->L:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v2

    goto :goto_5

    .line 8
    :cond_2
    :goto_1
    iget-wide v9, v1, Lcom/shabakaty/downloader/v30;->B:J

    .line 9
    iget-wide v11, v1, Lcom/shabakaty/downloader/v30;->C:J

    .line 10
    iget-boolean v0, v1, Lcom/shabakaty/downloader/v30;->F:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, v1, Lcom/shabakaty/downloader/v30;->H:Lcom/shabakaty/downloader/nn4$c;

    .line 12
    iget-wide v13, v0, Lcom/shabakaty/downloader/nn4$c;->m:J

    add-long/2addr v9, v13

    add-long/2addr v13, v11

    goto :goto_2

    :cond_3
    move-wide v13, v11

    :goto_2
    add-long v2, v5, v9

    .line 13
    iput-wide v2, v1, Lcom/shabakaty/downloader/v30;->K:J

    cmp-long v2, v11, v7

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    add-long v7, v5, v13

    .line 14
    :goto_3
    iput-wide v7, v1, Lcom/shabakaty/downloader/v30;->L:J

    .line 15
    iget-object v2, v1, Lcom/shabakaty/downloader/v30;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_5

    .line 16
    iget-object v3, v1, Lcom/shabakaty/downloader/v30;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/u30;

    iget-wide v5, v1, Lcom/shabakaty/downloader/v30;->K:J

    iget-wide v7, v1, Lcom/shabakaty/downloader/v30;->L:J

    .line 17
    iput-wide v5, v3, Lcom/shabakaty/downloader/u30;->v:J

    .line 18
    iput-wide v7, v3, Lcom/shabakaty/downloader/u30;->w:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move-wide v5, v9

    move-wide v7, v13

    .line 19
    :goto_5
    :try_start_0
    new-instance v0, Lcom/shabakaty/downloader/v30$a;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/v30$a;-><init>(Lcom/shabakaty/downloader/nn4;JJ)V

    iput-object v0, v1, Lcom/shabakaty/downloader/v30;->I:Lcom/shabakaty/downloader/v30$a;
    :try_end_0
    .catch Lcom/shabakaty/downloader/v30$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/rj;->w(Lcom/shabakaty/downloader/nn4;)V

    return-void

    :catch_0
    move-exception v0

    .line 21
    iput-object v0, v1, Lcom/shabakaty/downloader/v30;->J:Lcom/shabakaty/downloader/v30$b;

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/u30;

    iget-object v0, p0, Lcom/shabakaty/downloader/v30;->A:Lcom/shabakaty/downloader/uq2;

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/uq2;->d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/downloader/v30;->D:Z

    iget-wide v3, p0, Lcom/shabakaty/downloader/v30;->K:J

    iget-wide v5, p0, Lcom/shabakaty/downloader/v30;->L:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/u30;-><init>(Lcom/shabakaty/downloader/kp2;ZJJ)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/v30;->G:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public h()Lcom/shabakaty/downloader/dp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v30;->A:Lcom/shabakaty/downloader/uq2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/uq2;->h()Lcom/shabakaty/downloader/dp2;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v30;->J:Lcom/shabakaty/downloader/v30$b;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/f90;->k()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public m(Lcom/shabakaty/downloader/kp2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v30;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/v30;->A:Lcom/shabakaty/downloader/uq2;

    check-cast p1, Lcom/shabakaty/downloader/u30;

    iget-object p1, p1, Lcom/shabakaty/downloader/u30;->r:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/uq2;->m(Lcom/shabakaty/downloader/kp2;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/v30;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/shabakaty/downloader/v30;->E:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/v30;->I:Lcom/shabakaty/downloader/v30$a;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/di1;->b:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/v30;->B(Lcom/shabakaty/downloader/nn4;)V

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

    const/4 p1, 0x0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/v30;->A:Lcom/shabakaty/downloader/uq2;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/f90;->A(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2;)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/f90;->x()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/v30;->J:Lcom/shabakaty/downloader/v30$b;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/v30;->I:Lcom/shabakaty/downloader/v30$a;

    return-void
.end method

.method public z(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2;Lcom/shabakaty/downloader/nn4;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/v30;->J:Lcom/shabakaty/downloader/v30$b;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/v30;->B(Lcom/shabakaty/downloader/nn4;)V

    :goto_0
    return-void
.end method
