.class public final Lcom/shabakaty/downloader/g32;
.super Ljava/lang/Object;
.source "IntersectionTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ts4;
.implements Lcom/shabakaty/downloader/i32;


# instance fields
.field public a:Lcom/shabakaty/downloader/qe2;

.field public final b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "typesToIntersect"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/g32;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/ts4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/g32;->i(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/g32;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/shabakaty/downloader/g30;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/List;
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
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/g32;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    check-cast p1, Lcom/shabakaty/downloader/g32;

    iget-object p1, p1, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lcom/shabakaty/downloader/b74;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    sget-object v2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    const-string v3, "member scope for intersection type"

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/bt4$a;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/shabakaty/downloader/mr2;

    move-result-object v4

    .line 3
    new-instance v5, Lcom/shabakaty/downloader/g32$a;

    invoke-direct {v5, p0}, Lcom/shabakaty/downloader/g32$a;-><init>(Lcom/shabakaty/downloader/g32;)V

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/se2;->i(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lcom/shabakaty/downloader/tm1;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/qe2;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "getProperTypeRelatedToStringify"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/g32$b;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/g32$b;-><init>(Lcom/shabakaty/downloader/tm1;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/m50;->t0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 3
    new-instance v8, Lcom/shabakaty/downloader/g32$c;

    invoke-direct {v8, p1}, Lcom/shabakaty/downloader/g32$c;-><init>(Lcom/shabakaty/downloader/tm1;)V

    const-string v3, " & "

    const-string v4, "{"

    const-string v5, "}"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x18

    invoke-static/range {v2 .. v9}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/g32;->c:I

    return v0
.end method

.method public i(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/g32;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 5
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/qe2;->V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/g32;->a:Lcom/shabakaty/downloader/qe2;

    if-nez v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/qe2;->V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    .line 9
    :goto_1
    new-instance p1, Lcom/shabakaty/downloader/g32;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/g32;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/g32;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/g32;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    move-object v0, p0

    :cond_3
    return-object v0
.end method

.method public final j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/g32;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/g32;

    iget-object v1, p0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/g32;-><init>(Ljava/util/Collection;)V

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/g32;->a:Lcom/shabakaty/downloader/qe2;

    return-object v0
.end method

.method public r()Lcom/shabakaty/downloader/zd2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g32;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    const-string v1, "intersectedTypes.iterato\u2026xt().constructor.builtIns"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/h32;->r:Lcom/shabakaty/downloader/h32;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/g32;->h(Lcom/shabakaty/downloader/tm1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
