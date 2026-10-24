.class public final synthetic Lcom/shabakaty/downloader/r00;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/j2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/r00;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/r00;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tu1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/r00;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/r00;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/r00;->a:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r00;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    sget v2, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->E:I

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/s00;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/s00;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4
    iget-object v0, v0, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->u:Lcom/shabakaty/downloader/mu0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    :goto_0
    return-void

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/r00;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tu1;

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 8
    invoke-static {v1}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wt1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/wt1;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
