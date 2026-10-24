.class public final synthetic Lcom/shabakaty/downloader/d10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;II)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/d10;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/d10;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    iput p2, p0, Lcom/shabakaty/downloader/d10;->t:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/d10;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d10;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    iget v1, p0, Lcom/shabakaty/downloader/d10;->t:I

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->m(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;I)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d10;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    iget v1, p0, Lcom/shabakaty/downloader/d10;->t:I

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->l(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
