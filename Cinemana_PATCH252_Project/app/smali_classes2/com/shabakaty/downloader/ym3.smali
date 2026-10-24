.class public final Lcom/shabakaty/downloader/ym3;
.super Lcom/shabakaty/downloader/tt4;
.source "RawType.kt"


# static fields
.field public static final c:Lcom/shabakaty/downloader/i82;

.field public static final d:Lcom/shabakaty/downloader/i82;


# instance fields
.field public final b:Lcom/shabakaty/downloader/ot4;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v4

    sget-object v5, Lcom/shabakaty/downloader/l82;->t:Lcom/shabakaty/downloader/l82;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/i82;->b(Lcom/shabakaty/downloader/l82;)Lcom/shabakaty/downloader/i82;

    move-result-object v4

    sput-object v4, Lcom/shabakaty/downloader/ym3;->c:Lcom/shabakaty/downloader/i82;

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/l82;->s:Lcom/shabakaty/downloader/l82;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/i82;->b(Lcom/shabakaty/downloader/l82;)Lcom/shabakaty/downloader/i82;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ym3;->d:Lcom/shabakaty/downloader/i82;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ot4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/tt4;-><init>()V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ot4;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ot4;-><init>(Lcom/shabakaty/downloader/ym3;)V

    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/ym3;->b:Lcom/shabakaty/downloader/ot4;

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/st4;

    .line 2
    new-instance v8, Lcom/shabakaty/downloader/i82;

    sget-object v2, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/i82;-><init>(Lcom/shabakaty/downloader/du4;Lcom/shabakaty/downloader/l82;ZLjava/util/Set;Lcom/shabakaty/downloader/b74;I)V

    invoke-virtual {p0, p1, v8}, Lcom/shabakaty/downloader/ym3;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    return-object v0
.end method

.method public final g(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    const-string v1, "parameter"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "erasedUpperBound"

    invoke-static {p3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p2, Lcom/shabakaty/downloader/i82;->b:Lcom/shabakaty/downloader/l82;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x2

    if-ne v1, p1, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/st4;

    invoke-direct {p1, v0, p3}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v1

    .line 6
    iget-boolean v1, v1, Lcom/shabakaty/downloader/xz4;->s:Z

    if-nez v1, :cond_2

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/st4;

    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zd2;->p()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    move-object p1, p2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    const-string v1, "erasedUpperBound.constructor.parameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/st4;

    sget-object p2, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/s82;->a(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final h(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/x93;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/b74;",
            "Lcom/shabakaty/downloader/q20;",
            "Lcom/shabakaty/downloader/i82;",
            ")",
            "Lcom/shabakaty/downloader/x93<",
            "Lcom/shabakaty/downloader/b74;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    new-instance p3, Lcom/shabakaty/downloader/x93;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->A(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/qt4;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/st4;

    invoke-interface {p2}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v1

    invoke-interface {p2}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p2

    const-string v2, "componentTypeProjection.type"

    invoke-static {p2, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/ym3;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    .line 8
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/se2;->g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    .line 9
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    new-instance p3, Lcom/shabakaty/downloader/x93;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    const-string p2, "Raw error type: "

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    new-instance p3, Lcom/shabakaty/downloader/x93;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 13
    :cond_2
    invoke-interface {p2, p0}, Lcom/shabakaty/downloader/q20;->A0(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/mr2;

    move-result-object v4

    const-string v0, "declaration.getMemberScope(this)"

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    invoke-interface {p2}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    const-string v2, "declaration.typeConstructor"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p2}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v2

    const-string v3, "declaration.typeConstructor.parameters"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 18
    check-cast v5, Lcom/shabakaty/downloader/kt4;

    const-string v6, "parameter"

    .line 19
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v6, p0, Lcom/shabakaty/downloader/ym3;->b:Lcom/shabakaty/downloader/ot4;

    const/4 v7, 0x1

    .line 21
    invoke-virtual {v6, v5, v7, p3}, Lcom/shabakaty/downloader/ot4;->b(Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    const-string v7, "fun computeProjection(\n \u2026er, attr)\n        }\n    }"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v5, p3, v6}, Lcom/shabakaty/downloader/ym3;->g(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v5

    .line 23
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v5

    .line 25
    new-instance v6, Lcom/shabakaty/downloader/ym3$a;

    invoke-direct {v6, p2, p0, p1, p3}, Lcom/shabakaty/downloader/ym3$a;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/ym3;Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/i82;)V

    move-object v2, v3

    move v3, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/se2;->i(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    .line 26
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    new-instance p3, Lcom/shabakaty/downloader/x93;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/kt4;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ym3;->b:Lcom/shabakaty/downloader/ot4;

    check-cast v0, Lcom/shabakaty/downloader/kt4;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lcom/shabakaty/downloader/ot4;->b(Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v0, "typeParameterUpperBoundE\u2026tion, isRaw = true, attr)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ym3;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    instance-of p2, v0, Lcom/shabakaty/downloader/q20;

    if-eqz p2, :cond_4

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->A(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p2

    .line 6
    instance-of v1, p2, Lcom/shabakaty/downloader/q20;

    if-eqz v1, :cond_3

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/q20;

    sget-object v2, Lcom/shabakaty/downloader/ym3;->c:Lcom/shabakaty/downloader/i82;

    invoke-virtual {p0, v1, v0, v2}, Lcom/shabakaty/downloader/ym3;->h(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/x93;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 9
    check-cast v1, Lcom/shabakaty/downloader/b74;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->A(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    check-cast p2, Lcom/shabakaty/downloader/q20;

    sget-object v2, Lcom/shabakaty/downloader/ym3;->d:Lcom/shabakaty/downloader/i82;

    invoke-virtual {p0, p1, p2, v2}, Lcom/shabakaty/downloader/ym3;->h(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/x93;

    move-result-object p1

    .line 13
    iget-object p2, p1, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 14
    check-cast p2, Lcom/shabakaty/downloader/b74;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v1, p2}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/an3;

    invoke-direct {p1, v1, p2}, Lcom/shabakaty/downloader/an3;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    :goto_1
    return-object p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For some reason declaration for upper bound is not a class but \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\" while for lower it\'s \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected declaration kind: "

    .line 22
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
