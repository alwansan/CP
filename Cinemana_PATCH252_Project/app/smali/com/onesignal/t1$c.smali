.class public Lcom/onesignal/t1$c;
.super Landroid/os/HandlerThread;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public r:I

.field public s:Landroid/os/Handler;

.field public t:I

.field public final synthetic u:Lcom/onesignal/t1;


# direct methods
.method public constructor <init>(Lcom/onesignal/t1;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/onesignal/t1$c;->u:Lcom/onesignal/t1;

    const-string v0, "OSH_NetworkHandlerThread_"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lcom/onesignal/t1;->b:Lcom/onesignal/c1$a;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    iput p2, p0, Lcom/onesignal/t1$c;->r:I

    .line 6
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/onesignal/t1$c;->s:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/onesignal/t1$c;->u:Lcom/onesignal/t1;

    .line 2
    iget-boolean v0, v0, Lcom/onesignal/t1;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onesignal/t1$c;->s:Landroid/os/Handler;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iput v1, p0, Lcom/onesignal/t1$c;->t:I

    .line 5
    iget-object v1, p0, Lcom/onesignal/t1$c;->s:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/onesignal/t1$c;->s:Landroid/os/Handler;

    .line 7
    iget v3, p0, Lcom/onesignal/t1$c;->r:I

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Lcom/onesignal/x1;

    invoke-direct {v2, p0}, Lcom/onesignal/x1;-><init>(Lcom/onesignal/t1$c;)V

    :goto_0
    const-wide/16 v3, 0x1388

    .line 9
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
