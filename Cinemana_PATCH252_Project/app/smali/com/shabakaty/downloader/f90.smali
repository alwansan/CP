.class public abstract Lcom/shabakaty/downloader/f90;
.super Lcom/shabakaty/downloader/rj;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/f90$a;,
        Lcom/shabakaty/downloader/f90$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/rj;"
    }
.end annotation


# instance fields
.field public final x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/shabakaty/downloader/f90$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public y:Landroid/os/Handler;

.field public z:Lcom/shabakaty/downloader/sp4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rj;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/f90;->x:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/uq2;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f90;->x:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/e90;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/e90;-><init>(Lcom/shabakaty/downloader/f90;Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/f90$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/f90$a;-><init>(Lcom/shabakaty/downloader/f90;Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/f90;->x:Ljava/util/HashMap;

    new-instance v3, Lcom/shabakaty/downloader/f90$b;

    invoke-direct {v3, p2, v0, v1}, Lcom/shabakaty/downloader/f90$b;-><init>(Lcom/shabakaty/downloader/uq2;Lcom/shabakaty/downloader/uq2$b;Lcom/shabakaty/downloader/f90$a;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/f90;->y:Landroid/os/Handler;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/uq2;->e(Landroid/os/Handler;Lcom/shabakaty/downloader/yq2;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/f90;->y:Landroid/os/Handler;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p2, p1, v1}, Lcom/shabakaty/downloader/uq2;->b(Landroid/os/Handler;Lcom/shabakaty/downloader/s01;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/f90;->z:Lcom/shabakaty/downloader/sp4;

    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/uq2;->q(Lcom/shabakaty/downloader/uq2$b;Lcom/shabakaty/downloader/sp4;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/rj;->s:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 13
    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/uq2;->p(Lcom/shabakaty/downloader/uq2$b;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f90;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/f90$b;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/f90$b;->a:Lcom/shabakaty/downloader/uq2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/uq2;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f90;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/f90$b;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/f90$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v1, v1, Lcom/shabakaty/downloader/f90$b;->b:Lcom/shabakaty/downloader/uq2$b;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/uq2;->p(Lcom/shabakaty/downloader/uq2$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f90;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/f90$b;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/f90$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v1, v1, Lcom/shabakaty/downloader/f90$b;->b:Lcom/shabakaty/downloader/uq2$b;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/uq2;->j(Lcom/shabakaty/downloader/uq2$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f90;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/f90$b;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/f90$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v3, v1, Lcom/shabakaty/downloader/f90$b;->b:Lcom/shabakaty/downloader/uq2$b;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/uq2;->i(Lcom/shabakaty/downloader/uq2$b;)V

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/f90$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v3, v1, Lcom/shabakaty/downloader/f90$b;->c:Lcom/shabakaty/downloader/f90$a;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/uq2;->c(Lcom/shabakaty/downloader/yq2;)V

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/f90$b;->a:Lcom/shabakaty/downloader/uq2;

    iget-object v1, v1, Lcom/shabakaty/downloader/f90$b;->c:Lcom/shabakaty/downloader/f90$a;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/uq2;->a(Lcom/shabakaty/downloader/s01;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/f90;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public y(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/uq2$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/uq2$a;",
            ")",
            "Lcom/shabakaty/downloader/uq2$a;"
        }
    .end annotation

    return-object p2
.end method

.method public abstract z(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2;Lcom/shabakaty/downloader/nn4;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/uq2;",
            "Lcom/shabakaty/downloader/nn4;",
            ")V"
        }
    .end annotation
.end method
