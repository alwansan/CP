.class public final Landroidx/lifecycle/LifecycleCoroutineScopeImpl;
.super Lcom/shabakaty/downloader/ih2;
.source "Lifecycle.kt"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/lifecycle/LifecycleCoroutineScopeImpl;",
        "Lcom/shabakaty/downloader/ih2;",
        "Landroidx/lifecycle/f;",
        "Landroidx/lifecycle/e;",
        "lifecycle",
        "Lcom/shabakaty/downloader/me0;",
        "coroutineContext",
        "<init>",
        "(Landroidx/lifecycle/e;Lcom/shabakaty/downloader/me0;)V",
        "lifecycle-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final r:Landroidx/lifecycle/e;

.field public final s:Lcom/shabakaty/downloader/me0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/e;Lcom/shabakaty/downloader/me0;)V
    .locals 1

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ih2;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->r:Landroidx/lifecycle/e;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->s:Lcom/shabakaty/downloader/me0;

    .line 2
    invoke-virtual {p1}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/e$c;->r:Landroidx/lifecycle/e$c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, p1, v0}, Lcom/shabakaty/downloader/bp;->c(Lcom/shabakaty/downloader/me0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public B()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->s:Lcom/shabakaty/downloader/me0;

    return-object v0
.end method

.method public a()Landroidx/lifecycle/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->r:Landroidx/lifecycle/e;

    return-object v0
.end method

.method public j(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->r:Landroidx/lifecycle/e;

    .line 2
    invoke-virtual {p1}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/e$c;->r:Landroidx/lifecycle/e$c;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->r:Landroidx/lifecycle/e;

    .line 4
    invoke-virtual {p1, p0}, Landroidx/lifecycle/e;->c(Lcom/shabakaty/downloader/qh2;)V

    .line 5
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->s:Lcom/shabakaty/downloader/me0;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0, p2, v0}, Lcom/shabakaty/downloader/bp;->c(Lcom/shabakaty/downloader/me0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
