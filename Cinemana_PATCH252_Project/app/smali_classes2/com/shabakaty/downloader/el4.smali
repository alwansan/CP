.class public final Lcom/shabakaty/downloader/el4;
.super Lcom/shabakaty/downloader/vk4;
.source "Tasks.kt"


# instance fields
.field public final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JLcom/shabakaty/downloader/al4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/shabakaty/downloader/vk4;-><init>(JLcom/shabakaty/downloader/al4;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/el4;->t:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/el4;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vk4;->s:Lcom/shabakaty/downloader/al4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/al4;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/shabakaty/downloader/vk4;->s:Lcom/shabakaty/downloader/al4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/al4;->a()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Task["

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/el4;->t:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/shabakaty/downloader/he0;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/el4;->t:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shabakaty/downloader/vk4;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/vk4;->s:Lcom/shabakaty/downloader/al4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
