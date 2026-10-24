.class public final Lcom/shabakaty/downloader/pn3$a;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pn3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public volatile r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final s:Lcom/shabakaty/downloader/wq;

.field public final synthetic t:Lcom/shabakaty/downloader/pn3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pn3;Lcom/shabakaty/downloader/wq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wq;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/pn3$a;->s:Lcom/shabakaty/downloader/wq;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/pn3$a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/pn3;->H:Lcom/shabakaty/downloader/vr3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 6

    const-string v0, "OkHttp "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/pn3;->H:Lcom/shabakaty/downloader/vr3;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qw1;->i()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread"

    .line 7
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/pn3;->t:Lcom/shabakaty/downloader/pn3$c;

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 12
    :try_start_1
    iget-object v3, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/pn3;->g()Lcom/shabakaty/downloader/ws3;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    iget-object v3, p0, Lcom/shabakaty/downloader/pn3$a;->s:Lcom/shabakaty/downloader/wq;

    iget-object v4, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    invoke-interface {v3, v4, v0}, Lcom/shabakaty/downloader/wq;->onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    .line 15
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v3, 0x1

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 16
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/pn3;->cancel()V

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canceled due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 19
    iget-object v4, p0, Lcom/shabakaty/downloader/pn3$a;->s:Lcom/shabakaty/downloader/wq;

    iget-object v5, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    invoke-interface {v4, v5, v0}, Lcom/shabakaty/downloader/wq;->onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V

    .line 20
    :cond_0
    throw v3

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v3

    :goto_2
    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 22
    sget-object v0, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    invoke-static {v5}, Lcom/shabakaty/downloader/pn3;->a(Lcom/shabakaty/downloader/pn3;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5, v3}, Lcom/shabakaty/downloader/lc3;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_3

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3$a;->s:Lcom/shabakaty/downloader/wq;

    iget-object v4, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    invoke-interface {v0, v4, v3}, Lcom/shabakaty/downloader/wq;->onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 25
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    goto :goto_0

    .line 26
    :goto_4
    iget-object v0, v0, Lcom/shabakaty/downloader/a63;->r:Lcom/shabakaty/downloader/fu0;

    .line 27
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/fu0;->b(Lcom/shabakaty/downloader/pn3$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    .line 29
    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    .line 30
    iget-object v3, v3, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 31
    iget-object v3, v3, Lcom/shabakaty/downloader/a63;->r:Lcom/shabakaty/downloader/fu0;

    .line 32
    invoke-virtual {v3, p0}, Lcom/shabakaty/downloader/fu0;->b(Lcom/shabakaty/downloader/pn3$a;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
