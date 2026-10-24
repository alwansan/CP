.class public final synthetic Lcom/shabakaty/downloader/q90;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/s90;

.field public final synthetic s:Lcom/shabakaty/downloader/t90;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/s90;Lcom/shabakaty/downloader/t90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/q90;->r:Lcom/shabakaty/downloader/s90;

    iput-object p2, p0, Lcom/shabakaty/downloader/q90;->s:Lcom/shabakaty/downloader/t90;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/downloader/q90;->r:Lcom/shabakaty/downloader/s90;

    iget-object v1, p0, Lcom/shabakaty/downloader/q90;->s:Lcom/shabakaty/downloader/t90;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/s90;->b:Lcom/shabakaty/downloader/x90;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/x90;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/shabakaty/downloader/x90;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/t90;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 8
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
