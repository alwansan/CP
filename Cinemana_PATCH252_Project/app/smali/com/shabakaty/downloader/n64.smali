.class public Lcom/shabakaty/downloader/n64;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# instance fields
.field public final synthetic r:Landroid/os/ConditionVariable;

.field public final synthetic s:Lcom/shabakaty/downloader/o64;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/o64;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/n64;->s:Lcom/shabakaty/downloader/o64;

    iput-object p3, p0, Lcom/shabakaty/downloader/n64;->r:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n64;->s:Lcom/shabakaty/downloader/o64;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/n64;->r:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/n64;->s:Lcom/shabakaty/downloader/o64;

    invoke-static {v1}, Lcom/shabakaty/downloader/o64;->j(Lcom/shabakaty/downloader/o64;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/n64;->s:Lcom/shabakaty/downloader/o64;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/o64;->b:Lcom/shabakaty/downloader/tp;

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/tp;->d()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
