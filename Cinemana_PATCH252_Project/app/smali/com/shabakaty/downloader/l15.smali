.class public Lcom/shabakaty/downloader/l15;
.super Lcom/shabakaty/downloader/k15;
.source "VideoInfoSeasonsLayoutBindingImpl.java"


# instance fields
.field public Q:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;[Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->t(Lcom/shabakaty/downloader/gl0;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 2
    aget-object v5, p2, v2

    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    move-object v8, v0

    check-cast v8, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v6, 0x2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/k15;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/l15;->Q:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k15;->M:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/k15;->N:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->C([Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l15;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x23

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/l15;->H(Lcom/shabakaty/downloader/xv2;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/l15;->G(Lcom/shabakaty/downloader/xv2;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Lcom/shabakaty/downloader/xv2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k15;->O:Lcom/shabakaty/downloader/xv2;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/l15;->Q:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/l15;->Q:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x14

    .line 6
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->f(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public H(Lcom/shabakaty/downloader/xv2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k15;->P:Lcom/shabakaty/downloader/xv2;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/l15;->Q:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/l15;->Q:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x23

    .line 6
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->f(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/l15;->Q:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/l15;->Q:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/k15;->P:Lcom/shabakaty/downloader/xv2;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/k15;->O:Lcom/shabakaty/downloader/xv2;

    const-wide/16 v7, 0x7

    and-long v9, v2, v7

    const-wide/16 v11, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x0

    cmp-long v15, v9, v4

    if-eqz v15, :cond_9

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    goto :goto_0

    :cond_0
    move-object v0, v14

    :goto_0
    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/tj;

    goto :goto_1

    :cond_1
    move-object v6, v14

    :goto_1
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    goto :goto_2

    :cond_2
    move-object v0, v14

    :goto_2
    if-eqz v6, :cond_3

    .line 11
    iget-object v9, v6, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 12
    check-cast v9, Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v9, v14

    :goto_3
    and-long v15, v2, v11

    cmp-long v10, v15, v4

    if-eqz v10, :cond_a

    if-eqz v6, :cond_4

    .line 13
    iget-object v6, v6, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_4

    :cond_4
    move-object v6, v14

    :goto_4
    if-eqz v6, :cond_5

    .line 14
    sget-object v15, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {v6, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-eqz v10, :cond_7

    if-eqz v6, :cond_6

    const-wide/16 v15, 0x10

    goto :goto_6

    :cond_6
    const-wide/16 v15, 0x8

    :goto_6
    or-long/2addr v2, v15

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_7

    :cond_8
    const/16 v6, 0x8

    goto :goto_8

    :cond_9
    move-object v0, v14

    move-object v9, v0

    :cond_a
    :goto_7
    const/4 v6, 0x0

    :goto_8
    and-long v10, v2, v11

    cmp-long v12, v10, v4

    if-eqz v12, :cond_b

    .line 15
    iget-object v10, v1, Lcom/shabakaty/downloader/k15;->M:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v10, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 16
    iget-object v10, v1, Lcom/shabakaty/downloader/k15;->N:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    const-wide/16 v10, 0x4

    and-long/2addr v10, v2

    cmp-long v6, v10, v4

    if-eqz v6, :cond_c

    .line 17
    iget-object v6, v1, Lcom/shabakaty/downloader/k15;->M:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1202af

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_c
    and-long/2addr v2, v7

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1a

    .line 18
    iget-object v2, v1, Lcom/shabakaty/downloader/k15;->N:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, v1, Lcom/shabakaty/downloader/k15;->M:Lcom/google/android/material/tabs/TabLayout;

    const-string v4, "<this>"

    .line 19
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v9, :cond_d

    move-object v4, v14

    goto :goto_a

    .line 20
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v9, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 22
    check-cast v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 23
    iget-object v6, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 24
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    invoke-static {v4}, Lcom/shabakaty/downloader/m50;->U(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    :goto_a
    if-nez v4, :cond_f

    goto/16 :goto_f

    .line 25
    :cond_f
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_10

    move-object v5, v4

    goto :goto_b

    :cond_10
    move-object v5, v14

    :goto_b
    if-nez v5, :cond_11

    goto/16 :goto_f

    .line 26
    :cond_11
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 27
    invoke-static {v2}, Lcom/shabakaty/downloader/jl3;->b(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 28
    instance-of v7, v5, Lcom/shabakaty/downloader/d15;

    if-nez v7, :cond_13

    instance-of v7, v5, Lcom/shabakaty/downloader/f91;

    if-eqz v7, :cond_12

    goto :goto_c

    :cond_12
    const/4 v7, 0x0

    goto :goto_d

    :cond_13
    :goto_c
    const/4 v7, 0x1

    :goto_d
    if-eqz v7, :cond_14

    move-object v14, v5

    :cond_14
    if-nez v14, :cond_15

    goto :goto_f

    .line 29
    :cond_15
    new-instance v5, Lcom/shabakaty/downloader/sz3;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v5, v4, v14}, Lcom/shabakaty/downloader/sz3;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 30
    invoke-virtual {v2, v5}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    if-nez v0, :cond_16

    goto :goto_e

    .line 31
    :cond_16
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    if-nez v0, :cond_17

    goto :goto_e

    .line 32
    :cond_17
    invoke-static {v0}, Lcom/shabakaty/downloader/me4;->z(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_e

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_e
    add-int/lit8 v0, v6, -0x1

    .line 33
    invoke-virtual {v2, v0, v13}, Landroidx/viewpager2/widget/ViewPager2;->c(IZ)V

    if-nez v3, :cond_19

    goto :goto_f

    .line 34
    :cond_19
    new-instance v0, Lcom/google/android/material/tabs/c;

    const/16 v18, 0x1

    const/16 v19, 0x1

    .line 35
    new-instance v4, Lcom/shabakaty/downloader/l91;

    invoke-direct {v4, v2}, Lcom/shabakaty/downloader/l91;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v20, v4

    .line 36
    invoke-direct/range {v15 .. v20}, Lcom/google/android/material/tabs/c;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLcom/google/android/material/tabs/c$b;)V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/material/tabs/c;->a()V

    .line 38
    new-instance v0, Lcom/shabakaty/downloader/le;

    invoke-direct {v0, v3, v6}, Lcom/shabakaty/downloader/le;-><init>(Lcom/google/android/material/tabs/TabLayout;I)V

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    :goto_f
    return-void

    :catchall_0
    move-exception v0

    .line 39
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/l15;->Q:J

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

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/l15;->Q:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/l15;->Q:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/l15;->Q:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/l15;->Q:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/l15;->Q:J

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
