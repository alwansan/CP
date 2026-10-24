.class public abstract Lcom/shabakaty/downloader/i1;
.super Lcom/shabakaty/downloader/tm0;
.source "AbstractTypeAliasDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hs4;


# instance fields
.field public final v:Lcom/shabakaty/downloader/mr0;

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/shabakaty/downloader/i1$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/mr0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/tm0;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;)V

    .line 2
    iput-object p5, p0, Lcom/shabakaty/downloader/i1;->v:Lcom/shabakaty/downloader/mr0;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/i1$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/i1$b;-><init>(Lcom/shabakaty/downloader/i1;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/i1;->x:Lcom/shabakaty/downloader/i1$b;

    return-void
.end method


# virtual methods
.method public B()Ljava/util/List;
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
    iget-object v0, p0, Lcom/shabakaty/downloader/i1;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "declaredTypeParametersImpl"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T()Z
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/js0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/js0;->p0()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/i1$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/i1$a;-><init>(Lcom/shabakaty/downloader/i1;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/eu4;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;)Z

    move-result v0

    return v0
.end method

.method public a()Lcom/shabakaty/downloader/g30;
    .locals 0

    return-object p0
.end method

.method public a()Lcom/shabakaty/downloader/qm0;
    .locals 0

    return-object p0
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i1;->v:Lcom/shabakaty/downloader/mr0;

    return-object v0
.end method

.method public j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/um0<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->d(Lcom/shabakaty/downloader/hs4;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i1;->x:Lcom/shabakaty/downloader/i1$b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "typealias "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0()Lcom/shabakaty/downloader/vm0;
    .locals 0

    return-object p0
.end method
