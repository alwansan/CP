.class final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source "LifecycleController.kt"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/LifecycleController;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/e$c;Lcom/shabakaty/downloader/zt0;Lcom/shabakaty/downloader/e92;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/shabakaty/downloader/rh2;",
        "source",
        "Landroidx/lifecycle/e$b;",
        "<anonymous parameter 1>",
        "Lcom/shabakaty/downloader/qv4;",
        "onStateChanged",
        "(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic r:Landroidx/lifecycle/LifecycleController;

.field public final synthetic s:Lcom/shabakaty/downloader/e92;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleController;Lcom/shabakaty/downloader/e92;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->r:Landroidx/lifecycle/LifecycleController;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->s:Lcom/shabakaty/downloader/e92;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p2

    const-string v0, "source.lifecycle"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object p2

    sget-object v1, Landroidx/lifecycle/e$c;->r:Landroidx/lifecycle/e$c;

    if-ne p2, v1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->r:Landroidx/lifecycle/LifecycleController;

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->s:Lcom/shabakaty/downloader/e92;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    .line 4
    invoke-virtual {p1}, Landroidx/lifecycle/LifecycleController;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->r:Landroidx/lifecycle/LifecycleController;

    .line 6
    iget-object p2, p2, Landroidx/lifecycle/LifecycleController;->c:Landroidx/lifecycle/e$c;

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    const/4 p2, 0x1

    if-gez p1, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->r:Landroidx/lifecycle/LifecycleController;

    .line 9
    iget-object p1, p1, Landroidx/lifecycle/LifecycleController;->d:Lcom/shabakaty/downloader/zt0;

    .line 10
    iput-boolean p2, p1, Lcom/shabakaty/downloader/zt0;->a:Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->r:Landroidx/lifecycle/LifecycleController;

    .line 12
    iget-object p1, p1, Landroidx/lifecycle/LifecycleController;->d:Lcom/shabakaty/downloader/zt0;

    .line 13
    iget-boolean v0, p1, Lcom/shabakaty/downloader/zt0;->a:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-boolean v0, p1, Lcom/shabakaty/downloader/zt0;->b:Z

    xor-int/2addr p2, v0

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p1, Lcom/shabakaty/downloader/zt0;->a:Z

    .line 16
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zt0;->b()V

    :goto_0
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot resume a finished dispatcher"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
