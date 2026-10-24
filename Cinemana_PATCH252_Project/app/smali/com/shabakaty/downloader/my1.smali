.class public final synthetic Lcom/shabakaty/downloader/my1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/zh1$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ly1$b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/my1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/my1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/nw3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/my1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/my1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Lcom/shabakaty/downloader/fz1;)V
    .locals 2

    iget p1, p0, Lcom/shabakaty/downloader/my1;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/my1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ly1$b;

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/ly1$b;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ly1;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ly1;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/rr;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/ly1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/my1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/nw3;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget v1, p1, Lcom/shabakaty/downloader/nw3;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/shabakaty/downloader/nw3;->b:I

    .line 6
    iget-boolean v1, p1, Lcom/shabakaty/downloader/nw3;->c:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/shabakaty/downloader/nw3;->b:I

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/nw3;->close()V

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
