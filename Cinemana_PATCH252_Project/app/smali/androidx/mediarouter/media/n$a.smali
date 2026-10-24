.class public Landroidx/mediarouter/media/n$a;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredMediaRouteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/media/n;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/n$a;->a:Landroidx/mediarouter/media/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/media/n$a;->a:Landroidx/mediarouter/media/n;

    invoke-virtual {p1}, Landroidx/mediarouter/media/n;->a()V

    return-void
.end method
