.class public abstract Lcom/shabakaty/downloader/k1;
.super Lcom/shabakaty/downloader/f30;
.source "AbstractTypeConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k1$a;,
        Lcom/shabakaty/downloader/k1$b;
    }
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Lcom/shabakaty/downloader/k1$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f30;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/k1$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/k1$c;-><init>(Lcom/shabakaty/downloader/k1;)V

    sget-object v1, Lcom/shabakaty/downloader/k1$d;->r:Lcom/shabakaty/downloader/k1$d;

    new-instance v2, Lcom/shabakaty/downloader/k1$e;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/k1$e;-><init>(Lcom/shabakaty/downloader/k1;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/md4;->c(Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/k1;->b:Lcom/shabakaty/downloader/d03;

    return-void
.end method

.method public static final i(Lcom/shabakaty/downloader/k1;Lcom/shabakaty/downloader/ts4;Z)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p0, p1, Lcom/shabakaty/downloader/k1;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/shabakaty/downloader/k1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "supertypes"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/k1;->b:Lcom/shabakaty/downloader/d03;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/k1$b;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/k1$b;->a:Ljava/util/Collection;

    .line 6
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/k1;->l(Z)Ljava/util/Collection;

    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k1;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/ts4;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/k1$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/k1$a;-><init>(Lcom/shabakaty/downloader/k1;Lcom/shabakaty/downloader/ve2;)V

    return-object v0
.end method

.method public abstract j()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end method

.method public k()Lcom/shabakaty/downloader/qe2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l(Z)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1
.end method

.method public abstract m()Lcom/shabakaty/downloader/ph4;
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1;->b:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k1$b;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/k1$b;->b:Ljava/util/List;

    return-object v0
.end method

.method public o(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public p(Lcom/shabakaty/downloader/qe2;)V
    .locals 0

    return-void
.end method
