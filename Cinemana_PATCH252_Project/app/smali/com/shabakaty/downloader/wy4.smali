.class public Lcom/shabakaty/downloader/wy4;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Ljava/util/concurrent/Callable;

.field public final synthetic s:Lcom/shabakaty/downloader/zk4;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/zk4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wy4;->r:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/shabakaty/downloader/wy4;->s:Lcom/shabakaty/downloader/zk4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wy4;->r:Ljava/util/concurrent/Callable;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/uk4;

    new-instance v1, Lcom/shabakaty/downloader/wy4$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/wy4$a;-><init>(Lcom/shabakaty/downloader/wy4;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uk4;->d(Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/wy4;->s:Lcom/shabakaty/downloader/zk4;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
