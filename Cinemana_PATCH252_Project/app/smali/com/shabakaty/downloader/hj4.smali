.class public final synthetic Lcom/shabakaty/downloader/hj4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/od;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/kj4;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/hj4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/hj4;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/hj4;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tu;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/hj4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/hj4;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/hj4;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/hj4;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hj4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/kj4;

    iget-object v1, p0, Lcom/shabakaty/downloader/hj4;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "getSurface...done"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "SyncCaptureSessionBase"

    .line 2
    invoke-static {v3, v0, v2}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/hp0;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/hp0$a;

    const-string v1, "Surface closed"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/hp0$a;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/hp0;)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to open capture session without surfaces"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    :goto_0
    return-object p1

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tu;

    iget-object v1, p0, Lcom/shabakaty/downloader/hj4;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    .line 13
    iget-object p1, v0, Lcom/shabakaty/downloader/tu;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 14
    :try_start_0
    iget v2, v0, Lcom/shabakaty/downloader/tu;->k:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v4, "CameraX.initInternal() should only be called once per instance"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    const/4 v2, 0x2

    .line 15
    iput v2, v0, Lcom/shabakaty/downloader/tu;->k:I

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/mu;

    invoke-direct {v2, v0, v1, v3}, Lcom/shabakaty/downloader/mu;-><init>(Lcom/shabakaty/downloader/tu;Landroid/content/Context;I)V

    invoke-static {v2}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
