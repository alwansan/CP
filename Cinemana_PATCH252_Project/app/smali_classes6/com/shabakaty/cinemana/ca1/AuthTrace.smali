.class public final Lcom/shabakaty/cinemana/ca1/AuthTrace;
.super Ljava/lang/Object;
.source "AuthTrace.smali"

# Only fixed stage names, integer statuses and allowlisted destinations may enter this logger.
.method public static emit(Ljava/lang/String;)V
    .locals 8
    :try_start
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Log94;->enabled()Z
    move-result v0
    if-eqz v0, :done
    const-string v0, "CinemanaAuth"
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Log94;->app:Landroid/content/Context;
    if-eqz v1, :done
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Log94$$ExternalSyntheticLambda0;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    const-string v4, "AUTH"
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

.method public static start(Landroid/app/Activity;)V
    .locals 2
    :try_start
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    sput-object v0, Lcom/shabakaty/cinemana/ca1/Log94;->app:Landroid/content/Context;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "google_signin_begin package="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :ignored
    goto :done
    :ignored
    move-exception v0
    :done
    return-void
.end method

.method public static googleError(I)V
    .locals 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "google_signin_error status="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V
    return-void
.end method

.method public static fail()V
    .locals 1
    sget-object v0, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->googleLoginCallback:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;
    if-eqz v0, :done
    invoke-interface {v0}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;->onGoogleLoginFail()V
    :done
    return-void
.end method

.method public static network(Lcom/shabakaty/downloader/pn3;Ljava/lang/String;I)V
    .locals 7
    :try_start
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Log94;->enabled()Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->H:Lcom/shabakaty/downloader/vr3;
    iget-object v1, v0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;
    iget-object v2, v1, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;
    const-string v3, "account.shabakaty.com"
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :account
    const-string v3, "account.shabakaty.cc"
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :account
    const-string v3, "www.googleapis.com"
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :done
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qw1;->b()Ljava/lang/String;
    move-result-object v3
    const-string v4, "/oauth2/v4/token"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :done
    const-string v3, "google_token"
    goto :record
    :account
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qw1;->b()Ljava/lang/String;
    move-result-object v3
    # Do not log arbitrary paths (which could contain identifiers).
    const-string v4, "/core/connect/google"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :record
    const-string v4, "/core/connect/token"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :record
    const-string v4, "/core/connect/userinfo"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :record
    const-string v3, "account_other"
    :record
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "call="
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    move-result v5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, " stage="
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " host="
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " endpoint="
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " http="
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :ignored
    goto :done
    :ignored
    move-exception v0
    :done
    return-void
.end method
