.class public Lcom/shabakaty/downloader/c92;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ti2$a;

.field public final synthetic s:Lcom/shabakaty/downloader/h14;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/ti2$a;Lcom/shabakaty/downloader/h14;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/c92;->r:Lcom/shabakaty/downloader/ti2$a;

    iput-object p3, p0, Lcom/shabakaty/downloader/c92;->s:Lcom/shabakaty/downloader/h14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c92;->r:Lcom/shabakaty/downloader/ti2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/c92;->s:Lcom/shabakaty/downloader/h14;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/h14;->c()Lcom/shabakaty/downloader/j14;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4
    invoke-virtual {v2}, Lcom/shabakaty/downloader/j14;->u()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/h14;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/h14;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/ti2$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/j14;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v2}, Lcom/shabakaty/downloader/j14;->r()[B

    move-result-object v6

    .line 9
    invoke-virtual {v4}, Lcom/shabakaty/downloader/j14;->r()[B

    move-result-object v7

    .line 10
    array-length v8, v6

    array-length v9, v7

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 11
    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_4

    .line 12
    aget-byte v9, v6, v8

    aget-byte v10, v7, v8

    if-eq v9, v10, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_7

    if-nez v4, :cond_5

    .line 13
    iget-object v4, v0, Lcom/shabakaty/downloader/ti2$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/j14;->b()Lcom/shabakaty/downloader/j14;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 14
    iget-object v2, v0, Lcom/shabakaty/downloader/ti2;->a:Ljava/util/EventListener;

    .line 15
    check-cast v2, Lcom/shabakaty/downloader/m14;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/m14;->serviceResolved(Lcom/shabakaty/downloader/h14;)V

    goto :goto_2

    .line 16
    :cond_5
    iget-object v5, v0, Lcom/shabakaty/downloader/ti2$a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/j14;->b()Lcom/shabakaty/downloader/j14;

    move-result-object v2

    invoke-interface {v5, v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    iget-object v2, v0, Lcom/shabakaty/downloader/ti2;->a:Ljava/util/EventListener;

    .line 18
    check-cast v2, Lcom/shabakaty/downloader/m14;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/m14;->serviceResolved(Lcom/shabakaty/downloader/h14;)V

    goto :goto_2

    .line 19
    :cond_6
    sget-object v2, Lcom/shabakaty/downloader/ti2$a;->d:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service Resolved called for an unresolved event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_7
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
