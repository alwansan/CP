.class public final Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Worker;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;
.field private final title:Landroid/widget/TextView;

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Worker;->context:Landroid/content/Context;
    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Worker;->title:Landroid/widget/TextView;
    return-void
.end method

.method public run()V
    .locals 5
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Worker;->context:Landroid/content/Context;
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Worker;->title:Landroid/widget/TextView;

    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->execute(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :worker_failed
    goto :worker_post

    :worker_failed
    move-exception v2
    const-string v3, "REPAIR_WORKER_FAILED"
    invoke-static {v0, v3, v2}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->recordThrowable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    const-string v2, "تعذر إكمال الفحص؛ راجع سجل المشاكل غير المحلولة."
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2

    :worker_post
    if-eqz v1, :no_title
    new-instance v3, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Finish;
    invoke-direct {v3, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Finish;-><init>(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    move-result v4
    if-eqz v4, :post_failed
    return-void

    :post_failed
    sget-object v3, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v4, 0x0
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    const-string v3, "download_repair_unresolved.log"
    const-string v4, "UI_FINISH_POST_FAILED"
    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    return-void

    :no_title
    sget-object v3, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v4, 0x0
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    const-string v3, "download_repair_unresolved.log"
    const-string v4, "UI_TITLE_REFERENCE_MISSING"
    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method
