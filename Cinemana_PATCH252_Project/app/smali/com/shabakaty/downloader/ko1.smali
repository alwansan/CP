.class public final Lcom/shabakaty/downloader/ko1;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ko1$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/rn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rn1<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ko1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ko1$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ko1;->a:Lcom/shabakaty/downloader/rn1;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Future was expected to be done, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/ko1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/shabakaty/downloader/pi2<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/shabakaty/downloader/vz1$c;->s:Lcom/shabakaty/downloader/vz1;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/vz1$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vz1$c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/pi2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/pi2<",
            "TV;>;)",
            "Lcom/shabakaty/downloader/pi2<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/cu;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/pi2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/ar$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/pi2<",
            "TV;>;",
            "Lcom/shabakaty/downloader/ar$a<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ko1;->a:Lcom/shabakaty/downloader/rn1;

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, p0, v0, p1, v1}, Lcom/shabakaty/downloader/ko1;->f(ZLcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/rn1;Lcom/shabakaty/downloader/ar$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static f(ZLcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/rn1;Lcom/shabakaty/downloader/ar$a;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/shabakaty/downloader/pi2<",
            "TI;>;",
            "Lcom/shabakaty/downloader/rn1<",
            "-TI;+TO;>;",
            "Lcom/shabakaty/downloader/ar$a<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ko1$b;

    invoke-direct {v0, p3, p2}, Lcom/shabakaty/downloader/ko1$b;-><init>(Lcom/shabakaty/downloader/ar$a;Lcom/shabakaty/downloader/rn1;)V

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {p1, p2, p4}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    if-eqz p0, :cond_0

    .line 7
    new-instance p0, Lcom/shabakaty/downloader/ko1$c;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ko1$c;-><init>(Lcom/shabakaty/downloader/pi2;)V

    .line 8
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 9
    iget-object p2, p3, Lcom/shabakaty/downloader/ar$a;->c:Lcom/shabakaty/downloader/ns3;

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2, p0, p1}, Lcom/shabakaty/downloader/w0;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method public static g(Ljava/util/Collection;)Lcom/shabakaty/downloader/pi2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/pi2<",
            "+TV;>;>;)",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ii2;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/shabakaty/downloader/ii2;-><init>(Ljava/util/List;ZLjava/util/concurrent/Executor;)V

    return-object v0
.end method
