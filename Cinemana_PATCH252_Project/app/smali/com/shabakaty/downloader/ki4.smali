.class public final synthetic Lcom/shabakaty/downloader/ki4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/yc0;

.field public final synthetic t:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/yc0;Landroid/view/Surface;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/ki4;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ki4;->s:Lcom/shabakaty/downloader/yc0;

    iput-object p2, p0, Lcom/shabakaty/downloader/ki4;->t:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/ki4;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ki4;->s:Lcom/shabakaty/downloader/yc0;

    iget-object v1, p0, Lcom/shabakaty/downloader/ki4;->t:Landroid/view/Surface;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/xh;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/xh;-><init>(ILandroid/view/Surface;)V

    .line 2
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/yc0;->accept(Ljava/lang/Object;)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ki4;->s:Lcom/shabakaty/downloader/yc0;

    iget-object v1, p0, Lcom/shabakaty/downloader/ki4;->t:Landroid/view/Surface;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/xh;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/xh;-><init>(ILandroid/view/Surface;)V

    .line 5
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/yc0;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
