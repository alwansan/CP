.class public final synthetic Lcom/shabakaty/downloader/n6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/vn;
.implements Lcom/shabakaty/downloader/p6;
.implements Lcom/shabakaty/downloader/np0$a;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/o6;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/o6;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/n6;->r:Lcom/shabakaty/downloader/o6;

    return-void
.end method


# virtual methods
.method public Y(Lcom/shabakaty/downloader/un;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/n6;->r:Lcom/shabakaty/downloader/o6;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/shabakaty/downloader/o6;->c:Lcom/shabakaty/downloader/vn;

    instance-of v1, v1, Lcom/shabakaty/downloader/nt0;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/o6;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/o6;->c:Lcom/shabakaty/downloader/vn;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/vn;->Y(Lcom/shabakaty/downloader/un;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/shabakaty/downloader/pj3;)V
    .locals 7

    iget-object v0, p0, Lcom/shabakaty/downloader/n6;->r:Lcom/shabakaty/downloader/o6;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/rk2;->a:Lcom/shabakaty/downloader/rk2;

    const-string v2, "AnalyticsConnector now available."

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/rk2;->b(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/pj3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/l6;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/l6;)V

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/gf0;

    invoke-direct {v3}, Lcom/shabakaty/downloader/gf0;-><init>()V

    const-string v4, "clx"

    .line 5
    invoke-interface {p1, v4, v3}, Lcom/shabakaty/downloader/l6;->e(Ljava/lang/String;Lcom/shabakaty/downloader/l6$b;)Lcom/shabakaty/downloader/l6$a;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x3

    const-string v5, "FirebaseCrashlytics"

    .line 6
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const-string v4, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 7
    invoke-static {v5, v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string v4, "crash"

    .line 8
    invoke-interface {p1, v4, v3}, Lcom/shabakaty/downloader/l6;->e(Ljava/lang/String;Lcom/shabakaty/downloader/l6$b;)Lcom/shabakaty/downloader/l6$a;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 9
    invoke-static {v5, p1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    if-eqz v4, :cond_3

    const-string p1, "Registered Firebase Analytics listener."

    .line 10
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/rk2;->b(Ljava/lang/String;)V

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/fq1;

    const/16 v1, 0x15

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/fq1;-><init>(I)V

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/om;

    const/16 v4, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v4, v5}, Lcom/shabakaty/downloader/om;-><init>(Lcom/shabakaty/downloader/fq1;ILjava/util/concurrent/TimeUnit;)V

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/o6;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/un;

    .line 15
    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/fq1;->Y(Lcom/shabakaty/downloader/un;)V

    goto :goto_0

    .line 16
    :cond_2
    iput-object p1, v3, Lcom/shabakaty/downloader/gf0;->b:Lcom/shabakaty/downloader/q6;

    .line 17
    iput-object v1, v3, Lcom/shabakaty/downloader/gf0;->a:Lcom/shabakaty/downloader/q6;

    .line 18
    iput-object p1, v0, Lcom/shabakaty/downloader/o6;->c:Lcom/shabakaty/downloader/vn;

    .line 19
    iput-object v1, v0, Lcom/shabakaty/downloader/o6;->b:Lcom/shabakaty/downloader/p6;

    .line 20
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    const-string p1, "Could not register Firebase Analytics listener; a listener is already registered."

    .line 21
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/rk2;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public x(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/n6;->r:Lcom/shabakaty/downloader/o6;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/o6;->b:Lcom/shabakaty/downloader/p6;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/p6;->x(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
