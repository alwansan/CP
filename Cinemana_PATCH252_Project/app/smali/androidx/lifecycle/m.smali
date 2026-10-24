.class public Landroidx/lifecycle/m;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/m$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/g;

.field public final b:Landroid/os/Handler;

.field public c:Landroidx/lifecycle/m$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/g;

    invoke-direct {v0, p1}, Landroidx/lifecycle/g;-><init>(Lcom/shabakaty/downloader/rh2;)V

    iput-object v0, p0, Landroidx/lifecycle/m;->a:Landroidx/lifecycle/g;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/m;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/e$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/m;->c:Landroidx/lifecycle/m$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/lifecycle/m$a;->run()V

    .line 3
    :cond_0
    new-instance v0, Landroidx/lifecycle/m$a;

    iget-object v1, p0, Landroidx/lifecycle/m;->a:Landroidx/lifecycle/g;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/m$a;-><init>(Landroidx/lifecycle/g;Landroidx/lifecycle/e$b;)V

    iput-object v0, p0, Landroidx/lifecycle/m;->c:Landroidx/lifecycle/m$a;

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/m;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
