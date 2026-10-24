.class public final Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SliderView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/v84;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006R$\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lcom/shabakaty/downloader/v84;",
        "listener",
        "Lcom/shabakaty/downloader/qv4;",
        "setItemsListener",
        "Lcom/rd/PageIndicatorView;",
        "pageIndicatorView",
        "setupWithIndicator",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;",
        "b1",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;",
        "getSliderItem",
        "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;",
        "setSliderItem",
        "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;)V",
        "sliderItem",
        "Lcom/shabakaty/downloader/uu1;",
        "homeSliderAdapter$delegate",
        "Lcom/shabakaty/downloader/kf2;",
        "getHomeSliderAdapter",
        "()Lcom/shabakaty/downloader/uu1;",
        "homeSliderAdapter",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public Y0:Landroidx/recyclerview/widget/RecyclerView$r;

.field public final Z0:Lcom/shabakaty/downloader/kf2;

.field public a1:Lcom/shabakaty/downloader/v84;

.field public b1:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/w84;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/w84;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->Z0:Lcom/shabakaty/downloader/kf2;

    .line 4
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->getHomeSliderAdapter()Lcom/shabakaty/downloader/uu1;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 5
    new-instance p1, Landroidx/recyclerview/widget/r;

    invoke-direct {p1}, Landroidx/recyclerview/widget/r;-><init>()V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/e0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private final getHomeSliderAdapter()Lcom/shabakaty/downloader/uu1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->Z0:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/uu1;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 1

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->a1:Lcom/shabakaty/downloader/v84;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/pk;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 1

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->a1:Lcom/shabakaty/downloader/v84;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/v84;->g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final getSliderItem()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->b1:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->a1:Lcom/shabakaty/downloader/v84;

    return-void
.end method

.method public final setItemsListener(Lcom/shabakaty/downloader/v84;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->a1:Lcom/shabakaty/downloader/v84;

    return-void
.end method

.method public final setSliderItem(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->b1:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    return-void
.end method

.method public final setupWithIndicator(Lcom/rd/PageIndicatorView;)V
    .locals 2

    const-string v0, "pageIndicatorView"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->b1:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;->videos:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/rd/PageIndicatorView;->getCount()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Lcom/rd/PageIndicatorView;->setCount(I)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->Y0:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_3

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    new-instance v0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView$a;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;Lcom/rd/PageIndicatorView;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->Y0:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 11
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method
