.class public final Lcom/shabakaty/cinemana/ca1/NativeBatchScope;
.super Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

.field private final appContext:Landroid/content/Context;

.method public constructor <init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V
    .locals 2
    # Batch jobs have no UI callbacks requiring the Fragment lifecycle observer.
    const/4 v0, 0x0
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V
    if-eqz p2, :done
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;
    move-result-object v1
    if-eqz v1, :done
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    :done
    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/NativeBatchScope;->appContext:Landroid/content/Context;
    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NativeBatchScope;->appContext:Landroid/content/Context;
    return-object v0
.end method

.method public static trace(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Ljava/lang/String;)V
    .locals 3
    instance-of v0, p0, Lcom/shabakaty/cinemana/ca1/NativeBatchScope;
    if-eqz v0, :done
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;
    if-eqz v0, :done
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;
    if-eqz v0, :done
    # Log only the hash of the internal identity, no URL/account.
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, " idHash="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "CPDLBatchVideo"
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :done
    return-void
.end method
