.class public final Lcom/shabakaty/downloader/xq0$a;
.super Ljava/lang/Object;
.source "DescriptorRendererImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/um0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/um0<",
        "Lcom/shabakaty/downloader/qv4;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/xq0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xq0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ao3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/rm0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/ai3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getter"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/xq0$a;->o(Lcom/shabakaty/downloader/vh3;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/yh3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->x(Lcom/shabakaty/downloader/xq0;Lcom/shabakaty/downloader/yh3;Ljava/lang/StringBuilder;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/hs4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p2, p1, v1}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/i1;

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/i1;->v:Lcom/shabakaty/downloader/mr0;

    const-string v3, "typeAlias.visibility"

    .line 7
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p2}, Lcom/shabakaty/downloader/xq0;->u0(Lcom/shabakaty/downloader/mr0;Ljava/lang/StringBuilder;)Z

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->Y(Lcom/shabakaty/downloader/ir2;Ljava/lang/StringBuilder;)V

    const-string v2, "typealias"

    .line 9
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, p1, p2, v2}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/i1;->B()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/shabakaty/downloader/xq0;->q0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->S(Lcom/shabakaty/downloader/h30;Ljava/lang/StringBuilder;)V

    const-string v1, " = "

    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/shabakaty/downloader/js0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/js0;->p0()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public bridge synthetic e(Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0$a;->n(Lcom/shabakaty/downloader/xn1;Ljava/lang/StringBuilder;)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/q20;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v9, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    .line 4
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/w20;->u:Lcom/shabakaty/downloader/w20;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->I()Z

    move-result v1

    const-string v4, "companion object"

    const/4 v5, 0x0

    if-nez v1, :cond_12

    .line 7
    invoke-virtual {v9, p2, p1, v5}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v1

    const-string v6, "klass.visibility"

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, p2}, Lcom/shabakaty/downloader/xq0;->u0(Lcom/shabakaty/downloader/mr0;Ljava/lang/StringBuilder;)Z

    .line 9
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v1

    sget-object v6, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    if-ne v1, v6, :cond_2

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v1

    sget-object v6, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    if-eq v1, v6, :cond_4

    .line 10
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/w20;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v1

    sget-object v6, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    if-eq v1, v6, :cond_4

    .line 11
    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v1

    const-string v6, "klass.modality"

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Lcom/shabakaty/downloader/xq0;->O(Lcom/shabakaty/downloader/ir2;)Lcom/shabakaty/downloader/eu2;

    move-result-object v6

    invoke-virtual {v9, v1, p2, v6}, Lcom/shabakaty/downloader/xq0;->a0(Lcom/shabakaty/downloader/eu2;Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/eu2;)V

    .line 12
    :cond_4
    invoke-virtual {v9, p1, p2}, Lcom/shabakaty/downloader/xq0;->Y(Lcom/shabakaty/downloader/ir2;Ljava/lang/StringBuilder;)V

    .line 13
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lcom/shabakaty/downloader/br0;->y:Lcom/shabakaty/downloader/br0;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/shabakaty/downloader/h30;->T()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const-string v6, "inner"

    invoke-virtual {v9, p2, v1, v6}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 14
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lcom/shabakaty/downloader/br0;->A:Lcom/shabakaty/downloader/br0;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->Q0()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    const-string v6, "data"

    invoke-virtual {v9, p2, v1, v6}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 15
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lcom/shabakaty/downloader/br0;->B:Lcom/shabakaty/downloader/br0;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    const-string v6, "inline"

    invoke-virtual {v9, p2, v1, v6}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 16
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lcom/shabakaty/downloader/br0;->H:Lcom/shabakaty/downloader/br0;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->R()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    const-string v6, "value"

    invoke-virtual {v9, p2, v1, v6}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 17
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->F()Ljava/util/Set;

    move-result-object v1

    sget-object v6, Lcom/shabakaty/downloader/br0;->G:Lcom/shabakaty/downloader/br0;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->J()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    const-string v6, "fun"

    invoke-virtual {v9, p2, v1, v6}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 18
    instance-of v1, p1, Lcom/shabakaty/downloader/hs4;

    if-eqz v1, :cond_a

    const-string v1, "typealias"

    goto :goto_6

    .line 19
    :cond_a
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->F()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v1, v4

    goto :goto_6

    .line 20
    :cond_b
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_11

    if-eq v1, v3, :cond_10

    const/4 v6, 0x2

    if-eq v1, v6, :cond_f

    const/4 v6, 0x3

    if-eq v1, v6, :cond_e

    const/4 v6, 0x4

    if-eq v1, v6, :cond_d

    const/4 v6, 0x5

    if-ne v1, v6, :cond_c

    const-string v1, "object"

    goto :goto_6

    .line 21
    :cond_c
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    :cond_d
    const-string v1, "annotation class"

    goto :goto_6

    :cond_e
    const-string v1, "enum entry"

    goto :goto_6

    :cond_f
    const-string v1, "enum class"

    goto :goto_6

    :cond_10
    const-string v1, "interface"

    goto :goto_6

    :cond_11
    const-string v1, "class"

    .line 22
    :goto_6
    invoke-virtual {v9, v1}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_12
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->p(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 24
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->I()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v9, p2}, Lcom/shabakaty/downloader/xq0;->l0(Ljava/lang/StringBuilder;)V

    .line 25
    :cond_13
    invoke-virtual {v9, p1, p2, v3}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    goto :goto_7

    .line 26
    :cond_14
    iget-object v1, v9, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 27
    iget-object v6, v1, Lcom/shabakaty/downloader/dr0;->F:Lcom/shabakaty/downloader/hn3;

    sget-object v7, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v8, 0x1e

    aget-object v7, v7, v8

    invoke-interface {v6, v1, v7}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 28
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->I()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 29
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_15
    invoke-virtual {v9, p2}, Lcom/shabakaty/downloader/xq0;->l0(Ljava/lang/StringBuilder;)V

    .line 31
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v4, "of "

    .line 32
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-interface {v1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    const-string v4, "containingDeclaration.name"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Lcom/shabakaty/downloader/xq0;->u(Lcom/shabakaty/downloader/hw2;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_16
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->L()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    sget-object v4, Lcom/shabakaty/downloader/ca4;->c:Lcom/shabakaty/downloader/hw2;

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 35
    :cond_17
    invoke-virtual {v9}, Lcom/shabakaty/downloader/xq0;->I()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v9, p2}, Lcom/shabakaty/downloader/xq0;->l0(Ljava/lang/StringBuilder;)V

    .line 36
    :cond_18
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    const-string v4, "descriptor.name"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v3}, Lcom/shabakaty/downloader/xq0;->u(Lcom/shabakaty/downloader/hw2;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_7
    if-eqz v0, :cond_1a

    goto/16 :goto_9

    .line 37
    :cond_1a
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->B()Ljava/util/List;

    move-result-object v10

    const-string v0, "klass.declaredTypeParameters"

    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v9, v10, p2, v2}, Lcom/shabakaty/downloader/xq0;->q0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 39
    invoke-virtual {v9, p1, p2}, Lcom/shabakaty/downloader/xq0;->S(Lcom/shabakaty/downloader/h30;Ljava/lang/StringBuilder;)V

    .line 40
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/w20;->f()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 41
    iget-object v0, v9, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 42
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->i:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/4 v4, 0x7

    aget-object v2, v2, v4

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 43
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->Y()Lcom/shabakaty/downloader/l20;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, " "

    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v9, p2, v0, v5}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 46
    invoke-interface {v0}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v1

    const-string v2, "primaryConstructor.visibility"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, p2}, Lcom/shabakaty/downloader/xq0;->u0(Lcom/shabakaty/downloader/mr0;Ljava/lang/StringBuilder;)Z

    const-string v1, "constructor"

    .line 47
    invoke-virtual {v9, v1}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v1

    const-string v2, "primaryConstructor.valueParameters"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->M()Z

    move-result v0

    invoke-virtual {v9, v1, v0, p2}, Lcom/shabakaty/downloader/xq0;->t0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 49
    :cond_1b
    iget-object v0, v9, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 50
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->w:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v4, 0x15

    aget-object v2, v2, v4

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_8

    .line 51
    :cond_1c
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->H(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_8

    .line 52
    :cond_1d
    invoke-interface {p1}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object v0

    const-string p1, "klass.typeConstructor.supertypes"

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qe2;

    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->z(Lcom/shabakaty/downloader/qe2;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_8

    .line 54
    :cond_1e
    invoke-virtual {v9, p2}, Lcom/shabakaty/downloader/xq0;->l0(Ljava/lang/StringBuilder;)V

    const-string p1, ": "

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 56
    new-instance v7, Lcom/shabakaty/downloader/ar0;

    invoke-direct {v7, v9}, Lcom/shabakaty/downloader/ar0;-><init>(Lcom/shabakaty/downloader/xq0;)V

    const/16 v8, 0x3c

    const-string v2, ", "

    move-object v1, p2

    invoke-static/range {v0 .. v8}, Lcom/shabakaty/downloader/m50;->e0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/Appendable;

    .line 57
    :cond_1f
    :goto_8
    invoke-virtual {v9, v10, p2}, Lcom/shabakaty/downloader/xq0;->v0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 58
    :goto_9
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/k93;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/l93;

    .line 6
    iget-object v1, p1, Lcom/shabakaty/downloader/l93;->v:Lcom/shabakaty/downloader/fi1;

    const-string v2, "package-fragment"

    .line 7
    invoke-virtual {v0, v1, v2, p2}, Lcom/shabakaty/downloader/xq0;->h0(Lcom/shabakaty/downloader/fi1;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " in "

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/l93;->c()Lcom/shabakaty/downloader/nu2;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    .line 11
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public h(Lcom/shabakaty/downloader/fi3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setter"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/xq0$a;->o(Lcom/shabakaty/downloader/vh3;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/kt4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/shabakaty/downloader/xq0;->o0(Lcom/shabakaty/downloader/kt4;Ljava/lang/StringBuilder;Z)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/vc0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p2, p1, v1}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/dr0;->o:Lcom/shabakaty/downloader/hn3;

    sget-object v3, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v4, 0xd

    aget-object v4, v3, v4

    invoke-interface {v2, v1, v4}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/m20;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/m20;->I()Lcom/shabakaty/downloader/q20;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/q20;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v1

    sget-object v5, Lcom/shabakaty/downloader/eu2;->s:Lcom/shabakaty/downloader/eu2;

    if-eq v1, v5, :cond_1

    .line 8
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/yn1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yn1;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v1

    const-string v5, "constructor.visibility"

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/shabakaty/downloader/xq0;->u0(Lcom/shabakaty/downloader/mr0;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->X(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V

    .line 10
    iget-object v5, v0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 11
    iget-object v6, v5, Lcom/shabakaty/downloader/dr0;->O:Lcom/shabakaty/downloader/hn3;

    const/16 v7, 0x27

    aget-object v7, v3, v7

    invoke-interface {v6, v5, v7}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 12
    move-object v5, p1

    check-cast v5, Lcom/shabakaty/downloader/m20;

    .line 13
    iget-boolean v5, v5, Lcom/shabakaty/downloader/m20;->U:Z

    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    const-string v5, "constructor"

    .line 14
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_4
    move-object v5, p1

    check-cast v5, Lcom/shabakaty/downloader/m20;

    .line 16
    invoke-virtual {v5}, Lcom/shabakaty/downloader/m20;->d1()Lcom/shabakaty/downloader/q20;

    move-result-object v6

    const-string v7, "constructor.containingDeclaration"

    .line 17
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->G()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v1, :cond_5

    const-string v1, " "

    .line 19
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_5
    invoke-virtual {v0, v6, p2, v4}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    .line 21
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/yn1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yn1;->t()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/shabakaty/downloader/xq0;->q0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 22
    :cond_6
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/yn1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v7

    const-string v8, "constructor.valueParameters"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->M()Z

    move-result p1

    invoke-virtual {v0, v7, p1, p2}, Lcom/shabakaty/downloader/xq0;->t0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 23
    iget-object p1, v0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 24
    iget-object v7, p1, Lcom/shabakaty/downloader/dr0;->q:Lcom/shabakaty/downloader/hn3;

    const/16 v8, 0xf

    aget-object v3, v3, v8

    invoke-interface {v7, p1, v3}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 25
    iget-boolean p1, v5, Lcom/shabakaty/downloader/m20;->U:Z

    if-nez p1, :cond_a

    .line 26
    invoke-interface {v6}, Lcom/shabakaty/downloader/q20;->Y()Lcom/shabakaty/downloader/l20;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 27
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    const-string v3, "primaryConstructor.valueParameters"

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/shabakaty/downloader/sz4;

    .line 30
    invoke-interface {v6}, Lcom/shabakaty/downloader/sz4;->E0()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v6}, Lcom/shabakaty/downloader/sz4;->s0()Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_7

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_a

    const-string p1, " : "

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "this"

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 33
    sget-object v11, Lcom/shabakaty/downloader/zq0;->r:Lcom/shabakaty/downloader/zq0;

    const/16 v12, 0x18

    const-string v6, ", "

    const-string v7, "("

    const-string v8, ")"

    invoke-static/range {v5 .. v12}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_a
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->G()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 35
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yn1;->t()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->v0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 36
    :cond_b
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public k(Lcom/shabakaty/downloader/nu2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public l(Lcom/shabakaty/downloader/t93;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/og2;

    .line 6
    iget-object v1, p1, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    const-string v2, "package"

    .line 7
    invoke-virtual {v0, v1, v2, p2}, Lcom/shabakaty/downloader/xq0;->h0(Lcom/shabakaty/downloader/fi1;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " in context of "

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/og2;->t:Lcom/shabakaty/downloader/qu2;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, p2, v1}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    .line 12
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public m(Lcom/shabakaty/downloader/sz4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "builder"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/shabakaty/downloader/xq0;->s0(Lcom/shabakaty/downloader/sz4;ZLjava/lang/StringBuilder;Z)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public n(Lcom/shabakaty/downloader/xn1;Ljava/lang/StringBuilder;)V
    .locals 8

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->I()Z

    move-result v1

    const-string v2, "function.typeParameters"

    const/4 v3, 0x1

    if-nez v1, :cond_e

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->H()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p2, p1, v1}, Lcom/shabakaty/downloader/xq0;->Q(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/z8;)V

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v1

    const-string v4, "function.visibility"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/shabakaty/downloader/xq0;->u0(Lcom/shabakaty/downloader/mr0;Ljava/lang/StringBuilder;)Z

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->b0(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->Y(Lcom/shabakaty/downloader/ir2;Ljava/lang/StringBuilder;)V

    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->g0(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->E()Z

    move-result v1

    const-string v4, "suspend"

    if-eqz v1, :cond_b

    .line 11
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->W()Z

    move-result v1

    const-string v5, "functionDescriptor.overriddenDescriptors"

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/xn1;

    .line 14
    invoke-interface {v7}, Lcom/shabakaty/downloader/xn1;->W()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->B()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 15
    :goto_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->O0()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->f()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/xn1;

    .line 18
    invoke-interface {v7}, Lcom/shabakaty/downloader/xn1;->O0()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_9

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->B()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    const/4 v6, 0x1

    .line 19
    :cond_a
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->V()Z

    move-result v5

    const-string v7, "tailrec"

    invoke-virtual {v0, p2, v5, v7}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->H0()Z

    move-result v5

    invoke-virtual {v0, p2, v5, v4}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 21
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->z()Z

    move-result v4

    const-string v5, "inline"

    invoke-virtual {v0, p2, v4, v5}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "infix"

    .line 22
    invoke-virtual {v0, p2, v6, v4}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "operator"

    .line 23
    invoke-virtual {v0, p2, v1, v4}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_5

    .line 24
    :cond_b
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->H0()Z

    move-result v1

    invoke-virtual {v0, p2, v1, v4}, Lcom/shabakaty/downloader/xq0;->c0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 25
    :goto_5
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->X(Lcom/shabakaty/downloader/tq;Ljava/lang/StringBuilder;)V

    .line 26
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xq0;->L()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 27
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->G0()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "/*isHiddenToOvercomeSignatureClash*/ "

    .line 28
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_c
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->L0()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "fun"

    .line 31
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xq0;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->t()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, v3}, Lcom/shabakaty/downloader/xq0;->q0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->j0(Lcom/shabakaty/downloader/rq;Ljava/lang/StringBuilder;)V

    .line 34
    :cond_e
    invoke-virtual {v0, p1, p2, v3}, Lcom/shabakaty/downloader/xq0;->d0(Lcom/shabakaty/downloader/qm0;Ljava/lang/StringBuilder;Z)V

    .line 35
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v1

    const-string v3, "function.valueParameters"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->M()Z

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Lcom/shabakaty/downloader/xq0;->t0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->k0(Lcom/shabakaty/downloader/rq;Ljava/lang/StringBuilder;)V

    .line 37
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    .line 38
    iget-object v3, v0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 39
    iget-object v4, v3, Lcom/shabakaty/downloader/dr0;->l:Lcom/shabakaty/downloader/hn3;

    sget-object v5, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v6, 0xa

    aget-object v6, v5, v6

    invoke-interface {v4, v3, v6}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_11

    .line 40
    iget-object v3, v0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 41
    iget-object v4, v3, Lcom/shabakaty/downloader/dr0;->k:Lcom/shabakaty/downloader/hn3;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-interface {v4, v3, v5}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v1, :cond_f

    .line 42
    invoke-static {v1}, Lcom/shabakaty/downloader/zd2;->P(Lcom/shabakaty/downloader/qe2;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    const-string v3, ": "

    .line 43
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_10

    const-string v1, "[NULL]"

    goto :goto_6

    :cond_10
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_11
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->t()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->v0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final o(Lcom/shabakaty/downloader/vh3;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xq0;->c:Lcom/shabakaty/downloader/dr0;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/dr0;->G:Lcom/shabakaty/downloader/hn3;

    sget-object v2, Lcom/shabakaty/downloader/dr0;->W:[Lcom/shabakaty/downloader/jd2;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xh3;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-eq v0, p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xq0$a;->n(Lcom/shabakaty/downloader/xn1;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xq0;->Y(Lcom/shabakaty/downloader/ir2;Ljava/lang/StringBuilder;)V

    const-string v0, " for "

    .line 8
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object p3, p0, Lcom/shabakaty/downloader/xq0$a;->a:Lcom/shabakaty/downloader/xq0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/vh3;->K0()Lcom/shabakaty/downloader/yh3;

    move-result-object p1

    const-string v0, "descriptor.correspondingProperty"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/shabakaty/downloader/xq0;->x(Lcom/shabakaty/downloader/xq0;Lcom/shabakaty/downloader/yh3;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
