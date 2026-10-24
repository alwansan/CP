.class public final synthetic Lcom/shabakaty/downloader/cf0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/df0;

.field public final synthetic t:Lcom/shabakaty/downloader/pn4;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/df0;Lcom/shabakaty/downloader/pn4;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/cf0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cf0;->s:Lcom/shabakaty/downloader/df0;

    iput-object p2, p0, Lcom/shabakaty/downloader/cf0;->t:Lcom/shabakaty/downloader/pn4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/cf0;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cf0;->s:Lcom/shabakaty/downloader/df0;

    iget-object v1, p0, Lcom/shabakaty/downloader/cf0;->t:Lcom/shabakaty/downloader/pn4;

    .line 1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/df0;->b(Lcom/shabakaty/downloader/pn4;)Lcom/shabakaty/downloader/ef0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/df0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cf0;->s:Lcom/shabakaty/downloader/df0;

    iget-object v1, p0, Lcom/shabakaty/downloader/cf0;->t:Lcom/shabakaty/downloader/pn4;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/df0;->b(Lcom/shabakaty/downloader/pn4;)Lcom/shabakaty/downloader/ef0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/df0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
