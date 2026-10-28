.class public final Lcom/shabakaty/cinemana/ca1/LocalAccountLog;
.super Ljava/lang/Object;

.method public static init(Landroid/content/Context;)V
    .locals 0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object p0
    sput-object p0, Lcom/shabakaty/cinemana/ca1/Log94;->app:Landroid/content/Context;
    return-void
.end method

.method public static emit(Ljava/lang/String;)V
    .locals 7
    :try_start
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Log94;->enabled()Z
    move-result v0
    if-eqz v0, :done
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Log94;->app:Landroid/content/Context;
    if-eqz v1, :done
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Log94$$ExternalSyntheticLambda0;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    const-string v4, "LOCAL_ACCOUNT"
    move-object v5, p0
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/ca1/Log94$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    sget-object v6, Lcom/shabakaty/cinemana/ca1/Log94;->worker:Ljava/util/concurrent/ExecutorService;
    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :ignored
    goto :done
    :ignored
    move-exception v0
    :done
    return-void
.end method
