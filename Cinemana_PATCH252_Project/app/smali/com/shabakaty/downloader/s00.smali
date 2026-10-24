.class public final synthetic Lcom/shabakaty/downloader/s00;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/s00;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/s00;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/s00;->r:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s00;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    sget v2, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->E:I

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/s00;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->v(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/s00;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    sget v2, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->E:I

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s00;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    sget v2, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->E:I

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
