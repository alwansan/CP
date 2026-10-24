.class public final Lcom/shabakaty/downloader/q41;
.super Ljava/lang/Object;
.source "ErasedOverridabilityCondition.kt"

# interfaces
.implements Lcom/shabakaty/downloader/e91;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q41$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public b(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/q20;)I
    .locals 6

    const-string p3, "superDescriptor"

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "subDescriptor"

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p3, p2, Lcom/shabakaty/downloader/m72;

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p3, :cond_a

    move-object p3, p2

    check-cast p3, Lcom/shabakaty/downloader/m72;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/yn1;->t()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/a93;->i(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Lcom/shabakaty/downloader/a93$c;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/shabakaty/downloader/a93$c;->c()Lcom/shabakaty/downloader/a93$c$a;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-virtual {p3}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v2

    const-string v4, "subDescriptor.valueParameters"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/q41$b;->r:Lcom/shabakaty/downloader/q41$b;

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/t04;->G(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v2

    .line 4
    iget-object v4, p3, Lcom/shabakaty/downloader/yn1;->x:Lcom/shabakaty/downloader/qe2;

    .line 5
    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/t04;->I(Lcom/shabakaty/downloader/l04;Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object v2

    .line 7
    iget-object p3, p3, Lcom/shabakaty/downloader/yn1;->y:Lcom/shabakaty/downloader/ao3;

    if-nez p3, :cond_3

    move-object p3, v3

    goto :goto_1

    .line 8
    :cond_3
    invoke-interface {p3}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p3

    :goto_1
    invoke-static {p3}, Lcom/shabakaty/downloader/iq6;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/shabakaty/downloader/l04;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 9
    invoke-static {p3}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object p3

    aput-object p3, v4, v0

    invoke-static {v4}, Lcom/shabakaty/downloader/q04;->z([Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object p3

    invoke-static {p3}, Lcom/shabakaty/downloader/q04;->w(Lcom/shabakaty/downloader/l04;)Lcom/shabakaty/downloader/l04;

    move-result-object p3

    .line 10
    check-cast p3, Lcom/shabakaty/downloader/ae1;

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/ae1$a;

    invoke-direct {v2, p3}, Lcom/shabakaty/downloader/ae1$a;-><init>(Lcom/shabakaty/downloader/ae1;)V

    .line 12
    :cond_4
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ae1$a;->a()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ae1$a;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/qe2;

    .line 14
    invoke-virtual {p3}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_5

    invoke-virtual {p3}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p3

    instance-of p3, p3, Lcom/shabakaty/downloader/an3;

    if-nez p3, :cond_5

    const/4 p3, 0x1

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_3

    :cond_6
    const/4 p3, 0x0

    :goto_3
    if-eqz p3, :cond_7

    return v1

    .line 15
    :cond_7
    new-instance p3, Lcom/shabakaty/downloader/ym3;

    .line 16
    invoke-direct {p3, v3}, Lcom/shabakaty/downloader/ym3;-><init>(Lcom/shabakaty/downloader/ot4;)V

    .line 17
    new-instance v2, Lcom/shabakaty/downloader/wt4;

    invoke-direct {v2, p3}, Lcom/shabakaty/downloader/wt4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    .line 18
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/zf4;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rq;

    if-nez p1, :cond_8

    return v1

    .line 19
    :cond_8
    instance-of p3, p1, Lcom/shabakaty/downloader/t64;

    if-eqz p3, :cond_9

    move-object p3, p1

    check-cast p3, Lcom/shabakaty/downloader/t64;

    invoke-interface {p3}, Lcom/shabakaty/downloader/rq;->t()Ljava/util/List;

    move-result-object v2

    const-string v3, "erasedSuper.typeParameters"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_9

    .line 20
    invoke-interface {p3}, Lcom/shabakaty/downloader/t64;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object p1

    sget-object p3, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-interface {p1, p3}, Lcom/shabakaty/downloader/xn1$a;->k(Ljava/util/List;)Lcom/shabakaty/downloader/xn1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 21
    :cond_9
    sget-object p3, Lcom/shabakaty/downloader/a93;->d:Lcom/shabakaty/downloader/a93;

    invoke-virtual {p3, p1, p2, v5}, Lcom/shabakaty/downloader/a93;->n(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;Z)Lcom/shabakaty/downloader/a93$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/a93$c;->c()Lcom/shabakaty/downloader/a93$c$a;

    move-result-object p1

    const-string p2, "DEFAULT.isOverridableByW\u2026Descriptor, false).result"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object p2, Lcom/shabakaty/downloader/q41$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-ne p1, v0, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v0, 0x4

    :goto_5
    return v0
.end method
