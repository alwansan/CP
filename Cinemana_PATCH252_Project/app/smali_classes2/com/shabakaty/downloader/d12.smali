.class public final Lcom/shabakaty/downloader/d12;
.super Lcom/shabakaty/downloader/nr2;
.source "InnerClassesScopeWrapper.kt"


# instance fields
.field public final b:Lcom/shabakaty/downloader/mr2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mr2;)V
    .locals 1

    const-string v0, "workerScope"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nr2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/d12;->b:Lcom/shabakaty/downloader/mr2;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/d12;->b:Lcom/shabakaty/downloader/mr2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mr2;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/shabakaty/downloader/d12;->b:Lcom/shabakaty/downloader/mr2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mr2;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 2

    const-string v0, "kindFilter"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 3
    sget v0, Lcom/shabakaty/downloader/vq0;->l:I

    .line 4
    iget v1, p1, Lcom/shabakaty/downloader/vq0;->b:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/vq0;

    iget-object p1, p1, Lcom/shabakaty/downloader/vq0;->a:Ljava/util/List;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/vq0;-><init>(ILjava/util/List;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/d12;->b:Lcom/shabakaty/downloader/mr2;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ls3;->e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/h30;

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object p1, p2

    :goto_2
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
    iget-object v0, p0, Lcom/shabakaty/downloader/d12;->b:Lcom/shabakaty/downloader/mr2;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/d12;->b:Lcom/shabakaty/downloader/mr2;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/q20;

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/shabakaty/downloader/hs4;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/shabakaty/downloader/hs4;

    move-object p2, p1

    goto :goto_1

    :cond_2
    move-object p2, v0

    :cond_3
    :goto_1
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d12;->b:Lcom/shabakaty/downloader/mr2;

    const-string v1, "Classes from "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
