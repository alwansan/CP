.class public final synthetic Lcom/shabakaty/downloader/bv3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/google/android/exoplayer2/source/rtsp/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/f;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/bv3;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/bv3;->s:Lcom/google/android/exoplayer2/source/rtsp/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/bv3;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bv3;->s:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/f;->a(Lcom/google/android/exoplayer2/source/rtsp/f;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bv3;->s:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/f;->a(Lcom/google/android/exoplayer2/source/rtsp/f;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
