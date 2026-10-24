.class public final synthetic Lcom/shabakaty/downloader/vd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/sh4;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/vd;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/vd;->s:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/vd;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/shabakaty/downloader/vd;->s:I

    .line 1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:MediaCodecAsyncAdapter:"

    .line 2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/ud;->q(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 4
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/vd;->s:I

    .line 5
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:MediaCodecQueueingThread:"

    .line 6
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/ud;->q(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
