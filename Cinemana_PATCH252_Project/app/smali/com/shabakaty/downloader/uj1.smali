.class public Lcom/shabakaty/downloader/uj1;
.super Lcom/shabakaty/downloader/tj1;
.source "FragmentInternalSeasonBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# instance fields
.field public final R:Lcom/shabakaty/downloader/mm0;

.field public S:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    .line 2
    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    move-object v8, v3

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/tj1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/uj1;->S:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/tj1;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/tj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 8
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p1, p0, v2}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/uj1;->R:Lcom/shabakaty/downloader/mm0;

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uj1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x17

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uj1;->I(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/rz3;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uj1;->H(Lcom/shabakaty/downloader/rz3;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/uj1;->G(Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Ljava/util/List;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/tj1;->O:Ljava/util/List;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/uj1;->S:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/uj1;->S:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

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

.method public H(Lcom/shabakaty/downloader/rz3;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/tj1;->Q:Lcom/shabakaty/downloader/rz3;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/uj1;->S:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/uj1;->S:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x15

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

.method public I(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/tj1;->P:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/uj1;->S:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/uj1;->S:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

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

.method public final d(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/tj1;->Q:Lcom/shabakaty/downloader/rz3;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/rz3;->k()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/uj1;->S:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/uj1;->S:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/tj1;->P:Ljava/lang/Boolean;

    .line 6
    iget-object v5, p0, Lcom/shabakaty/downloader/tj1;->O:Ljava/util/List;

    const-wide/16 v6, 0x9

    and-long v8, v0, v6

    const/4 v10, 0x0

    cmp-long v11, v8, v2

    if-eqz v11, :cond_3

    .line 7
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v11, :cond_1

    if-eqz v4, :cond_0

    const-wide/16 v8, 0x20

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x10

    :goto_0
    or-long/2addr v0, v8

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v10, 0x8

    :cond_3
    :goto_1
    const-wide/16 v8, 0xc

    and-long/2addr v8, v0

    cmp-long v4, v8, v2

    and-long/2addr v6, v0

    cmp-long v8, v6, v2

    if-eqz v8, :cond_4

    .line 8
    iget-object v6, p0, Lcom/shabakaty/downloader/tj1;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    const-wide/16 v6, 0x8

    and-long/2addr v0, v6

    const/4 v6, 0x0

    cmp-long v7, v0, v2

    if-eqz v7, :cond_5

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/tj1;->M:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f12024b

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/tj1;->M:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/uj1;->R:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v1, v6}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_5
    if-eqz v4, :cond_6

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/tj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v5, v6, v6}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 12
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/uj1;->S:J

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

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/uj1;->S:J

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
