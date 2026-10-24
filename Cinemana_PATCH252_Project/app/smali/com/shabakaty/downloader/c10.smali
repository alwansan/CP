.class public final synthetic Lcom/shabakaty/downloader/c10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/c10;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/c10;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/c10;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/c10;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    sget v1, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->z:I

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getBinding()Lcom/shabakaty/downloader/n10;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/n10;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x320

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/c10;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/c10;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/c10;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->n(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
