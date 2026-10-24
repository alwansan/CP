.class public Lcom/shabakaty/downloader/aw3;
.super Ljava/lang/Object;
.source "RxRoom.java"

# interfaces
.implements Lcom/shabakaty/downloader/a84;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/a84<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/aw3;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/q74;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q74<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aw3;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/j74$a;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    if-eq v2, v3, :cond_2

    .line 3
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/mu0;
    :try_end_0
    .catch Lcom/shabakaty/downloader/z21; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_2

    if-nez v0, :cond_0

    .line 4
    :try_start_1
    iget-object v0, v1, Lcom/shabakaty/downloader/j74$a;->r:Lcom/shabakaty/downloader/y74;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/j74$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    :try_start_2
    invoke-interface {v2}, Lcom/shabakaty/downloader/mu0;->h()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 7
    :cond_1
    throw v0
    :try_end_2
    .catch Lcom/shabakaty/downloader/z21; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 8
    check-cast p1, Lcom/shabakaty/downloader/j74$a;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/j74$a;->a(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return-void
.end method
