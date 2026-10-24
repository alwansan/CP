.class Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleEpisodeRetry(Ljava/lang/Object;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Ljava/lang/Object;

.field final synthetic val$targetKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;->val$activity:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;->val$targetKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$400(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$500(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;->val$targetKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$600(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;->val$activity:Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$1100(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$1200(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 286
    :cond_1
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$800()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$800()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;->val$activity:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;->val$activity:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$900(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    goto :goto_1

    .line 286
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 283
    :cond_2
    :goto_0
    return-void

    .line 288
    :catchall_1
    move-exception v0

    const-string v1, "Delayed episode subtitle refresh failed"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$100(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    :goto_1
    return-void
.end method
