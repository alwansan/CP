.class public final Lcom/shabakaty/downloader/uk5;
.super Landroidx/mediarouter/media/g$b;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final b:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/fi5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "MediaRouterCallback"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/uk5;->b:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fi5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/media/g$b;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/uk5;->a:Lcom/shabakaty/downloader/fi5;

    return-void
.end method


# virtual methods
.method public final onRouteAdded(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/uk5;->a:Lcom/shabakaty/downloader/fi5;

    .line 2
    iget-object v0, p2, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    .line 4
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/fi5;->K(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/uk5;->b:Lcom/shabakaty/downloader/pk2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteAdded"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/shabakaty/downloader/fi5;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 7
    invoke-virtual {p2, p1, v1, v0}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/uk5;->a:Lcom/shabakaty/downloader/fi5;

    .line 2
    iget-object v0, p2, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    .line 4
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/fi5;->c2(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/uk5;->b:Lcom/shabakaty/downloader/pk2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/shabakaty/downloader/fi5;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 7
    invoke-virtual {p2, p1, v1, v0}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteRemoved(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/uk5;->a:Lcom/shabakaty/downloader/fi5;

    .line 2
    iget-object v0, p2, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    .line 4
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/fi5;->P1(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/uk5;->b:Lcom/shabakaty/downloader/pk2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteRemoved"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/shabakaty/downloader/fi5;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 7
    invoke-virtual {p2, p1, v1, v0}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteSelected(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/uk5;->a:Lcom/shabakaty/downloader/fi5;

    .line 2
    iget-object v0, p2, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    .line 4
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/fi5;->z1(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/uk5;->b:Lcom/shabakaty/downloader/pk2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onRouteSelected"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/shabakaty/downloader/fi5;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unable to call %s on %s."

    .line 7
    invoke-virtual {p2, p1, v1, v0}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRouteUnselected(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/uk5;->a:Lcom/shabakaty/downloader/fi5;

    .line 2
    iget-object v0, p2, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    .line 4
    invoke-interface {p1, v0, p2, p3}, Lcom/shabakaty/downloader/fi5;->Z0(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/uk5;->b:Lcom/shabakaty/downloader/pk2;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onRouteUnselected"

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-class v1, Lcom/shabakaty/downloader/fi5;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "Unable to call %s on %s."

    .line 7
    invoke-virtual {p2, p1, v0, p3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
