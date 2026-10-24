.class public final Lcom/shabakaty/downloader/zr2$a;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/kp2;
.implements Lcom/shabakaty/downloader/kp2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zr2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/kp2;

.field public final s:J

.field public t:Lcom/shabakaty/downloader/kp2$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kp2;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    return-void
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/kp2$a;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zr2$a;->t:Lcom/shabakaty/downloader/kp2$a;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    iget-wide v0, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    sub-long/2addr p2, v0

    invoke-interface {p1, p0, p2, p3}, Lcom/shabakaty/downloader/kp2;->B0(Lcom/shabakaty/downloader/kp2$a;J)V

    return-void
.end method

.method public C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    .line 1
    array-length v2, v1

    new-array v2, v2, [Lcom/shabakaty/downloader/dx3;

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    .line 3
    aget-object v4, v1, v3

    check-cast v4, Lcom/shabakaty/downloader/zr2$b;

    if-eqz v4, :cond_0

    .line 4
    iget-object v11, v4, Lcom/shabakaty/downloader/zr2$b;->r:Lcom/shabakaty/downloader/dx3;

    .line 5
    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, v0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    iget-wide v4, v0, Lcom/shabakaty/downloader/zr2$a;->s:J

    sub-long v8, p5, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    .line 7
    invoke-interface/range {v3 .. v9}, Lcom/shabakaty/downloader/kp2;->C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J

    move-result-wide v3

    .line 8
    :goto_1
    array-length v5, v1

    if-ge v10, v5, :cond_5

    .line 9
    aget-object v5, v2, v10

    if-nez v5, :cond_2

    .line 10
    aput-object v11, v1, v10

    goto :goto_2

    .line 11
    :cond_2
    aget-object v6, v1, v10

    if-eqz v6, :cond_3

    aget-object v6, v1, v10

    check-cast v6, Lcom/shabakaty/downloader/zr2$b;

    .line 12
    iget-object v6, v6, Lcom/shabakaty/downloader/zr2$b;->r:Lcom/shabakaty/downloader/dx3;

    if-eq v6, v5, :cond_4

    .line 13
    :cond_3
    new-instance v6, Lcom/shabakaty/downloader/zr2$b;

    iget-wide v7, v0, Lcom/shabakaty/downloader/zr2$a;->s:J

    invoke-direct {v6, v5, v7, v8}, Lcom/shabakaty/downloader/zr2$b;-><init>(Lcom/shabakaty/downloader/dx3;J)V

    aput-object v6, v1, v10

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 14
    :cond_5
    iget-wide v1, v0, Lcom/shabakaty/downloader/zr2$a;->s:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method public D0()Lcom/shabakaty/downloader/cp4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->D0()Lcom/shabakaty/downloader/cp4;

    move-result-object v0

    return-object v0
.end method

.method public M0(JZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    iget-wide v1, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/kp2;->M0(JZ)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/o04;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/kp2;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/zr2$a;->t:Lcom/shabakaty/downloader/kp2$a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    return-void
.end method

.method public c()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->c()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->d0()V

    return-void
.end method

.method public e(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    iget-wide v1, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/kp2;->e(J)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/kp2;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/zr2$a;->t:Lcom/shabakaty/downloader/kp2$a;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/kp2$a;->f(Lcom/shabakaty/downloader/kp2;)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->j()Z

    move-result v0

    return v0
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    iget-wide v1, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/kp2;->k(JLcom/shabakaty/downloader/wz3;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public o()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->o()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public p0(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    iget-wide v1, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/kp2;->p0(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public t(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    iget-wide v1, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/kp2;->t(J)V

    return-void
.end method

.method public x0()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr2$a;->r:Lcom/shabakaty/downloader/kp2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kp2;->x0()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/zr2$a;->s:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method
