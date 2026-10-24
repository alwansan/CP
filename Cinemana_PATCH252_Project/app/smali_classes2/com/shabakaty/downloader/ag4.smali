.class public final Lcom/shabakaty/downloader/ag4;
.super Ljava/lang/Object;
.source "SubstitutingScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/mr2;


# instance fields
.field public final b:Lcom/shabakaty/downloader/mr2;

.field public final c:Lcom/shabakaty/downloader/wt4;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/qm0;",
            "Lcom/shabakaty/downloader/qm0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/wt4;)V
    .locals 1

    const-string v0, "workerScope"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "givenSubstitutor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ag4;->b:Lcom/shabakaty/downloader/mr2;

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/wt4;->g()Lcom/shabakaty/downloader/tt4;

    move-result-object p1

    const-string p2, "givenSubstitutor.substitution"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/shabakaty/downloader/fw;->c(Lcom/shabakaty/downloader/tt4;ZI)Lcom/shabakaty/downloader/tt4;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->e(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/ag4;->c:Lcom/shabakaty/downloader/wt4;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/ag4$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ag4$a;-><init>(Lcom/shabakaty/downloader/ag4;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ag4;->e:Lcom/shabakaty/downloader/kf2;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->b:Lcom/shabakaty/downloader/mr2;

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
            "+",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->b:Lcom/shabakaty/downloader/mr2;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ag4;->i(Ljava/util/Collection;)Ljava/util/Collection;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->b:Lcom/shabakaty/downloader/mr2;

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
            "+",
            "Lcom/shabakaty/downloader/t64;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->b:Lcom/shabakaty/downloader/mr2;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ag4;->i(Ljava/util/Collection;)Ljava/util/Collection;

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

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ag4;->e:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->b:Lcom/shabakaty/downloader/mr2;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->b:Lcom/shabakaty/downloader/mr2;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ag4;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/g30;

    :goto_0
    return-object p1
.end method

.method public final h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/qm0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/shabakaty/downloader/qm0;",
            ">(TD;)TD;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->c:Lcom/shabakaty/downloader/wt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ag4;->d:Ljava/util/Map;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 6
    instance-of v1, p1, Lcom/shabakaty/downloader/zf4;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zf4;

    iget-object v2, p0, Lcom/shabakaty/downloader/ag4;->c:Lcom/shabakaty/downloader/wt4;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/zf4;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " substitution fails"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown descriptor in scope: "

    .line 9
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_4
    :goto_0
    check-cast v1, Lcom/shabakaty/downloader/qm0;

    return-object v1
.end method

.method public final i(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/shabakaty/downloader/qm0;",
            ">(",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4;->c:Lcom/shabakaty/downloader/wt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->e(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qm0;

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ag4;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
