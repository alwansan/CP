.class public final Lcom/shabakaty/downloader/an3;
.super Lcom/shabakaty/downloader/fe1;
.source "RawType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/zm3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/fe1;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    check-cast v0, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/fz2;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/fe1;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    if-nez p3, :cond_0

    .line 4
    sget-object p3, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    check-cast p3, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {p3, p1, p2}, Lcom/shabakaty/downloader/fz2;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    :cond_0
    return-void
.end method

.method public static final d1(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/qe2;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wq0;",
            "Lcom/shabakaty/downloader/qe2;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/qt4;

    .line 5
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/wq0;->w(Lcom/shabakaty/downloader/qt4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final e1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/shabakaty/downloader/re4;->M(Ljava/lang/CharSequence;CZI)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v2}, Lcom/shabakaty/downloader/re4;->k0(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, v3, v2}, Lcom/shabakaty/downloader/re4;->j0(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/an3;->c1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/fe1;

    move-result-object p1

    return-object p1
.end method

.method public X0(Z)Lcom/shabakaty/downloader/qw4;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/an3;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 3
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 5
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/an3;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public bridge synthetic Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/an3;->c1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/fe1;

    move-result-object p1

    return-object p1
.end method

.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 3

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/an3;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 6
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/an3;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public a1()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    return-object v0
.end method

.method public b1(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/cr0;)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/wq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/wq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {p2}, Lcom/shabakaty/downloader/cr0;->n()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "raw ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 8
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/shabakaty/downloader/wq0;->s(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/zd2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 10
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/an3;->d1(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/qe2;)Ljava/util/List;

    move-result-object p2

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 12
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/an3;->d1(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/qe2;)Ljava/util/List;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 13
    sget-object v8, Lcom/shabakaty/downloader/an3$a;->r:Lcom/shabakaty/downloader/an3$a;

    const/16 v9, 0x1e

    const-string v3, ", "

    move-object v2, p2

    invoke-static/range {v2 .. v9}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {p2, v10}, Lcom/shabakaty/downloader/m50;->D0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 15
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/x93;

    .line 17
    iget-object v6, v3, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 18
    check-cast v6, Ljava/lang/String;

    .line 19
    iget-object v3, v3, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 20
    check-cast v3, Ljava/lang/String;

    const-string v7, "out "

    .line 21
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/re4;->a0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "*"

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    const/4 v4, 0x0

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 22
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/an3;->e1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_7
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/an3;->e1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p2

    .line 25
    :cond_8
    invoke-static {p0}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lcom/shabakaty/downloader/wq0;->s(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/zd2;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/fe1;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/an3;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 3
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/b74;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 5
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, p1, v2}, Lcom/shabakaty/downloader/an3;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;Z)V

    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fe1;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/q20;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ym3;

    .line 3
    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ym3;-><init>(Lcom/shabakaty/downloader/ot4;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/q20;->A0(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    const-string v1, "classDescriptor.getMemberScope(RawSubstitution())"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fe1;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v1

    const-string v2, "Incorrect classifier: "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
