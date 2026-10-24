.class public final Lcom/shabakaty/downloader/sg4;
.super Lcom/shabakaty/downloader/ui4;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$collectSubtitleStyle$2"
    f = "SubtitlesSettingsFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

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
        ">;"
    }
.end annotation


# instance fields
.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lcom/shabakaty/downloader/vg4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vg4;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/sg4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/sg4;->w:Lcom/shabakaty/downloader/vg4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/pg4;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/sg4;

    iget-object v1, p0, Lcom/shabakaty/downloader/sg4;->w:Lcom/shabakaty/downloader/vg4;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/sg4;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/sg4;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/sg4;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/sg4;

    iget-object v1, p0, Lcom/shabakaty/downloader/sg4;->w:Lcom/shabakaty/downloader/vg4;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/sg4;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/sg4;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/sg4;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/pg4;

    .line 2
    iget v1, p1, Lcom/shabakaty/downloader/pg4;->a:I

    .line 3
    iget v5, p1, Lcom/shabakaty/downloader/pg4;->b:I

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    .line 5
    iget v2, p1, Lcom/shabakaty/downloader/pg4;->c:I

    .line 6
    iget-object v3, p1, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/pg4;->e:Lcom/shabakaty/downloader/hg4;

    .line 8
    iget p1, p1, Lcom/shabakaty/downloader/hg4;->a:F

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/sg4;->w:Lcom/shabakaty/downloader/vg4;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 10
    iget-object v3, v3, Lcom/shabakaty/downloader/gg4;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/FontTypefaceResolver;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/lv;

    const/4 v3, 0x0

    .line 13
    iget v4, v0, Lcom/shabakaty/downloader/fg4;->a:I

    move-object v0, v7

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/lv;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/sg4;->w:Lcom/shabakaty/downloader/vg4;

    invoke-static {v0}, Lcom/shabakaty/downloader/vg4;->h2(Lcom/shabakaty/downloader/vg4;)Lcom/shabakaty/downloader/wk1;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/wk1;->O:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/shabakaty/downloader/lv;)V

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/sg4;->w:Lcom/shabakaty/downloader/vg4;

    invoke-static {v0}, Lcom/shabakaty/downloader/vg4;->h2(Lcom/shabakaty/downloader/vg4;)Lcom/shabakaty/downloader/wk1;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/wk1;->O:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->restoreNative(Lcom/google/android/exoplayer2/ui/SubtitleView;F)V

    .line 17
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
