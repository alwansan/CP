.class public final Lcom/shabakaty/downloader/pj4;
.super Lcom/shabakaty/downloader/gj4$a;
.source "SynchronizedCaptureSessionStateCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pj4$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj4$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj4$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/gj4$a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/pj4;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public k(Lcom/shabakaty/downloader/gj4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pj4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj4$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/gj4$a;->k(Lcom/shabakaty/downloader/gj4;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Lcom/shabakaty/downloader/gj4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pj4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj4$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/gj4$a;->l(Lcom/shabakaty/downloader/gj4;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Lcom/shabakaty/downloader/gj4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pj4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj4$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/gj4$a;->m(Lcom/shabakaty/downloader/gj4;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Lcom/shabakaty/downloader/gj4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pj4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj4$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/gj4$a;->n(Lcom/shabakaty/downloader/gj4;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Lcom/shabakaty/downloader/gj4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pj4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj4$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/gj4$a;->o(Lcom/shabakaty/downloader/gj4;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(Lcom/shabakaty/downloader/gj4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pj4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj4$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/gj4$a;->p(Lcom/shabakaty/downloader/gj4;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lcom/shabakaty/downloader/gj4;Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pj4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj4$a;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/gj4$a;->q(Lcom/shabakaty/downloader/gj4;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    return-void
.end method
