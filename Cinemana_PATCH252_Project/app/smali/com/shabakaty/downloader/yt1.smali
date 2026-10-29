.class public final Lcom/shabakaty/downloader/yt1;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "HomeMainAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/shabakaty/downloader/ej$b<",
        "Landroidx/databinding/ViewDataBinding;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/vt1;

.field public b:Landroid/view/LayoutInflater;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/et0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/et0<",
            "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yt1;->a:Lcom/shabakaty/downloader/vt1;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    iput-object p1, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/et0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/et0;-><init>()V

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/yt1$a;->r:Lcom/shabakaty/downloader/yt1$a;

    const-string v1, "<set-?>"

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v0, p1, Lcom/shabakaty/downloader/et0;->e:Lcom/shabakaty/downloader/ln1;

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/yt1;->d:Lcom/shabakaty/downloader/et0;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    .line 2
    instance-of v1, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    if-eqz v1, :cond_0

    const-wide/32 v0, 0x7f0d00a5

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;

    if-eqz v1, :cond_1

    const-wide/32 v0, 0x7f0d009d

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/me4;->A(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    int-to-long v0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 5
    :cond_3
    instance-of p1, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    if-eqz p1, :cond_4

    const-wide/32 v0, 0x7f0d009a

    goto :goto_0

    .line 6
    :cond_4
    instance-of p1, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    if-eqz p1, :cond_5

    const-wide/32 v0, 0x7f0d009c

    :goto_0
    return-wide v0

    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    instance-of v0, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    .line 6
    :cond_3
    instance-of p1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    :goto_0
    return p1

    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/yt1;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/z42;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/z42;->M:Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    invoke-virtual {p1, p2}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->setGroups(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;)V

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->u()V

    goto/16 :goto_5

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/w42;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/w42;->M:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    invoke-virtual {p1, p2}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->setFranchises(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;)V

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->t()V

    goto/16 :goto_5

    .line 14
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 15
    check-cast p1, Lcom/shabakaty/downloader/c52;

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/c52;->M:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->applyNuvioRecyclerPolicy()V

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->c()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->setVideos(Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->setTitle(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->u()V

    goto :goto_5

    .line 20
    :cond_5
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 21
    check-cast p1, Lcom/shabakaty/downloader/n52;

    .line 22
    # Let the lightweight XML indicator style own its animation setting.
    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/n52;->M:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

    .line 24
    iget-object p2, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    invoke-virtual {p1, p2}, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->setSliderItem(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;)V

    .line 25
    iget-object p2, p1, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->b1:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    if-nez p2, :cond_6

    goto :goto_2

    .line 26
    :cond_6
    iget-object p2, p2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;->videos:Ljava/util/List;

    if-nez p2, :cond_7

    goto :goto_2

    .line 27
    :cond_7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_9

    .line 28
    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    goto :goto_5

    .line 29
    :cond_9
    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 30
    iget-object p2, p1, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->b1:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    if-nez p2, :cond_a

    move-object p2, v1

    goto :goto_4

    .line 31
    :cond_a
    iget-object p2, p2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;->videos:Ljava/util/List;

    :goto_4
    const/16 v0, 0xa

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/shabakaty/downloader/fo3;->b(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;I)V

    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/yt1;->b:Landroid/view/LayoutInflater;

    const-string v1, "from(view.context).also \u2026\t\tlayoutInflater = it\n\t\t}"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const p2, 0x7f0d009e

    goto :goto_0

    :cond_1
    const p2, 0x7f0d009c

    goto :goto_0

    :cond_2
    const p2, 0x7f0d009a

    goto :goto_0

    :cond_3
    const p2, 0x7f0d009d

    goto :goto_0

    :cond_4
    const p2, 0x7f0d00a5

    :goto_0
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, p2, p1, v1}, Lcom/shabakaty/downloader/hl0;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, getLay\u2026viewType), parent, false)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/ej$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ej$b;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 5
    instance-of v0, p1, Lcom/shabakaty/downloader/n52;

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/n52;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->a:Lcom/shabakaty/downloader/vt1;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/vt1;->y:Lcom/shabakaty/downloader/fu1;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/fu1;->c:Lcom/shabakaty/downloader/v84;

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 10
    :cond_2
    iget-object v1, p1, Lcom/shabakaty/downloader/n52;->M:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

    iget-object v2, p1, Lcom/shabakaty/downloader/n52;->N:Lcom/rd/PageIndicatorView;

    const-string v3, "pageIndicatorView"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->setupWithIndicator(Lcom/rd/PageIndicatorView;)V

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/n52;->M:Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;

    invoke-virtual {p1, v0}, Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;->setItemsListener(Lcom/shabakaty/downloader/v84;)V

    goto/16 :goto_2

    .line 12
    :cond_3
    instance-of v0, p1, Lcom/shabakaty/downloader/c52;

    if-eqz v0, :cond_8

    .line 13
    check-cast p1, Lcom/shabakaty/downloader/c52;

    iget-object p1, p1, Lcom/shabakaty/downloader/c52;->M:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->a:Lcom/shabakaty/downloader/vt1;

    if-nez v0, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, v0, Lcom/shabakaty/downloader/vt1;->y:Lcom/shabakaty/downloader/fu1;

    if-nez v0, :cond_5

    goto :goto_0

    .line 16
    :cond_5
    new-instance v1, Lcom/shabakaty/downloader/zt1;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/fu1;->a:Lcom/shabakaty/downloader/wt1;

    .line 18
    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/zt1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->setOnSeeMoreClickListener(Lcom/shabakaty/downloader/hn1;)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->a:Lcom/shabakaty/downloader/vt1;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_1

    .line 20
    :cond_6
    iget-object v0, v0, Lcom/shabakaty/downloader/vt1;->y:Lcom/shabakaty/downloader/fu1;

    if-nez v0, :cond_7

    goto :goto_1

    .line 21
    :cond_7
    iget-object v1, v0, Lcom/shabakaty/downloader/fu1;->b:Lcom/shabakaty/downloader/xu1;

    .line 22
    :goto_1
    invoke-virtual {p1, v1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->setItemsListener(Lcom/shabakaty/downloader/pk;)V

    goto :goto_2

    .line 23
    :cond_8
    instance-of v0, p1, Lcom/shabakaty/downloader/w42;

    if-eqz v0, :cond_b

    .line 24
    check-cast p1, Lcom/shabakaty/downloader/w42;

    iget-object p1, p1, Lcom/shabakaty/downloader/w42;->M:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->a:Lcom/shabakaty/downloader/vt1;

    if-nez v0, :cond_9

    goto :goto_2

    .line 26
    :cond_9
    iget-object v0, v0, Lcom/shabakaty/downloader/vt1;->y:Lcom/shabakaty/downloader/fu1;

    if-nez v0, :cond_a

    goto :goto_2

    .line 27
    :cond_a
    new-instance v1, Lcom/shabakaty/downloader/au1;

    .line 28
    iget-object v2, v0, Lcom/shabakaty/downloader/fu1;->a:Lcom/shabakaty/downloader/wt1;

    .line 29
    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/au1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->setSeeMoreClickListener(Lcom/shabakaty/downloader/rm1;)V

    .line 30
    iget-object v0, v0, Lcom/shabakaty/downloader/fu1;->d:Lcom/shabakaty/downloader/bm1;

    .line 31
    invoke-virtual {p1, v0}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->setCollectionsListener(Lcom/shabakaty/downloader/bm1;)V

    goto :goto_2

    .line 32
    :cond_b
    instance-of v0, p1, Lcom/shabakaty/downloader/z42;

    if-eqz v0, :cond_f

    .line 33
    check-cast p1, Lcom/shabakaty/downloader/z42;

    iget-object p1, p1, Lcom/shabakaty/downloader/z42;->M:Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->a:Lcom/shabakaty/downloader/vt1;

    if-nez v0, :cond_c

    goto :goto_2

    .line 35
    :cond_c
    iget-object v0, v0, Lcom/shabakaty/downloader/vt1;->y:Lcom/shabakaty/downloader/fu1;

    if-nez v0, :cond_d

    goto :goto_2

    .line 36
    :cond_d
    iget-object v0, v0, Lcom/shabakaty/downloader/fu1;->e:Lcom/shabakaty/downloader/z25;

    if-nez v0, :cond_e

    goto :goto_2

    .line 37
    :cond_e
    invoke-virtual {p1, v0}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->setGroupsListener(Lcom/shabakaty/downloader/z25;)V

    :cond_f
    :goto_2
    return-void
.end method
