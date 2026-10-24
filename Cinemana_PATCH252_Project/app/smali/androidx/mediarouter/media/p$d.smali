.class public Landroidx/mediarouter/media/p$d;
.super Landroidx/mediarouter/media/p$c;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/p$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/p$c;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/p$e;)V

    return-void
.end method


# virtual methods
.method public B(Landroidx/mediarouter/media/p$b$b;Landroidx/mediarouter/media/b$a;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/p$c;->B(Landroidx/mediarouter/media/p$b$b;Landroidx/mediarouter/media/b$a;)V

    .line 2
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p2, Landroidx/mediarouter/media/b$a;->a:Landroid/os/Bundle;

    const-string v0, "status"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public D(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    const v1, 0x800003

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public E()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/p$b;->G:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/mediarouter/media/p$b;->B:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/media/MediaRouter;

    check-cast v1, Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/mediarouter/media/p$b;->G:Z

    .line 5
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    iget v1, p0, Landroidx/mediarouter/media/p$b;->E:I

    iget-object v2, p0, Landroidx/mediarouter/media/p$b;->B:Ljava/lang/Object;

    .line 6
    iget-boolean v3, p0, Landroidx/mediarouter/media/p$b;->F:Z

    or-int/lit8 v3, v3, 0x2

    .line 7
    check-cast v0, Landroid/media/MediaRouter;

    check-cast v2, Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    return-void
.end method

.method public H(Landroidx/mediarouter/media/p$b$c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/mediarouter/media/p$b;->H(Landroidx/mediarouter/media/p$b$c;)V

    .line 2
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    .line 3
    iget-object p1, p1, Landroidx/mediarouter/media/g$h;->e:Ljava/lang/String;

    .line 4
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public I(Landroidx/mediarouter/media/p$b$b;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 2
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result p1

    return p1
.end method

.method public z()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method
