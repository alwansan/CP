.class Lcom/shabakaty/cinemana/features/MkvExporter$2;
.super Ljava/lang/Object;
.source "MkvExporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/MkvExporter;->onVideoCompleted(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$downloadItem:Ljava/lang/Object;

.field final synthetic val$initialEpisode:Ljava/lang/String;

.field final synthetic val$initialRawPath:Ljava/lang/String;

.field final synthetic val$initialSeason:Ljava/lang/String;

.field final synthetic val$initialTitle:Ljava/lang/String;

.field final synthetic val$jobKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$jobKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$initialRawPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$initialTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$initialSeason:Ljava/lang/String;

    iput-object p6, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$initialEpisode:Ljava/lang/String;

    iput-object p7, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$downloadItem:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QUEUE_START key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$jobKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$downloadItem:Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "PROCESSING"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/cinemana/features/MkvStateStore;->setBusy(Landroid/content/Context;Ljava/lang/Object;ZLjava/lang/String;)V

    .line 110
    nop

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    const/4 v4, 0x1

    if-gt v2, v4, :cond_3

    if-nez v3, :cond_3

    .line 112
    iget-object v5, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QUEUE_ATTEMPT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$jobKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$000(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 114
    :try_start_1
    iget-object v7, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    iget-object v8, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$initialRawPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$initialTitle:Ljava/lang/String;

    iget-object v10, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$initialSeason:Ljava/lang/String;

    iget-object v11, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$initialEpisode:Ljava/lang/String;

    iget-object v12, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$downloadItem:Ljava/lang/Object;

    invoke-static/range {v7 .. v12}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v5

    .line 116
    :try_start_2
    const-string v6, "CNM_MKV"

    const-string v7, "MKV job attempt failed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    iget-object v6, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QUEUE_ATTEMPT_EXCEPTION="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    :goto_1
    iget-object v5, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    iget-object v6, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$downloadItem:Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$600(Landroid/content/Context;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v5

    .line 126
    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_2

    :cond_0
    move v6, v0

    .line 129
    :goto_2
    if-nez v6, :cond_1

    # Only clear a ledger entry after Restart108 resolves an existing final MKV path and size.
    iget-object v11, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;
    iget-object v12, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$downloadItem:Ljava/lang/Object;
    invoke-static {v11, v12}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->completeIfFinal(Landroid/content/Context;Ljava/lang/Object;)V

    .line 130
    nop

    .line 131
    iget-object v3, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QUEUE_SUCCESS_OR_ALREADY_PRIMARY key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$jobKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    move v3, v1

    goto :goto_3

    .line 132
    :cond_1
    iget-object v11, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;
    iget-object v12, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$downloadItem:Ljava/lang/Object;
    const-string v10, "EXPORT_STILL_MP4"
    const-string v9, "source_mp4_remained_after_export_attempt"
    invoke-static {v11, v12, v10, v9}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->recordItem(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    if-ge v2, v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QUEUE_RETRY_PENDING freshMp4="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$000(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 134
    const-wide/16 v4, 0xfa0

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    goto :goto_3

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 136
    goto :goto_4

    .line 111
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 141
    :cond_3
    :goto_4
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 142
    :try_start_5
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$500()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$jobKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 144
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QUEUE_FINISH key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$jobKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$downloadItem:Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "IDLE"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/cinemana/features/MkvStateStore;->setBusy(Landroid/content/Context;Ljava/lang/Object;ZLjava/lang/String;)V

    .line 145
    nop

    .line 146
    return-void

    .line 143
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 141
    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 142
    :try_start_7
    invoke-static {}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$500()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$jobKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 144
    iget-object v1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QUEUE_FINISH key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$jobKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/features/MkvExporter;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$app:Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$downloadItem:Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "FAILED"

    invoke-static {v1, v2, v3, v4}, Lcom/shabakaty/cinemana/features/MkvStateStore;->setBusy(Landroid/content/Context;Ljava/lang/Object;ZLjava/lang/String;)V

    .line 145
    throw v0

    .line 143
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method
