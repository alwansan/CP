.class public final synthetic Lcom/shabakaty/downloader/b10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/am4;


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/b10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    return-void
.end method


# virtual methods
.method public final W(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/b10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    sget v1, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->z:I

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getBinding()Lcom/shabakaty/downloader/n10;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/n10;->M:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vg0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/vg0;->a:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
