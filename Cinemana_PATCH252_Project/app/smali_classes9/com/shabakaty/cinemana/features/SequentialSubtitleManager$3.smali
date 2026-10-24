.class Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->startEpisodePolling(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Ljava/lang/Object;

.field final synthetic val$handler:Ljava/lang/Object;

.field final synthetic val$handlerClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$handlerClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$handler:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 202
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$200()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$200()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 203
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$300(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 208
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$400(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$500(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 211
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$600(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$700()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$700()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    if-nez v5, :cond_2

    .line 215
    :try_start_3
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onPlayerReady(Ljava/lang/Object;)V

    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$800()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$800()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    :try_start_5
    iget-object v4, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$900(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$1000(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 217
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onPlayerReady(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    .line 213
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 224
    :cond_4
    :goto_1
    goto :goto_2

    :catchall_2
    move-exception v0

    const-string v1, "Episode transition polling failed"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$100(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    :goto_2
    :try_start_a
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$handlerClass:Ljava/lang/Class;

    const-string v1, "postDelayed"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$handler:Ljava/lang/Object;

    const-wide/16 v5, 0x28a

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 231
    goto :goto_3

    .line 228
    :catchall_3
    move-exception v0

    .line 229
    const-string v1, "Could not reschedule episode polling"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$100(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->stopEpisodePolling(Ljava/lang/Object;)V

    .line 232
    :goto_3
    return-void

    .line 204
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->stopEpisodePolling(Ljava/lang/Object;)V

    .line 205
    return-void

    .line 202
    :catchall_4
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1
.end method
