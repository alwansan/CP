.class public Lcom/shabakaty/downloader/j33;
.super Ljava/lang/Object;
.source "OSNotificationReceivedEvent.java"


# instance fields
.field public final a:Lcom/onesignal/b0;

.field public final b:Lcom/shabakaty/downloader/h43;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lcom/shabakaty/downloader/c33;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/onesignal/b0;Lcom/shabakaty/downloader/c33;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/j33;->e:Z

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/j33;->d:Lcom/shabakaty/downloader/c33;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/j33;->a:Lcom/onesignal/b0;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/h43;->b()Lcom/shabakaty/downloader/h43;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/j33;->b:Lcom/shabakaty/downloader/h43;

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/j33$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/j33$a;-><init>(Lcom/shabakaty/downloader/j33;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/j33;->c:Ljava/lang/Runnable;

    const-wide/16 v0, 0x61a8

    .line 7
    invoke-virtual {p1, v0, v1, p2}, Lcom/shabakaty/downloader/h43;->c(JLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/shabakaty/downloader/c33;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/j33;->b:Lcom/shabakaty/downloader/h43;

    iget-object v1, p0, Lcom/shabakaty/downloader/j33;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/h43;->a(Ljava/lang/Runnable;)V

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/j33;->e:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x6

    const-string v0, "OSNotificationReceivedEvent already completed"

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    :try_start_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/j33;->e:Z

    .line 6
    invoke-static {}, Lcom/onesignal/o0;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shabakaty/downloader/j33$b;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/j33$b;-><init>(Lcom/shabakaty/downloader/j33;Lcom/shabakaty/downloader/c33;)V

    const-string p1, "OS_COMPLETE_NOTIFICATION"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/j33;->b(Lcom/shabakaty/downloader/c33;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lcom/shabakaty/downloader/c33;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j33;->a:Lcom/onesignal/b0;

    iget-object v1, p0, Lcom/shabakaty/downloader/j33;->d:Lcom/shabakaty/downloader/c33;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/c33;->a()Lcom/shabakaty/downloader/c33;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c33;->a()Lcom/shabakaty/downloader/c33;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/c33;->h:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/onesignal/o0;->r(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Lcom/onesignal/b0;->a(Lcom/shabakaty/downloader/c33;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/onesignal/b0;->b:Lcom/shabakaty/downloader/h33;

    .line 6
    iput-object p1, v1, Lcom/shabakaty/downloader/h33;->b:Lcom/shabakaty/downloader/c33;

    .line 7
    iget-boolean p1, v0, Lcom/onesignal/b0;->d:Z

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1, p1}, Lcom/onesignal/q;->f(Lcom/onesignal/b0;ZZ)I

    .line 9
    :goto_1
    iget-boolean p1, v0, Lcom/onesignal/b0;->c:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x64

    .line 10
    invoke-static {p1}, Lcom/onesignal/o0;->y(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v0, v1}, Lcom/onesignal/b0;->a(Lcom/shabakaty/downloader/c33;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "OSNotificationReceivedEvent{isComplete="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/j33;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/j33;->d:Lcom/shabakaty/downloader/c33;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
