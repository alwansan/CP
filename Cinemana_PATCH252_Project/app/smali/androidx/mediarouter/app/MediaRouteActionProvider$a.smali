.class public final Landroidx/mediarouter/app/MediaRouteActionProvider$a;
.super Landroidx/mediarouter/media/g$b;
.source "MediaRouteActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/app/MediaRouteActionProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteActionProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/media/g$b;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/mediarouter/media/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/MediaRouteActionProvider;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteActionProvider;->i()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/g;->i(Landroidx/mediarouter/media/g$b;)V

    :goto_0
    return-void
.end method

.method public onProviderAdded(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$a;->a(Landroidx/mediarouter/media/g;)V

    return-void
.end method

.method public onProviderChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$a;->a(Landroidx/mediarouter/media/g;)V

    return-void
.end method

.method public onProviderRemoved(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$a;->a(Landroidx/mediarouter/media/g;)V

    return-void
.end method

.method public onRouteAdded(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$a;->a(Landroidx/mediarouter/media/g;)V

    return-void
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$a;->a(Landroidx/mediarouter/media/g;)V

    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$a;->a(Landroidx/mediarouter/media/g;)V

    return-void
.end method
