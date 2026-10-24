.class public final Lcom/shabakaty/downloader/w84;
.super Lcom/shabakaty/downloader/af2;
.source "SliderView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/uu1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/w84;->r:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uu1;

    iget-object v1, p0, Lcom/shabakaty/downloader/w84;->r:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->getSliderItem()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;->videos:Ljava/util/List;

    :goto_0
    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/w84;->r:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/uu1;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/v84;)V

    return-object v0
.end method
