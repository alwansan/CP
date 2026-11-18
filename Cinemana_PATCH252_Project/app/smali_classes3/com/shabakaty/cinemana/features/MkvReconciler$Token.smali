.class final Lcom/shabakaty/cinemana/features/MkvReconciler$Token;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private final path:Ljava/lang/String;

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/MkvReconciler$Token;->path:Ljava/lang/String;
    return-void
.end method

.method public run()V
    .locals 2
    :try_start_token
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/MkvReconciler$Token;->path:Ljava/lang/String;
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileToken(Ljava/lang/String;)V
    :try_end_token
    .catch Ljava/lang/Throwable; {:try_start_token .. :try_end_token} :token_failed
    return-void
    :token_failed
    move-exception v0
    const-string v0, "CPDL"
    const-string v1, "MKV token worker failed; requesting durable disk audit"
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvReconciler;->requestAudit()V
    return-void
.end method
