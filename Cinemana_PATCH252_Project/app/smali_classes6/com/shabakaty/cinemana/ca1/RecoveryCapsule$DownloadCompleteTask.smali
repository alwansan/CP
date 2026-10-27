.class public final Lcom/shabakaty/cinemana/ca1/RecoveryCapsule$DownloadCompleteTask;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadCompleteTask"
.end annotation

.field private final task:Ljava/lang/Object;
.field private final taskId:I

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule$DownloadCompleteTask;->task:Ljava/lang/Object;
    iput p2, p0, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule$DownloadCompleteTask;->taskId:I
    return-void
.end method

.method public run()V
    .locals 3
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule$DownloadCompleteTask;->task:Ljava/lang/Object;
    iget v1, p0, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule$DownloadCompleteTask;->taskId:I
    :try_start_0
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->completeDownload(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :run_failed
    return-void
    :run_failed
    move-exception v2
    return-void
.end method
