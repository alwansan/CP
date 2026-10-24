.class public final synthetic Lcom/shabakaty/downloader/ur;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/yr;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/yr;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/ur;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ur;->s:Lcom/shabakaty/downloader/yr;

    return-void
.end method


# virtual methods
.method public final f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/ur;->r:I

    const-string v1, "]"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ur;->s:Lcom/shabakaty/downloader/yr;

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/yr;->t:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/shabakaty/downloader/or;

    invoke-direct {v3, v0, p1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/yr;Lcom/shabakaty/downloader/ar$a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release[request="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/shabakaty/downloader/yr;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ur;->s:Lcom/shabakaty/downloader/yr;

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/yr;->F:Lcom/shabakaty/downloader/ar$a;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Camera can only be released once, so release completer should be null on creation."

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 5
    iput-object p1, v0, Lcom/shabakaty/downloader/yr;->F:Lcom/shabakaty/downloader/ar$a;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release[camera="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
