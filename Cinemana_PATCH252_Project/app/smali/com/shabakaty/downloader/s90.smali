.class public Lcom/shabakaty/downloader/s90;
.super Ljava/lang/Object;
.source "ConfigCacheClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/s90$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/s90;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lcom/shabakaty/downloader/x90;

.field public c:Lcom/shabakaty/downloader/uk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/uk4<",
            "Lcom/shabakaty/downloader/t90;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/s90;->d:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/r90;->r:Lcom/shabakaty/downloader/r90;

    sput-object v0, Lcom/shabakaty/downloader/s90;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/shabakaty/downloader/x90;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s90;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/s90;->b:Lcom/shabakaty/downloader/x90;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/s90;->c:Lcom/shabakaty/downloader/uk4;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/uk4;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/s90$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/s90$b;-><init>(Lcom/shabakaty/downloader/s90$a;)V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/s90;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/uk4;->c(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)Lcom/shabakaty/downloader/uk4;

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/uk4;->b(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/p63;)Lcom/shabakaty/downloader/uk4;

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/uk4;->a(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/g63;)Lcom/shabakaty/downloader/uk4;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/s90$b;->r:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uk4;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uk4;->h()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/uk4;->g()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Task await timed out."

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized b()Lcom/shabakaty/downloader/uk4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/uk4<",
            "Lcom/shabakaty/downloader/t90;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s90;->c:Lcom/shabakaty/downloader/uk4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uk4;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/s90;->c:Lcom/shabakaty/downloader/uk4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/uk4;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s90;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/shabakaty/downloader/s90;->b:Lcom/shabakaty/downloader/x90;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/shabakaty/downloader/wq3;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/wq3;-><init>(Lcom/shabakaty/downloader/x90;)V

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/kl4;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/s90;->c:Lcom/shabakaty/downloader/uk4;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/s90;->c:Lcom/shabakaty/downloader/uk4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/shabakaty/downloader/t90;)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/t90;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "Lcom/shabakaty/downloader/t90;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s90;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/downloader/q90;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/q90;-><init>(Lcom/shabakaty/downloader/s90;Lcom/shabakaty/downloader/t90;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl4;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/s90;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shabakaty/downloader/p90;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, p1}, Lcom/shabakaty/downloader/p90;-><init>(Lcom/shabakaty/downloader/s90;ZLcom/shabakaty/downloader/t90;)V

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/uk4;->n(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/kh4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1
.end method
