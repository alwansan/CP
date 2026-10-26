.class public final Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Finish;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;
.field private final title:Landroid/widget/TextView;
.field private final message:Ljava/lang/String;

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Finish;->context:Landroid/content/Context;
    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Finish;->title:Landroid/widget/TextView;
    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Finish;->message:Ljava/lang/String;
    return-void
.end method

.method public run()V
    .locals 4
    sget-object v0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Finish;->title:Landroid/widget/TextView;
    if-eqz v0, :no_title
    const-string v1, "إصلاح التحميلات"
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :no_title
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Finish;->context:Landroid/content/Context;
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Finish;->message:Ljava/lang/String;
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void
.end method
