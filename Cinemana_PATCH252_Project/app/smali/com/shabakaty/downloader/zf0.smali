.class public Lcom/shabakaty/downloader/zf0;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zf0$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/jl0;

.field public final c:J

.field public d:Lcom/shabakaty/downloader/yh1;

.field public e:Lcom/shabakaty/downloader/yh1;

.field public f:Lcom/shabakaty/downloader/tf0;

.field public final g:Lcom/shabakaty/downloader/ux1;

.field public final h:Lcom/shabakaty/downloader/vn;

.field public final i:Lcom/shabakaty/downloader/p6;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Lcom/shabakaty/downloader/hf0;

.field public final l:Lcom/shabakaty/downloader/bg0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ec1;Lcom/shabakaty/downloader/ux1;Lcom/shabakaty/downloader/bg0;Lcom/shabakaty/downloader/jl0;Lcom/shabakaty/downloader/vn;Lcom/shabakaty/downloader/p6;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/zf0;->b:Lcom/shabakaty/downloader/jl0;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/zf0;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/zf0;->g:Lcom/shabakaty/downloader/ux1;

    .line 7
    iput-object p3, p0, Lcom/shabakaty/downloader/zf0;->l:Lcom/shabakaty/downloader/bg0;

    .line 8
    iput-object p5, p0, Lcom/shabakaty/downloader/zf0;->h:Lcom/shabakaty/downloader/vn;

    .line 9
    iput-object p6, p0, Lcom/shabakaty/downloader/zf0;->i:Lcom/shabakaty/downloader/p6;

    .line 10
    iput-object p7, p0, Lcom/shabakaty/downloader/zf0;->j:Ljava/util/concurrent/ExecutorService;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/hf0;

    invoke-direct {p1, p7}, Lcom/shabakaty/downloader/hf0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/zf0;->k:Lcom/shabakaty/downloader/hf0;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/zf0;->c:J

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/zf0;Lcom/shabakaty/downloader/x24;)Lcom/shabakaty/downloader/uk4;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zf0;->k:Lcom/shabakaty/downloader/hf0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hf0;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zf0;->d:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->d()Z

    const/4 v0, 0x2

    const-string v1, "FirebaseCrashlytics"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Initialization marker file was created."

    .line 4
    invoke-static {v1, v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zf0;->h:Lcom/shabakaty/downloader/vn;

    new-instance v3, Lcom/shabakaty/downloader/xf0;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/xf0;-><init>(Lcom/shabakaty/downloader/zf0;)V

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/vn;->Y(Lcom/shabakaty/downloader/un;)V

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/t24;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/t24;->b()Lcom/shabakaty/downloader/r24;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/r24;->a()Lcom/shabakaty/downloader/ja1;

    move-result-object v0

    iget-boolean v0, v0, Lcom/shabakaty/downloader/ja1;->a:Z

    if-nez v0, :cond_2

    const/4 p1, 0x3

    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    if-eqz p1, :cond_1

    .line 9
    :try_start_1
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->d(Ljava/lang/Exception;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/zf0;->f:Lcom/shabakaty/downloader/tf0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tf0;->e(Lcom/shabakaty/downloader/x24;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Previous sessions could not be finalized."

    .line 12
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/zf0;->f:Lcom/shabakaty/downloader/tf0;

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/t24;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/zk4;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 16
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tf0;->i(Lcom/shabakaty/downloader/uk4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Crashlytics encountered a problem during asynchronous initialization."

    .line 17
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->d(Ljava/lang/Exception;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zf0;->c()V

    return-object p1

    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zf0;->c()V

    .line 20
    throw p1
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/x24;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zf0$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/zf0$a;-><init>(Lcom/shabakaty/downloader/zf0;Lcom/shabakaty/downloader/x24;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/zf0;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "FirebaseCrashlytics"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v2, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v2, 0x4

    .line 5
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Crashlytics timed out during initialization."

    .line 6
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Crashlytics encountered a problem during initialization."

    .line 7
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p1

    const-string v0, "Crashlytics was interrupted during initialization."

    .line 8
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zf0;->k:Lcom/shabakaty/downloader/hf0;

    new-instance v1, Lcom/shabakaty/downloader/zf0$b;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/zf0$b;-><init>(Lcom/shabakaty/downloader/zf0;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/hf0;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method
