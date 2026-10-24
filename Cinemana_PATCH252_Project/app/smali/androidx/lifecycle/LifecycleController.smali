.class public final Landroidx/lifecycle/LifecycleController;
.super Ljava/lang/Object;
.source "LifecycleController.kt"


# instance fields
.field public final a:Landroidx/lifecycle/f;

.field public final b:Landroidx/lifecycle/e;

.field public final c:Landroidx/lifecycle/e$c;

.field public final d:Lcom/shabakaty/downloader/zt0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/e;Landroidx/lifecycle/e$c;Lcom/shabakaty/downloader/zt0;Lcom/shabakaty/downloader/e92;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minState"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchQueue"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LifecycleController;->b:Landroidx/lifecycle/e;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController;->c:Landroidx/lifecycle/e$c;

    iput-object p3, p0, Landroidx/lifecycle/LifecycleController;->d:Lcom/shabakaty/downloader/zt0;

    .line 2
    new-instance p2, Landroidx/lifecycle/LifecycleController$observer$1;

    invoke-direct {p2, p0, p4}, Landroidx/lifecycle/LifecycleController$observer$1;-><init>(Landroidx/lifecycle/LifecycleController;Lcom/shabakaty/downloader/e92;)V

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController;->a:Landroidx/lifecycle/f;

    .line 3
    invoke-virtual {p1}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object p3

    sget-object v0, Landroidx/lifecycle/e$c;->r:Landroidx/lifecycle/e$c;

    if-ne p3, v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-interface {p4, p1}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    .line 5
    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleController;->a()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/e;->a(Lcom/shabakaty/downloader/qh2;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleController;->b:Landroidx/lifecycle/e;

    iget-object v1, p0, Landroidx/lifecycle/LifecycleController;->a:Landroidx/lifecycle/f;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->c(Lcom/shabakaty/downloader/qh2;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/LifecycleController;->d:Lcom/shabakaty/downloader/zt0;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/zt0;->b:Z

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zt0;->b()V

    return-void
.end method
