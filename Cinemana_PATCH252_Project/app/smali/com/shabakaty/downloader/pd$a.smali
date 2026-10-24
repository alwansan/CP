.class public final Lcom/shabakaty/downloader/pd$a;
.super Lcom/shabakaty/downloader/hu2;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hu2<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final y:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic z:Lcom/shabakaty/downloader/pd;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pd;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pd$a;->z:Lcom/shabakaty/downloader/pd;

    invoke-direct {p0}, Lcom/shabakaty/downloader/hu2;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/pd$a;->y:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/pd$a;->z:Lcom/shabakaty/downloader/pd;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/pd;->e()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/shabakaty/downloader/y73; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hu2;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    throw p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/pd$a;->z:Lcom/shabakaty/downloader/pd;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/pd;->i:Lcom/shabakaty/downloader/pd$a;

    if-ne v0, p0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/shabakaty/downloader/pd;->i:Lcom/shabakaty/downloader/pd$a;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pd;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/pd$a;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/shabakaty/downloader/pd$a;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pd$a;->z:Lcom/shabakaty/downloader/pd;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/pd;->c(Lcom/shabakaty/downloader/pd$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/pd$a;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/shabakaty/downloader/pd$a;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pd$a;->z:Lcom/shabakaty/downloader/pd;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pd;->d()V

    return-void
.end method
