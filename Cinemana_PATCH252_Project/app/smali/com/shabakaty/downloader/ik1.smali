.class public Lcom/shabakaty/downloader/ik1;
.super Lcom/shabakaty/downloader/hk1;
.source "FragmentSearchMovieTvShowsTabBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/qm1$a;


# static fields
.field public static final U:Landroidx/databinding/ViewDataBinding$e;


# instance fields
.field public final Q:Lcom/shabakaty/downloader/oz2;

.field public final R:Lcom/shabakaty/cinemana/utils/StatusView;

.field public final S:Lcom/shabakaty/downloader/rm1;

.field public T:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ik1;->U:Landroidx/databinding/ViewDataBinding$e;

    const-string v1, "no_search_results_layout"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput v5, v3, v4

    new-array v2, v2, [I

    const v5, 0x7f0d00e9

    aput v5, v2, v4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$e;->a(I[Ljava/lang/String;[I[I)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ik1;->U:Landroidx/databinding/ViewDataBinding$e;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    aget-object v3, v0, v1

    check-cast v3, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    const/4 v4, 0x2

    invoke-direct {p0, p1, p2, v4, v3}, Lcom/shabakaty/downloader/hk1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;)V

    const-wide/16 v5, -0x1

    .line 3
    iput-wide v5, p0, Lcom/shabakaty/downloader/ik1;->T:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 6
    aget-object p1, v0, p1

    check-cast p1, Lcom/shabakaty/downloader/oz2;

    iput-object p1, p0, Lcom/shabakaty/downloader/ik1;->Q:Lcom/shabakaty/downloader/oz2;

    if-eqz p1, :cond_0

    .line 7
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 8
    :cond_0
    aget-object p1, v0, v4

    check-cast p1, Lcom/shabakaty/cinemana/utils/StatusView;

    iput-object p1, p0, Lcom/shabakaty/downloader/ik1;->R:Lcom/shabakaty/cinemana/utils/StatusView;

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/hk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 11
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/qm1;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/qm1;-><init>(Lcom/shabakaty/downloader/qm1$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ik1;->S:Lcom/shabakaty/downloader/rm1;

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ik1;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ik1;->Q:Lcom/shabakaty/downloader/oz2;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x21

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/ik1;->G(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/hz3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/hk1;->P:Lcom/shabakaty/downloader/hz3;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ik1;->T:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ik1;->T:J

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 8
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const/16 v0, 0x10

    if-ne v0, p1, :cond_2

    .line 10
    check-cast p2, Lcom/shabakaty/downloader/dz3;

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/hk1;->O:Lcom/shabakaty/downloader/dz3;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ik1;->T:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ik1;->T:J

    .line 14
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 16
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/hk1;->N:Ljava/lang/Integer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/ik1;->T:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/ik1;->T:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x21

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->f(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(I)Lcom/shabakaty/downloader/qv4;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/hk1;->N:Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/hk1;->O:Lcom/shabakaty/downloader/dz3;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/dz3;->f(I)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/ik1;->T:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/ik1;->T:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/hk1;->N:Ljava/lang/Integer;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/hk1;->P:Lcom/shabakaty/downloader/hz3;

    .line 7
    iget-object v7, v1, Lcom/shabakaty/downloader/hk1;->O:Lcom/shabakaty/downloader/dz3;

    const-wide/16 v8, 0x2f

    and-long v10, v2, v8

    const-wide/16 v12, 0x80

    const-wide/16 v14, 0x40

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v17, v10, v4

    if-eqz v17, :cond_2

    .line 8
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->z(Ljava/lang/Integer;)I

    move-result v10

    if-ne v10, v8, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v17, :cond_3

    if-eqz v10, :cond_1

    or-long/2addr v2, v12

    const-wide/16 v17, 0x200

    goto :goto_1

    :cond_1
    or-long/2addr v2, v14

    const-wide/16 v17, 0x100

    :goto_1
    or-long v2, v2, v17

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :cond_3
    :goto_2
    const-wide/16 v17, 0x28

    and-long v17, v2, v17

    cmp-long v11, v17, v4

    const-wide/16 v17, 0x30

    and-long v17, v2, v17

    cmp-long v19, v17, v4

    const-wide/16 v17, 0x3c0

    and-long v17, v2, v17

    const/16 v20, 0x0

    cmp-long v21, v17, v4

    if-eqz v21, :cond_c

    const-wide/16 v17, 0x140

    and-long v17, v2, v17

    cmp-long v21, v17, v4

    if-eqz v21, :cond_7

    if-eqz v6, :cond_4

    .line 9
    iget-object v12, v6, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    goto :goto_3

    :cond_4
    move-object/from16 v12, v20

    .line 10
    :goto_3
    invoke-virtual {v1, v9, v12}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_5

    .line 11
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/tj;

    goto :goto_4

    :cond_5
    move-object/from16 v9, v20

    :goto_4
    and-long v12, v2, v14

    cmp-long v14, v12, v4

    if-eqz v14, :cond_6

    if-eqz v9, :cond_6

    .line 12
    iget-object v12, v9, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_5

    :cond_6
    move-object/from16 v12, v20

    goto :goto_5

    :cond_7
    move-object/from16 v9, v20

    move-object v12, v9

    :goto_5
    const-wide/16 v13, 0x280

    and-long/2addr v13, v2

    cmp-long v15, v13, v4

    if-eqz v15, :cond_b

    if-eqz v6, :cond_8

    .line 13
    iget-object v13, v6, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    goto :goto_6

    :cond_8
    move-object/from16 v13, v20

    .line 14
    :goto_6
    invoke-virtual {v1, v8, v13}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_9

    .line 15
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/tj;

    goto :goto_7

    :cond_9
    move-object/from16 v8, v20

    :goto_7
    const-wide/16 v13, 0x80

    and-long/2addr v13, v2

    cmp-long v15, v13, v4

    if-eqz v15, :cond_a

    if-eqz v8, :cond_a

    .line 16
    iget-object v13, v8, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_8

    :cond_a
    move-object/from16 v13, v20

    goto :goto_8

    :cond_b
    move-object/from16 v8, v20

    move-object v13, v8

    goto :goto_8

    :cond_c
    move-object/from16 v8, v20

    move-object v9, v8

    move-object v12, v9

    move-object v13, v12

    :goto_8
    const-wide/16 v14, 0x2f

    and-long/2addr v14, v2

    cmp-long v16, v14, v4

    if-eqz v16, :cond_f

    if-eqz v10, :cond_d

    move-object/from16 v20, v13

    goto :goto_9

    :cond_d
    move-object/from16 v20, v12

    :goto_9
    if-eqz v10, :cond_e

    goto :goto_a

    :cond_e
    move-object v8, v9

    :goto_a
    move-object v9, v8

    move-object/from16 v8, v20

    goto :goto_b

    :cond_f
    move-object/from16 v8, v20

    move-object v9, v8

    :goto_b
    const-wide/16 v12, 0x24

    and-long/2addr v12, v2

    cmp-long v10, v12, v4

    if-eqz v10, :cond_10

    .line 17
    iget-object v10, v1, Lcom/shabakaty/downloader/ik1;->Q:Lcom/shabakaty/downloader/oz2;

    invoke-virtual {v10, v0}, Lcom/shabakaty/downloader/oz2;->G(Ljava/lang/Integer;)V

    :cond_10
    if-eqz v11, :cond_11

    .line 18
    iget-object v0, v1, Lcom/shabakaty/downloader/ik1;->Q:Lcom/shabakaty/downloader/oz2;

    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/oz2;->H(Lcom/shabakaty/downloader/hz3;)V

    :cond_11
    if-eqz v19, :cond_12

    .line 19
    iget-object v0, v1, Lcom/shabakaty/downloader/ik1;->R:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v7}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    :cond_12
    if-eqz v16, :cond_13

    .line 20
    iget-object v0, v1, Lcom/shabakaty/downloader/ik1;->R:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v8}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    .line 21
    iget-object v0, v1, Lcom/shabakaty/downloader/hk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0, v9}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setVideos(Lcom/shabakaty/downloader/tj;)V

    :cond_13
    const-wide/16 v6, 0x20

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    .line 22
    iget-object v0, v1, Lcom/shabakaty/downloader/hk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    iget-object v2, v1, Lcom/shabakaty/downloader/ik1;->S:Lcom/shabakaty/downloader/rm1;

    invoke-virtual {v0, v2}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setOnScrolledToEnd(Lcom/shabakaty/downloader/rm1;)V

    .line 23
    :cond_14
    iget-object v0, v1, Lcom/shabakaty/downloader/ik1;->Q:Lcom/shabakaty/downloader/oz2;

    .line 24
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/ik1;->T:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 3
    monitor-exit p0

    return v4

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ik1;->Q:Lcom/shabakaty/downloader/oz2;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/ik1;->T:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ik1;->Q:Lcom/shabakaty/downloader/oz2;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 5
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
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
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ik1;->T:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ik1;->T:J

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
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_3

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/ik1;->T:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ik1;->T:J

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
