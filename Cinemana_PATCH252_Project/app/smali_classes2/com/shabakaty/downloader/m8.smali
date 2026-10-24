.class public final Lcom/shabakaty/downloader/m8;
.super Ljava/lang/Object;
.source "AnnotationAndConstantLoaderImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l8<",
        "Lcom/shabakaty/downloader/r8;",
        "Lcom/shabakaty/downloader/qb0<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/d14;

.field public final b:Lcom/shabakaty/downloader/t8;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;Lcom/shabakaty/downloader/d14;)V
    .locals 1

    const-string v0, "protocol"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 3
    new-instance p3, Lcom/shabakaty/downloader/t8;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/t8;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;)V

    iput-object p3, p0, Lcom/shabakaty/downloader/m8;->b:Lcom/shabakaty/downloader/t8;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;ILcom/shabakaty/downloader/cj3;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/es2;",
            "Lcom/shabakaty/downloader/i8;",
            "I",
            "Lcom/shabakaty/downloader/cj3;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    const-string p4, "container"

    invoke-static {p1, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callableProto"

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p3, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "proto"

    invoke-static {p5, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/d14;->j:Lcom/shabakaty/downloader/pp1$f;

    .line 3
    invoke-virtual {p5, p2}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    sget-object p2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 4
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 6
    check-cast p4, Lcom/shabakaty/downloader/ii3;

    .line 7
    iget-object p5, p0, Lcom/shabakaty/downloader/m8;->b:Lcom/shabakaty/downloader/t8;

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 9
    invoke-virtual {p5, p4, v0}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public b(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/vi3;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    const-string p1, "proto"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/es2;",
            "Lcom/shabakaty/downloader/i8;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/li3;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/shabakaty/downloader/li3;

    iget-object p3, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 2
    iget-object p3, p3, Lcom/shabakaty/downloader/d14;->b:Lcom/shabakaty/downloader/pp1$f;

    .line 3
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p2, Lcom/shabakaty/downloader/qi3;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/shabakaty/downloader/qi3;

    iget-object p3, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 5
    iget-object p3, p3, Lcom/shabakaty/downloader/d14;->d:Lcom/shabakaty/downloader/pp1$f;

    .line 6
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p2, Lcom/shabakaty/downloader/vi3;

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 8
    check-cast p2, Lcom/shabakaty/downloader/vi3;

    iget-object p3, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 9
    iget-object p3, p3, Lcom/shabakaty/downloader/d14;->g:Lcom/shabakaty/downloader/pp1$f;

    .line 10
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unsupported callable kind with property proto"

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    check-cast p2, Lcom/shabakaty/downloader/vi3;

    iget-object p3, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 13
    iget-object p3, p3, Lcom/shabakaty/downloader/d14;->f:Lcom/shabakaty/downloader/pp1$f;

    .line 14
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 15
    :cond_4
    check-cast p2, Lcom/shabakaty/downloader/vi3;

    iget-object p3, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 16
    iget-object p3, p3, Lcom/shabakaty/downloader/d14;->e:Lcom/shabakaty/downloader/pp1$f;

    .line 17
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    if-nez p2, :cond_5

    .line 18
    sget-object p2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 19
    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/shabakaty/downloader/ii3;

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/m8;->b:Lcom/shabakaty/downloader/t8;

    .line 23
    iget-object v2, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 24
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object p3

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Unknown message: "

    .line 26
    invoke-static {p3, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/qe2;)Ljava/lang/Object;
    .locals 1

    const-string v0, "proto"

    .line 1
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/d14;->i:Lcom/shabakaty/downloader/pp1$f;

    .line 4
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/nh3;->l(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ii3$b$c;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/m8;->b:Lcom/shabakaty/downloader/t8;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 7
    invoke-virtual {v0, p3, p2, p1}, Lcom/shabakaty/downloader/t8;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ii3$b$c;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/qb0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/gj3$a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/gj3$a;->d:Lcom/shabakaty/downloader/ji3;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/d14;->c:Lcom/shabakaty/downloader/pp1$f;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/shabakaty/downloader/ii3;

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/m8;->b:Lcom/shabakaty/downloader/t8;

    .line 9
    iget-object v4, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 10
    invoke-virtual {v3, v2, v4}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public f(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/vi3;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    const-string p1, "proto"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/aj3;Lcom/shabakaty/downloader/jw2;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/aj3;",
            "Lcom/shabakaty/downloader/jw2;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/d14;->l:Lcom/shabakaty/downloader/pp1$f;

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/ii3;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/m8;->b:Lcom/shabakaty/downloader/t8;

    invoke-virtual {v2, v1, p2}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public h(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/oi3;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/oi3;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/d14;->h:Lcom/shabakaty/downloader/pp1$f;

    .line 3
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    sget-object p2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/ii3;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/m8;->b:Lcom/shabakaty/downloader/t8;

    .line 8
    iget-object v3, p1, Lcom/shabakaty/downloader/gj3;->a:Lcom/shabakaty/downloader/jw2;

    .line 9
    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public i(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/jw2;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yi3;",
            "Lcom/shabakaty/downloader/jw2;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m8;->a:Lcom/shabakaty/downloader/d14;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/d14;->k:Lcom/shabakaty/downloader/pp1$f;

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pp1$d;->k(Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/ii3;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/m8;->b:Lcom/shabakaty/downloader/t8;

    invoke-virtual {v2, v1, p2}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gj3;",
            "Lcom/shabakaty/downloader/es2;",
            "Lcom/shabakaty/downloader/i8;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    const-string p1, "proto"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1
.end method
