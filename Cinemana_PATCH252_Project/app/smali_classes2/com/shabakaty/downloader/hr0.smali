.class public final Lcom/shabakaty/downloader/hr0;
.super Ljava/lang/Object;
.source "DescriptorUtils.kt"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "value"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/sz4;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/hr0$a;->a:Lcom/shabakaty/downloader/hr0$a;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/hr0$b;->r:Lcom/shabakaty/downloader/hr0$b;

    .line 4
    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/nh0;->d(Ljava/util/Collection;Lcom/shabakaty/downloader/nh0$c;Lcom/shabakaty/downloader/tm1;)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "ifAny(\n        listOf(th\u2026eclaresDefaultValue\n    )"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/shabakaty/downloader/tq;ZLcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/tq;
    .locals 1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string p3, "predicate"

    .line 1
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Lcom/shabakaty/downloader/lo3;

    invoke-direct {p3}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/shabakaty/downloader/ir0;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ir0;-><init>(Z)V

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/jr0;

    invoke-direct {p1, p3, p2}, Lcom/shabakaty/downloader/jr0;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/tm1;)V

    .line 5
    invoke-static {p0, v0, p1}, Lcom/shabakaty/downloader/nh0;->b(Ljava/util/Collection;Lcom/shabakaty/downloader/nh0$c;Lcom/shabakaty/downloader/nh0$d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/tq;

    return-object p0
.end method

.method public static final c(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public static final d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/r8;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    instance-of v0, p0, Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/q20;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lcom/shabakaty/downloader/g30;)Lcom/shabakaty/downloader/v20;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    .line 2
    instance-of v2, v1, Lcom/shabakaty/downloader/k93;

    if-eqz v2, :cond_1

    new-instance v0, Lcom/shabakaty/downloader/v20;

    check-cast v1, Lcom/shabakaty/downloader/k93;

    invoke-interface {v1}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v2, v1, Lcom/shabakaty/downloader/h30;

    if-eqz v2, :cond_3

    const-string v2, "owner"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shabakaty/downloader/g30;

    invoke-static {v1}, Lcom/shabakaty/downloader/hr0;->f(Lcom/shabakaty/downloader/g30;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/v20;->d(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/v20;

    move-result-object p0

    move-object v0, p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static final g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->i(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x4

    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object p0

    const-string v0, "getFqName(this)"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final i(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/ve2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/we2;->a:Lcom/shabakaty/downloader/j61;

    .line 2
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/nu2;->X(Lcom/shabakaty/downloader/j61;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/mo3;

    .line 3
    sget-object p0, Lcom/shabakaty/downloader/ve2$a;->a:Lcom/shabakaty/downloader/ve2$a;

    return-object p0
.end method

.method public static final j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->d(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object p0

    const-string v0, "getContainingModule(this)"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final k(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/l04;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qm0;",
            ")",
            "Lcom/shabakaty/downloader/l04<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/kr0;->r:Lcom/shabakaty/downloader/kr0;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/q04;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/t04;->B(Lcom/shabakaty/downloader/l04;I)Lcom/shabakaty/downloader/l04;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/vh3;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/vh3;

    invoke-interface {p0}, Lcom/shabakaty/downloader/vh3;->K0()Lcom/shabakaty/downloader/yh3;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
