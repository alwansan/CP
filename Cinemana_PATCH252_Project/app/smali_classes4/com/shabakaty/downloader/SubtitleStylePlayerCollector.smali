.class public final Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;
.super Lcom/shabakaty/downloader/ui4;

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/pg4;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">"
    }
.end annotation


# instance fields
.field private final playerView:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

.field public synthetic v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;->playerView:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/pg4;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    new-instance v0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;

    iget-object v1, p0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;->playerView:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;->v:Ljava/lang/Object;

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;

    iget-object v1, p0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;->playerView:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/pg4;

    iget v1, p1, Lcom/shabakaty/downloader/pg4;->a:I

    iget v5, p1, Lcom/shabakaty/downloader/pg4;->b:I

    iget-object v0, p1, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    iget v2, p1, Lcom/shabakaty/downloader/pg4;->c:I

    iget-object v3, p1, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    iget-object p1, p1, Lcom/shabakaty/downloader/pg4;->e:Lcom/shabakaty/downloader/hg4;

    iget p1, p1, Lcom/shabakaty/downloader/hg4;->a:F

    iget-object v4, p0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;->playerView:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v3, v3, Lcom/shabakaty/downloader/gg4;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/FontTypefaceResolver;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    new-instance v7, Lcom/shabakaty/downloader/lv;

    const/4 v3, 0x0

    iget v4, v0, Lcom/shabakaty/downloader/fg4;->a:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/lv;-><init>(IIIIILandroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/SubtitleStylePlayerCollector;->playerView:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getBinding()Lcom/shabakaty/downloader/n10;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/n10;->O:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/shabakaty/downloader/lv;)V

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->restoreNative(Lcom/google/android/exoplayer2/ui/SubtitleView;F)V

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
