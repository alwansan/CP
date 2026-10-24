.class public Lcom/shabakaty/downloader/b35;
.super Lcom/shabakaty/downloader/a35;
.source "VideosLayoutBindingImpl.java"


# instance fields
.field public c0:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    .line 2
    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    move-object v8, v2

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    const/4 v6, 0x2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/a35;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/a35;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/a35;->O:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 9
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b35;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ne v2, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/rm1;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/b35;->L(Lcom/shabakaty/downloader/rm1;)V

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x25

    if-ne v2, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-virtual {p0, v0, p2}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/a35;->V:Lcom/shabakaty/downloader/xv2;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v3, 0x1

    or-long/2addr p1, v3

    iput-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, v2}, Landroidx/databinding/a;->f(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const/16 v2, 0x1f

    if-ne v2, p1, :cond_2

    .line 11
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    .line 12
    invoke-virtual {p0, v1, p2}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    .line 13
    iput-object p2, p0, Lcom/shabakaty/downloader/a35;->X:Lcom/shabakaty/downloader/xv2;

    .line 14
    monitor-enter p0

    .line 15
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v3, 0x2

    or-long/2addr p1, v3

    iput-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 16
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    invoke-virtual {p0, v2}, Landroidx/databinding/a;->f(I)V

    .line 18
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 19
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    const/16 v2, 0x20

    if-ne v2, p1, :cond_3

    .line 20
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/b35;->N(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x19

    if-ne v2, p1, :cond_4

    .line 21
    check-cast p2, Ljava/lang/Integer;

    .line 22
    iput-object p2, p0, Lcom/shabakaty/downloader/a35;->R:Ljava/lang/Integer;

    .line 23
    monitor-enter p0

    .line 24
    :try_start_4
    iget-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v3, 0x10

    or-long/2addr p1, v3

    iput-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 25
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 26
    invoke-virtual {p0, v2}, Landroidx/databinding/a;->f(I)V

    .line 27
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto/16 :goto_0

    :catchall_2
    move-exception p1

    .line 28
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_4
    if-ne v1, p1, :cond_5

    .line 29
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/b35;->G(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    if-ne v2, p1, :cond_6

    .line 30
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/b35;->H(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    if-ne v2, p1, :cond_7

    .line 31
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 32
    iput-object p2, p0, Lcom/shabakaty/downloader/a35;->T:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 33
    monitor-enter p0

    .line 34
    :try_start_6
    iget-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v3, 0x80

    or-long/2addr p1, v3

    iput-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 35
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 36
    invoke-virtual {p0, v2}, Landroidx/databinding/a;->f(I)V

    .line 37
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto :goto_0

    :catchall_3
    move-exception p1

    .line 38
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :cond_7
    const/16 v2, 0x24

    if-ne v2, p1, :cond_8

    .line 39
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/b35;->P(Ljava/util/List;)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x9

    if-ne v2, p1, :cond_9

    .line 40
    check-cast p2, Lcom/shabakaty/downloader/rm1;

    .line 41
    iput-object p2, p0, Lcom/shabakaty/downloader/a35;->Q:Lcom/shabakaty/downloader/rm1;

    .line 42
    monitor-enter p0

    .line 43
    :try_start_8
    iget-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v3, 0x200

    or-long/2addr p1, v3

    iput-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 44
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 45
    invoke-virtual {p0, v2}, Landroidx/databinding/a;->f(I)V

    .line 46
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto :goto_0

    :catchall_4
    move-exception p1

    .line 47
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p1

    :cond_9
    const/16 v2, 0x10

    if-ne v2, p1, :cond_a

    .line 48
    check-cast p2, Lcom/shabakaty/downloader/qk;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/b35;->J(Lcom/shabakaty/downloader/qk;)V

    goto :goto_0

    :cond_a
    const/16 v2, 0xc

    if-ne v2, p1, :cond_b

    .line 49
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/b35;->I(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_b
    const/16 v2, 0x1e

    if-ne v2, p1, :cond_c

    .line 50
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/b35;->M(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public G(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a35;->b0:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

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

.method public H(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a35;->Z:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

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

.method public I(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a35;->S:Ljava/lang/Integer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xc

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

.method public J(Lcom/shabakaty/downloader/qk;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a35;->Y:Lcom/shabakaty/downloader/qk;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

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

.method public L(Lcom/shabakaty/downloader/rm1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a35;->P:Lcom/shabakaty/downloader/rm1;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x12

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

.method public M(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a35;->W:Ljava/lang/String;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

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

.method public N(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a35;->a0:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

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

.method public P(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a35;->U:Ljava/util/List;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x24

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

.method public i()V
    .locals 68

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/b35;->c0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->P:Lcom/shabakaty/downloader/rm1;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/a35;->V:Lcom/shabakaty/downloader/xv2;

    .line 7
    iget-object v7, v1, Lcom/shabakaty/downloader/a35;->X:Lcom/shabakaty/downloader/xv2;

    .line 8
    iget-object v8, v1, Lcom/shabakaty/downloader/a35;->a0:Ljava/lang/Boolean;

    .line 9
    iget-object v9, v1, Lcom/shabakaty/downloader/a35;->R:Ljava/lang/Integer;

    .line 10
    iget-object v10, v1, Lcom/shabakaty/downloader/a35;->b0:Ljava/lang/Boolean;

    .line 11
    iget-object v11, v1, Lcom/shabakaty/downloader/a35;->Z:Ljava/lang/Boolean;

    .line 12
    iget-object v12, v1, Lcom/shabakaty/downloader/a35;->T:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 13
    iget-object v13, v1, Lcom/shabakaty/downloader/a35;->U:Ljava/util/List;

    .line 14
    iget-object v14, v1, Lcom/shabakaty/downloader/a35;->Q:Lcom/shabakaty/downloader/rm1;

    .line 15
    iget-object v15, v1, Lcom/shabakaty/downloader/a35;->Y:Lcom/shabakaty/downloader/qk;

    .line 16
    iget-object v4, v1, Lcom/shabakaty/downloader/a35;->S:Ljava/lang/Integer;

    .line 17
    iget-object v5, v1, Lcom/shabakaty/downloader/a35;->W:Ljava/lang/String;

    const-wide/16 v18, 0x3d4b

    and-long v20, v2, v18

    const-wide/high16 v22, 0x200000000000000L

    const-wide/high16 v24, 0x100000000000000L

    const-wide v26, 0x4000400002101L

    move-object/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const-wide/16 v16, 0x0

    cmp-long v31, v20, v16

    if-eqz v31, :cond_8

    if-eqz v6, :cond_0

    .line 18
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/shabakaty/downloader/tj;

    move-object/from16 v0, v20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v31, 0x2101

    and-long v31, v2, v31

    cmp-long v21, v31, v16

    if-eqz v21, :cond_3

    if-nez v0, :cond_1

    const/16 v21, 0x1

    goto :goto_1

    :cond_1
    const/16 v21, 0x0

    :goto_1
    and-long v31, v2, v26

    cmp-long v33, v31, v16

    if-eqz v33, :cond_4

    if-eqz v21, :cond_2

    or-long v2, v2, v22

    goto :goto_2

    :cond_2
    or-long v2, v2, v24

    goto :goto_2

    :cond_3
    const/16 v21, 0x0

    :cond_4
    :goto_2
    move-object/from16 v31, v14

    if-eqz v0, :cond_5

    .line 19
    iget-object v14, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 20
    check-cast v14, Ljava/util/List;

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_6

    const/16 v32, 0x1

    goto :goto_4

    :cond_6
    const/16 v32, 0x0

    :goto_4
    and-long v33, v2, v18

    const-wide/16 v16, 0x0

    cmp-long v35, v33, v16

    if-eqz v35, :cond_9

    if-eqz v32, :cond_7

    const-wide/32 v33, 0x800000

    goto :goto_5

    :cond_7
    const-wide/32 v33, 0x400000

    :goto_5
    or-long v2, v2, v33

    goto :goto_6

    :cond_8
    move-object/from16 v31, v14

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v32, 0x0

    :cond_9
    :goto_6
    const-wide/16 v33, 0x3503

    and-long v35, v2, v33

    const-wide/16 v37, 0x3103

    const-wide/16 v16, 0x0

    cmp-long v39, v35, v16

    if-eqz v39, :cond_10

    if-eqz v7, :cond_a

    .line 21
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_b

    const/16 v35, 0x1

    goto :goto_8

    :cond_b
    const/16 v35, 0x0

    :goto_8
    if-eqz v39, :cond_d

    if-eqz v35, :cond_c

    const-wide v39, 0x2000000000L

    goto :goto_9

    :cond_c
    const-wide v39, 0x1000000000L

    :goto_9
    or-long v2, v2, v39

    :cond_d
    and-long v39, v2, v37

    const-wide/16 v16, 0x0

    cmp-long v36, v39, v16

    if-eqz v36, :cond_11

    if-eqz v7, :cond_e

    .line 22
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v39

    goto :goto_a

    :cond_e
    const/16 v39, 0x0

    :goto_a
    if-eqz v36, :cond_12

    if-eqz v39, :cond_f

    const-wide v40, 0x200000000000L

    goto :goto_b

    :cond_f
    const-wide v40, 0x100000000000L

    :goto_b
    or-long v2, v2, v40

    goto :goto_c

    :cond_10
    const/4 v7, 0x0

    const/16 v35, 0x0

    :cond_11
    const/16 v39, 0x0

    :cond_12
    :goto_c
    const-wide/16 v40, 0x2018

    and-long v42, v2, v40

    const-wide/32 v44, 0x80000

    const-wide/16 v16, 0x0

    cmp-long v36, v42, v16

    if-eqz v36, :cond_15

    if-nez v9, :cond_13

    const/16 v42, 0x1

    goto :goto_d

    :cond_13
    const/16 v42, 0x0

    :goto_d
    if-eqz v36, :cond_16

    if-eqz v42, :cond_14

    or-long v2, v2, v44

    goto :goto_e

    :cond_14
    const-wide/32 v46, 0x40000

    or-long v2, v2, v46

    goto :goto_e

    :cond_15
    const/16 v42, 0x0

    :cond_16
    :goto_e
    const-wide/16 v46, 0x2020

    and-long v48, v2, v46

    const-wide/16 v16, 0x0

    cmp-long v36, v48, v16

    if-eqz v36, :cond_19

    if-nez v10, :cond_17

    const/16 v43, 0x1

    goto :goto_f

    :cond_17
    const/16 v43, 0x0

    :goto_f
    if-eqz v36, :cond_1a

    if-eqz v43, :cond_18

    const-wide/32 v48, 0x20000000

    goto :goto_10

    :cond_18
    const-wide/32 v48, 0x10000000

    :goto_10
    or-long v2, v2, v48

    goto :goto_11

    :cond_19
    const/16 v43, 0x0

    :cond_1a
    :goto_11
    const-wide/16 v48, 0x2040

    and-long v50, v2, v48

    const-wide/high16 v52, 0x10000000000000L

    const-wide/16 v16, 0x0

    cmp-long v36, v50, v16

    if-eqz v36, :cond_1d

    if-nez v11, :cond_1b

    const/16 v50, 0x1

    goto :goto_12

    :cond_1b
    const/16 v50, 0x0

    :goto_12
    if-eqz v36, :cond_1e

    if-eqz v50, :cond_1c

    const-wide/high16 v54, 0x20000000000000L

    or-long v2, v2, v54

    goto :goto_13

    :cond_1c
    or-long v2, v2, v52

    goto :goto_13

    :cond_1d
    const/16 v50, 0x0

    :cond_1e
    :goto_13
    const-wide/16 v54, 0x2949

    and-long v56, v2, v54

    const-wide/16 v58, 0x2901

    const-wide v60, 0x80000000000L

    const-wide/16 v16, 0x0

    cmp-long v36, v56, v16

    if-eqz v36, :cond_24

    if-nez v4, :cond_1f

    const/16 v51, 0x1

    goto :goto_14

    :cond_1f
    const/16 v51, 0x0

    :goto_14
    if-eqz v36, :cond_21

    if-eqz v51, :cond_20

    or-long v2, v2, v60

    goto :goto_15

    :cond_20
    const-wide v56, 0x40000000000L

    or-long v2, v2, v56

    :cond_21
    :goto_15
    and-long v56, v2, v58

    const-wide/16 v16, 0x0

    cmp-long v36, v56, v16

    if-eqz v36, :cond_25

    .line 23
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->z(Ljava/lang/Integer;)I

    move-result v56

    if-nez v56, :cond_22

    const/16 v56, 0x1

    goto :goto_16

    :cond_22
    const/16 v56, 0x0

    :goto_16
    if-eqz v36, :cond_26

    if-eqz v56, :cond_23

    const-wide v62, 0x800000000000L

    goto :goto_17

    :cond_23
    const-wide v62, 0x400000000000L

    :goto_17
    or-long v2, v2, v62

    goto :goto_18

    :cond_24
    const/16 v51, 0x0

    :cond_25
    const/16 v56, 0x0

    :cond_26
    :goto_18
    and-long v62, v2, v44

    const-wide v64, 0x8000000000L

    const-wide/16 v16, 0x0

    cmp-long v36, v62, v16

    if-eqz v36, :cond_2c

    .line 24
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v57

    if-eqz v36, :cond_28

    if-eqz v57, :cond_27

    const-wide/32 v62, 0x20000

    goto :goto_19

    :cond_27
    const-wide/32 v62, 0x10000

    :goto_19
    or-long v2, v2, v62

    :cond_28
    and-long v62, v2, v64

    const-wide/16 v16, 0x0

    cmp-long v36, v62, v16

    if-eqz v36, :cond_2a

    if-eqz v57, :cond_29

    const-wide/32 v62, 0x2000000

    goto :goto_1a

    :cond_29
    const-wide/32 v62, 0x1000000

    :goto_1a
    or-long v2, v2, v62

    :cond_2a
    if-eqz v57, :cond_2b

    const/16 v36, 0x2

    goto :goto_1b

    :cond_2b
    const/16 v36, 0x3

    goto :goto_1b

    :cond_2c
    const/16 v36, 0x0

    :goto_1b
    const-wide v62, 0x10080000000000L

    and-long v62, v2, v62

    const-wide/16 v16, 0x0

    cmp-long v57, v62, v16

    if-eqz v57, :cond_33

    .line 25
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v11

    and-long v62, v2, v60

    cmp-long v57, v62, v16

    if-eqz v57, :cond_2e

    if-eqz v11, :cond_2d

    or-long v2, v2, v64

    goto :goto_1c

    :cond_2d
    const-wide v62, 0x4000000000L

    or-long v2, v2, v62

    :cond_2e
    :goto_1c
    and-long v62, v2, v52

    cmp-long v57, v62, v16

    if-eqz v57, :cond_30

    if-eqz v11, :cond_2f

    const-wide v62, 0x20000000000L

    goto :goto_1d

    :cond_2f
    const-wide v62, 0x10000000000L

    :goto_1d
    or-long v2, v2, v62

    :cond_30
    and-long v52, v2, v52

    cmp-long v57, v52, v16

    move-object/from16 v52, v0

    if-eqz v57, :cond_32

    if-eqz v11, :cond_31

    .line 26
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-wide/from16 v62, v2

    const v2, 0x7f12024b

    goto :goto_1e

    :cond_31
    move-wide/from16 v62, v2

    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12024c

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v2, v62

    goto :goto_1f

    :cond_32
    move-wide/from16 v62, v2

    const/4 v0, 0x0

    goto :goto_1f

    :cond_33
    move-object/from16 v52, v0

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_1f
    and-long v62, v2, v37

    const-wide/high16 v66, 0x2000000000000L

    const-wide/16 v16, 0x0

    cmp-long v53, v62, v16

    if-eqz v53, :cond_36

    if-eqz v39, :cond_34

    const/16 v39, 0x1

    goto :goto_20

    :cond_34
    move/from16 v39, v35

    :goto_20
    if-eqz v53, :cond_37

    if-eqz v39, :cond_35

    or-long v2, v2, v66

    goto :goto_21

    :cond_35
    const-wide/high16 v62, 0x1000000000000L

    or-long v2, v2, v62

    goto :goto_21

    :cond_36
    const/16 v39, 0x0

    :cond_37
    :goto_21
    and-long v62, v2, v58

    const-wide/16 v16, 0x0

    cmp-long v53, v62, v16

    if-eqz v53, :cond_3a

    if-eqz v56, :cond_38

    const/16 v56, 0x1

    goto :goto_22

    :cond_38
    move/from16 v56, v51

    :goto_22
    if-eqz v53, :cond_3b

    if-eqz v56, :cond_39

    const-wide v62, 0x800000000L

    goto :goto_23

    :cond_39
    const-wide v62, 0x400000000L

    :goto_23
    or-long v2, v2, v62

    goto :goto_24

    :cond_3a
    const/16 v56, 0x0

    :cond_3b
    :goto_24
    const-wide/32 v62, 0x10000000

    and-long v62, v2, v62

    const-wide/16 v16, 0x0

    cmp-long v53, v62, v16

    if-eqz v53, :cond_3d

    .line 27
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v53, :cond_3e

    if-eqz v10, :cond_3c

    const-wide v62, 0x80000000L

    goto :goto_25

    :cond_3c
    const-wide/32 v62, 0x40000000

    :goto_25
    or-long v2, v2, v62

    goto :goto_26

    :cond_3d
    const/4 v10, 0x0

    :cond_3e
    :goto_26
    and-long v62, v2, v40

    const-wide/16 v16, 0x0

    cmp-long v53, v62, v16

    if-eqz v53, :cond_40

    if-eqz v42, :cond_3f

    goto :goto_27

    .line 28
    :cond_3f
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v36

    goto :goto_27

    :cond_40
    const/16 v36, 0x0

    :goto_27
    and-long v62, v2, v46

    cmp-long v9, v62, v16

    if-eqz v9, :cond_41

    if-eqz v43, :cond_42

    const/4 v10, 0x1

    goto :goto_28

    :cond_41
    const/4 v10, 0x0

    :cond_42
    :goto_28
    and-long v42, v2, v33

    cmp-long v9, v42, v16

    if-eqz v9, :cond_43

    if-eqz v35, :cond_44

    move-object v7, v5

    goto :goto_29

    :cond_43
    const/4 v7, 0x0

    :cond_44
    :goto_29
    and-long v42, v2, v48

    cmp-long v9, v42, v16

    if-eqz v9, :cond_45

    if-eqz v50, :cond_46

    .line 29
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f12024b

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_45
    const/4 v0, 0x0

    :cond_46
    :goto_2a
    const-wide v42, 0x400000000L

    and-long v42, v2, v42

    const-wide/16 v16, 0x0

    cmp-long v9, v42, v16

    if-eqz v9, :cond_4a

    if-eqz v6, :cond_47

    .line 30
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/tj;

    move-object/from16 v52, v9

    :cond_47
    if-nez v52, :cond_48

    const/16 v21, 0x1

    goto :goto_2b

    :cond_48
    const/16 v21, 0x0

    :goto_2b
    and-long v42, v2, v26

    cmp-long v9, v42, v16

    if-eqz v9, :cond_4a

    if-eqz v21, :cond_49

    or-long v2, v2, v22

    goto :goto_2c

    :cond_49
    or-long v2, v2, v24

    :cond_4a
    :goto_2c
    and-long v42, v2, v64

    cmp-long v9, v42, v16

    if-eqz v9, :cond_50

    .line 31
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v8

    and-long v42, v2, v44

    cmp-long v9, v42, v16

    if-eqz v9, :cond_4c

    if-eqz v8, :cond_4b

    const-wide/32 v42, 0x20000

    goto :goto_2d

    :cond_4b
    const-wide/32 v42, 0x10000

    :goto_2d
    or-long v2, v2, v42

    :cond_4c
    and-long v42, v2, v64

    cmp-long v9, v42, v16

    if-eqz v9, :cond_4e

    if-eqz v8, :cond_4d

    const-wide/32 v42, 0x2000000

    goto :goto_2e

    :cond_4d
    const-wide/32 v42, 0x1000000

    :goto_2e
    or-long v2, v2, v42

    :cond_4e
    if-eqz v8, :cond_4f

    const/4 v8, 0x4

    goto :goto_2f

    :cond_4f
    const/4 v8, 0x6

    goto :goto_2f

    :cond_50
    const/4 v8, 0x0

    :goto_2f
    and-long v42, v2, v66

    const-wide/16 v16, 0x0

    cmp-long v9, v42, v16

    if-eqz v9, :cond_53

    if-eqz v5, :cond_51

    .line 32
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v35

    goto :goto_30

    :cond_51
    const/16 v35, 0x0

    :goto_30
    if-eqz v9, :cond_54

    if-eqz v35, :cond_52

    const-wide/32 v42, 0x8000

    goto :goto_31

    :cond_52
    const-wide/16 v42, 0x4000

    :goto_31
    or-long v2, v2, v42

    goto :goto_32

    :cond_53
    const/16 v35, 0x0

    :cond_54
    :goto_32
    and-long v42, v2, v60

    const-wide/16 v16, 0x0

    cmp-long v9, v42, v16

    if-eqz v9, :cond_55

    if-eqz v11, :cond_55

    goto :goto_33

    :cond_55
    const/4 v8, 0x0

    :goto_33
    and-long v42, v2, v54

    cmp-long v9, v42, v16

    if-eqz v9, :cond_57

    if-eqz v51, :cond_56

    goto :goto_34

    .line 33
    :cond_56
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_34

    :cond_57
    const/4 v8, 0x0

    :goto_34
    const-wide/16 v42, 0x4000

    and-long v42, v2, v42

    cmp-long v4, v42, v16

    if-eqz v4, :cond_58

    if-nez v5, :cond_58

    const/4 v4, 0x1

    goto :goto_35

    :cond_58
    const/4 v4, 0x0

    :goto_35
    and-long v42, v2, v66

    cmp-long v5, v42, v16

    if-eqz v5, :cond_59

    if-eqz v35, :cond_5a

    const/4 v4, 0x1

    goto :goto_36

    :cond_59
    const/4 v4, 0x0

    :cond_5a
    :goto_36
    and-long v42, v2, v37

    cmp-long v5, v42, v16

    if-eqz v5, :cond_5d

    if-eqz v39, :cond_5b

    goto :goto_37

    :cond_5b
    const/4 v4, 0x0

    :goto_37
    if-eqz v5, :cond_5e

    if-eqz v4, :cond_5c

    const-wide/high16 v42, 0x8000000000000L

    goto :goto_38

    :cond_5c
    const-wide/high16 v42, 0x4000000000000L

    :goto_38
    or-long v2, v2, v42

    goto :goto_39

    :cond_5d
    const/4 v4, 0x0

    :cond_5e
    :goto_39
    const-wide/high16 v42, 0x4000000000000L

    and-long v42, v2, v42

    const-wide/16 v16, 0x0

    cmp-long v5, v42, v16

    if-eqz v5, :cond_62

    if-eqz v6, :cond_5f

    .line 34
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v52, v5

    check-cast v52, Lcom/shabakaty/downloader/tj;

    :cond_5f
    if-nez v52, :cond_60

    const/16 v21, 0x1

    goto :goto_3a

    :cond_60
    const/16 v21, 0x0

    :goto_3a
    and-long v5, v2, v26

    cmp-long v9, v5, v16

    if-eqz v9, :cond_62

    if-eqz v21, :cond_61

    or-long v2, v2, v22

    goto :goto_3b

    :cond_61
    or-long v2, v2, v24

    :cond_62
    :goto_3b
    move-object/from16 v5, v52

    and-long v22, v2, v24

    cmp-long v6, v22, v16

    if-eqz v6, :cond_66

    if-eqz v5, :cond_63

    .line 35
    iget-object v6, v5, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 36
    move-object v14, v6

    check-cast v14, Ljava/util/List;

    :cond_63
    if-nez v14, :cond_64

    const/16 v32, 0x1

    goto :goto_3c

    :cond_64
    const/16 v32, 0x0

    :goto_3c
    and-long v22, v2, v18

    const-wide/16 v16, 0x0

    cmp-long v6, v22, v16

    if-eqz v6, :cond_66

    if-eqz v32, :cond_65

    const-wide/32 v22, 0x800000

    goto :goto_3d

    :cond_65
    const-wide/32 v22, 0x400000

    :goto_3d
    or-long v2, v2, v22

    :cond_66
    and-long v22, v2, v26

    const-wide/16 v16, 0x0

    cmp-long v6, v22, v16

    if-eqz v6, :cond_69

    if-eqz v21, :cond_67

    const/4 v9, 0x1

    goto :goto_3e

    :cond_67
    move/from16 v9, v32

    :goto_3e
    if-eqz v6, :cond_6a

    if-eqz v9, :cond_68

    const-wide v21, 0x200000000L

    goto :goto_3f

    :cond_68
    const-wide v21, 0x100000000L

    :goto_3f
    or-long v2, v2, v21

    goto :goto_40

    :cond_69
    const/4 v9, 0x0

    :cond_6a
    :goto_40
    const-wide v21, 0x100400000L

    and-long v21, v2, v21

    const-wide/16 v16, 0x0

    cmp-long v6, v21, v16

    if-eqz v6, :cond_6c

    if-eqz v5, :cond_6b

    .line 37
    iget-object v5, v5, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 38
    move-object v14, v5

    check-cast v14, Ljava/util/List;

    :cond_6b
    const-wide v5, 0x100000000L

    and-long/2addr v5, v2

    const-wide/16 v16, 0x0

    cmp-long v11, v5, v16

    if-eqz v11, :cond_6d

    if-eqz v14, :cond_6d

    .line 39
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    goto :goto_41

    :cond_6c
    const-wide/16 v16, 0x0

    :cond_6d
    const/4 v5, 0x0

    :goto_41
    and-long v18, v2, v18

    cmp-long v6, v18, v16

    if-eqz v6, :cond_6e

    if-eqz v32, :cond_6f

    move-object v14, v13

    goto :goto_42

    :cond_6e
    const/4 v14, 0x0

    :cond_6f
    :goto_42
    and-long v18, v2, v26

    const-wide/high16 v21, 0x80000000000000L

    cmp-long v6, v18, v16

    if-eqz v6, :cond_72

    if-eqz v9, :cond_70

    const/4 v5, 0x1

    :cond_70
    if-eqz v6, :cond_73

    if-eqz v5, :cond_71

    or-long v2, v2, v21

    goto :goto_43

    :cond_71
    const-wide/high16 v18, 0x40000000000000L

    or-long v2, v2, v18

    goto :goto_43

    :cond_72
    const/4 v5, 0x0

    :cond_73
    :goto_43
    and-long v18, v2, v21

    const-wide/16 v16, 0x0

    cmp-long v6, v18, v16

    if-eqz v6, :cond_76

    if-nez v13, :cond_74

    const/4 v9, 0x1

    goto :goto_44

    :cond_74
    const/4 v9, 0x0

    :goto_44
    if-eqz v6, :cond_77

    if-eqz v9, :cond_75

    const-wide/32 v18, 0x8000000

    goto :goto_45

    :cond_75
    const-wide/32 v18, 0x4000000

    :goto_45
    or-long v2, v2, v18

    goto :goto_46

    :cond_76
    const/4 v9, 0x0

    :cond_77
    :goto_46
    const-wide/32 v18, 0x4000000

    and-long v18, v2, v18

    const-wide/16 v16, 0x0

    cmp-long v6, v18, v16

    if-eqz v6, :cond_78

    if-eqz v13, :cond_78

    .line 40
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v6

    goto :goto_47

    :cond_78
    const/4 v6, 0x0

    :goto_47
    and-long v18, v2, v21

    cmp-long v11, v18, v16

    if-eqz v11, :cond_7a

    if-eqz v9, :cond_79

    goto :goto_48

    :cond_79
    move/from16 v29, v6

    goto :goto_48

    :cond_7a
    const/16 v29, 0x0

    :goto_48
    and-long v18, v2, v26

    const/16 v6, 0x8

    cmp-long v9, v18, v16

    if-eqz v9, :cond_7e

    if-eqz v5, :cond_7b

    goto :goto_49

    :cond_7b
    const/16 v29, 0x0

    :goto_49
    if-eqz v9, :cond_7d

    if-eqz v29, :cond_7c

    const-wide/32 v18, 0x200000

    goto :goto_4a

    :cond_7c
    const-wide/32 v18, 0x100000

    :goto_4a
    or-long v2, v2, v18

    :cond_7d
    if-eqz v29, :cond_7e

    const/16 v5, 0x8

    goto :goto_4b

    :cond_7e
    const/4 v5, 0x0

    :goto_4b
    and-long v18, v2, v58

    const-wide/16 v16, 0x0

    cmp-long v9, v18, v16

    if-eqz v9, :cond_80

    if-eqz v56, :cond_7f

    const/16 v11, 0x8

    goto :goto_4c

    :cond_7f
    move v11, v5

    goto :goto_4c

    :cond_80
    const/4 v11, 0x0

    :goto_4c
    and-long v18, v2, v37

    cmp-long v13, v18, v16

    if-eqz v13, :cond_82

    if-eqz v4, :cond_81

    const/16 v30, 0x8

    goto :goto_4d

    :cond_81
    move/from16 v30, v5

    :goto_4d
    move/from16 v4, v30

    goto :goto_4e

    :cond_82
    const/4 v4, 0x0

    :goto_4e
    if-eqz v9, :cond_83

    .line 41
    iget-object v6, v1, Lcom/shabakaty/downloader/a35;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    :cond_83
    and-long v18, v2, v48

    const-wide/16 v16, 0x0

    cmp-long v6, v18, v16

    if-eqz v6, :cond_84

    .line 42
    iget-object v6, v1, Lcom/shabakaty/downloader/a35;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_84
    and-long v18, v2, v33

    cmp-long v0, v18, v16

    if-eqz v0, :cond_85

    .line 43
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->M:Lcom/google/android/material/button/MaterialButton;

    sget-object v6, Lcom/shabakaty/downloader/st2;->a:Ljava/util/HashMap;

    const-string v6, "<this>"

    .line 44
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v6, Lcom/shabakaty/downloader/qt2;

    invoke-direct {v6, v15, v14, v7}, Lcom/shabakaty/downloader/qt2;-><init>(Lcom/shabakaty/downloader/qk;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_85
    and-long v18, v2, v46

    const-wide/16 v15, 0x0

    cmp-long v0, v18, v15

    if-eqz v0, :cond_86

    .line 46
    sget v0, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v6, 0x13

    if-lt v0, v6, :cond_86

    .line 47
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    :cond_86
    const-wide/16 v9, 0x2101

    and-long/2addr v9, v2

    const-wide/16 v15, 0x0

    cmp-long v0, v9, v15

    if-eqz v0, :cond_87

    .line 48
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_87
    const-wide/16 v5, 0x3002

    and-long/2addr v5, v2

    cmp-long v0, v5, v15

    if-eqz v0, :cond_88

    .line 49
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->O:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_88
    and-long v5, v2, v40

    cmp-long v0, v5, v15

    if-eqz v0, :cond_89

    .line 51
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/fo3;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Integer;)V

    :cond_89
    const-wide/16 v5, 0x2080

    and-long/2addr v5, v2

    cmp-long v0, v5, v15

    if-eqz v0, :cond_8b

    .line 52
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "recycler"

    .line 53
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v12, :cond_8a

    goto :goto_4f

    .line 54
    :cond_8a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v5

    if-nez v5, :cond_8b

    .line 55
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    :cond_8b
    :goto_4f
    const-wide/16 v5, 0x2200

    and-long/2addr v5, v2

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_8f

    .line 56
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "recycler"

    .line 57
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    instance-of v5, v0, Lcom/shabakaty/downloader/ej;

    if-eqz v5, :cond_8c

    check-cast v0, Lcom/shabakaty/downloader/ej;

    goto :goto_50

    :cond_8c
    const/4 v0, 0x0

    :goto_50
    if-nez v0, :cond_8d

    goto :goto_51

    .line 59
    :cond_8d
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ej;->getItemCount()I

    move-result v0

    if-nez v0, :cond_8f

    if-nez v31, :cond_8e

    goto :goto_51

    .line 60
    :cond_8e
    invoke-interface/range {v31 .. v31}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    :cond_8f
    :goto_51
    const-wide/16 v5, 0x2004

    and-long/2addr v5, v2

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_91

    .line 61
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "recycler"

    .line 62
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v5

    instance-of v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v6, :cond_90

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_52

    :cond_90
    const/4 v5, 0x0

    .line 64
    :goto_52
    new-instance v6, Lcom/shabakaty/downloader/eo3;

    move-object/from16 v7, v28

    invoke-direct {v6, v0, v5, v7}, Lcom/shabakaty/downloader/eo3;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/shabakaty/downloader/rm1;)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_91
    and-long v2, v2, v54

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_92

    .line 65
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v14, v2, v3}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    :cond_92
    if-eqz v13, :cond_93

    .line 66
    iget-object v0, v1, Lcom/shabakaty/downloader/a35;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_93
    return-void

    :catchall_0
    move-exception v0

    .line 67
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

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

    const-wide/16 v0, 0x2000

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/b35;->c0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/b35;->c0:J

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
