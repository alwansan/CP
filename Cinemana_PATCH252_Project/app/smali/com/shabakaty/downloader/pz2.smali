.class public Lcom/shabakaty/downloader/pz2;
.super Lcom/shabakaty/downloader/oz2;
.source "NoSearchResultsLayoutBindingImpl.java"


# instance fields
.field public final Q:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public R:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const/4 v6, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/oz2;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/pz2;->R:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/shabakaty/downloader/pz2;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/oz2;->M:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/oz2;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 8
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pz2;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x21

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/pz2;->G(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/hz3;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/pz2;->H(Lcom/shabakaty/downloader/hz3;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/oz2;->O:Ljava/lang/Integer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/pz2;->R:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/pz2;->R:J

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

.method public H(Lcom/shabakaty/downloader/hz3;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/oz2;->P:Lcom/shabakaty/downloader/hz3;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/pz2;->R:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/pz2;->R:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x26

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
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/pz2;->R:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/pz2;->R:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/oz2;->O:Ljava/lang/Integer;

    .line 6
    iget-object v5, p0, Lcom/shabakaty/downloader/oz2;->P:Lcom/shabakaty/downloader/hz3;

    const-wide/16 v6, 0x3f

    and-long/2addr v6, v0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v6, v2

    if-eqz v12, :cond_6

    .line 7
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->z(Ljava/lang/Integer;)I

    move-result v4

    if-eqz v5, :cond_0

    .line 8
    iget-object v6, v5, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    .line 9
    iget-object v7, v5, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 10
    iget-object v5, v5, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    move-object v5, v11

    move-object v6, v5

    move-object v7, v6

    .line 11
    :goto_0
    invoke-virtual {p0, v10, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    .line 12
    invoke-virtual {p0, v9, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    .line 13
    invoke-virtual {p0, v8, v5}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 14
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/tj;

    goto :goto_1

    :cond_1
    move-object v6, v11

    :goto_1
    if-eqz v7, :cond_2

    .line 15
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/tj;

    goto :goto_2

    :cond_2
    move-object v7, v11

    :goto_2
    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, v11

    :goto_3
    if-eqz v6, :cond_4

    .line 17
    iget-object v6, v6, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_4

    :cond_4
    move-object v6, v11

    :goto_4
    if-eqz v7, :cond_5

    .line 18
    iget-object v7, v7, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_5

    :cond_5
    move-object v7, v11

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    move-object v5, v11

    move-object v6, v5

    move-object v7, v6

    :goto_5
    if-eqz v12, :cond_f

    .line 19
    iget-object v10, p0, Lcom/shabakaty/downloader/pz2;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v12, Lcom/shabakaty/downloader/st2;->a:Ljava/util/HashMap;

    .line 20
    sget-object v12, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    const-string v13, "<this>"

    invoke-static {v10, v13}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "tvShow"

    invoke-static {v6, v13}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "movies"

    invoke-static {v7, v13}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v5, :cond_7

    goto :goto_6

    .line 21
    :cond_7
    invoke-static {v5}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v5, 0x1

    :goto_8
    if-nez v5, :cond_e

    if-eq v4, v9, :cond_b

    if-eq v4, v8, :cond_a

    if-ne v7, v12, :cond_c

    if-ne v6, v12, :cond_c

    goto :goto_9

    :cond_a
    if-ne v6, v12, :cond_c

    goto :goto_9

    :cond_b
    if-ne v7, v12, :cond_c

    goto :goto_9

    :cond_c
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_d

    .line 22
    invoke-static {v10}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    goto :goto_a

    :cond_d
    invoke-static {v10}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    goto :goto_a

    .line 23
    :cond_e
    invoke-static {v10}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    :cond_f
    :goto_a
    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/oz2;->M:Landroid/widget/TextView;

    const v1, 0x7f1201d6

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/oz2;->N:Landroid/widget/TextView;

    const v1, 0x7f120284

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    .line 26
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/pz2;->R:J

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

    const-wide/16 v0, 0x20

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/pz2;->R:J

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

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/pz2;->R:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/pz2;->R:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/pz2;->R:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/pz2;->R:J

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

    .line 9
    :cond_4
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_5

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/pz2;->R:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/pz2;->R:J

    .line 12
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_5
    :goto_2
    return v0
.end method
