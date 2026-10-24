.class public final Lcom/shabakaty/downloader/xq0;
.super Lcom/shabakaty/downloader/wq0;
.source "DescriptorRendererImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/cr0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xq0$a;
    }
.end annotation


# instance fields
.field public final c:Lcom/shabakaty/downloader/dr0;

.field public final d:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wq0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/xq0$c;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/xq0$c;-><init>(Lcom/shabakaty/downloader/xq0;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xq0;->d:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public static synthetic R(Lcom/shabakaty/downloader/xq0;Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;I)V
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    return-void
.end method

.method public static final x(Lcom/shabakaty/downloader/xq0;Lcom/shabakaty/downloader/yh3;Ljava/lang/StringBuilder;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->I()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "property.typeParameters"

    if-nez v0, :cond_9

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->H()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_8

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/shabakaty/downloader/br0;->x:Lcom/shabakaty/downloader/br0;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p2, p1, v0}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/yh3;->z0()Lcom/shabakaty/downloader/na1;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/shabakaty/downloader/z8;->s:Lcom/shabakaty/downloader/z8;

    invoke-virtual {p0, p2, v0, v4}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 6
    :goto_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/yh3;->v0()Lcom/shabakaty/downloader/na1;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/shabakaty/downloader/z8;->A:Lcom/shabakaty/downloader/z8;

    invoke-virtual {p0, p2, v0, v4}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 8
    iget-object v4, v0, Lcom/shabakaty/downloader/dr0;->G:Lcom/shabakaty/downloader/hn3;

    sget-object v5, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v6, 0x1f

    aget-object v5, v5, v6

    invoke-interface {v4, v0, v5}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xh3;

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/xh3;->t:Lcom/shabakaty/downloader/xh3;

    if-ne v0, v4, :cond_5

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/yh3;->p()Lcom/shabakaty/downloader/ai3;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    sget-object v4, Lcom/shabakaty/downloader/z8;->v:Lcom/shabakaty/downloader/z8;

    invoke-virtual {p0, p2, v0, v4}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 12
    :goto_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/yh3;->i0()Lcom/shabakaty/downloader/fi3;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    sget-object v4, Lcom/shabakaty/downloader/z8;->w:Lcom/shabakaty/downloader/z8;

    invoke-virtual {p0, p2, v0, v4}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 14
    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    const-string v4, "setter.valueParameters"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sz4;

    const-string v4, "it"

    .line 15
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/shabakaty/downloader/z8;->z:Lcom/shabakaty/downloader/z8;

    invoke-virtual {p0, p2, v0, v4}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 16
    :cond_5
    :goto_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v0

    const-string v4, "property.visibility"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/xq0;->u0(Lcom/shabakaty/downloader/mr0;Ljava/lang/StringBuilder;)Z

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/shabakaty/downloader/br0;->E:Lcom/shabakaty/downloader/br0;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/shabakaty/downloader/uz4;->G()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    const-string v4, "const"

    invoke-virtual {p0, p2, v0, v4}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->Y(Lcom/shabakaty/downloader/ir2;Ljava/lang/StringBuilder;)V

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->b0(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->g0(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/shabakaty/downloader/br0;->F:Lcom/shabakaty/downloader/br0;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/shabakaty/downloader/uz4;->C0()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    const-string v4, "lateinit"

    invoke-virtual {p0, p2, v0, v4}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->X(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V

    .line 23
    :cond_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/shabakaty/downloader/xq0;->r0(Lcom/shabakaty/downloader/uz4;Ljava/lang/StringBuilder;Z)V

    .line 24
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->t()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/shabakaty/downloader/xq0;->q0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->j0(Lcom/shabakaty/downloader/rq;Ljava/lang/StringBuilder;)V

    .line 26
    :cond_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    const-string v0, ": "

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v1, "property.type"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->k0(Lcom/shabakaty/downloader/rq;Ljava/lang/StringBuilder;)V

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->V(Lcom/shabakaty/downloader/uz4;Ljava/lang/StringBuilder;)V

    .line 30
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->t()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->v0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/pr3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public B()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->N:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->U:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public D()Lcom/shabakaty/downloader/i30;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->b:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/i30;

    return-object v0
.end method

.method public E()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->R:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public F()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/br0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->e:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public G()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->z:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->g:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->f:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public J()Lcom/shabakaty/downloader/pr3;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->C:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/pr3;

    return-object v0
.end method

.method public K()Lcom/shabakaty/downloader/wq0$l;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->B:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wq0$l;

    return-object v0
.end method

.method public L()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->j:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->v:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final N()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/pr3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final O(Lcom/shabakaty/downloader/ir2;)Lcom/shabakaty/downloader/eu2;
    .locals 7

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/eu2;->t:Lcom/shabakaty/downloader/eu2;

    sget-object v1, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    sget-object v2, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    sget-object v3, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    instance-of v4, p1, Lcom/shabakaty/downloader/q20;

    if-eqz v4, :cond_1

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/q20;

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    return-object v1

    .line 3
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v4

    instance-of v5, v4, Lcom/shabakaty/downloader/q20;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/shabakaty/downloader/q20;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    return-object v3

    .line 4
    :cond_3
    instance-of v5, p1, Lcom/shabakaty/downloader/tq;

    if-nez v5, :cond_4

    return-object v3

    .line 5
    :cond_4
    check-cast p1, Lcom/shabakaty/downloader/tq;

    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object v5

    const-string v6, "this.overriddenDescriptors"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 6
    invoke-interface {v4}, Lcom/shabakaty/downloader/q20;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v5

    if-eq v5, v3, :cond_5

    return-object v0

    .line 7
    :cond_5
    invoke-interface {v4}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v4

    if-ne v4, v2, :cond_6

    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/lr0;->a:Lcom/shabakaty/downloader/mr0;

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object p1

    if-ne p1, v1, :cond_7

    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v3

    :cond_7
    :goto_2
    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/pr3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/br0;->x:Lcom/shabakaty/downloader/br0;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p2, Lcom/shabakaty/downloader/qe2;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->K:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->J:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 8
    iget-object v2, v1, Lcom/shabakaty/downloader/dr0;->L:Lcom/shabakaty/downloader/hn3;

    sget-object v3, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v4, 0x24

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tm1;

    .line 9
    invoke-interface {p2}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/r8;

    .line 10
    invoke-interface {v2}, Lcom/shabakaty/downloader/r8;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/m50;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    invoke-interface {v2}, Lcom/shabakaty/downloader/r8;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->r:Lcom/shabakaty/downloader/fi1;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    :cond_3
    invoke-virtual {p0, v2, p3}, Lcom/shabakaty/downloader/xq0;->q(Lcom/shabakaty/downloader/r8;Lcom/shabakaty/downloader/z8;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v2, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 15
    iget-object v3, v2, Lcom/shabakaty/downloader/dr0;->I:Lcom/shabakaty/downloader/hn3;

    sget-object v4, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v5, 0x21

    aget-object v4, v4, v5

    invoke-interface {v3, v2, v4}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v2, " "

    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final S(Lcom/shabakaty/downloader/h30;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/h30;->B()Ljava/util/List;

    move-result-object v0

    const-string v1, "classifier.declaredTypeParameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v1

    const-string v2, "classifier.typeConstructor.parameters"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/downloader/h30;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    const-string p1, " /*captured type parameters: "

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/xq0;->p0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p1, "*/"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final T(Lcom/shabakaty/downloader/qb0;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/fd;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/fd;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/shabakaty/downloader/xq0$d;

    invoke-direct {v6, p0}, Lcom/shabakaty/downloader/xq0$d;-><init>(Lcom/shabakaty/downloader/xq0;)V

    const/16 v7, 0x18

    const-string v1, ", "

    const-string v2, "{"

    const-string v3, "}"

    invoke-static/range {v0 .. v7}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/c9;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/shabakaty/downloader/c9;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/r8;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/shabakaty/downloader/wq0;->r(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/r8;Lcom/shabakaty/downloader/z8;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/re4;->a0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/lc2;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/shabakaty/downloader/lc2;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/shabakaty/downloader/lc2$a;

    .line 10
    instance-of v0, p1, Lcom/shabakaty/downloader/lc2$a$a;

    const-string v1, "::class"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/shabakaty/downloader/lc2$a$a;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/lc2$a$a;->a:Lcom/shabakaty/downloader/qe2;

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_2
    instance-of v0, p1, Lcom/shabakaty/downloader/lc2$a$b;

    if-eqz v0, :cond_4

    .line 14
    check-cast p1, Lcom/shabakaty/downloader/lc2$a$b;

    .line 15
    iget-object v0, p1, Lcom/shabakaty/downloader/lc2$a$b;->a:Lcom/shabakaty/downloader/x20;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/x20;->a:Lcom/shabakaty/downloader/v20;

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classValue.classId.asSingleFqName().asString()"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/lc2$a$b;->a:Lcom/shabakaty/downloader/x20;

    .line 19
    iget p1, p1, Lcom/shabakaty/downloader/x20;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kotlin.Array<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb0;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final U(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 2
    instance-of v1, p2, Lcom/shabakaty/downloader/rp0;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/shabakaty/downloader/rp0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, v1, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    :goto_1
    invoke-static {p2}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    instance-of v0, p2, Lcom/shabakaty/downloader/zv4;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->T:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/zv4;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/zv4;->x:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 11
    :cond_2
    instance-of v0, p2, Lcom/shabakaty/downloader/c51;

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->V:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/c51;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/c51;->c1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xq0;->m0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 17
    :cond_4
    instance-of v2, p2, Lcom/shabakaty/downloader/ve4;

    if-eqz v2, :cond_5

    .line 18
    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ve4;

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/g1;->s:Lcom/shabakaty/downloader/ts4;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 21
    :cond_5
    instance-of v2, v1, Lcom/shabakaty/downloader/ve4;

    if-eqz v2, :cond_6

    .line 22
    check-cast v1, Lcom/shabakaty/downloader/ve4;

    .line 23
    iget-object v0, v1, Lcom/shabakaty/downloader/g1;->s:Lcom/shabakaty/downloader/ts4;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    .line 26
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v2

    instance-of v3, v2, Lcom/shabakaty/downloader/h30;

    if-eqz v3, :cond_7

    move-object v0, v2

    check-cast v0, Lcom/shabakaty/downloader/h30;

    :cond_7
    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Lcom/shabakaty/downloader/pt4;->a(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/h30;I)Lcom/shabakaty/downloader/tk1;

    move-result-object v0

    if-nez v0, :cond_8

    .line 27
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/xq0;->n0(Lcom/shabakaty/downloader/ts4;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xq0;->m0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 29
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/xq0;->i0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/tk1;)V

    .line 30
    :goto_3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "?"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_9
    check-cast p2, Lcom/shabakaty/downloader/qw4;

    instance-of p2, p2, Lcom/shabakaty/downloader/rp0;

    if-eqz p2, :cond_a

    const-string p2, " & Any"

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    return-void
.end method

.method public final V(Lcom/shabakaty/downloader/uz4;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->u:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/uz4;->e0()Lcom/shabakaty/downloader/qb0;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " = "

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->T(Lcom/shabakaty/downloader/qb0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method public final W(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "<b>"

    const-string v1, "</b>"

    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final X(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/br0;->z:Lcom/shabakaty/downloader/br0;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    if-eq v0, v1, :cond_1

    const-string v0, "/*"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*/ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final Y(Lcom/shabakaty/downloader/ir2;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->l()Z

    move-result v0

    const-string v1, "external"

    invoke-virtual {p0, p2, v0, v1}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/br0;->C:Lcom/shabakaty/downloader/br0;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "expect"

    invoke-virtual {p0, p2, v0, v3}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lcom/shabakaty/downloader/br0;->D:Lcom/shabakaty/downloader/br0;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->N0()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string p1, "actual"

    invoke-virtual {p0, p2, v1, p1}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public Z(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "<i>"

    const-string v1, "</i>"

    .line 2
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public a(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->K:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2, p1}, Lcom/shabakaty/downloader/hn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V

    return-void
.end method

.method public final a0(Lcom/shabakaty/downloader/eu2;Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/eu2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->p:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, p3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object p3

    sget-object v0, Lcom/shabakaty/downloader/br0;->v:Lcom/shabakaty/downloader/br0;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/ea3;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dr0;->b(Lcom/shabakaty/downloader/ea3;)V

    return-void
.end method

.method public final b0(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->y(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    if-eq v0, v1, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->A:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/y83;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/y83;->r:Lcom/shabakaty/downloader/y83;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/eu2;->t:Lcom/shabakaty/downloader/eu2;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v0

    const-string v1, "callable.modality"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->O(Lcom/shabakaty/downloader/ir2;)Lcom/shabakaty/downloader/eu2;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/shabakaty/downloader/xq0;->a0(Lcom/shabakaty/downloader/eu2;Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/eu2;)V

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->f:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lcom/shabakaty/downloader/hn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V

    return-void
.end method

.method public final c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public d(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/shabakaty/downloader/br0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dr0;->d(Ljava/util/Set;)V

    return-void
.end method

.method public final d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    const-string v0, "descriptor.name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/xq0;->u(Lcom/shabakaty/downloader/hw2;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dr0;->e(Z)V

    return-void
.end method

.method public final e0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 3
    iget-object v1, p2, Lcom/shabakaty/downloader/dr0;->Q:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x29

    aget-object v3, v2, v3

    invoke-interface {v1, p2, v3}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, v0, Lcom/shabakaty/downloader/d;->s:Lcom/shabakaty/downloader/b74;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->f0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p2, v0, Lcom/shabakaty/downloader/d;->t:Lcom/shabakaty/downloader/b74;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->f0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 9
    iget-object v1, p2, Lcom/shabakaty/downloader/dr0;->P:Lcom/shabakaty/downloader/hn3;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-interface {v1, p2, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object p2

    sget-object v1, Lcom/shabakaty/downloader/pr3;->s:Lcom/shabakaty/downloader/pr3;

    if-ne p2, v1, :cond_2

    const-string p2, "<font color=\"808080\"><i>"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p2, " /* = "

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object p2, v0, Lcom/shabakaty/downloader/d;->s:Lcom/shabakaty/downloader/b74;

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->f0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    const-string p2, " */"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object p2

    if-ne p2, v1, :cond_3

    const-string p2, "</i></font>"

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    return-void

    .line 18
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->f0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    return-void
.end method

.method public f()Z
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->m:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V
    .locals 13

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/x85;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/x85;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x85;->Y0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "<Not computed yet>"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p2

    .line 4
    instance-of v0, p2, Lcom/shabakaty/downloader/fe1;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/shabakaty/downloader/fe1;

    invoke-virtual {p2, p0, p0}, Lcom/shabakaty/downloader/fe1;->b1(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/cr0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 5
    :cond_1
    instance-of v0, p2, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_21

    check-cast p2, Lcom/shabakaty/downloader/b74;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/eu4;->b:Lcom/shabakaty/downloader/b74;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "???"

    if-nez v0, :cond_20

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/eu4;->a:Lcom/shabakaty/downloader/b74;

    check-cast v4, Lcom/shabakaty/downloader/c51;

    .line 8
    iget-object v4, v4, Lcom/shabakaty/downloader/c51;->s:Lcom/shabakaty/downloader/ts4;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    goto/16 :goto_e

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    instance-of v3, v3, Lcom/shabakaty/downloader/d51$f;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 11
    iget-object v3, v2, Lcom/shabakaty/downloader/dr0;->t:Lcom/shabakaty/downloader/hn3;

    sget-object v5, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v6, 0x12

    aget-object v5, v5, v6

    invoke-interface {v3, v2, v5}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 13
    :cond_5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/d51$f;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v0}, Lcom/shabakaty/downloader/d51$f;->g(I)V

    throw v4

    .line 15
    :cond_6
    invoke-static {p2}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->U(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    goto/16 :goto_f

    .line 17
    :cond_7
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/xq0;->x0(Lcom/shabakaty/downloader/qe2;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 19
    iget-object v3, p0, Lcom/shabakaty/downloader/xq0;->d:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v3}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/xq0;

    const/4 v5, 0x2

    .line 20
    invoke-static {v3, p1, p2, v4, v5}, Lcom/shabakaty/downloader/xq0;->R(Lcom/shabakaty/downloader/xq0;Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;I)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v3, v1, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    .line 22
    :goto_2
    invoke-static {p2}, Lcom/shabakaty/downloader/nh3;->w(Lcom/shabakaty/downloader/qe2;)Z

    move-result v5

    .line 23
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v6

    .line 24
    invoke-static {p2}, Lcom/shabakaty/downloader/nh3;->q(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    if-nez v6, :cond_a

    if-eqz v3, :cond_9

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v8, 0x1

    :goto_4
    const-string v9, "("

    if-eqz v8, :cond_f

    if-eqz v5, :cond_b

    const/16 v3, 0x28

    .line 25
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_b
    if-eqz v3, :cond_e

    const-string v1, "<this>"

    .line 26
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_d

    .line 28
    invoke-static {p1}, Lcom/shabakaty/downloader/re4;->O(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 29
    invoke-static {v1}, Lcom/shabakaty/downloader/z02;->r(C)Z

    .line 30
    invoke-static {p1}, Lcom/shabakaty/downloader/re4;->O(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    if-eq v1, v3, :cond_e

    .line 31
    invoke-static {p1}, Lcom/shabakaty/downloader/re4;->O(Ljava/lang/CharSequence;)I

    move-result v1

    const-string v3, "()"

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 32
    :cond_d
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Char sequence is empty."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_e
    :goto_6
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_7
    const-string v1, "suspend"

    .line 34
    invoke-virtual {p0, p1, v5, v1}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v1, ")"

    if-eqz v7, :cond_17

    .line 35
    invoke-virtual {p0, v7}, Lcom/shabakaty/downloader/xq0;->x0(Lcom/shabakaty/downloader/qe2;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v7}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 36
    :cond_10
    invoke-static {v7}, Lcom/shabakaty/downloader/nh3;->w(Lcom/shabakaty/downloader/qe2;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v7}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_14

    :cond_13
    const/4 v3, 0x1

    goto :goto_a

    :cond_14
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_15

    .line 37
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_15
    invoke-virtual {p0, p1, v7}, Lcom/shabakaty/downloader/xq0;->e0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    if-eqz v3, :cond_16

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v3, "."

    .line 40
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_17
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {p2}, Lcom/shabakaty/downloader/nh3;->s(Lcom/shabakaty/downloader/qe2;)Ljava/util/List;

    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/qt4;

    if-lez v5, :cond_18

    const-string v5, ", "

    .line 44
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_18
    iget-object v5, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 46
    iget-object v10, v5, Lcom/shabakaty/downloader/dr0;->S:Lcom/shabakaty/downloader/hn3;

    sget-object v11, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v12, 0x2b

    aget-object v11, v11, v12

    invoke-interface {v10, v5, v11}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 47
    invoke-interface {v9}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    const-string v10, "typeProjection.type"

    invoke-static {v5, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/nh3;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    goto :goto_c

    :cond_19
    move-object v5, v4

    :goto_c
    if-eqz v5, :cond_1a

    .line 48
    invoke-virtual {p0, v5, v2}, Lcom/shabakaty/downloader/xq0;->u(Lcom/shabakaty/downloader/hw2;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 49
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_1a
    invoke-virtual {p0, v9}, Lcom/shabakaty/downloader/xq0;->w(Lcom/shabakaty/downloader/qt4;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_b

    :cond_1b
    const-string v2, ") "

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_1d

    if-ne v2, v0, :cond_1c

    const-string v0, "&rarr;"

    goto :goto_d

    .line 53
    :cond_1c
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    .line 54
    :cond_1d
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    const-string v2, "->"

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/pr3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {p2}, Lcom/shabakaty/downloader/nh3;->r(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->e0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    if-eqz v8, :cond_1e

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    if-eqz v6, :cond_21

    const-string p2, "?"

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 59
    :cond_1f
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->U(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_f

    .line 60
    :cond_20
    :goto_e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    :goto_f
    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dr0;->g(Z)V

    return-void
.end method

.method public final g0(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/br0;->w:Lcom/shabakaty/downloader/br0;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/dr0;->A:Lcom/shabakaty/downloader/hn3;

    sget-object v3, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-interface {v2, v0, v3}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/y83;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/y83;->s:Lcom/shabakaty/downloader/y83;

    if-eq v0, v2, :cond_1

    const-string v0, "override"

    .line 6
    invoke-virtual {p0, p2, v1, v0}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "*/ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public h(Z)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->h:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lcom/shabakaty/downloader/hn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V

    return-void
.end method

.method public final h0(Lcom/shabakaty/downloader/fi1;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object p1

    const-string p2, "fqName.toUnsafe()"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->t(Lcom/shabakaty/downloader/gi1;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, " "

    .line 4
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public i(Z)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->F:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lcom/shabakaty/downloader/hn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V

    return-void
.end method

.method public final i0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/tk1;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tk1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/xq0;->i0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/tk1;)V

    const/16 v0, 0x2e

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/h30;

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    const-string v1, "possiblyInnerType.classifierDescriptor.name"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/xq0;->u(Lcom/shabakaty/downloader/hw2;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p2, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/h30;

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    const-string v1, "possiblyInnerType.classi\u2026escriptor.typeConstructor"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xq0;->n0(Lcom/shabakaty/downloader/ts4;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    iget-object p2, p2, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .line 9
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/xq0;->m0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public j(Z)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->E:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lcom/shabakaty/downloader/hn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V

    return-void
.end method

.method public final j0(Lcom/shabakaty/downloader/rq;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/z8;->x:Lcom/shabakaty/downloader/z8;

    invoke-virtual {p0, p2, p1, v0}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->x0(Lcom/shabakaty/downloader/qe2;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public k(Lcom/shabakaty/downloader/i30;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dr0;->k(Lcom/shabakaty/downloader/i30;)V

    return-void
.end method

.method public final k0(Lcom/shabakaty/downloader/rq;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->E:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, " on "

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public l()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->K:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final l0(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public m(Lcom/shabakaty/downloader/pr3;)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->C:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2, p1}, Lcom/shabakaty/downloader/hn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V

    return-void
.end method

.method public m0(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "typeArguments"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/xq0;->y(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->N()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dr0;->n()Z

    move-result v0

    return v0
.end method

.method public n0(Lcom/shabakaty/downloader/ts4;)Ljava/lang/String;
    .locals 3

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/kt4;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v0, Lcom/shabakaty/downloader/hs4;

    :goto_1
    if-eqz v2, :cond_3

    const-string p1, "klass"

    .line 3
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/d51;->i(Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->D()Lcom/shabakaty/downloader/i30;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Lcom/shabakaty/downloader/i30;->a(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/wq0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    .line 7
    instance-of v0, p1, Lcom/shabakaty/downloader/g32;

    if-eqz v0, :cond_4

    .line 8
    check-cast p1, Lcom/shabakaty/downloader/g32;

    sget-object v0, Lcom/shabakaty/downloader/xq0$e;->r:Lcom/shabakaty/downloader/xq0$e;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/g32;->h(Lcom/shabakaty/downloader/tm1;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Unexpected classifier: "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Z)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->v:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lcom/shabakaty/downloader/hn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V

    return-void
.end method

.method public final o0(Lcom/shabakaty/downloader/kt4;Ljava/lang/StringBuilder;Z)V
    .locals 7

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->j()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->L()Z

    move-result v0

    const-string v1, "reified"

    invoke-virtual {p0, p2, v0, v1}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/xz4;->r:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p2, v1, v0}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p2, p1, v0}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v4, " : "

    const/16 v5, 0x8d

    if-le v1, v3, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    if-ne v1, v3, :cond_6

    .line 11
    :cond_4
    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qe2;

    if-eqz p1, :cond_5

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->I(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 13
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 14
    :cond_5
    invoke-static {v5}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v0

    :cond_6
    if-eqz p3, :cond_a

    .line 15
    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/qe2;

    if-eqz v1, :cond_9

    .line 16
    invoke-static {v1}, Lcom/shabakaty/downloader/zd2;->I(Lcom/shabakaty/downloader/qe2;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 17
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v3, " & "

    .line 18
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :goto_2
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_1

    .line 20
    :cond_9
    invoke-static {v5}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v0

    :cond_a
    :goto_3
    if-eqz p3, :cond_b

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->N()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    return-void
.end method

.method public p(Lcom/shabakaty/downloader/qm0;)Ljava/lang/String;
    .locals 6

    const-string v0, "declarationDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/xq0$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/xq0$a;-><init>(Lcom/shabakaty/downloader/xq0;)V

    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/qm0;->j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/dr0;->c:Lcom/shabakaty/downloader/hn3;

    sget-object v3, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-interface {v2, v1, v4}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    instance-of v1, p1, Lcom/shabakaty/downloader/k93;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/shabakaty/downloader/t93;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    instance-of v2, v1, Lcom/shabakaty/downloader/nu2;

    if-nez v2, :cond_2

    const-string v2, " "

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "defined in"

    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/xq0;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v1}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v2

    const-string v4, "getFqName(containingDeclaration)"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/gi1;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "root package"

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/xq0;->t(Lcom/shabakaty/downloader/gi1;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 12
    iget-object v4, v2, Lcom/shabakaty/downloader/dr0;->d:Lcom/shabakaty/downloader/hn3;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-interface {v4, v2, v3}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    instance-of v1, v1, Lcom/shabakaty/downloader/k93;

    if-eqz v1, :cond_2

    .line 14
    instance-of v1, p1, Lcom/shabakaty/downloader/vm0;

    if-eqz v1, :cond_2

    .line 15
    check-cast p1, Lcom/shabakaty/downloader/vm0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/s94;->a()Lcom/shabakaty/downloader/t94;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final p0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kt4;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/shabakaty/downloader/xq0;->o0(Lcom/shabakaty/downloader/kt4;Ljava/lang/StringBuilder;Z)V

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q(Lcom/shabakaty/downloader/r8;Lcom/shabakaty/downloader/z8;)Ljava/lang/String;
    .locals 10

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/z8;->r:Ljava/lang/String;

    const-string v1, ":"

    .line 4
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/r8;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "this"

    .line 8
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/dr0;->p()Lcom/shabakaty/downloader/n8;

    move-result-object v1

    .line 10
    iget-boolean v1, v1, Lcom/shabakaty/downloader/n8;->r:Z

    if-eqz v1, :cond_10

    .line 11
    invoke-interface {p1}, Lcom/shabakaty/downloader/r8;->l()Ljava/util/Map;

    move-result-object v1

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 13
    iget-object v4, v3, Lcom/shabakaty/downloader/dr0;->H:Lcom/shabakaty/downloader/hn3;

    sget-object v5, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v6, 0x20

    aget-object v5, v5, v6

    invoke-interface {v4, v3, v5}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 14
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v4

    :goto_0
    const/16 v3, 0xa

    if-nez p1, :cond_2

    goto :goto_3

    .line 15
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->Y()Lcom/shabakaty/downloader/l20;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    const-string v4, "valueParameters"

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/shabakaty/downloader/sz4;

    .line 18
    invoke-interface {v6}, Lcom/shabakaty/downloader/sz4;->E0()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 21
    check-cast v5, Lcom/shabakaty/downloader/sz4;

    .line 22
    invoke-interface {v5}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v4, p1

    :goto_3
    if-nez v4, :cond_7

    .line 23
    sget-object v4, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 24
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/shabakaty/downloader/hw2;

    const-string v9, "it"

    .line 26
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v7, v8

    if-eqz v7, :cond_8

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 27
    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 29
    check-cast v6, Lcom/shabakaty/downloader/hw2;

    .line 30
    invoke-virtual {v6}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v6

    const-string v8, " = ..."

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 31
    :cond_a
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/hw2;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qb0;

    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/xq0;->T(Lcom/shabakaty/downloader/qb0;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_b
    const-string v3, "..."

    :goto_7
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 37
    :cond_c
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const-string v1, "<this>"

    .line 38
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v7, :cond_d

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_8
    move-object v1, p1

    goto :goto_9

    :cond_d
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Comparable;

    .line 40
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-object v3, p1

    check-cast v3, [Ljava/lang/Comparable;

    .line 42
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    array-length v1, v3

    if-le v1, v7, :cond_e

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 44
    :cond_e
    invoke-static {p1}, Lcom/shabakaty/downloader/hd;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_8

    .line 45
    :goto_9
    iget-object p1, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/shabakaty/downloader/dr0;->p()Lcom/shabakaty/downloader/n8;

    move-result-object p1

    .line 48
    iget-boolean p1, p1, Lcom/shabakaty/downloader/n8;->s:Z

    if-nez p1, :cond_f

    .line 49
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v7

    if-eqz p1, :cond_10

    :cond_f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const-string v3, ", "

    const-string v4, "("

    const-string v5, ")"

    move-object v2, v0

    .line 50
    invoke-static/range {v1 .. v9}, Lcom/shabakaty/downloader/m50;->e0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/Appendable;

    .line 51
    :cond_10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->L()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {p2}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p1

    instance-of p1, p1, Lcom/shabakaty/downloader/b03$b;

    if-eqz p1, :cond_12

    :cond_11
    const-string p1, " /* annotation class not found */"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final q0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/xq0;->p0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->N()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p1, " "

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final r0(Lcom/shabakaty/downloader/uz4;Ljava/lang/StringBuilder;Z)V
    .locals 0

    if-nez p3, :cond_0

    .line 1
    instance-of p3, p1, Lcom/shabakaty/downloader/sz4;

    if-nez p3, :cond_2

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/uz4;->r0()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "var"

    goto :goto_0

    :cond_1
    const-string p1, "val"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/zd2;)Ljava/lang/String;
    .locals 12

    const-string v0, "lowerRendered"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperRendered"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    const-string v0, "("

    .line 2
    invoke-static {p2, v0, p3, v2}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "!"

    .line 4
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->D()Lcom/shabakaty/downloader/i30;

    move-result-object v0

    .line 6
    sget-object v3, Lcom/shabakaty/downloader/tb4$a;->B:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {p3, v3}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 7
    invoke-interface {v0, v3, p0}, Lcom/shabakaty/downloader/i30;->a(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/wq0;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Collection"

    invoke-static {v0, v3, v4, v2}, Lcom/shabakaty/downloader/re4;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mutable"

    .line 8
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, v0

    .line 10
    invoke-virtual/range {v5 .. v10}, Lcom/shabakaty/downloader/xq0;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    return-object v5

    :cond_2
    const-string v5, "MutableMap.MutableEntry"

    .line 11
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "Map.Entry"

    .line 12
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "(Mutable)Map.(Mutable)Entry"

    .line 13
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    .line 14
    invoke-virtual/range {v6 .. v11}, Lcom/shabakaty/downloader/xq0;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->D()Lcom/shabakaty/downloader/i30;

    move-result-object v0

    const-string v5, "Array"

    .line 16
    invoke-virtual {p3, v5}, Lcom/shabakaty/downloader/zd2;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/q20;

    move-result-object p3

    const-string v6, "builtIns.array"

    .line 17
    invoke-static {p3, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p3, p0}, Lcom/shabakaty/downloader/i30;->a(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/wq0;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v5, v4, v2}, Lcom/shabakaty/downloader/re4;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    const-string v2, "Array<"

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/pr3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    const-string v2, "Array<out "

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/pr3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    const-string v2, "Array<(out) "

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/pr3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    .line 24
    invoke-virtual/range {v4 .. v9}, Lcom/shabakaty/downloader/xq0;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    return-object p3

    .line 25
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 p1, 0x22

    .line 26
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v4
.end method

.method public final s0(Lcom/shabakaty/downloader/sz4;ZLjava/lang/StringBuilder;Z)V
    .locals 9

    if-eqz p4, :cond_0

    const-string v0, "value-parameter"

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/shabakaty/downloader/sz4;->j()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p3, p1, v0}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/sz4;->l0()Z

    move-result v1

    const-string v2, "crossinline"

    invoke-virtual {p0, p3, v1, v2}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/sz4;->f0()Z

    move-result v1

    const-string v2, "noinline"

    invoke-virtual {p0, p3, v1, v2}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 8
    iget-object v2, v1, Lcom/shabakaty/downloader/dr0;->r:Lcom/shabakaty/downloader/hn3;

    sget-object v3, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v4, 0x10

    aget-object v4, v3, v4

    invoke-interface {v2, v1, v4}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/sz4;->c()Lcom/shabakaty/downloader/rq;

    move-result-object v1

    instance-of v5, v1, Lcom/shabakaty/downloader/l20;

    if-eqz v5, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/shabakaty/downloader/l20;

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/shabakaty/downloader/vc0;->H()Z

    move-result v0

    if-ne v0, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 11
    iget-object v5, v1, Lcom/shabakaty/downloader/dr0;->s:Lcom/shabakaty/downloader/hn3;

    const/16 v6, 0x11

    aget-object v6, v3, v6

    invoke-interface {v5, v1, v6}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v5, "actual"

    .line 12
    invoke-virtual {p0, p3, v1, v5}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    :cond_6
    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    const-string v5, "variable.type"

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/sz4;->s0()Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    if-nez v5, :cond_7

    move-object v6, v1

    goto :goto_3

    :cond_7
    move-object v6, v5

    :goto_3
    if-eqz v5, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    const-string v8, "vararg"

    .line 15
    invoke-virtual {p0, p3, v7, v8}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v0, :cond_9

    if-eqz p4, :cond_a

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->I()Z

    move-result v7

    if-nez v7, :cond_a

    .line 17
    :cond_9
    invoke-virtual {p0, p1, p3, v0}, Lcom/shabakaty/downloader/xq0;->r0(Lcom/shabakaty/downloader/uz4;Ljava/lang/StringBuilder;Z)V

    :cond_a
    if-eqz p2, :cond_b

    .line 18
    invoke-virtual {p0, p1, p3, p4}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    const-string p2, ": "

    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_b
    invoke-virtual {p0, v6}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/xq0;->V(Lcom/shabakaty/downloader/uz4;Ljava/lang/StringBuilder;)V

    .line 22
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->L()Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz v5, :cond_c

    const-string p2, " /*"

    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "*/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_c
    iget-object p2, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 25
    iget-object p4, p2, Lcom/shabakaty/downloader/dr0;->y:Lcom/shabakaty/downloader/hn3;

    const/16 v0, 0x17

    aget-object v1, v3, v0

    invoke-interface {p4, p2, v1}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/tm1;

    if-eqz p2, :cond_e

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->n()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Lcom/shabakaty/downloader/sz4;->E0()Z

    move-result p2

    goto :goto_5

    :cond_d
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->a(Lcom/shabakaty/downloader/sz4;)Z

    move-result p2

    :goto_5
    if-eqz p2, :cond_e

    const/4 v2, 0x1

    :cond_e
    if-eqz v2, :cond_f

    .line 27
    iget-object p2, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 28
    iget-object p4, p2, Lcom/shabakaty/downloader/dr0;->y:Lcom/shabakaty/downloader/hn3;

    aget-object v0, v3, v0

    invoke-interface {p4, p2, v0}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/tm1;

    .line 29
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, " = "

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    return-void
.end method

.method public t(Lcom/shabakaty/downloader/gi1;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gi1;->g()Ljava/util/List;

    move-result-object p1

    const-string v0, "fqName.pathSegments()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->I(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/pr3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/sz4;",
            ">;Z",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->D:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ea3;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 5
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->K()Lcom/shabakaty/downloader/wq0$l;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/shabakaty/downloader/wq0$l;->b(ILjava/lang/StringBuilder;)V

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/sz4;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->K()Lcom/shabakaty/downloader/wq0$l;

    move-result-object v5

    invoke-interface {v5, v4, v0, p2, p3}, Lcom/shabakaty/downloader/wq0$l;->a(Lcom/shabakaty/downloader/sz4;IILjava/lang/StringBuilder;)V

    .line 9
    invoke-virtual {p0, v4, v1, p3, v2}, Lcom/shabakaty/downloader/xq0;->s0(Lcom/shabakaty/downloader/sz4;ZLjava/lang/StringBuilder;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->K()Lcom/shabakaty/downloader/wq0$l;

    move-result-object v5

    invoke-interface {v5, v4, v0, p2, p3}, Lcom/shabakaty/downloader/wq0$l;->c(Lcom/shabakaty/downloader/sz4;IILjava/lang/StringBuilder;)V

    move v0, v3

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->K()Lcom/shabakaty/downloader/wq0$l;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/wq0$l;->d(ILjava/lang/StringBuilder;)V

    return-void
.end method

.method public u(Lcom/shabakaty/downloader/hw2;Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->H(Lcom/shabakaty/downloader/hw2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->J()Lcom/shabakaty/downloader/pr3;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/pr3;->s:Lcom/shabakaty/downloader/pr3;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    const-string p2, "<b>"

    const-string v0, "</b>"

    .line 3
    invoke-static {p2, p1, v0}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final u0(Lcom/shabakaty/downloader/mr0;Ljava/lang/StringBuilder;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/br0;->u:Lcom/shabakaty/downloader/br0;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/dr0;->n:Lcom/shabakaty/downloader/hn3;

    sget-object v3, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v4, 0xc

    aget-object v4, v3, v4

    invoke-interface {v2, v0, v4}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mr0;->d()Lcom/shabakaty/downloader/mr0;

    move-result-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/dr0;->o:Lcom/shabakaty/downloader/hn3;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-interface {v2, v0, v3}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/lr0;->k:Lcom/shabakaty/downloader/mr0;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mr0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/dr0;->x:Lcom/shabakaty/downloader/hn3;

    sget-object v3, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tm1;

    .line 4
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qe2;

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/xq0;->e0(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/qe2;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final v0(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xq0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/kt4;

    .line 4
    invoke-interface {v2}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    const-string v5, "typeParameter.upperBounds"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/m50;->V(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lcom/shabakaty/downloader/qe2;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v6

    const-string v7, "typeParameter.name"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/shabakaty/downloader/xq0;->u(Lcom/shabakaty/downloader/hw2;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "it"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_3

    const-string p1, " "

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "where"

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const-string v3, ", "

    move-object v2, p2

    .line 11
    invoke-static/range {v1 .. v9}, Lcom/shabakaty/downloader/m50;->e0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/Appendable;

    :cond_3
    return-void
.end method

.method public w(Lcom/shabakaty/downloader/qt4;)Ljava/lang/String;
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/xq0;->y(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p1, p2, v0, v1}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3, p4, v0, v1}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p5, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-object p2

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/xq0;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "!"

    .line 7
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final x0(Lcom/shabakaty/downloader/qe2;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->u(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qt4;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final y(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/xq0$b;

    invoke-direct {v7, p0}, Lcom/shabakaty/downloader/xq0$b;-><init>(Lcom/shabakaty/downloader/xq0;)V

    const-string v2, ", "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x3c

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/shabakaty/downloader/m50;->e0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/Appendable;

    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "?"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1
    invoke-static {p2, v0, v1, v2, v3}, Lcom/shabakaty/downloader/ne4;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {p2, v0, v2, v1}, Lcom/shabakaty/downloader/ne4;->B(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method
