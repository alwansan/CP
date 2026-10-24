.class public final Lcom/shabakaty/downloader/r74;
.super Lcom/shabakaty/downloader/f74;
.source "SingleError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f74<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/r74;->a:I

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/r74;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/r74;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/r74;->b:Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/r74;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    iget v1, p0, Lcom/shabakaty/downloader/r74;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {}, Lcom/shabakaty/downloader/vd5;->h()Lcom/shabakaty/downloader/mu0;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/no3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/no3;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/r74;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The callable returned a null value"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/no3;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/no3;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void

    .line 12
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/r74;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources."

    .line 13
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 15
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 16
    :goto_1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 17
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void

    .line 18
    :goto_2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/r74;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
