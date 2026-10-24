.class public final Lcom/shabakaty/downloader/sw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/MenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/app/MediaRouteButton;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "CastButtonFactory"

    const-string v1, "The log tag cannot be null or empty."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sw;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sw;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/MenuItem;)V
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/xh4;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/xh4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/xh4;->b()Lcom/shabakaty/downloader/q2;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "MenuItemCompat"

    const-string v0, "getActionProvider: item does not implement SupportMenuItem; returning null"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    :goto_0
    check-cast p1, Landroidx/mediarouter/app/MediaRouteActionProvider;

    if-eqz p1, :cond_5

    .line 6
    invoke-static {p0}, Lcom/shabakaty/downloader/tw;->e(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tw;->b()Landroidx/mediarouter/media/f;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 8
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Landroidx/mediarouter/media/f;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Landroidx/mediarouter/media/f;

    invoke-virtual {v0}, Landroidx/mediarouter/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteActionProvider;->c:Landroidx/mediarouter/media/g;

    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteActionProvider;->d:Landroidx/mediarouter/app/MediaRouteActionProvider$a;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/g;->i(Landroidx/mediarouter/media/g$b;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteActionProvider;->c:Landroidx/mediarouter/media/g;

    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteActionProvider;->d:Landroidx/mediarouter/app/MediaRouteActionProvider$a;

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, p0, v1, v2}, Landroidx/mediarouter/media/g;->a(Landroidx/mediarouter/media/f;Landroidx/mediarouter/media/g$b;I)V

    .line 14
    :cond_2
    iput-object p0, p1, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Landroidx/mediarouter/media/f;

    .line 15
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteActionProvider;->i()V

    .line 16
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteActionProvider;->g:Landroidx/mediarouter/app/MediaRouteButton;

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteButton;->setRouteSelector(Landroidx/mediarouter/media/f;)V

    goto :goto_1

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "selector must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
