.class public final synthetic Lcom/shabakaty/downloader/ha4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/mq;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/mq;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/ha4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ha4;->s:Lcom/shabakaty/downloader/mq;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/ha4;->r:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ha4;->s:Lcom/shabakaty/downloader/mq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mq;->execute()Lcom/shabakaty/downloader/ws3;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
