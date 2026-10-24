.class public final Lcom/shabakaty/downloader/ym2;
.super Ljava/lang/Object;
.source "MaskingMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/kp2;
.implements Lcom/shabakaty/downloader/kp2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ym2$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/uq2$a;

.field public final s:J

.field public final t:Lcom/shabakaty/downloader/fn0;

.field public u:Lcom/shabakaty/downloader/uq2;

.field public v:Lcom/shabakaty/downloader/kp2;

.field public w:Lcom/shabakaty/downloader/kp2$a;

.field public x:Lcom/shabakaty/downloader/ym2$a;

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ym2;->r:Lcom/shabakaty/downloader/uq2$a;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ym2;->t:Lcom/shabakaty/downloader/fn0;

    .line 4
    iput-wide p3, p0, Lcom/shabakaty/downloader/ym2;->s:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide p1, p0, Lcom/shabakaty/downloader/ym2;->z:J

    return-void
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/kp2$a;J)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ym2;->w:Lcom/shabakaty/downloader/kp2$a;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    if-eqz p1, :cond_1

    .line 3
    iget-wide p2, p0, Lcom/shabakaty/downloader/ym2;->s:J

    .line 4
    iget-wide v0, p0, Lcom/shabakaty/downloader/ym2;->z:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    move-wide p2, v0

    .line 5
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lcom/shabakaty/downloader/kp2;->B0(Lcom/shabakaty/downloader/kp2$a;J)V

    :cond_1
    return-void
.end method

.method public C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/shabakaty/downloader/ym2;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/shabakaty/downloader/ym2;->s:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    .line 2
    iput-wide v3, v0, Lcom/shabakaty/downloader/ym2;->z:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    .line 3
    :goto_0
    iget-object v8, v0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 4
    invoke-interface/range {v8 .. v14}, Lcom/shabakaty/downloader/kp2;->C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public D0()Lcom/shabakaty/downloader/cp4;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->D0()Lcom/shabakaty/downloader/cp4;

    move-result-object v0

    return-object v0
.end method

.method public M0(JZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/kp2;->M0(JZ)V

    return-void
.end method

.method public a(Lcom/shabakaty/downloader/uq2$a;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/ym2;->s:J

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/ym2;->z:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    move-wide v0, v2

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ym2;->u:Lcom/shabakaty/downloader/uq2;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/ym2;->t:Lcom/shabakaty/downloader/fn0;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/shabakaty/downloader/uq2;->d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/ym2;->w:Lcom/shabakaty/downloader/kp2$a;

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p1, p0, v0, v1}, Lcom/shabakaty/downloader/kp2;->B0(Lcom/shabakaty/downloader/kp2$a;J)V

    :cond_1
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/o04;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/kp2;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ym2;->w:Lcom/shabakaty/downloader/kp2$a;

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->u:Lcom/shabakaty/downloader/uq2;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/uq2;->m(Lcom/shabakaty/downloader/kp2;)V

    :cond_0
    return-void
.end method

.method public d0()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->d0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->u:Lcom/shabakaty/downloader/uq2;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/uq2;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ym2;->x:Lcom/shabakaty/downloader/ym2$a;

    if-eqz v1, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ym2;->y:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ym2;->y:Z

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/r4$a;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/shabakaty/downloader/r4;->A:Lcom/shabakaty/downloader/uq2$a;

    const/4 v0, 0x0

    .line 10
    throw v0

    .line 11
    :cond_3
    throw v0
.end method

.method public e(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/kp2;->e(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lcom/shabakaty/downloader/kp2;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ym2;->w:Lcom/shabakaty/downloader/kp2$a;

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/kp2$a;->f(Lcom/shabakaty/downloader/kp2;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ym2;->x:Lcom/shabakaty/downloader/ym2$a;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/r4$a;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public g(Lcom/shabakaty/downloader/uq2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->u:Lcom/shabakaty/downloader/uq2;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ym2;->u:Lcom/shabakaty/downloader/uq2;

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/kp2;->k(JLcom/shabakaty/downloader/wz3;)J

    move-result-wide p1

    return-wide p1
.end method

.method public o()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public p0(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/kp2;->p0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public t(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/kp2;->t(J)V

    return-void
.end method

.method public x0()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ym2;->v:Lcom/shabakaty/downloader/kp2;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->x0()J

    move-result-wide v0

    return-wide v0
.end method
