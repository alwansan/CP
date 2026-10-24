.class public final synthetic Lcom/shabakaty/downloader/j25;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/player/VideoPlayerActivity;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/j25;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/j25;->s:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/j25;->r:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/j25;->s:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    check-cast p1, Ljava/lang/Long;

    sget p1, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->A:I

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->Y1()V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/j25;->s:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    check-cast p1, Ljava/lang/Long;

    sget p1, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->A:I

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->Y1()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
