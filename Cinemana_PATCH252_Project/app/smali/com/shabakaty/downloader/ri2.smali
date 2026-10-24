.class public final synthetic Lcom/shabakaty/downloader/ri2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/si2;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/si2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ri2;->r:Lcom/shabakaty/downloader/si2;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object p1, p0, Lcom/shabakaty/downloader/ri2;->r:Lcom/shabakaty/downloader/si2;

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/si2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/si2$c;

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/si2;->c:Lcom/shabakaty/downloader/si2$b;

    .line 3
    iget-boolean v3, v1, Lcom/shabakaty/downloader/si2$c;->d:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/shabakaty/downloader/si2$c;->c:Z

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v1, Lcom/shabakaty/downloader/si2$c;->b:Lcom/shabakaty/downloader/xd1$b;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/xd1$b;->b()Lcom/shabakaty/downloader/xd1;

    move-result-object v3

    .line 5
    new-instance v5, Lcom/shabakaty/downloader/xd1$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/xd1$b;-><init>()V

    iput-object v5, v1, Lcom/shabakaty/downloader/si2$c;->b:Lcom/shabakaty/downloader/xd1$b;

    .line 6
    iput-boolean v4, v1, Lcom/shabakaty/downloader/si2$c;->c:Z

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/si2$c;->a:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/shabakaty/downloader/si2$b;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/xd1;)V

    .line 8
    :cond_1
    iget-object v1, p1, Lcom/shabakaty/downloader/si2;->b:Lcom/shabakaty/downloader/fs1;

    check-cast v1, Lcom/shabakaty/downloader/yj4;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
