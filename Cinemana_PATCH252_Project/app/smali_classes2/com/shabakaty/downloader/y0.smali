.class public abstract Lcom/shabakaty/downloader/y0;
.super Ljava/lang/Object;
.source "AbstractScopeAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/mr2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/mr2;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/mr2;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 1
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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ls3;->e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/mr2;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/y0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/y0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/y0;->h()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y0;->i()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract i()Lcom/shabakaty/downloader/mr2;
.end method
