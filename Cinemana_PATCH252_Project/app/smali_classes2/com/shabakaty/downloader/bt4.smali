.class public final Lcom/shabakaty/downloader/bt4;
.super Lcom/shabakaty/downloader/y0;
.source "TypeIntersectionScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bt4$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/mr2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/y0;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/bt4;->b:Lcom/shabakaty/downloader/mr2;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/ll2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/y0;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/bt4$d;->r:Lcom/shabakaty/downloader/bt4$d;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/d93;->a(Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/ll2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/y0;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/bt4$c;->r:Lcom/shabakaty/downloader/bt4$c;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/d93;->a(Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/y0;->e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/qm0;

    .line 6
    instance-of v2, v2, Lcom/shabakaty/downloader/rq;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    check-cast p2, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/bt4$b;->r:Lcom/shabakaty/downloader/bt4$b;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/d93;->a(Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bt4;->b:Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method
