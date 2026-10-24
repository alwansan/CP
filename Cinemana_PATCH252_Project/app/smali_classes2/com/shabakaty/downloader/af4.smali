.class public Lcom/shabakaty/downloader/af4;
.super Lcom/shabakaty/downloader/nr2;
.source "SubpackagesScope.kt"


# instance fields
.field public final b:Lcom/shabakaty/downloader/nu2;

.field public final c:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;)V
    .locals 1

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nr2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/af4;->b:Lcom/shabakaty/downloader/nu2;

    iput-object p2, p0, Lcom/shabakaty/downloader/af4;->c:Lcom/shabakaty/downloader/fi1;

    return-void
.end method


# virtual methods
.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 5
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
    sget-object v0, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 2
    sget v0, Lcom/shabakaty/downloader/vq0;->h:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/af4;->c:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/vq0;->a:Ljava/util/List;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/uq0$b;->a:Lcom/shabakaty/downloader/uq0$b;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/af4;->b:Lcom/shabakaty/downloader/nu2;

    iget-object v0, p0, Lcom/shabakaty/downloader/af4;->c:Lcom/shabakaty/downloader/fi1;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/nu2;->v(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/fi1;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    const-string v2, "subFqName.shortName()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "name"

    .line 12
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v2, v1, Lcom/shabakaty/downloader/hw2;->s:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/af4;->b:Lcom/shabakaty/downloader/nu2;

    iget-object v4, p0, Lcom/shabakaty/downloader/af4;->c:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/nu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Lcom/shabakaty/downloader/t93;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 16
    :goto_1
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-object v0
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
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "subpackages of "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/af4;->c:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/af4;->b:Lcom/shabakaty/downloader/nu2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
