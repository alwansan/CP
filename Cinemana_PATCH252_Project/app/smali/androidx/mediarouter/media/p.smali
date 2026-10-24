.class public abstract Landroidx/mediarouter/media/p;
.super Landroidx/mediarouter/media/c;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/p$a;,
        Landroidx/mediarouter/media/p$d;,
        Landroidx/mediarouter/media/p$c;,
        Landroidx/mediarouter/media/p$b;,
        Landroidx/mediarouter/media/p$e;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/mediarouter/media/c$d;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/mediarouter/media/p;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/c$d;-><init>(Landroid/content/ComponentName;)V

    .line 3
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/c;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/c$d;)V

    return-void
.end method


# virtual methods
.method public r(Landroidx/mediarouter/media/g$h;)V
    .locals 0

    return-void
.end method

.method public s(Landroidx/mediarouter/media/g$h;)V
    .locals 0

    return-void
.end method

.method public t(Landroidx/mediarouter/media/g$h;)V
    .locals 0

    return-void
.end method

.method public u(Landroidx/mediarouter/media/g$h;)V
    .locals 0

    return-void
.end method
