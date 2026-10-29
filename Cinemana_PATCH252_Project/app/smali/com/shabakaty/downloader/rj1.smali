.class public Lcom/shabakaty/downloader/rj1;
.super Lcom/shabakaty/downloader/qj1;
.source "FragmentHomeBindingImpl.java"


# instance fields
.field public Q:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 2
    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    move-object v8, v0

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/qj1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/qj1;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 6
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rj1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x26

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/tu1;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/qj1;->P:Lcom/shabakaty/downloader/tu1;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    .line 9
    check-cast p2, Lcom/shabakaty/downloader/wt1;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/qj1;->O:Lcom/shabakaty/downloader/wt1;

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public i()V
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/qj1;->P:Lcom/shabakaty/downloader/tu1;

    const-wide/16 v5, 0x17

    and-long/2addr v5, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmp-long v10, v5, v2

    if-eqz v10, :cond_c

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, v4, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 7
    iget-object v4, v4, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    move-object v4, v9

    move-object v5, v4

    .line 8
    :goto_0
    invoke-virtual {p0, v8, v5}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    .line 9
    invoke-virtual {p0, v7, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/tj$a;

    goto :goto_1

    :cond_1
    move-object v5, v9

    :goto_1
    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    goto :goto_2

    :cond_2
    move-object v4, v9

    :goto_2
    if-eqz v4, :cond_b

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v11, v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->sliderItem:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    if-nez v11, :cond_3

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_3
    iget-object v11, v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->featuredMovies:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;

    if-nez v11, :cond_4

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :goto_4
    iget-object v11, v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->ad:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;

    if-nez v11, :cond_5

    goto :goto_5

    .line 18
    :cond_5
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :goto_5
    iget-object v11, v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->featuredTvShows:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;

    if-nez v11, :cond_6

    goto :goto_6

    .line 20
    :cond_6
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_6
    iget-object v11, v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->recentlyAdded:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;

    if-nez v11, :cond_7

    goto :goto_7

    .line 22
    :cond_7
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_7
    iget-object v11, v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->secondGroupSlice:Ljava/util/List;

    if-nez v11, :cond_8

    goto :goto_8

    .line 24
    :cond_8
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_8
    iget-object v11, v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->franchises:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    if-nez v11, :cond_9

    goto :goto_9

    .line 26
    :cond_9
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_9
    iget-object v4, v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->bottomGroups:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    if-nez v4, :cond_a

    goto :goto_a

    .line 28
    :cond_a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    move-object v6, v9

    goto :goto_a

    :cond_c
    move-object v5, v9

    move-object v6, v5

    :goto_a
    const-wide/16 v11, 0x10

    and-long/2addr v0, v11

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12029e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_d
    if-eqz v10, :cond_19

    .line 30
    iget-object v0, p0, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "<this>"

    .line 31
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_e

    goto/16 :goto_12

    .line 32
    :cond_e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/g;

    if-eqz v1, :cond_f

    check-cast v0, Landroidx/recyclerview/widget/g;

    goto :goto_b

    :cond_f
    move-object v0, v9

    :goto_b
    if-nez v0, :cond_10

    goto :goto_c

    .line 33
    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/g;->f()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    :goto_c
    move-object v1, v9

    goto :goto_d

    :cond_11
    invoke-static {v1, v7}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$e;

    :goto_d
    instance-of v2, v1, Lcom/shabakaty/downloader/w93;

    if-eqz v2, :cond_12

    check-cast v1, Lcom/shabakaty/downloader/w93;

    goto :goto_e

    :cond_12
    move-object v1, v9

    :goto_e
    if-nez v0, :cond_13

    goto :goto_f

    .line 34
    :cond_13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/g;->f()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_f
    move-object v0, v9

    goto :goto_10

    :cond_14
    invoke-static {v0, v8}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    :goto_10
    instance-of v2, v0, Lcom/shabakaty/downloader/yt1;

    if-eqz v2, :cond_15

    move-object v9, v0

    check-cast v9, Lcom/shabakaty/downloader/yt1;

    :cond_15
    if-nez v5, :cond_16

    goto :goto_11

    :cond_16
    if-nez v1, :cond_17

    goto :goto_11

    .line 35
    :cond_17
    invoke-static {v5}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ej;->e(Ljava/util/List;)V

    :goto_11
    if-nez v9, :cond_18

    goto :goto_12

    :cond_18
    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const-string v0, "items"

    .line 36
    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    # Nonblocking home section diff with generation-safe commits.
    invoke-static {v9, v6}, Lcom/shabakaty/cinemana/ca1/NuvioHomeDiff;->submit(Lcom/shabakaty/downloader/yt1;Ljava/util/List;)V

    :cond_19
    :goto_12
    return-void

    :catchall_0
    move-exception v0

    .line 44
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public u(ILjava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    .line 4
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return v0

    .line 5
    :cond_2
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_3

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/rj1;->Q:J

    .line 8
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    :goto_1
    return v0
.end method
