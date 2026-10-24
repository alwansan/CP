.class public final synthetic Lcom/shabakaty/downloader/l27;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final r:Ljava/util/concurrent/Executor;

.field public final s:Lcom/shabakaty/downloader/rd5;

.field public final t:Lcom/shabakaty/downloader/rd5;

.field public final u:Lcom/shabakaty/downloader/zk4;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/rd5;Lcom/shabakaty/downloader/rd5;Lcom/shabakaty/downloader/zk4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l27;->r:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/shabakaty/downloader/l27;->s:Lcom/shabakaty/downloader/rd5;

    iput-object p3, p0, Lcom/shabakaty/downloader/l27;->t:Lcom/shabakaty/downloader/rd5;

    iput-object p4, p0, Lcom/shabakaty/downloader/l27;->u:Lcom/shabakaty/downloader/zk4;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/l27;->r:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/shabakaty/downloader/l27;->s:Lcom/shabakaty/downloader/rd5;

    iget-object v2, p0, Lcom/shabakaty/downloader/l27;->t:Lcom/shabakaty/downloader/rd5;

    iget-object v3, p0, Lcom/shabakaty/downloader/l27;->u:Lcom/shabakaty/downloader/zk4;

    .line 1
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/rd5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/rd5;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v3, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    .line 5
    :goto_0
    throw p1
.end method
