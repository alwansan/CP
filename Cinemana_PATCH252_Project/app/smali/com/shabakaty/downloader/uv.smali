.class public final synthetic Lcom/shabakaty/downloader/uv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/os$a;
.implements Lcom/shabakaty/downloader/ar$c;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vv;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/vv;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uv;->r:Lcom/shabakaty/downloader/vv;

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CameraCaptureSession;IZ)V
    .locals 1

    iget-object p1, p0, Lcom/shabakaty/downloader/uv;->r:Lcom/shabakaty/downloader/vv;

    .line 1
    iget-object p2, p1, Lcom/shabakaty/downloader/vv;->a:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object p3, p1, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    sget-object v0, Lcom/shabakaty/downloader/vv$c;->v:Lcom/shabakaty/downloader/vv$c;

    if-ne p3, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vv;->f()V

    .line 4
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/uv;->r:Lcom/shabakaty/downloader/vv;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/vv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/vv;->n:Lcom/shabakaty/downloader/ar$a;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Release completer expected to be null"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/vv;->n:Lcom/shabakaty/downloader/ar$a;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release[session="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
