.class public Landroidx/mediarouter/media/p$a;
.super Landroidx/mediarouter/media/p$d;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/p$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/p$d;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/p$e;)V

    return-void
.end method


# virtual methods
.method public B(Landroidx/mediarouter/media/p$b$b;Landroidx/mediarouter/media/b$a;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/p$d;->B(Landroidx/mediarouter/media/p$b$b;Landroidx/mediarouter/media/b$a;)V

    .line 2
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result p1

    .line 4
    iget-object p2, p2, Landroidx/mediarouter/media/b$a;->a:Landroid/os/Bundle;

    const-string v0, "deviceType"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
