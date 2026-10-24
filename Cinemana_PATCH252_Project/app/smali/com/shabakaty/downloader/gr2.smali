.class public Lcom/shabakaty/downloader/gr2;
.super Lcom/shabakaty/downloader/xv2;
.source "MediatorLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gr2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/xv2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/sw3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/sw3<",
            "Landroidx/lifecycle/LiveData<",
            "*>;",
            "Lcom/shabakaty/downloader/gr2$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xv2;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/sw3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sw3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/gr2;->a:Lcom/shabakaty/downloader/sw3;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/r53;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;",
            "Lcom/shabakaty/downloader/r53<",
            "-TS;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gr2$a;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/gr2$a;-><init>(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/r53;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/gr2;->a:Lcom/shabakaty/downloader/sw3;

    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/sw3;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gr2$a;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/gr2$a;->b:Lcom/shabakaty/downloader/r53;

    if-ne v2, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->hasActiveObservers()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Lcom/shabakaty/downloader/r53;)V

    :cond_3
    return-void
.end method

.method public onActive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gr2;->a:Lcom/shabakaty/downloader/sw3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sw3;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/sw3$e;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/sw3$e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/sw3$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gr2$a;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/gr2$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->observeForever(Lcom/shabakaty/downloader/r53;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInactive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gr2;->a:Lcom/shabakaty/downloader/sw3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sw3;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/sw3$e;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/sw3$e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/sw3$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gr2$a;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/gr2$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    goto :goto_0

    :cond_0
    return-void
.end method
