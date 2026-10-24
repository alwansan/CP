.class public final Lcom/shabakaty/downloader/cg2$c;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/cg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/cg2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/qm0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/cg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cg2$c;->r:Lcom/shabakaty/downloader/cg2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2$c;->r:Lcom/shabakaty/downloader/cg2;

    sget-object v1, Lcom/shabakaty/downloader/vq0;->m:Lcom/shabakaty/downloader/vq0;

    sget-object v2, Lcom/shabakaty/downloader/mr2;->a:Lcom/shabakaty/downloader/mr2$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/mr2$a;->b:Lcom/shabakaty/downloader/tm1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kindFilter"

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nameFilter"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/mz2;->D:Lcom/shabakaty/downloader/mz2;

    .line 6
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    sget-object v5, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 8
    sget v5, Lcom/shabakaty/downloader/vq0;->l:I

    .line 9
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/cg2;->h(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/hw2;

    .line 11
    move-object v7, v2

    check-cast v7, Lcom/shabakaty/downloader/mr2$a$a;

    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/mr2$a$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v6, v3}, Lcom/shabakaty/downloader/nr2;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v5, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 14
    sget v5, Lcom/shabakaty/downloader/vq0;->i:I

    .line 15
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 16
    iget-object v5, v1, Lcom/shabakaty/downloader/vq0;->a:Ljava/util/List;

    .line 17
    sget-object v6, Lcom/shabakaty/downloader/uq0$a;->a:Lcom/shabakaty/downloader/uq0$a;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/cg2;->i(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/hw2;

    .line 19
    move-object v7, v2

    check-cast v7, Lcom/shabakaty/downloader/mr2$a$a;

    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/mr2$a$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, v6, v3}, Lcom/shabakaty/downloader/cg2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 21
    :cond_1
    sget-object v5, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 22
    sget v5, Lcom/shabakaty/downloader/vq0;->j:I

    .line 23
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 24
    iget-object v5, v1, Lcom/shabakaty/downloader/vq0;->a:Ljava/util/List;

    .line 25
    sget-object v6, Lcom/shabakaty/downloader/uq0$a;->a:Lcom/shabakaty/downloader/uq0$a;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/cg2;->o(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/hw2;

    .line 27
    move-object v6, v2

    check-cast v6, Lcom/shabakaty/downloader/mr2$a$a;

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/mr2$a$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, v5, v3}, Lcom/shabakaty/downloader/cg2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 29
    :cond_2
    invoke-static {v4}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
