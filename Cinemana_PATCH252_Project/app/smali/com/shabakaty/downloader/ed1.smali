.class public final synthetic Lcom/shabakaty/downloader/ed1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/kh4;
.implements Lcom/shabakaty/downloader/td0;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/fd1;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fd1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ed1;->r:Lcom/shabakaty/downloader/fd1;

    return-void
.end method


# virtual methods
.method public M(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/ed1;->r:Lcom/shabakaty/downloader/fd1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/fd1;->c:Lcom/shabakaty/downloader/s90;

    .line 3
    monitor-enter v1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {v2}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/s90;->c:Lcom/shabakaty/downloader/uk4;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/s90;->b:Lcom/shabakaty/downloader/x90;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_1
    iget-object v2, v1, Lcom/shabakaty/downloader/x90;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/shabakaty/downloader/x90;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v1

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->h()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t90;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/t90;->d:Lorg/json/JSONArray;

    const-string v1, "FirebaseRemoteConfig"

    .line 13
    iget-object v2, v0, Lcom/shabakaty/downloader/fd1;->a:Lcom/shabakaty/downloader/cc1;

    if-nez v2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    :try_start_2
    invoke-static {p1}, Lcom/shabakaty/downloader/fd1;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/fd1;->a:Lcom/shabakaty/downloader/cc1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cc1;->c(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/shabakaty/downloader/t1; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not update ABT experiments."

    .line 16
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "Could not parse ABT experiments from the JSON response."

    .line 17
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string p1, "FirebaseRemoteConfig"

    const-string v0, "Activated configs written to disk are null."

    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 21
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/downloader/ed1;->r:Lcom/shabakaty/downloader/fd1;

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, Lcom/shabakaty/downloader/fd1;->c:Lcom/shabakaty/downloader/s90;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s90;->b()Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/fd1;->d:Lcom/shabakaty/downloader/s90;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/s90;->b()Lcom/shabakaty/downloader/uk4;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/shabakaty/downloader/uk4;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 3
    invoke-static {v2}, Lcom/shabakaty/downloader/kl4;->g([Lcom/shabakaty/downloader/uk4;)Lcom/shabakaty/downloader/uk4;

    move-result-object v2

    iget-object v3, v0, Lcom/shabakaty/downloader/fd1;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/shabakaty/downloader/ij4;

    invoke-direct {v4, v0, p1, v1}, Lcom/shabakaty/downloader/ij4;-><init>(Lcom/shabakaty/downloader/fd1;Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/uk4;)V

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/uk4;->f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    return-object p1
.end method
