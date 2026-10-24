.class public Landroidx/mediarouter/media/n$b;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/mediarouter/media/n;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/n$b;->r:Landroidx/mediarouter/media/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/n$b;->r:Landroidx/mediarouter/media/n;

    invoke-virtual {v0}, Landroidx/mediarouter/media/n;->a()V

    return-void
.end method
