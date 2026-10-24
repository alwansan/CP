.class public final Lcom/shabakaty/downloader/xw$b;
.super Lcom/shabakaty/downloader/nw$d;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/xw;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xw;Lcom/shabakaty/downloader/ol3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xw$b;->a:Lcom/shabakaty/downloader/xw;

    invoke-direct {p0}, Lcom/shabakaty/downloader/nw$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveInputStateChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shabakaty/downloader/xw$b;->a:Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/xw;->d:Ljava/util/Set;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nw$d;

    .line 5
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/nw$d;->onActiveInputStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onApplicationDisconnected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xw$b;->a:Lcom/shabakaty/downloader/xw;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/xw;->n(Lcom/shabakaty/downloader/xw;I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xw$b;->a:Lcom/shabakaty/downloader/xw;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s14;->d(I)V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shabakaty/downloader/xw$b;->a:Lcom/shabakaty/downloader/xw;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/xw;->d:Ljava/util/Set;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nw$d;

    .line 7
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/nw$d;->onApplicationDisconnected(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onApplicationMetadataChanged(Lcom/shabakaty/downloader/nc;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shabakaty/downloader/xw$b;->a:Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/xw;->d:Ljava/util/Set;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nw$d;

    .line 5
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/nw$d;->onApplicationMetadataChanged(Lcom/shabakaty/downloader/nc;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onApplicationStatusChanged()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shabakaty/downloader/xw$b;->a:Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/xw;->d:Ljava/util/Set;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nw$d;

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nw$d;->onApplicationStatusChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStandbyStateChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shabakaty/downloader/xw$b;->a:Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/xw;->d:Ljava/util/Set;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nw$d;

    .line 5
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/nw$d;->onStandbyStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVolumeChanged()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shabakaty/downloader/xw$b;->a:Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/xw;->d:Ljava/util/Set;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nw$d;

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nw$d;->onVolumeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
