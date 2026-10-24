.class public final Lcom/shabakaty/downloader/xs4;
.super Ljava/lang/Object;
.source "TypeDeserializer.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/rr0;

.field public final b:Lcom/shabakaty/downloader/xs4;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/g30;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/g30;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/xs4;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rr0;",
            "Lcom/shabakaty/downloader/xs4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/aj3;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "debugName"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerPresentableName"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/xs4;->b:Lcom/shabakaty/downloader/xs4;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/xs4;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/xs4;->d:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 8
    new-instance p4, Lcom/shabakaty/downloader/xs4$a;

    invoke-direct {p4, p0}, Lcom/shabakaty/downloader/xs4$a;-><init>(Lcom/shabakaty/downloader/xs4;)V

    invoke-interface {p2, p4}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/xs4;->e:Lcom/shabakaty/downloader/tm1;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/xs4$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/xs4$c;-><init>(Lcom/shabakaty/downloader/xs4;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xs4;->f:Lcom/shabakaty/downloader/tm1;

    .line 12
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    goto :goto_1

    .line 14
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/shabakaty/downloader/aj3;

    .line 16
    iget v0, p5, Lcom/shabakaty/downloader/aj3;->u:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/ks0;

    iget-object v2, p0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    invoke-direct {v1, v2, p5, p3}, Lcom/shabakaty/downloader/ks0;-><init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/aj3;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/shabakaty/downloader/xs4;->g:Ljava/util/Map;

    return-void
.end method

.method public static final f(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/xs4;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yi3;",
            "Lcom/shabakaty/downloader/xs4;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yi3$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    const-string v1, "argumentList"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 4
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/bp;->r(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/xs4;->f(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/xs4;)Ljava/util/List;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_1
    invoke-static {v0, p0}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/shabakaty/downloader/xs4;Lcom/shabakaty/downloader/yi3;ZI)Lcom/shabakaty/downloader/b74;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xs4;->e(Lcom/shabakaty/downloader/yi3;Z)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lcom/shabakaty/downloader/xs4;Lcom/shabakaty/downloader/yi3;I)Lcom/shabakaty/downloader/q20;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 3
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/xs4$e;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/xs4$e;-><init>(Lcom/shabakaty/downloader/xs4;)V

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/q04;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/xs4$f;->r:Lcom/shabakaty/downloader/xs4$f;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/t04;->G(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/t04;->K(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/xs4$d;->r:Lcom/shabakaty/downloader/xs4$d;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/q04;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/l04;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Count overflow has happened."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_1
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 11
    iget-object p0, p0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 12
    iget-object p0, p0, Lcom/shabakaty/downloader/or0;->l:Lcom/shabakaty/downloader/b03;

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/b03;->a(Lcom/shabakaty/downloader/v20;Ljava/util/List;)Lcom/shabakaty/downloader/q20;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 3
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    .line 4
    iget-boolean p1, p1, Lcom/shabakaty/downloader/v20;->c:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->g:Lcom/shabakaty/downloader/oj2;

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/oj2;->a()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->q(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->s(Lcom/shabakaty/downloader/qe2;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/m50;->W(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    check-cast v5, Lcom/shabakaty/downloader/qt4;

    .line 8
    invoke-interface {v5}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v4

    move-object v4, v5

    move-object v5, p2

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/nh3;->i(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/qe2;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/b74;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs4;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lcom/shabakaty/downloader/kt4;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs4;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kt4;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/xs4;->b:Lcom/shabakaty/downloader/xs4;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xs4;->d(I)Lcom/shabakaty/downloader/kt4;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final e(Lcom/shabakaty/downloader/yi3;Z)Lcom/shabakaty/downloader/b74;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "proto"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/yi3;->r()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    iget v2, v1, Lcom/shabakaty/downloader/yi3;->z:I

    .line 3
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xs4;->a(I)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/yi3;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget v2, v1, Lcom/shabakaty/downloader/yi3;->C:I

    .line 6
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xs4;->a(I)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    return-object v2

    .line 7
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/yi3;->r()Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, v0, Lcom/shabakaty/downloader/xs4;->e:Lcom/shabakaty/downloader/tm1;

    .line 9
    iget v6, v1, Lcom/shabakaty/downloader/yi3;->z:I

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/g30;

    if-nez v2, :cond_b

    .line 11
    iget v2, v1, Lcom/shabakaty/downloader/yi3;->z:I

    .line 12
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xs4;->i(Lcom/shabakaty/downloader/xs4;Lcom/shabakaty/downloader/yi3;I)Lcom/shabakaty/downloader/q20;

    move-result-object v2

    goto/16 :goto_4

    .line 13
    :cond_3
    iget v2, v1, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/lit8 v6, v2, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    .line 14
    iget v2, v1, Lcom/shabakaty/downloader/yi3;->A:I

    .line 15
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xs4;->d(I)Lcom/shabakaty/downloader/kt4;

    move-result-object v2

    if-nez v2, :cond_b

    const-string v2, "Unknown type parameter "

    .line 16
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17
    iget v6, v1, Lcom/shabakaty/downloader/yi3;->A:I

    .line 18
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Please try recompiling module containing \""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/shabakaty/downloader/xs4;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x22

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/shabakaty/downloader/d51;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    goto/16 :goto_5

    :cond_5
    const/16 v6, 0x40

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_a

    .line 20
    iget-object v2, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 21
    iget-object v2, v2, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 22
    iget v6, v1, Lcom/shabakaty/downloader/yi3;->B:I

    .line 23
    invoke-interface {v2, v6}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/xs4;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/shabakaty/downloader/kt4;

    invoke-interface {v8}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_8
    move-object v7, v3

    :goto_3
    move-object v6, v7

    check-cast v6, Lcom/shabakaty/downloader/kt4;

    if-nez v6, :cond_9

    const-string v6, "Deserialized type parameter "

    const-string v7, " in "

    .line 25
    invoke-static {v6, v2, v7}, Lcom/shabakaty/downloader/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 26
    iget-object v6, v6, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 27
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/d51;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    goto :goto_5

    :cond_9
    move-object v2, v6

    goto :goto_4

    .line 28
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/yi3;->u()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 29
    iget-object v2, v0, Lcom/shabakaty/downloader/xs4;->f:Lcom/shabakaty/downloader/tm1;

    .line 30
    iget v6, v1, Lcom/shabakaty/downloader/yi3;->C:I

    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/g30;

    if-nez v2, :cond_b

    .line 32
    iget v2, v1, Lcom/shabakaty/downloader/yi3;->C:I

    .line 33
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xs4;->i(Lcom/shabakaty/downloader/xs4;Lcom/shabakaty/downloader/yi3;I)Lcom/shabakaty/downloader/q20;

    move-result-object v2

    .line 34
    :cond_b
    :goto_4
    invoke-interface {v2}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    const-string v6, "classifier.typeConstructor"

    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string v2, "Unknown type"

    .line 35
    invoke-static {v2}, Lcom/shabakaty/downloader/d51;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    .line 36
    :goto_5
    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/d51;->i(Lcom/shabakaty/downloader/qm0;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/d51;->h(Ljava/lang/String;Lcom/shabakaty/downloader/ts4;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    return-object v1

    .line 38
    :cond_d
    new-instance v6, Lcom/shabakaty/downloader/sr0;

    iget-object v7, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 39
    iget-object v7, v7, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 40
    iget-object v7, v7, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 41
    new-instance v8, Lcom/shabakaty/downloader/xs4$b;

    invoke-direct {v8, v0, v1}, Lcom/shabakaty/downloader/xs4$b;-><init>(Lcom/shabakaty/downloader/xs4;Lcom/shabakaty/downloader/yi3;)V

    invoke-direct {v6, v7, v8}, Lcom/shabakaty/downloader/sr0;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    .line 42
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/xs4;->f(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/xs4;)Ljava/util/List;

    move-result-object v7

    .line 43
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v12, "typeTable"

    const-string v13, "<this>"

    if-eqz v10, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_18

    .line 45
    check-cast v10, Lcom/shabakaty/downloader/yi3$b;

    .line 46
    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v14

    const-string v15, "constructor.parameters"

    invoke-static {v14, v15}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v9}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/kt4;

    .line 47
    iget-object v14, v10, Lcom/shabakaty/downloader/yi3$b;->t:Lcom/shabakaty/downloader/yi3$b$c;

    .line 48
    sget-object v15, Lcom/shabakaty/downloader/yi3$b$c;->v:Lcom/shabakaty/downloader/yi3$b$c;

    if-ne v14, v15, :cond_f

    if-nez v9, :cond_e

    .line 49
    new-instance v9, Lcom/shabakaty/downloader/ub4;

    iget-object v10, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 50
    iget-object v10, v10, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 51
    iget-object v10, v10, Lcom/shabakaty/downloader/or0;->b:Lcom/shabakaty/downloader/nu2;

    .line 52
    invoke-interface {v10}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/shabakaty/downloader/ub4;-><init>(Lcom/shabakaty/downloader/zd2;)V

    goto/16 :goto_a

    .line 53
    :cond_e
    new-instance v10, Lcom/shabakaty/downloader/vb4;

    invoke-direct {v10, v9}, Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V

    move-object v9, v10

    goto/16 :goto_a

    :cond_f
    const-string v9, "typeArgumentProto.projection"

    .line 54
    invoke-static {v14, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "projection"

    .line 55
    invoke-static {v14, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_13

    if-eq v9, v4, :cond_12

    const/4 v15, 0x2

    if-eq v9, v15, :cond_11

    const/4 v1, 0x3

    if-eq v9, v1, :cond_10

    .line 57
    new-instance v1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-static {v2, v14}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_11
    sget-object v9, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    goto :goto_7

    .line 59
    :cond_12
    sget-object v9, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    goto :goto_7

    .line 60
    :cond_13
    sget-object v9, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    .line 61
    :goto_7
    iget-object v14, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 62
    iget-object v14, v14, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 63
    invoke-static {v10, v13}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v12}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v10}, Lcom/shabakaty/downloader/yi3$b;->i()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 65
    iget-object v10, v10, Lcom/shabakaty/downloader/yi3$b;->u:Lcom/shabakaty/downloader/yi3;

    goto :goto_9

    .line 66
    :cond_14
    iget v12, v10, Lcom/shabakaty/downloader/yi3$b;->s:I

    const/4 v13, 0x4

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_15

    const/4 v12, 0x1

    goto :goto_8

    :cond_15
    const/4 v12, 0x0

    :goto_8
    if-eqz v12, :cond_16

    .line 67
    iget v10, v10, Lcom/shabakaty/downloader/yi3$b;->v:I

    .line 68
    invoke-virtual {v14, v10}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v10

    goto :goto_9

    :cond_16
    move-object v10, v3

    :goto_9
    if-nez v10, :cond_17

    .line 69
    new-instance v9, Lcom/shabakaty/downloader/st4;

    const-string v10, "No type recorded"

    invoke-static {v10}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    goto :goto_a

    .line 70
    :cond_17
    new-instance v12, Lcom/shabakaty/downloader/st4;

    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/xs4;->h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;

    move-result-object v10

    invoke-direct {v12, v9, v10}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    move-object v9, v12

    .line 71
    :goto_a
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v9, v11

    goto/16 :goto_6

    .line 72
    :cond_18
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v3

    .line 73
    :cond_19
    invoke-static {v8}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v14

    .line 74
    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v7

    if-eqz p2, :cond_1d

    .line 75
    instance-of v8, v7, Lcom/shabakaty/downloader/hs4;

    if-eqz v8, :cond_1d

    .line 76
    sget-object v2, Lcom/shabakaty/downloader/se2;->a:Lcom/shabakaty/downloader/se2;

    check-cast v7, Lcom/shabakaty/downloader/hs4;

    invoke-static {v7, v14}, Lcom/shabakaty/downloader/se2;->b(Lcom/shabakaty/downloader/hs4;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/shabakaty/downloader/vd5;->s(Lcom/shabakaty/downloader/qe2;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 78
    iget-boolean v7, v1, Lcom/shabakaty/downloader/yi3;->v:Z

    if-eqz v7, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v7, 0x0

    goto :goto_c

    :cond_1b
    :goto_b
    const/4 v7, 0x1

    .line 79
    :goto_c
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v7

    .line 80
    invoke-interface {v2}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/shabakaty/downloader/m50;->l0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    const-string v6, "annotations"

    .line 81
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    sget-object v2, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    goto :goto_d

    :cond_1c
    new-instance v6, Lcom/shabakaty/downloader/e9;

    invoke-direct {v6, v2}, Lcom/shabakaty/downloader/e9;-><init>(Ljava/util/List;)V

    move-object v2, v6

    .line 83
    :goto_d
    invoke-virtual {v7, v2}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    goto/16 :goto_14

    .line 84
    :cond_1d
    sget-object v7, Lcom/shabakaty/downloader/zd1;->a:Lcom/shabakaty/downloader/zd1$b;

    .line 85
    iget v8, v1, Lcom/shabakaty/downloader/yi3;->H:I

    const-string v9, "SUSPEND_TYPE.get(proto.flags)"

    .line 86
    invoke-static {v7, v8, v9}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 87
    iget-boolean v9, v1, Lcom/shabakaty/downloader/yi3;->v:Z

    .line 88
    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    if-eqz v7, :cond_1f

    if-eq v7, v4, :cond_1e

    goto :goto_10

    .line 89
    :cond_1e
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ltz v7, :cond_23

    .line 90
    invoke-interface {v2}, Lcom/shabakaty/downloader/ts4;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/zd2;->x(I)Lcom/shabakaty/downloader/q20;

    move-result-object v7

    invoke-interface {v7}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v7

    const-string v8, "functionTypeConstructor.\u2026on(arity).typeConstructor"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v8, v14

    .line 91
    invoke-static/range {v6 .. v11}, Lcom/shabakaty/downloader/se2;->g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;

    move-result-object v6

    goto/16 :goto_13

    :cond_1f
    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v7, v2

    move-object v8, v14

    .line 92
    invoke-static/range {v6 .. v11}, Lcom/shabakaty/downloader/se2;->g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;

    move-result-object v6

    .line 93
    invoke-static {v6, v13}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v6}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v7

    invoke-interface {v7}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v7

    if-nez v7, :cond_20

    move-object v7, v3

    goto :goto_e

    :cond_20
    invoke-static {v7}, Lcom/shabakaty/downloader/nh3;->n(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/vn1;

    move-result-object v7

    :goto_e
    sget-object v8, Lcom/shabakaty/downloader/vn1;->u:Lcom/shabakaty/downloader/vn1;

    if-ne v7, v8, :cond_21

    const/4 v7, 0x1

    goto :goto_f

    :cond_21
    const/4 v7, 0x0

    :goto_f
    if-nez v7, :cond_22

    goto :goto_10

    .line 95
    :cond_22
    invoke-static {v6}, Lcom/shabakaty/downloader/nh3;->s(Lcom/shabakaty/downloader/qe2;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/qt4;

    if-nez v7, :cond_24

    :cond_23
    :goto_10
    move-object v6, v3

    goto/16 :goto_13

    :cond_24
    invoke-interface {v7}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    const-string v8, "funType.getValueParamete\u2026ll()?.type ?: return null"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v7}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v8

    invoke-interface {v8}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v8

    if-nez v8, :cond_25

    move-object v8, v3

    goto :goto_11

    :cond_25
    invoke-static {v8}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v8

    .line 97
    :goto_11
    invoke-virtual {v7}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v4, :cond_2a

    .line 98
    sget-object v9, Lcom/shabakaty/downloader/tb4;->d:Lcom/shabakaty/downloader/fi1;

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 99
    sget-object v9, Lcom/shabakaty/downloader/ys4;->a:Lcom/shabakaty/downloader/fi1;

    .line 100
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    goto :goto_13

    .line 101
    :cond_26
    invoke-virtual {v7}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/qt4;

    invoke-interface {v7}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v7

    const-string v8, "continuationArgumentType.arguments.single().type"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v8, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 103
    iget-object v8, v8, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 104
    instance-of v9, v8, Lcom/shabakaty/downloader/rq;

    if-nez v9, :cond_27

    move-object v8, v3

    :cond_27
    check-cast v8, Lcom/shabakaty/downloader/rq;

    if-nez v8, :cond_28

    move-object v8, v3

    goto :goto_12

    .line 105
    :cond_28
    invoke-static {v8}, Lcom/shabakaty/downloader/hr0;->c(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v8

    :goto_12
    sget-object v9, Lcom/shabakaty/downloader/si4;->a:Lcom/shabakaty/downloader/fi1;

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 106
    invoke-virtual {v0, v6, v7}, Lcom/shabakaty/downloader/xs4;->b(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v6

    goto :goto_13

    .line 107
    :cond_29
    invoke-virtual {v0, v6, v7}, Lcom/shabakaty/downloader/xs4;->b(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v6

    :cond_2a
    :goto_13
    if-nez v6, :cond_2c

    const-string v6, "Bad suspend function in metadata with constructor: "

    .line 108
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2, v14}, Lcom/shabakaty/downloader/d51;->g(Ljava/lang/String;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    goto :goto_14

    .line 110
    :cond_2b
    iget-boolean v9, v1, Lcom/shabakaty/downloader/yi3;->v:Z

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v7, v2

    move-object v8, v14

    .line 111
    invoke-static/range {v6 .. v11}, Lcom/shabakaty/downloader/se2;->g(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 112
    sget-object v6, Lcom/shabakaty/downloader/zd1;->b:Lcom/shabakaty/downloader/zd1$b;

    .line 113
    iget v7, v1, Lcom/shabakaty/downloader/yi3;->H:I

    const-string v8, "DEFINITELY_NOT_NULL_TYPE.get(proto.flags)"

    .line 114
    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 115
    sget-object v6, Lcom/shabakaty/downloader/rp0;->u:Lcom/shabakaty/downloader/rp0$a;

    .line 116
    invoke-virtual {v6, v2, v5}, Lcom/shabakaty/downloader/rp0$a;->a(Lcom/shabakaty/downloader/qw4;Z)Lcom/shabakaty/downloader/rp0;

    move-result-object v6

    if-eqz v6, :cond_2d

    :cond_2c
    move-object v2, v6

    goto :goto_14

    .line 117
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null DefinitelyNotNullType for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_2e
    :goto_14
    iget-object v6, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 119
    iget-object v6, v6, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 120
    invoke-static {v1, v13}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v12}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/yi3;->q()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 122
    iget-object v3, v1, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    goto :goto_16

    .line 123
    :cond_2f
    iget v7, v1, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v8, 0x800

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_30

    goto :goto_15

    :cond_30
    const/4 v4, 0x0

    :goto_15
    if-eqz v4, :cond_31

    .line 124
    iget v3, v1, Lcom/shabakaty/downloader/yi3;->G:I

    .line 125
    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v3

    :cond_31
    :goto_16
    if-nez v3, :cond_32

    goto :goto_17

    .line 126
    :cond_32
    invoke-virtual {v0, v3, v5}, Lcom/shabakaty/downloader/xs4;->e(Lcom/shabakaty/downloader/yi3;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/nh3;->L(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 127
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/yi3;->r()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 128
    iget-object v3, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 129
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 130
    iget v1, v1, Lcom/shabakaty/downloader/yi3;->z:I

    .line 131
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    .line 132
    iget-object v3, v0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 133
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 134
    iget-object v3, v3, Lcom/shabakaty/downloader/or0;->s:Lcom/shabakaty/downloader/qc3;

    .line 135
    invoke-interface {v3, v1, v2}, Lcom/shabakaty/downloader/qc3;->a(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    return-object v1

    :cond_33
    return-object v2
.end method

.method public final h(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/qe2;
    .locals 7

    const-string v0, "proto"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/shabakaty/downloader/yi3;->t:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 4
    iget v1, p1, Lcom/shabakaty/downloader/yi3;->w:I

    .line 5
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/xs4;->e(Lcom/shabakaty/downloader/yi3;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 8
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    const-string v5, "typeTable"

    .line 9
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yi3;->s()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    iget-object v2, p1, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    goto :goto_1

    .line 12
    :cond_1
    iget v5, p1, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v6, 0x8

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 13
    iget v2, p1, Lcom/shabakaty/downloader/yi3;->y:I

    .line 14
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 15
    :goto_1
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/xs4;->e(Lcom/shabakaty/downloader/yi3;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/shabakaty/downloader/xs4;->a:Lcom/shabakaty/downloader/rr0;

    .line 18
    iget-object v3, v3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 19
    iget-object v3, v3, Lcom/shabakaty/downloader/or0;->j:Lcom/shabakaty/downloader/ge1;

    .line 20
    invoke-interface {v3, p1, v0, v1, v2}, Lcom/shabakaty/downloader/ge1;->a(Lcom/shabakaty/downloader/yi3;Ljava/lang/String;Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    return-object p1

    .line 21
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/xs4;->e(Lcom/shabakaty/downloader/yi3;Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs4;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/xs4;->b:Lcom/shabakaty/downloader/xs4;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/xs4;->c:Ljava/lang/String;

    const-string v2, ". Child of "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
