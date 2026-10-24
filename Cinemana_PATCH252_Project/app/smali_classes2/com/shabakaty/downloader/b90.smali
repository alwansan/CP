.class public final Lcom/shabakaty/downloader/b90;
.super Ljava/lang/Object;
.source "Annotations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/d9;


# instance fields
.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/d9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/d9;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b90;->r:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lcom/shabakaty/downloader/d9;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/id;->c0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/b90;->r:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b90;->r:Ljava/util/List;

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/d9;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b90;->r:Ljava/util/List;

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/b90$b;->r:Lcom/shabakaty/downloader/b90$b;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->F(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ae1;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ae1$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ae1$a;-><init>(Lcom/shabakaty/downloader/ae1;)V

    return-object v1
.end method

.method public m1(Lcom/shabakaty/downloader/fi1;)Z
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b90;->r:Ljava/util/List;

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/m50$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/m50$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/d9;

    .line 3
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b90;->r:Ljava/util/List;

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/b90$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/b90$a;-><init>(Lcom/shabakaty/downloader/fi1;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->H(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/t04;->E(Lcom/shabakaty/downloader/l04;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/r8;

    return-object p1
.end method
