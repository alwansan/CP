.class public final Lcom/shabakaty/downloader/d64$b;
.super Ljava/lang/Object;
.source "signatureEnhancement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/d64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/h8;

.field public final b:Lcom/shabakaty/downloader/qe2;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Lcom/shabakaty/downloader/bg2;

.field public final f:Lcom/shabakaty/downloader/u8;

.field public final g:Z

.field public final h:Z

.field public final synthetic i:Lcom/shabakaty/downloader/d64;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d64;Lcom/shabakaty/downloader/h8;Lcom/shabakaty/downloader/qe2;Ljava/util/Collection;ZLcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/u8;ZZI)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/d64$b;->i:Lcom/shabakaty/downloader/d64;

    and-int/lit8 v0, p10, 0x40

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p8, 0x0

    :cond_0
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_1

    const/4 p9, 0x0

    :cond_1
    const-string p10, "fromOverride"

    .line 2
    invoke-static {p3, p10}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "containerApplicabilityType"

    invoke-static {p7, p10}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/d64$b;->i:Lcom/shabakaty/downloader/d64;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/d64$b;->a:Lcom/shabakaty/downloader/h8;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/d64$b;->b:Lcom/shabakaty/downloader/qe2;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/d64$b;->c:Ljava/util/Collection;

    .line 7
    iput-boolean p5, p0, Lcom/shabakaty/downloader/d64$b;->d:Z

    .line 8
    iput-object p6, p0, Lcom/shabakaty/downloader/d64$b;->e:Lcom/shabakaty/downloader/bg2;

    .line 9
    iput-object p7, p0, Lcom/shabakaty/downloader/d64$b;->f:Lcom/shabakaty/downloader/u8;

    .line 10
    iput-boolean p8, p0, Lcom/shabakaty/downloader/d64$b;->g:Z

    .line 11
    iput-boolean p9, p0, Lcom/shabakaty/downloader/d64$b;->h:Z

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/qw4;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/e82;->g:Lcom/shabakaty/downloader/fi1;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->c(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static synthetic d(Lcom/shabakaty/downloader/d64$b;Lcom/shabakaty/downloader/zs4;ZI)Lcom/shabakaty/downloader/d64$a;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/d64$b;->c(Lcom/shabakaty/downloader/zs4;Z)Lcom/shabakaty/downloader/d64$a;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/util/List;Lcom/shabakaty/downloader/d9;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;",
            "Lcom/shabakaty/downloader/d9;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fi1;

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method

.method public static final g(Lcom/shabakaty/downloader/d64$b;Ljava/util/ArrayList;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/kt4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d64$b;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/ls4;",
            ">;",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/bg2;",
            "Lcom/shabakaty/downloader/kt4;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/od0;->d(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bg2;

    move-result-object p3

    .line 2
    invoke-virtual {p3}, Lcom/shabakaty/downloader/bg2;->a()Lcom/shabakaty/downloader/p82;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/d64$b;->g:Z

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/u8;->w:Lcom/shabakaty/downloader/u8;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/u8;->v:Lcom/shabakaty/downloader/u8;

    .line 6
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/downloader/p82;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/a72;

    .line 7
    :goto_1
    new-instance v1, Lcom/shabakaty/downloader/ls4;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, p4, v2}, Lcom/shabakaty/downloader/ls4;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/a72;Lcom/shabakaty/downloader/kt4;Z)V

    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-boolean p4, p0, Lcom/shabakaty/downloader/d64$b;->h:Z

    if-eqz p4, :cond_2

    instance-of p4, p2, Lcom/shabakaty/downloader/zm3;

    if-eqz p4, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object p2

    const-string v1, "type.constructor.parameters"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p2}, Lcom/shabakaty/downloader/m50;->D0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/shabakaty/downloader/x93;

    .line 11
    iget-object v1, p4, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 12
    check-cast v1, Lcom/shabakaty/downloader/qt4;

    .line 13
    iget-object p4, p4, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 14
    check-cast p4, Lcom/shabakaty/downloader/kt4;

    .line 15
    invoke-interface {v1}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v2

    const-string v3, "arg.type"

    if-eqz v2, :cond_3

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/ls4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, p4, v3}, Lcom/shabakaty/downloader/ls4;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/a72;Lcom/shabakaty/downloader/kt4;Z)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_3
    invoke-interface {v1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p3, p4}, Lcom/shabakaty/downloader/d64$b;->g(Lcom/shabakaty/downloader/d64$b;Ljava/util/ArrayList;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/kt4;)V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/v13;
    .locals 9

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/u13;->t:Lcom/shabakaty/downloader/u13;

    sget-object v1, Lcom/shabakaty/downloader/u13;->s:Lcom/shabakaty/downloader/u13;

    instance-of v2, p1, Lcom/shabakaty/downloader/lg2;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    check-cast p1, Lcom/shabakaty/downloader/lg2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/n1;->getUpperBounds()Ljava/util/List;

    move-result-object v2

    const-string v4, "upperBounds"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/qe2;

    .line 4
    invoke-static {v5}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    goto/16 :goto_f

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n1;->getUpperBounds()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_5

    .line 7
    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/qe2;

    .line 8
    invoke-virtual {v5}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v5

    instance-of v8, v5, Lcom/shabakaty/downloader/fe1;

    if-eqz v8, :cond_6

    check-cast v5, Lcom/shabakaty/downloader/fe1;

    goto :goto_2

    :cond_6
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_7

    goto :goto_3

    .line 9
    :cond_7
    iget-object v8, v5, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 10
    invoke-virtual {v8}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v8

    .line 11
    iget-object v5, v5, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 12
    invoke-virtual {v5}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v5

    if-eq v8, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_5

    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_14

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n1;->getUpperBounds()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_8

    .line 15
    :cond_a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/qe2;

    .line 16
    instance-of v8, v5, Lcom/shabakaty/downloader/je1;

    if-eqz v8, :cond_c

    check-cast v5, Lcom/shabakaty/downloader/je1;

    .line 17
    iget-object v5, v5, Lcom/shabakaty/downloader/je1;->v:Lcom/shabakaty/downloader/qe2;

    .line 18
    invoke-static {v5}, Lcom/shabakaty/downloader/vd5;->s(Lcom/shabakaty/downloader/qe2;)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_b

    const/4 v2, 0x1

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_e

    .line 19
    new-instance p1, Lcom/shabakaty/downloader/v13;

    invoke-direct {p1, v0, v6}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    return-object p1

    .line 20
    :cond_e
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n1;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_b

    .line 22
    :cond_f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    .line 23
    instance-of v2, v0, Lcom/shabakaty/downloader/je1;

    if-eqz v2, :cond_11

    check-cast v0, Lcom/shabakaty/downloader/je1;

    .line 24
    iget-object v0, v0, Lcom/shabakaty/downloader/je1;->v:Lcom/shabakaty/downloader/qe2;

    .line 25
    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->s(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_10

    const/4 v7, 0x1

    :cond_12
    :goto_b
    if-eqz v7, :cond_13

    .line 26
    new-instance p1, Lcom/shabakaty/downloader/v13;

    invoke-direct {p1, v1, v6}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    return-object p1

    :cond_13
    return-object v3

    .line 27
    :cond_14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n1;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_c

    .line 29
    :cond_15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/qe2;

    const-string v3, "it"

    .line 30
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/vd5;->s(Lcom/shabakaty/downloader/qe2;)Z

    move-result v2

    xor-int/2addr v2, v6

    if-eqz v2, :cond_16

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_18

    goto :goto_e

    :cond_18
    move-object v0, v1

    .line 31
    :goto_e
    new-instance p1, Lcom/shabakaty/downloader/v13;

    .line 32
    invoke-direct {p1, v0, v7}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    return-object p1

    :cond_19
    :goto_f
    return-object v3
.end method

.method public final c(Lcom/shabakaty/downloader/zs4;Z)Lcom/shabakaty/downloader/d64$a;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/d64$b;->c:Ljava/util/Collection;

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/shabakaty/downloader/qe2;

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v6, v0, Lcom/shabakaty/downloader/d64$b;->e:Lcom/shabakaty/downloader/bg2;

    invoke-static {v0, v7, v4, v6, v5}, Lcom/shabakaty/downloader/d64$b;->g(Lcom/shabakaty/downloader/d64$b;Ljava/util/ArrayList;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/kt4;)V

    .line 7
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/d64$b;->b:Lcom/shabakaty/downloader/qe2;

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iget-object v7, v0, Lcom/shabakaty/downloader/d64$b;->e:Lcom/shabakaty/downloader/bg2;

    invoke-static {v0, v4, v2, v7, v5}, Lcom/shabakaty/downloader/d64$b;->g(Lcom/shabakaty/downloader/d64$b;Ljava/util/ArrayList;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/kt4;)V

    .line 11
    iget-boolean v2, v0, Lcom/shabakaty/downloader/d64$b;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/shabakaty/downloader/d64$b;->c:Ljava/util/Collection;

    .line 12
    instance-of v5, v2, Ljava/util/Collection;

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/qe2;

    .line 14
    sget-object v7, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    iget-object v8, v0, Lcom/shabakaty/downloader/d64$b;->b:Lcom/shabakaty/downloader/qe2;

    check-cast v7, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {v7, v5, v8}, Lcom/shabakaty/downloader/fz2;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    move-result v5

    xor-int/2addr v5, v6

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    .line 15
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 16
    :goto_4
    new-array v5, v2, [Lcom/shabakaty/downloader/o82;

    const/4 v6, 0x0

    :goto_5
    const-string v7, "<this>"

    if-ge v6, v2, :cond_5a

    if-nez v6, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .line 17
    :goto_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ls4;

    .line 18
    iget-object v10, v9, Lcom/shabakaty/downloader/ls4;->a:Lcom/shabakaty/downloader/qe2;

    .line 19
    iget-object v11, v9, Lcom/shabakaty/downloader/ls4;->b:Lcom/shabakaty/downloader/a72;

    .line 20
    iget-object v12, v9, Lcom/shabakaty/downloader/ls4;->c:Lcom/shabakaty/downloader/kt4;

    .line 21
    iget-boolean v9, v9, Lcom/shabakaty/downloader/ls4;->d:Z

    .line 22
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 24
    check-cast v15, Ljava/util/List;

    .line 25
    invoke-static {v15, v6}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shabakaty/downloader/ls4;

    if-nez v15, :cond_7

    const/4 v15, 0x0

    goto :goto_8

    .line 26
    :cond_7
    iget-object v15, v15, Lcom/shabakaty/downloader/ls4;->a:Lcom/shabakaty/downloader/qe2;

    :goto_8
    if-nez v15, :cond_8

    goto :goto_7

    .line 27
    :cond_8
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 28
    :cond_9
    sget-object v14, Lcom/shabakaty/downloader/uv2;->s:Lcom/shabakaty/downloader/uv2;

    sget-object v15, Lcom/shabakaty/downloader/uv2;->r:Lcom/shabakaty/downloader/uv2;

    move/from16 v16, v2

    sget-object v2, Lcom/shabakaty/downloader/u13;->s:Lcom/shabakaty/downloader/u13;

    move-object/from16 v17, v3

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v18, v4

    const/16 v4, 0xa

    invoke-static {v13, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v4

    .line 30
    move-object/from16 v4, v19

    check-cast v4, Lcom/shabakaty/downloader/qe2;

    .line 31
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/d64$b;->e(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/o82;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v20

    goto :goto_9

    .line 32
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v11

    .line 34
    move-object/from16 v11, v20

    check-cast v11, Lcom/shabakaty/downloader/o82;

    .line 35
    iget-object v11, v11, Lcom/shabakaty/downloader/o82;->b:Lcom/shabakaty/downloader/uv2;

    if-nez v11, :cond_b

    goto :goto_b

    .line 36
    :cond_b
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    move-object/from16 v11, v21

    goto :goto_a

    :cond_c
    move-object/from16 v21, v11

    .line 37
    invoke-static {v4}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 38
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 40
    move-object/from16 v1, v20

    check-cast v1, Lcom/shabakaty/downloader/o82;

    .line 41
    iget-object v1, v1, Lcom/shabakaty/downloader/o82;->a:Lcom/shabakaty/downloader/u13;

    if-nez v1, :cond_d

    goto :goto_d

    .line 42
    :cond_d
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    move-object/from16 v1, p1

    goto :goto_c

    .line 43
    :cond_e
    invoke-static {v11}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 44
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v13

    .line 46
    move-object/from16 v13, v19

    check-cast v13, Lcom/shabakaty/downloader/qe2;

    .line 47
    invoke-static {v13, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {v13}, Lcom/shabakaty/downloader/vd5;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v19

    if-nez v19, :cond_f

    goto :goto_f

    :cond_f
    move-object/from16 v13, v19

    .line 49
    :goto_f
    invoke-virtual {v0, v13}, Lcom/shabakaty/downloader/d64$b;->e(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/o82;

    move-result-object v13

    .line 50
    iget-object v13, v13, Lcom/shabakaty/downloader/o82;->a:Lcom/shabakaty/downloader/u13;

    if-nez v13, :cond_10

    goto :goto_10

    .line 51
    :cond_10
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    move-object/from16 v13, v20

    goto :goto_e

    .line 52
    :cond_11
    invoke-static {v11}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 53
    sget-object v11, Lcom/shabakaty/downloader/u13;->t:Lcom/shabakaty/downloader/u13;

    if-eqz v9, :cond_13

    if-nez v12, :cond_12

    const/4 v13, 0x0

    goto :goto_11

    :cond_12
    invoke-interface {v12}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v13

    :goto_11
    move-object/from16 v19, v5

    sget-object v5, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    if-ne v13, v5, :cond_14

    .line 54
    sget-object v5, Lcom/shabakaty/downloader/o82;->e:Lcom/shabakaty/downloader/o82;

    .line 55
    sget-object v5, Lcom/shabakaty/downloader/o82;->e:Lcom/shabakaty/downloader/o82;

    sget-object v5, Lcom/shabakaty/downloader/o82;->f:Lcom/shabakaty/downloader/o82;

    const/4 v9, 0x1

    move-object/from16 v27, v1

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    move/from16 v20, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object v9, v14

    const/4 v6, 0x1

    goto/16 :goto_38

    :cond_13
    move-object/from16 v19, v5

    .line 56
    :cond_14
    iget-object v5, v0, Lcom/shabakaty/downloader/d64$b;->e:Lcom/shabakaty/downloader/bg2;

    .line 57
    iget-object v5, v5, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 58
    iget-object v5, v5, Lcom/shabakaty/downloader/y72;->t:Lcom/shabakaty/downloader/z72;

    .line 59
    invoke-interface {v5}, Lcom/shabakaty/downloader/z72;->c()Z

    move-result v5

    if-eqz v8, :cond_1f

    .line 60
    iget-object v13, v0, Lcom/shabakaty/downloader/d64$b;->a:Lcom/shabakaty/downloader/h8;

    if-eqz v13, :cond_1f

    move/from16 v20, v6

    instance-of v6, v13, Lcom/shabakaty/downloader/kt4;

    if-nez v6, :cond_1e

    if-eqz v5, :cond_1e

    .line 61
    invoke-interface {v13}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v6

    iget-object v13, v0, Lcom/shabakaty/downloader/d64$b;->i:Lcom/shabakaty/downloader/d64;

    move-object/from16 v22, v3

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1c

    move-object/from16 v23, v7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v24, v6

    move-object v6, v7

    check-cast v6, Lcom/shabakaty/downloader/r8;

    move-object/from16 v25, v4

    .line 64
    iget-object v4, v13, Lcom/shabakaty/downloader/d64;->a:Lcom/shabakaty/downloader/w8;

    .line 65
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v26, v13

    const-string v13, "annotationDescriptor"

    .line 66
    invoke-static {v6, v13}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {v6}, Lcom/shabakaty/downloader/hr0;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;

    move-result-object v13

    if-nez v13, :cond_15

    move-object/from16 v27, v1

    move-object/from16 v28, v14

    goto :goto_13

    .line 68
    :cond_15
    invoke-interface {v13}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v13

    move-object/from16 v27, v1

    sget-object v1, Lcom/shabakaty/downloader/ta2;->c:Lcom/shabakaty/downloader/fi1;

    move-object/from16 v28, v14

    const-string v14, "TARGET_ANNOTATION"

    invoke-static {v1, v14}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object v1

    if-nez v1, :cond_16

    :goto_13
    const/4 v1, 0x0

    goto :goto_16

    .line 69
    :cond_16
    invoke-interface {v1}, Lcom/shabakaty/downloader/r8;->l()Ljava/util/Map;

    move-result-object v1

    .line 70
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/qb0;

    move-object/from16 v29, v1

    .line 73
    new-instance v1, Lcom/shabakaty/downloader/y8;

    invoke-direct {v1, v4}, Lcom/shabakaty/downloader/y8;-><init>(Lcom/shabakaty/downloader/w8;)V

    invoke-virtual {v4, v14, v1}, Lcom/shabakaty/downloader/w8;->a(Lcom/shabakaty/downloader/qb0;Lcom/shabakaty/downloader/hn1;)Ljava/util/List;

    move-result-object v1

    .line 74
    invoke-static {v13, v1}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v1, v29

    goto :goto_14

    .line 75
    :cond_17
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/u8;

    .line 76
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/4 v14, 0x1

    shl-int v13, v14, v13

    or-int/2addr v4, v13

    goto :goto_15

    .line 77
    :cond_18
    new-instance v1, Lcom/shabakaty/downloader/w8$a;

    invoke-direct {v1, v6, v4}, Lcom/shabakaty/downloader/w8$a;-><init>(Lcom/shabakaty/downloader/r8;I)V

    :goto_16
    if-nez v1, :cond_19

    goto :goto_17

    .line 78
    :cond_19
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w8$a;->a()Ljava/util/List;

    move-result-object v1

    .line 79
    sget-object v4, Lcom/shabakaty/downloader/u8;->v:Lcom/shabakaty/downloader/u8;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :goto_17
    const/4 v1, 0x1

    goto :goto_18

    :cond_1a
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_1b

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    move-object/from16 v7, v23

    move-object/from16 v6, v24

    move-object/from16 v4, v25

    move-object/from16 v13, v26

    move-object/from16 v1, v27

    move-object/from16 v14, v28

    goto/16 :goto_12

    :cond_1c
    move-object/from16 v27, v1

    move-object/from16 v25, v4

    move-object/from16 v23, v7

    move-object/from16 v28, v14

    .line 80
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    goto :goto_19

    :cond_1d
    new-instance v1, Lcom/shabakaty/downloader/e9;

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/e9;-><init>(Ljava/util/List;)V

    .line 81
    :goto_19
    invoke-interface {v10}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/nh3;->f(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object v1

    goto :goto_1c

    :cond_1e
    move-object/from16 v27, v1

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    :goto_1a
    move-object/from16 v23, v7

    move-object/from16 v28, v14

    goto :goto_1b

    :cond_1f
    move-object/from16 v27, v1

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    move/from16 v20, v6

    goto :goto_1a

    :goto_1b
    if-eqz v8, :cond_20

    .line 82
    iget-object v1, v0, Lcom/shabakaty/downloader/d64$b;->a:Lcom/shabakaty/downloader/h8;

    if-eqz v1, :cond_20

    .line 83
    invoke-interface {v1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v1

    invoke-interface {v10}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/nh3;->f(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object v1

    goto :goto_1c

    .line 84
    :cond_20
    invoke-interface {v10}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v1

    :goto_1c
    if-eqz v8, :cond_22

    .line 85
    iget-object v3, v0, Lcom/shabakaty/downloader/d64$b;->e:Lcom/shabakaty/downloader/bg2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bg2;->a()Lcom/shabakaty/downloader/p82;

    move-result-object v3

    if-nez v3, :cond_21

    const/4 v3, 0x0

    goto :goto_1d

    :cond_21
    iget-object v4, v0, Lcom/shabakaty/downloader/d64$b;->f:Lcom/shabakaty/downloader/u8;

    .line 86
    iget-object v3, v3, Lcom/shabakaty/downloader/p82;->a:Ljava/util/EnumMap;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/a72;

    goto :goto_1d

    :cond_22
    move-object/from16 v3, v21

    .line 87
    :goto_1d
    invoke-virtual {v10}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v4

    instance-of v6, v4, Lcom/shabakaty/downloader/kt4;

    if-eqz v6, :cond_23

    check-cast v4, Lcom/shabakaty/downloader/kt4;

    goto :goto_1e

    :cond_23
    const/4 v4, 0x0

    :goto_1e
    if-nez v4, :cond_24

    const/4 v4, 0x0

    goto :goto_1f

    :cond_24
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/d64$b;->b(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/v13;

    move-result-object v4

    :goto_1f
    if-nez v4, :cond_25

    new-instance v4, Lcom/shabakaty/downloader/x93;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v4, v7, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21

    .line 88
    :cond_25
    new-instance v6, Lcom/shabakaty/downloader/x93;

    .line 89
    new-instance v7, Lcom/shabakaty/downloader/v13;

    .line 90
    iget-boolean v13, v4, Lcom/shabakaty/downloader/v13;->b:Z

    .line 91
    invoke-direct {v7, v11, v13}, Lcom/shabakaty/downloader/v13;-><init>(Lcom/shabakaty/downloader/u13;Z)V

    .line 92
    iget-object v4, v4, Lcom/shabakaty/downloader/v13;->a:Lcom/shabakaty/downloader/u13;

    if-ne v4, v11, :cond_26

    const/4 v4, 0x1

    goto :goto_20

    :cond_26
    const/4 v4, 0x0

    .line 93
    :goto_20
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 94
    invoke-direct {v6, v7, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    .line 95
    :goto_21
    iget-object v6, v4, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 96
    check-cast v6, Lcom/shabakaty/downloader/v13;

    .line 97
    iget-object v4, v4, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 98
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 99
    iget-boolean v7, v0, Lcom/shabakaty/downloader/d64$b;->g:Z

    .line 100
    iget-object v13, v0, Lcom/shabakaty/downloader/d64$b;->i:Lcom/shabakaty/downloader/d64;

    .line 101
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v21, 0x0

    move/from16 v24, v8

    move-object/from16 v8, v21

    :goto_22
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v26, v14

    move-object/from16 v14, v21

    check-cast v14, Lcom/shabakaty/downloader/r8;

    .line 102
    invoke-virtual {v13, v14, v5, v7}, Lcom/shabakaty/downloader/d64;->b(Lcom/shabakaty/downloader/r8;ZZ)Lcom/shabakaty/downloader/v13;

    move-result-object v14

    if-nez v8, :cond_27

    move/from16 v21, v5

    move/from16 v29, v7

    goto :goto_23

    :cond_27
    if-eqz v14, :cond_2b

    .line 103
    invoke-static {v14, v8}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_28

    goto :goto_24

    :cond_28
    move/from16 v21, v5

    .line 104
    iget-boolean v5, v14, Lcom/shabakaty/downloader/v13;->b:Z

    move/from16 v29, v7

    if-eqz v5, :cond_29

    iget-boolean v7, v8, Lcom/shabakaty/downloader/v13;->b:Z

    if-nez v7, :cond_29

    goto :goto_25

    :cond_29
    if-nez v5, :cond_2a

    .line 105
    iget-boolean v5, v8, Lcom/shabakaty/downloader/v13;->b:Z

    if-eqz v5, :cond_2a

    :goto_23
    move-object v8, v14

    goto :goto_25

    :cond_2a
    const/4 v8, 0x0

    goto :goto_26

    :cond_2b
    :goto_24
    move/from16 v21, v5

    move/from16 v29, v7

    :goto_25
    move/from16 v5, v21

    move-object/from16 v14, v26

    move/from16 v7, v29

    goto :goto_22

    :cond_2c
    :goto_26
    if-nez v8, :cond_2d

    goto :goto_27

    :cond_2d
    if-nez v9, :cond_2e

    goto :goto_28

    :cond_2e
    :goto_27
    const/4 v8, 0x0

    :goto_28
    if-nez v8, :cond_39

    if-nez v6, :cond_30

    if-nez v3, :cond_2f

    const/4 v6, 0x0

    goto :goto_29

    .line 106
    :cond_2f
    iget-object v6, v3, Lcom/shabakaty/downloader/a72;->a:Lcom/shabakaty/downloader/v13;

    :cond_30
    :goto_29
    if-nez v12, :cond_31

    goto :goto_2a

    .line 107
    :cond_31
    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/d64$b;->b(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/v13;

    move-result-object v5

    if-nez v5, :cond_32

    :goto_2a
    const/4 v5, 0x0

    goto :goto_2b

    .line 108
    :cond_32
    iget-object v7, v5, Lcom/shabakaty/downloader/v13;->a:Lcom/shabakaty/downloader/u13;

    if-ne v7, v2, :cond_33

    .line 109
    sget-object v7, Lcom/shabakaty/downloader/u13;->r:Lcom/shabakaty/downloader/u13;

    const/4 v9, 0x2

    const/4 v12, 0x0

    invoke-static {v5, v7, v12, v9}, Lcom/shabakaty/downloader/v13;->a(Lcom/shabakaty/downloader/v13;Lcom/shabakaty/downloader/u13;ZI)Lcom/shabakaty/downloader/v13;

    move-result-object v5

    :cond_33
    :goto_2b
    if-nez v5, :cond_34

    goto :goto_2d

    :cond_34
    if-nez v6, :cond_35

    goto :goto_2c

    .line 110
    :cond_35
    iget-boolean v7, v5, Lcom/shabakaty/downloader/v13;->b:Z

    if-eqz v7, :cond_36

    iget-boolean v9, v6, Lcom/shabakaty/downloader/v13;->b:Z

    if-nez v9, :cond_36

    goto :goto_2d

    :cond_36
    if-nez v7, :cond_37

    .line 111
    iget-boolean v7, v6, Lcom/shabakaty/downloader/v13;->b:Z

    if-eqz v7, :cond_37

    goto :goto_2c

    .line 112
    :cond_37
    iget-object v7, v5, Lcom/shabakaty/downloader/v13;->a:Lcom/shabakaty/downloader/u13;

    iget-object v9, v6, Lcom/shabakaty/downloader/v13;->a:Lcom/shabakaty/downloader/u13;

    .line 113
    invoke-virtual {v7, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-gez v7, :cond_38

    goto :goto_2d

    .line 114
    :cond_38
    iget-object v7, v5, Lcom/shabakaty/downloader/v13;->a:Lcom/shabakaty/downloader/u13;

    iget-object v9, v6, Lcom/shabakaty/downloader/v13;->a:Lcom/shabakaty/downloader/u13;

    .line 115
    invoke-virtual {v7, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_3a

    :goto_2c
    move-object v6, v5

    goto :goto_2d

    :cond_39
    move-object v6, v8

    :cond_3a
    :goto_2d
    if-eqz v8, :cond_3b

    .line 116
    iget-object v3, v8, Lcom/shabakaty/downloader/v13;->a:Lcom/shabakaty/downloader/u13;

    if-ne v3, v11, :cond_3e

    goto :goto_30

    :cond_3b
    if-nez v4, :cond_3f

    if-nez v3, :cond_3c

    goto :goto_2e

    .line 117
    :cond_3c
    iget-boolean v3, v3, Lcom/shabakaty/downloader/a72;->c:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3d

    const/4 v3, 0x1

    goto :goto_2f

    :cond_3d
    :goto_2e
    const/4 v3, 0x0

    :goto_2f
    if-eqz v3, :cond_3e

    goto :goto_30

    :cond_3e
    const/4 v3, 0x0

    goto :goto_31

    :cond_3f
    :goto_30
    const/4 v3, 0x1

    .line 118
    :goto_31
    new-instance v5, Lcom/shabakaty/downloader/o82;

    if-nez v6, :cond_40

    const/4 v4, 0x0

    goto :goto_32

    .line 119
    :cond_40
    iget-object v4, v6, Lcom/shabakaty/downloader/v13;->a:Lcom/shabakaty/downloader/u13;

    .line 120
    :goto_32
    sget-object v7, Lcom/shabakaty/downloader/ua2;->l:Ljava/util/List;

    .line 121
    invoke-static {v7, v1, v15}, Lcom/shabakaty/downloader/d64$b;->f(Ljava/util/List;Lcom/shabakaty/downloader/d9;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 122
    sget-object v8, Lcom/shabakaty/downloader/ua2;->m:Ljava/util/List;

    move-object/from16 v9, v28

    .line 123
    invoke-static {v8, v1, v9}, Lcom/shabakaty/downloader/d64$b;->f(Ljava/util/List;Lcom/shabakaty/downloader/d9;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v7, :cond_42

    if-eqz v1, :cond_42

    .line 124
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    goto :goto_33

    :cond_41
    const/4 v7, 0x0

    goto :goto_34

    :cond_42
    :goto_33
    if-nez v7, :cond_43

    move-object v7, v1

    .line 125
    :cond_43
    :goto_34
    check-cast v7, Lcom/shabakaty/downloader/uv2;

    if-eqz v3, :cond_44

    .line 126
    invoke-static {v10}, Lcom/shabakaty/downloader/hu4;->i(Lcom/shabakaty/downloader/qe2;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    goto :goto_35

    :cond_44
    const/4 v1, 0x0

    :goto_35
    if-nez v6, :cond_45

    goto :goto_36

    .line 127
    :cond_45
    iget-boolean v3, v6, Lcom/shabakaty/downloader/v13;->b:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_46

    const/4 v3, 0x1

    goto :goto_37

    :cond_46
    :goto_36
    const/4 v3, 0x1

    const/4 v6, 0x0

    move v6, v3

    const/4 v3, 0x0

    .line 128
    :goto_37
    invoke-direct {v5, v4, v7, v1, v3}, Lcom/shabakaty/downloader/o82;-><init>(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZ)V

    .line 129
    :goto_38
    iget-boolean v1, v5, Lcom/shabakaty/downloader/o82;->d:Z

    xor-int/2addr v1, v6

    if-eqz v1, :cond_47

    move-object v1, v5

    goto :goto_39

    :cond_47
    const/4 v1, 0x0

    :goto_39
    if-nez v1, :cond_48

    const/4 v1, 0x0

    goto :goto_3a

    .line 130
    :cond_48
    iget-object v1, v1, Lcom/shabakaty/downloader/o82;->a:Lcom/shabakaty/downloader/u13;

    .line 131
    :goto_3a
    iget-object v3, v5, Lcom/shabakaty/downloader/o82;->a:Lcom/shabakaty/downloader/u13;

    .line 132
    iget-boolean v4, v0, Lcom/shabakaty/downloader/d64$b;->d:Z

    if-eqz v4, :cond_49

    if-eqz v24, :cond_49

    const/4 v4, 0x1

    goto :goto_3b

    :cond_49
    const/4 v4, 0x0

    :goto_3b
    move-object/from16 v6, v27

    .line 133
    invoke-static {v6, v1, v4}, Lcom/shabakaty/downloader/md0;->J(Ljava/util/Set;Lcom/shabakaty/downloader/u13;Z)Lcom/shabakaty/downloader/u13;

    move-result-object v7

    if-nez v7, :cond_4a

    goto :goto_40

    :cond_4a
    if-nez p2, :cond_4f

    .line 134
    iget-object v8, v0, Lcom/shabakaty/downloader/d64$b;->a:Lcom/shabakaty/downloader/h8;

    .line 135
    instance-of v10, v8, Lcom/shabakaty/downloader/sz4;

    if-nez v10, :cond_4b

    const/4 v8, 0x0

    :cond_4b
    check-cast v8, Lcom/shabakaty/downloader/sz4;

    if-nez v8, :cond_4c

    const/4 v8, 0x0

    goto :goto_3c

    .line 136
    :cond_4c
    invoke-interface {v8}, Lcom/shabakaty/downloader/sz4;->s0()Lcom/shabakaty/downloader/qe2;

    move-result-object v8

    :goto_3c
    if-eqz v8, :cond_4d

    const/4 v8, 0x1

    goto :goto_3d

    :cond_4d
    const/4 v8, 0x0

    :goto_3d
    if-eqz v8, :cond_4e

    if-eqz v24, :cond_4e

    if-ne v7, v2, :cond_4e

    goto :goto_3e

    :cond_4e
    const/4 v2, 0x0

    goto :goto_3f

    :cond_4f
    :goto_3e
    const/4 v2, 0x1

    :goto_3f
    if-nez v2, :cond_50

    goto :goto_41

    :cond_50
    :goto_40
    const/4 v7, 0x0

    .line 137
    :goto_41
    iget-object v2, v5, Lcom/shabakaty/downloader/o82;->b:Lcom/shabakaty/downloader/uv2;

    move-object/from16 v8, v25

    .line 138
    invoke-static {v8, v9, v15, v2, v4}, Lcom/shabakaty/downloader/md0;->K(Ljava/util/Set;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/uv2;

    if-ne v3, v1, :cond_52

    move-object/from16 v1, v23

    .line 139
    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    goto :goto_42

    :cond_51
    const/4 v6, 0x0

    goto :goto_43

    :cond_52
    move-object/from16 v1, v23

    :goto_42
    const/4 v6, 0x1

    .line 140
    :goto_43
    iget-boolean v5, v5, Lcom/shabakaty/downloader/o82;->c:Z

    if-nez v5, :cond_57

    .line 141
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_53

    goto :goto_44

    .line 142
    :cond_53
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_54
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/o82;

    .line 143
    iget-boolean v8, v8, Lcom/shabakaty/downloader/o82;->c:Z

    if-eqz v8, :cond_54

    const/4 v5, 0x1

    goto :goto_45

    :cond_55
    :goto_44
    const/4 v5, 0x0

    :goto_45
    if-eqz v5, :cond_56

    goto :goto_46

    :cond_56
    const/4 v5, 0x0

    goto :goto_47

    :cond_57
    :goto_46
    const/4 v5, 0x1

    :goto_47
    if-nez v7, :cond_58

    if-eqz v6, :cond_58

    .line 144
    invoke-static {v1, v3, v4}, Lcom/shabakaty/downloader/md0;->J(Ljava/util/Set;Lcom/shabakaty/downloader/u13;Z)Lcom/shabakaty/downloader/u13;

    move-result-object v1

    const/4 v3, 0x1

    .line 145
    invoke-static {v1, v2, v3, v5}, Lcom/shabakaty/downloader/md0;->l(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZ)Lcom/shabakaty/downloader/o82;

    move-result-object v1

    goto :goto_49

    :cond_58
    if-nez v7, :cond_59

    const/4 v1, 0x1

    goto :goto_48

    :cond_59
    const/4 v1, 0x0

    .line 146
    :goto_48
    invoke-static {v7, v2, v1, v5}, Lcom/shabakaty/downloader/md0;->l(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZ)Lcom/shabakaty/downloader/o82;

    move-result-object v1

    .line 147
    :goto_49
    aput-object v1, v19, v20

    add-int/lit8 v6, v20, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_5

    :cond_5a
    move-object/from16 v19, v5

    .line 148
    new-instance v1, Lcom/shabakaty/downloader/e64;

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/e64;-><init>([Lcom/shabakaty/downloader/o82;)V

    move-object/from16 v2, p1

    if-nez v2, :cond_5b

    const/4 v2, 0x0

    goto :goto_4a

    .line 149
    :cond_5b
    new-instance v3, Lcom/shabakaty/downloader/d64$b$d;

    invoke-direct {v3, v2, v1}, Lcom/shabakaty/downloader/d64$b$d;-><init>(Lcom/shabakaty/downloader/zs4;Lcom/shabakaty/downloader/tm1;)V

    move-object v2, v3

    .line 150
    :goto_4a
    iget-boolean v3, v0, Lcom/shabakaty/downloader/d64$b;->h:Z

    if-eqz v3, :cond_5e

    .line 151
    iget-object v3, v0, Lcom/shabakaty/downloader/d64$b;->b:Lcom/shabakaty/downloader/qe2;

    sget-object v4, Lcom/shabakaty/downloader/d64$b$a;->r:Lcom/shabakaty/downloader/d64$b$a;

    sget-object v5, Lcom/shabakaty/downloader/d64$b$b;->r:Lcom/shabakaty/downloader/d64$b$b;

    if-eqz v4, :cond_5d

    if-eqz v5, :cond_5c

    const/4 v6, 0x0

    .line 152
    invoke-static {v3, v4, v5, v6}, Lcom/shabakaty/downloader/eu4;->d(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/f94;)Z

    move-result v3

    goto :goto_4b

    :cond_5c
    const/4 v1, 0x0

    const/16 v2, 0x2d

    .line 153
    invoke-static {v2}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v1

    :cond_5d
    const/4 v1, 0x0

    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/shabakaty/downloader/eu4;->a(I)V

    throw v1

    .line 154
    :cond_5e
    iget-object v3, v0, Lcom/shabakaty/downloader/d64$b;->b:Lcom/shabakaty/downloader/qe2;

    sget-object v4, Lcom/shabakaty/downloader/d64$b$c;->r:Lcom/shabakaty/downloader/d64$b$c;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/eu4;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;)Z

    move-result v3

    .line 155
    :goto_4b
    iget-object v4, v0, Lcom/shabakaty/downloader/d64$b;->i:Lcom/shabakaty/downloader/d64;

    .line 156
    iget-object v4, v4, Lcom/shabakaty/downloader/d64;->c:Lcom/shabakaty/downloader/j82;

    .line 157
    iget-object v5, v0, Lcom/shabakaty/downloader/d64$b;->b:Lcom/shabakaty/downloader/qe2;

    if-nez v2, :cond_5f

    goto :goto_4c

    :cond_5f
    move-object v1, v2

    :goto_4c
    iget-boolean v2, v0, Lcom/shabakaty/downloader/d64$b;->h:Z

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v5}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6, v2}, Lcom/shabakaty/downloader/j82;->b(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/tm1;IZ)Lcom/shabakaty/downloader/j82$a;

    move-result-object v1

    .line 160
    iget-object v1, v1, Lcom/shabakaty/downloader/j82$a;->a:Lcom/shabakaty/downloader/qe2;

    if-nez v1, :cond_60

    .line 161
    new-instance v1, Lcom/shabakaty/downloader/d64$a;

    iget-object v2, v0, Lcom/shabakaty/downloader/d64$b;->b:Lcom/shabakaty/downloader/qe2;

    invoke-direct {v1, v2, v6, v3}, Lcom/shabakaty/downloader/d64$a;-><init>(Lcom/shabakaty/downloader/qe2;ZZ)V

    goto :goto_4d

    .line 162
    :cond_60
    new-instance v2, Lcom/shabakaty/downloader/d64$a;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4, v3}, Lcom/shabakaty/downloader/d64$a;-><init>(Lcom/shabakaty/downloader/qe2;ZZ)V

    move-object v1, v2

    :goto_4d
    return-object v1
.end method

.method public final e(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/o82;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->k(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/fe1;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/x93;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 5
    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/x93;

    invoke-direct {v1, p1, p1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, v1, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/qe2;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 10
    check-cast v1, Lcom/shabakaty/downloader/qe2;

    .line 11
    new-instance v8, Lcom/shabakaty/downloader/o82;

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/shabakaty/downloader/u13;->s:Lcom/shabakaty/downloader/u13;

    :goto_1
    move-object v4, v2

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/shabakaty/downloader/u13;->t:Lcom/shabakaty/downloader/u13;

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_2
    const-string v2, "type"

    .line 14
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lcom/shabakaty/downloader/eu4;->e(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    const-string v7, "readOnly"

    .line 16
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v7, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-static {v0}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    .line 18
    sget-object v7, Lcom/shabakaty/downloader/e82;->l:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Lcom/shabakaty/downloader/uv2;->r:Lcom/shabakaty/downloader/uv2;

    goto :goto_5

    .line 20
    :cond_4
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v1}, Lcom/shabakaty/downloader/eu4;->e(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "mutable"

    .line 22
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v1, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-static {v0}, Lcom/shabakaty/downloader/gr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/shabakaty/downloader/e82;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_6

    .line 25
    sget-object v0, Lcom/shabakaty/downloader/uv2;->s:Lcom/shabakaty/downloader/uv2;

    goto :goto_5

    :cond_6
    move-object v0, v3

    .line 26
    :goto_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v1

    instance-of v1, v1, Lcom/shabakaty/downloader/f03;

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    instance-of p1, p1, Lcom/shabakaty/downloader/rp0;

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :cond_8
    :goto_6
    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v2, v8

    move-object v3, v4

    move-object v4, v0

    .line 27
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/o82;-><init>(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZI)V

    return-object v8
.end method
