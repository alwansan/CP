.class public Lcom/shabakaty/downloader/mk1;
.super Lcom/shabakaty/downloader/lk1;
.source "FragmentShowMoreBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mk1$a;
    }
.end annotation


# instance fields
.field public P:Lcom/shabakaty/downloader/mk1$a;

.field public Q:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    .line 2
    aget-object v3, v2, v3

    check-cast v3, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/shabakaty/downloader/lk1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/mk1;->Q:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v2, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/lk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 7
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mk1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x26

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/r54;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/lk1;->O:Lcom/shabakaty/downloader/r54;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/mk1;->Q:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/mk1;->Q:J

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
    check-cast p2, Lcom/shabakaty/downloader/o54;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/lk1;->N:Lcom/shabakaty/downloader/o54;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/mk1;->Q:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/mk1;->Q:J

    .line 13
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 15
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public i()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/mk1;->Q:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/mk1;->Q:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/lk1;->O:Lcom/shabakaty/downloader/r54;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/lk1;->N:Lcom/shabakaty/downloader/o54;

    const-wide/16 v7, 0x17

    and-long/2addr v7, v2

    const-wide/16 v9, 0x16

    const-wide/16 v11, 0x15

    const/4 v13, 0x0

    const/4 v14, 0x0

    cmp-long v15, v7, v4

    if-eqz v15, :cond_7

    and-long v7, v2, v11

    const/4 v15, 0x1

    cmp-long v16, v7, v4

    if-eqz v16, :cond_5

    if-eqz v0, :cond_0

    .line 7
    iget-object v7, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    move-object v7, v14

    .line 8
    :goto_0
    invoke-virtual {v1, v13, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/tj$a;

    goto :goto_1

    :cond_1
    move-object v7, v14

    .line 10
    :goto_1
    sget-object v8, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v16, :cond_4

    if-eqz v7, :cond_3

    const-wide/16 v16, 0x40

    goto :goto_3

    :cond_3
    const-wide/16 v16, 0x20

    :goto_3
    or-long v2, v2, v16

    :cond_4
    if-eqz v7, :cond_5

    const/16 v13, 0x8

    :cond_5
    and-long v7, v2, v9

    cmp-long v16, v7, v4

    if-eqz v16, :cond_7

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/r54;->i:Lcom/shabakaty/downloader/mj;

    goto :goto_4

    :cond_6
    move-object v0, v14

    .line 12
    :goto_4
    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_7

    .line 13
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    goto :goto_5

    :cond_7
    move-object v0, v14

    :goto_5
    const-wide/16 v7, 0x18

    and-long/2addr v7, v2

    cmp-long v15, v7, v4

    if-eqz v15, :cond_9

    if-eqz v6, :cond_9

    .line 14
    iget-object v7, v1, Lcom/shabakaty/downloader/mk1;->P:Lcom/shabakaty/downloader/mk1$a;

    if-nez v7, :cond_8

    new-instance v7, Lcom/shabakaty/downloader/mk1$a;

    invoke-direct {v7}, Lcom/shabakaty/downloader/mk1$a;-><init>()V

    iput-object v7, v1, Lcom/shabakaty/downloader/mk1;->P:Lcom/shabakaty/downloader/mk1$a;

    :cond_8
    move-object v14, v7

    .line 15
    iput-object v6, v14, Lcom/shabakaty/downloader/mk1$a;->r:Lcom/shabakaty/downloader/o54;

    :cond_9
    and-long v6, v2, v11

    cmp-long v8, v6, v4

    if-eqz v8, :cond_a

    .line 16
    iget-object v6, v1, Lcom/shabakaty/downloader/lk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    if-eqz v15, :cond_b

    .line 17
    iget-object v6, v1, Lcom/shabakaty/downloader/lk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v6, v14}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setOnScrolledToEnd(Lcom/shabakaty/downloader/rm1;)V

    :cond_b
    and-long/2addr v2, v9

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c

    .line 18
    iget-object v2, v1, Lcom/shabakaty/downloader/lk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v2, v0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setVideos(Lcom/shabakaty/downloader/tj;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 19
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/mk1;->Q:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/mk1;->Q:J

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
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/mk1;->Q:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/mk1;->Q:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/mk1;->Q:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/mk1;->Q:J

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
