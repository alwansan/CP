.class public synthetic Lcom/shabakaty/downloader/na6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/shabakaty/downloader/me3;


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/Object;

.field public final t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hl4;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/na6;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/na6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/na6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/j51;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/na6;->r:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/na6;->t:Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/yh1;

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/yh1;-><init>(ILcom/shabakaty/downloader/io2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/na6;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pe0;Lcom/shabakaty/downloader/fv;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/na6;->r:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/na6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/na6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/zk4;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/na6;->r:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/na6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/na6;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nf4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/mb3;->a(Lcom/shabakaty/downloader/nf4;Ljava/lang/Object;)Lcom/shabakaty/downloader/mb3;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/na6;->s:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/yh1;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/yh1;->e(Lcom/shabakaty/downloader/mb3;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/na6;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/j51;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/j51;->j:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/na6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/na6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fv;

    iget-object v1, p0, Lcom/shabakaty/downloader/na6;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/pe0;

    sget-object v2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/fv;->u(Lcom/shabakaty/downloader/pe0;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/na6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/hl4;

    iget-object v1, p0, Lcom/shabakaty/downloader/na6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/hl4;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->k(Z)V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/hl4;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hl4;->c()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    iget-object v3, v0, Lcom/shabakaty/downloader/hl4;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hl4;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    sget-object v2, Lcom/shabakaty/downloader/rn5;->a:Lcom/shabakaty/downloader/xk5;

    .line 13
    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/downloader/xk5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 14
    :goto_1
    throw v1

    .line 15
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/na6;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    iget-object v1, p0, Lcom/shabakaty/downloader/na6;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zk4;

    .line 16
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Lcom/shabakaty/downloader/au2; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 18
    new-instance v2, Lcom/shabakaty/downloader/au2;

    const/16 v3, 0xd

    const-string v4, "Internal error has occurred when executing ML Kit tasks"

    .line 19
    invoke-direct {v2, v4, v3, v0}, Lcom/shabakaty/downloader/au2;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 20
    iget-object v0, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 21
    iget-object v1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    :goto_2
    return-void

    .line 22
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/na6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->j()Lcom/shabakaty/downloader/mb3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v1, p0, Lcom/shabakaty/downloader/na6;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/j51;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/j51;->c(Lcom/shabakaty/downloader/mb3;)V

    return-void

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
