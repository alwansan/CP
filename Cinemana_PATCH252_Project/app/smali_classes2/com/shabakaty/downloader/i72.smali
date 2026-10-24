.class public final Lcom/shabakaty/downloader/i72;
.super Ljava/lang/Object;
.source "JavaIncompatibilityRulesOverridabilityCondition.kt"

# interfaces
.implements Lcom/shabakaty/downloader/e91;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/m72;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/shabakaty/downloader/xn1;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/m72;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    check-cast p0, Lcom/shabakaty/downloader/xn1;

    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u64;->e1()Lcom/shabakaty/downloader/t64;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    const-string v2, "subDescriptor.original.valueParameters"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/shabakaty/downloader/xn1;->a()Lcom/shabakaty/downloader/xn1;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v2

    const-string v3, "superDescriptor.original.valueParameters"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/m50;->D0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/x93;

    .line 4
    iget-object v3, v2, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 5
    check-cast v3, Lcom/shabakaty/downloader/sz4;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 7
    check-cast v2, Lcom/shabakaty/downloader/sz4;

    .line 8
    move-object v4, p1

    check-cast v4, Lcom/shabakaty/downloader/xn1;

    const-string v5, "subParameter"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/i72;->d(Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/sz4;)Lcom/shabakaty/downloader/wb2;

    move-result-object v3

    instance-of v3, v3, Lcom/shabakaty/downloader/wb2$c;

    const-string v4, "superParameter"

    .line 9
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/shabakaty/downloader/i72;->d(Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/sz4;)Lcom/shabakaty/downloader/wb2;

    move-result-object v2

    instance-of v2, v2, Lcom/shabakaty/downloader/wb2$c;

    if-eq v3, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static final d(Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/sz4;)Lcom/shabakaty/downloader/wb2;
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->l(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/t62;

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 5
    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/xn1;->a()Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    const-string v4, "f.original.valueParameters"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sz4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v4, "f.original.valueParameters.single().type"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->v(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wb2;

    move-result-object v0

    instance-of v4, v0, Lcom/shabakaty/downloader/wb2$c;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/shabakaty/downloader/wb2$c;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_3

    .line 6
    :cond_4
    iget-object v0, v0, Lcom/shabakaty/downloader/wb2$c;->j:Lcom/shabakaty/downloader/sb2;

    .line 7
    :goto_3
    sget-object v4, Lcom/shabakaty/downloader/sb2;->z:Lcom/shabakaty/downloader/sb2;

    if-eq v0, v4, :cond_5

    goto :goto_4

    .line 8
    :cond_5
    invoke-static {p0}, Lcom/shabakaty/downloader/to;->a(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 9
    :cond_6
    invoke-interface {v0}, Lcom/shabakaty/downloader/xn1;->a()Lcom/shabakaty/downloader/xn1;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v4

    const-string v5, "overridden.original.valueParameters"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/sz4;

    invoke-interface {v4}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    const-string v5, "overridden.original.valueParameters.single().type"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/shabakaty/downloader/vd5;->v(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wb2;

    move-result-object v4

    .line 10
    invoke-interface {v0}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    const-string v5, "overridden.containingDeclaration"

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    sget-object v5, Lcom/shabakaty/downloader/tb4$a;->J:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    instance-of v0, v4, Lcom/shabakaty/downloader/wb2$b;

    if-eqz v0, :cond_7

    check-cast v4, Lcom/shabakaty/downloader/wb2$b;

    .line 12
    iget-object v0, v4, Lcom/shabakaty/downloader/wb2$b;->j:Ljava/lang/String;

    const-string v4, "java/lang/Object"

    .line 13
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v0, 0x0

    :goto_5
    const-string v4, "valueParameterDescriptor.type"

    if-nez v0, :cond_f

    .line 14
    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_8

    goto :goto_8

    .line 15
    :cond_8
    invoke-interface {p0}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    instance-of v5, v0, Lcom/shabakaty/downloader/q20;

    if-eqz v5, :cond_9

    check-cast v0, Lcom/shabakaty/downloader/q20;

    goto :goto_6

    :cond_9
    move-object v0, v1

    :goto_6
    if-nez v0, :cond_a

    goto :goto_8

    .line 16
    :cond_a
    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p0

    const-string v5, "f.valueParameters"

    invoke-static {p0, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/sz4;

    invoke-interface {p0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    instance-of v5, p0, Lcom/shabakaty/downloader/q20;

    if-eqz v5, :cond_b

    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/q20;

    :cond_b
    if-nez v1, :cond_c

    goto :goto_8

    .line 17
    :cond_c
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->J(Lcom/shabakaty/downloader/q20;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object p0

    invoke-static {v1}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    :goto_7
    move v3, v2

    :goto_8
    if-eqz v3, :cond_e

    goto :goto_9

    .line 18
    :cond_e
    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->v(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wb2;

    move-result-object p0

    goto :goto_a

    .line 19
    :cond_f
    :goto_9
    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/downloader/hu4;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->v(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wb2;

    move-result-object p0

    :goto_a
    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/q20;)I
    .locals 7

    const-string v0, "superDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDescriptor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/tq;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/shabakaty/downloader/xn1;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {p2}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/to;->m:Lcom/shabakaty/downloader/to;

    move-object v3, p2

    check-cast v3, Lcom/shabakaty/downloader/xn1;

    invoke-interface {v3}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    const-string v5, "subDescriptor.name"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/to;->b(Lcom/shabakaty/downloader/hw2;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/z94;->a:Lcom/shabakaty/downloader/z94$a;

    invoke-interface {v3}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v4, Lcom/shabakaty/downloader/z94;->k:Ljava/util/List;

    .line 5
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/tq;

    invoke-static {v0}, Lcom/shabakaty/downloader/x94;->c(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v0

    .line 7
    invoke-interface {v3}, Lcom/shabakaty/downloader/xn1;->G0()Z

    move-result v4

    instance-of v5, p1, Lcom/shabakaty/downloader/xn1;

    if-eqz v5, :cond_2

    move-object v6, p1

    check-cast v6, Lcom/shabakaty/downloader/xn1;

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Lcom/shabakaty/downloader/xn1;->G0()Z

    move-result v6

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x0

    :goto_2
    xor-int/2addr v4, v1

    if-eqz v4, :cond_5

    if-eqz v0, :cond_9

    .line 8
    invoke-interface {v3}, Lcom/shabakaty/downloader/xn1;->G0()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    .line 9
    :cond_5
    instance-of v4, p3, Lcom/shabakaty/downloader/t62;

    if-eqz v4, :cond_8

    invoke-interface {v3}, Lcom/shabakaty/downloader/xn1;->n0()Lcom/shabakaty/downloader/xn1;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_8

    .line 10
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/x94;->d(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/rq;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_3

    .line 11
    :cond_7
    instance-of p3, v0, Lcom/shabakaty/downloader/xn1;

    if-eqz p3, :cond_9

    if-eqz v5, :cond_9

    .line 12
    check-cast v0, Lcom/shabakaty/downloader/xn1;

    invoke-static {v0}, Lcom/shabakaty/downloader/to;->a(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/xn1;

    move-result-object p3

    if-eqz p3, :cond_9

    const/4 p3, 0x2

    .line 13
    invoke-static {v3, v2, v2, p3}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Lcom/shabakaty/downloader/xn1;

    invoke-interface {v3}, Lcom/shabakaty/downloader/xn1;->a()Lcom/shabakaty/downloader/xn1;

    move-result-object v3

    const-string v4, "superDescriptor.original"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v2, p3}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    :cond_8
    :goto_3
    const/4 v1, 0x0

    :cond_9
    :goto_4
    const/4 p3, 0x3

    if-eqz v1, :cond_a

    return p3

    .line 14
    :cond_a
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/i72;->c(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Z

    move-result p1

    if-eqz p1, :cond_b

    return p3

    :cond_b
    const/4 p1, 0x4

    return p1
.end method
