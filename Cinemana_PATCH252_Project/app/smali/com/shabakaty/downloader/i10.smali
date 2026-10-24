.class public final Lcom/shabakaty/downloader/i10;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/i10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/i10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->p(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const v1, 0x7f1202e7

    goto :goto_0

    :cond_0
    const v1, 0x7f120137

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->u0()Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->u0()Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(I)V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->u0()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/i10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->q(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)Lcom/shabakaty/downloader/q10;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/q10;->f:Lcom/shabakaty/downloader/ff3;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/ff3;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_video_scale_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
