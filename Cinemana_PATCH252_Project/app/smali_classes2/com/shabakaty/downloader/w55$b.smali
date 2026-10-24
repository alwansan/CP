.class public Lcom/shabakaty/downloader/w55$b;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/w55;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/w55;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w55;Lcom/shabakaty/downloader/w55$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "WebsocketWriteThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-static {v1}, Lcom/shabakaty/downloader/w55;->access$100(Lcom/shabakaty/downloader/w55;)Lcom/shabakaty/downloader/x55;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/x55;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-static {v2}, Lcom/shabakaty/downloader/w55;->access$200(Lcom/shabakaty/downloader/w55;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-static {v1}, Lcom/shabakaty/downloader/w55;->access$200(Lcom/shabakaty/downloader/w55;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    .line 6
    :catch_1
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-static {v1}, Lcom/shabakaty/downloader/w55;->access$100(Lcom/shabakaty/downloader/w55;)Lcom/shabakaty/downloader/x55;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/x55;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-static {v3}, Lcom/shabakaty/downloader/w55;->access$200(Lcom/shabakaty/downloader/w55;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v3, v4, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-static {v2}, Lcom/shabakaty/downloader/w55;->access$200(Lcom/shabakaty/downloader/w55;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 9
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-static {v0}, Lcom/shabakaty/downloader/w55;->access$400(Lcom/shabakaty/downloader/w55;)V

    goto :goto_4

    .line 10
    :goto_3
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/w55;->access$300(Lcom/shabakaty/downloader/w55;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    .line 11
    :goto_5
    iget-object v1, p0, Lcom/shabakaty/downloader/w55$b;->r:Lcom/shabakaty/downloader/w55;

    invoke-static {v1}, Lcom/shabakaty/downloader/w55;->access$400(Lcom/shabakaty/downloader/w55;)V

    throw v0
.end method
