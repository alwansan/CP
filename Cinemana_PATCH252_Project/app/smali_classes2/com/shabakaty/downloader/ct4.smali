.class public final Lcom/shabakaty/downloader/ct4;
.super Ljava/lang/Object;
.source "IntersectionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ct4$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/ct4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ct4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ct4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ct4;->a:Lcom/shabakaty/downloader/ct4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Lcom/shabakaty/downloader/hn1;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/b74;",
            ">;",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/b74;",
            "-",
            "Lcom/shabakaty/downloader/b74;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/b74;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, "filteredTypes.iterator()"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/b74;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/b74;

    if-eq v5, v1, :cond_3

    const-string v6, "lower"

    .line 7
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "upper"

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v5, v1}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_4
    :goto_2
    if-eqz v3, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final b(Ljava/util/List;)Lcom/shabakaty/downloader/b74;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/b74;",
            ">;)",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    instance-of v3, v3, Lcom/shabakaty/downloader/g32;

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "type.constructor.supertypes"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Lcom/shabakaty/downloader/qe2;

    const-string v6, "it"

    .line 9
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/rm3;->A(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v5

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v5

    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/ct4$a;->r:Lcom/shabakaty/downloader/ct4$a;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qw4;

    .line 14
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/ct4$a;->f(Lcom/shabakaty/downloader/qw4;)Lcom/shabakaty/downloader/ct4$a;

    move-result-object p1

    goto :goto_2

    .line 15
    :cond_4
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "<this>"

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Lcom/shabakaty/downloader/b74;

    .line 18
    sget-object v6, Lcom/shabakaty/downloader/ct4$a;->u:Lcom/shabakaty/downloader/ct4$a;

    if-ne p1, v6, :cond_6

    .line 19
    instance-of v6, v3, Lcom/shabakaty/downloader/xy2;

    if-eqz v6, :cond_5

    check-cast v3, Lcom/shabakaty/downloader/xy2;

    .line 20
    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v5, Lcom/shabakaty/downloader/xy2;

    .line 22
    iget-object v7, v3, Lcom/shabakaty/downloader/xy2;->s:Lcom/shabakaty/downloader/yv;

    .line 23
    iget-object v8, v3, Lcom/shabakaty/downloader/xy2;->t:Lcom/shabakaty/downloader/zy2;

    .line 24
    iget-object v9, v3, Lcom/shabakaty/downloader/xy2;->u:Lcom/shabakaty/downloader/qw4;

    .line 25
    iget-object v10, v3, Lcom/shabakaty/downloader/xy2;->v:Lcom/shabakaty/downloader/d9;

    .line 26
    iget-boolean v11, v3, Lcom/shabakaty/downloader/xy2;->w:Z

    const/4 v12, 0x1

    move-object v6, v5

    .line 27
    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/xy2;-><init>(Lcom/shabakaty/downloader/yv;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/d9;ZZ)V

    move-object v3, v5

    .line 28
    :cond_5
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/nh3;->C(Lcom/shabakaty/downloader/b74;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v3

    .line 29
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 30
    :cond_7
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v2, :cond_8

    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->p0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    goto/16 :goto_7

    .line 31
    :cond_8
    new-instance p1, Lcom/shabakaty/downloader/dt4;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/dt4;-><init>(Ljava/util/Set;)V

    .line 32
    new-instance p1, Lcom/shabakaty/downloader/et4;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/et4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/ct4;->a(Ljava/util/Collection;Lcom/shabakaty/downloader/hn1;)Ljava/util/Collection;

    move-result-object p1

    .line 33
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    move-object v2, v3

    goto/16 :goto_6

    .line 35
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 38
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/b74;

    check-cast v2, Lcom/shabakaty/downloader/b74;

    if-eqz v2, :cond_d

    if-nez v6, :cond_a

    goto :goto_5

    .line 40
    :cond_a
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v7

    .line 41
    invoke-virtual {v6}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v8

    .line 42
    instance-of v9, v7, Lcom/shabakaty/downloader/r22;

    if-eqz v9, :cond_b

    instance-of v10, v8, Lcom/shabakaty/downloader/r22;

    if-eqz v10, :cond_b

    .line 43
    check-cast v7, Lcom/shabakaty/downloader/r22;

    check-cast v8, Lcom/shabakaty/downloader/r22;

    .line 44
    iget-object v2, v7, Lcom/shabakaty/downloader/r22;->c:Ljava/util/Set;

    iget-object v6, v8, Lcom/shabakaty/downloader/r22;->c:Ljava/util/Set;

    .line 45
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "other"

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->A0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 47
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 48
    new-instance v6, Lcom/shabakaty/downloader/r22;

    .line 49
    iget-wide v8, v7, Lcom/shabakaty/downloader/r22;->a:J

    .line 50
    iget-object v7, v7, Lcom/shabakaty/downloader/r22;->b:Lcom/shabakaty/downloader/nu2;

    .line 51
    invoke-direct {v6, v8, v9, v7, v2}, Lcom/shabakaty/downloader/r22;-><init>(JLcom/shabakaty/downloader/nu2;Ljava/util/Set;)V

    .line 52
    sget v2, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v2, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-static {v2, v6, v4}, Lcom/shabakaty/downloader/se2;->d(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/r22;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    goto :goto_4

    :cond_b
    if-eqz v9, :cond_c

    .line 53
    check-cast v7, Lcom/shabakaty/downloader/r22;

    .line 54
    iget-object v2, v7, Lcom/shabakaty/downloader/r22;->c:Ljava/util/Set;

    .line 55
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v2, v6

    goto :goto_4

    .line 56
    :cond_c
    instance-of v6, v8, Lcom/shabakaty/downloader/r22;

    if-eqz v6, :cond_d

    check-cast v8, Lcom/shabakaty/downloader/r22;

    .line 57
    iget-object v6, v8, Lcom/shabakaty/downloader/r22;->c:Ljava/util/Set;

    .line 58
    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_4

    :cond_d
    :goto_5
    move-object v2, v3

    goto :goto_4

    .line 59
    :cond_e
    check-cast v2, Lcom/shabakaty/downloader/b74;

    :goto_6
    if-nez v2, :cond_10

    .line 60
    new-instance v0, Lcom/shabakaty/downloader/ft4;

    sget-object v2, Lcom/shabakaty/downloader/ez2;->b:Lcom/shabakaty/downloader/ez2$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v2, Lcom/shabakaty/downloader/ez2$a;->b:Lcom/shabakaty/downloader/fz2;

    .line 62
    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ft4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/ct4;->a(Ljava/util/Collection;Lcom/shabakaty/downloader/hn1;)Ljava/util/Collection;

    move-result-object p1

    .line 63
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_f

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->p0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    goto :goto_7

    .line 65
    :cond_f
    new-instance p1, Lcom/shabakaty/downloader/g32;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/g32;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/g32;->g()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_7

    :cond_10
    move-object p1, v2

    :goto_7
    return-object p1

    .line 66
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
