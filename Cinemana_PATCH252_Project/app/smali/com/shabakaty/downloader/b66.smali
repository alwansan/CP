.class public final Lcom/shabakaty/downloader/b66;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/g66;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g66;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    new-instance v1, Lcom/shabakaty/downloader/t16;

    .line 1
    invoke-direct {v1, p0, p2, p1}, Lcom/shabakaty/downloader/t16;-><init>(Lcom/shabakaty/downloader/b66;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    new-instance v1, Lcom/shabakaty/downloader/f46;

    const/4 v2, 0x4

    .line 1
    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/f46;-><init>(Lcom/shabakaty/downloader/b66;Landroid/app/Activity;I)V

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    new-instance v1, Lcom/shabakaty/downloader/f46;

    const/4 v2, 0x2

    .line 1
    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/f46;-><init>(Lcom/shabakaty/downloader/b66;Landroid/app/Activity;I)V

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    new-instance v1, Lcom/shabakaty/downloader/f46;

    const/4 v2, 0x1

    .line 1
    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/f46;-><init>(Lcom/shabakaty/downloader/b66;Landroid/app/Activity;I)V

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/ts5;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/ts5;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    new-instance v2, Lcom/shabakaty/downloader/t16;

    .line 2
    invoke-direct {v2, p0, p1, v0}, Lcom/shabakaty/downloader/t16;-><init>(Lcom/shabakaty/downloader/b66;Landroid/app/Activity;Lcom/shabakaty/downloader/ts5;)V

    .line 3
    iget-object p1, v1, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x32

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ts5;->g2(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    new-instance v1, Lcom/shabakaty/downloader/f46;

    const/4 v2, 0x0

    .line 1
    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/f46;-><init>(Lcom/shabakaty/downloader/b66;Landroid/app/Activity;I)V

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    new-instance v1, Lcom/shabakaty/downloader/f46;

    const/4 v2, 0x3

    .line 1
    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/f46;-><init>(Lcom/shabakaty/downloader/b66;Landroid/app/Activity;I)V

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
