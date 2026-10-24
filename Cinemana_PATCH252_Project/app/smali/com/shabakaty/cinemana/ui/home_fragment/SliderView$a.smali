.class public final Lcom/shabakaty/cinemana/ui/home_fragment/SliderView$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "SliderView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->setupWithIndicator(Lcom/rd/PageIndicatorView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

.field public final synthetic b:Lcom/rd/PageIndicatorView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;Lcom/rd/PageIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView$a;->a:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView$a;->b:Lcom/rd/PageIndicatorView;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView$a;->a:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p1

    int-to-float p1, p1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView$a;->a:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

    invoke-static {p2}, Lcom/shabakaty/downloader/j35;->a(Landroid/view/ViewGroup;)Lcom/shabakaty/downloader/l04;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/t04;->J(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/lit8 p3, p2, -0x3c

    :goto_0
    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 4
    iget-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView$a;->b:Lcom/rd/PageIndicatorView;

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/rd/PageIndicatorView;->setSelection(I)V

    return-void
.end method
