.class public Landroidx/mediarouter/media/p$c;
.super Landroidx/mediarouter/media/p$b;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Lcom/shabakaty/downloader/nq2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/p$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/p$b;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/p$e;)V

    return-void
.end method


# virtual methods
.method public B(Landroidx/mediarouter/media/p$b$b;Landroidx/mediarouter/media/b$a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/p$b;->B(Landroidx/mediarouter/media/p$b$b;Landroidx/mediarouter/media/b$a;)V

    .line 2
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iget-object v1, p2, Landroidx/mediarouter/media/b$a;->a:Landroid/os/Bundle;

    const-string v2, "enabled"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$c;->I(Landroidx/mediarouter/media/p$b$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6
    iget-object v1, p2, Landroidx/mediarouter/media/b$a;->a:Landroid/os/Bundle;

    const-string v2, "connectionState"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    :cond_1
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 8
    :try_start_0
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaRouterJellybeanMr1"

    const-string v1, "Cannot get presentation display for the route."

    .line 9
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 11
    iget-object p2, p2, Landroidx/mediarouter/media/b$a;->a:Landroid/os/Bundle;

    const-string v0, "presentationDisplayId"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public I(Landroidx/mediarouter/media/p$b$b;)Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->w(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/p$b$b;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "MediaRouterJellybeanMr1"

    const-string v3, "Cannot get presentation display for the route."

    .line 4
    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    .line 6
    :goto_1
    iget-object v2, v0, Landroidx/mediarouter/media/p$b$b;->c:Landroidx/mediarouter/media/b;

    .line 7
    invoke-virtual {v2}, Landroidx/mediarouter/media/b;->m()I

    move-result v2

    if-eq p1, v2, :cond_6

    .line 8
    iget-object v2, v0, Landroidx/mediarouter/media/p$b$b;->c:Landroidx/mediarouter/media/b;

    if-eqz v2, :cond_5

    .line 9
    new-instance v3, Landroid/os/Bundle;

    iget-object v4, v2, Landroidx/mediarouter/media/b;->a:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {v2}, Landroidx/mediarouter/media/b;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroidx/mediarouter/media/b;->g()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_1
    move-object v4, v1

    .line 12
    :goto_2
    invoke-virtual {v2}, Landroidx/mediarouter/media/b;->a()V

    .line 13
    iget-object v5, v2, Landroidx/mediarouter/media/b;->c:Ljava/util/List;

    .line 14
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v2, Landroidx/mediarouter/media/b;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    const-string v2, "presentationDisplayId"

    .line 16
    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v1, :cond_3

    const-string p1, "controlFilters"

    .line 17
    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    if-eqz v4, :cond_4

    const-string p1, "groupMemberIds"

    .line 18
    invoke-virtual {v3, p1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 19
    :cond_4
    new-instance p1, Landroidx/mediarouter/media/b;

    invoke-direct {p1, v3}, Landroidx/mediarouter/media/b;-><init>(Landroid/os/Bundle;)V

    .line 20
    iput-object p1, v0, Landroidx/mediarouter/media/p$b$b;->c:Landroidx/mediarouter/media/b;

    .line 21
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->C()V

    goto :goto_3

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method
