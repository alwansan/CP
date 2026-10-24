.class public Lcom/shabakaty/downloader/n15;
.super Lcom/shabakaty/downloader/m15;
.source "VideoInfoTopActionsLayoutBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/i63$a;
.implements Lcom/shabakaty/downloader/lm0$a;


# instance fields
.field public final c0:Landroid/view/View$OnClickListener;

.field public final d0:Lcom/shabakaty/downloader/mm0;

.field public final e0:Lcom/shabakaty/downloader/mm0;

.field public final f0:Lcom/shabakaty/downloader/mm0;

.field public final g0:Landroid/view/View$OnClickListener;

.field public final h0:Landroid/view/View$OnClickListener;

.field public final i0:Landroid/view/View$OnClickListener;

.field public j0:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;[Landroid/view/View;)V
    .locals 20

    move-object/from16 v3, p0

    move-object/from16 v15, p2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xe

    const/4 v14, 0x0

    move-object/from16 v4, p1

    .line 1
    invoke-static {v4, v15, v2, v14, v14}, Landroidx/databinding/ViewDataBinding;->t(Lcom/shabakaty/downloader/gl0;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v17

    const/16 v16, 0x0

    .line 2
    aget-object v2, v15, v16

    const/16 v4, 0x8

    aget-object v4, v17, v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0xb

    aget-object v5, v17, v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v13, 0x5

    aget-object v6, v17, v13

    check-cast v6, Landroid/widget/TextView;

    const/4 v12, 0x1

    aget-object v7, v17, v12

    check-cast v7, Landroid/widget/TextView;

    const/4 v11, 0x4

    aget-object v8, v17, v11

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x6

    aget-object v9, v17, v10

    check-cast v9, Landroid/widget/TextView;

    const/16 v18, 0xc

    aget-object v18, v17, v18

    check-cast v18, Lcom/shabakaty/downloader/views/DownloadButton;

    move-object/from16 v10, v18

    const/16 v18, 0xd

    aget-object v18, v17, v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v11, v18

    const/4 v3, 0x7

    aget-object v18, v17, v3

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v12, v18

    const/4 v3, 0x2

    aget-object v18, v17, v3

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v13, v18

    const/16 v18, 0xa

    aget-object v18, v17, v18

    check-cast v18, Lcom/google/android/material/button/MaterialButton;

    move-object/from16 v14, v18

    const/16 v18, 0x9

    aget-object v18, v17, v18

    check-cast v18, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v15, v18

    aget-object v16, v17, v16

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x3

    aget-object v17, v17, v3

    check-cast v17, Landroid/widget/TextView;

    const/16 v19, 0x2

    move/from16 v3, v19

    invoke-direct/range {v0 .. v17}, Lcom/shabakaty/downloader/m15;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/shabakaty/downloader/views/DownloadButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/shabakaty/downloader/n15;->j0:J

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->M:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->T:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->W:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->X:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v2, Lcom/shabakaty/downloader/m15;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 18
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->C([Landroid/view/View;)V

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/n15;->c0:Landroid/view/View$OnClickListener;

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/n15;->d0:Lcom/shabakaty/downloader/mm0;

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/n15;->e0:Lcom/shabakaty/downloader/mm0;

    .line 22
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/n15;->f0:Lcom/shabakaty/downloader/mm0;

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/n15;->g0:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/n15;->h0:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/n15;->i0:Landroid/view/View$OnClickListener;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/n15;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/j15;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/n15;->G(Lcom/shabakaty/downloader/j15;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/u15;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/n15;->H(Lcom/shabakaty/downloader/u15;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Lcom/shabakaty/downloader/j15;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/m15;->b0:Lcom/shabakaty/downloader/j15;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/n15;->j0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/n15;->j0:J

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

.method public H(Lcom/shabakaty/downloader/u15;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/m15;->a0:Lcom/shabakaty/downloader/u15;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/n15;->j0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/n15;->j0:J

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

.method public final b(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    goto :goto_4

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/m15;->b0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/j15;->B0()V

    goto :goto_4

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/m15;->b0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    .line 4
    check-cast p2, Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/j15;->u(Lcom/shabakaty/downloader/views/DownloadButton;)V

    goto :goto_4

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/m15;->b0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/j15;->i()V

    goto :goto_4

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/m15;->b0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/j15;->V()V

    :cond_8
    :goto_4
    return-void
.end method

.method public final d(ILandroid/view/View;)V
    .locals 9

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/m15;->a0:Lcom/shabakaty/downloader/u15;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_9

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/u15;->j:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u15;->u()Lcom/shabakaty/downloader/lx4;

    move-result-object p2

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/lx4;->c:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p2}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/lx4$c;

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lx4$c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "false"

    .line 6
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/lx4$c;->c(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lx4$c;->b()Lcom/shabakaty/downloader/f74;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string v0, "1"

    .line 8
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/lx4$c;->c(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lx4$c;->b()Lcom/shabakaty/downloader/f74;

    move-result-object p2

    :goto_0
    move-object v4, p2

    if-nez v4, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    new-instance v5, Lcom/shabakaty/downloader/y15;

    invoke-direct {v5, p1}, Lcom/shabakaty/downloader/y15;-><init>(Lcom/shabakaty/downloader/u15;)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    .line 11
    :goto_1
    iget-object p2, p1, Lcom/shabakaty/downloader/u15;->l:Lcom/shabakaty/downloader/p5;

    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lcom/shabakaty/downloader/p5;->b(Ljava/lang/String;I)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/j15;

    const p2, 0x7f12016c

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/vj;->q(I)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/m15;->b0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_6

    const/4 p2, 0x1

    :cond_6
    if-eqz p2, :cond_9

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/j15;->C0()V

    goto :goto_2

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/m15;->b0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_8

    const/4 p2, 0x1

    :cond_8
    if-eqz p2, :cond_9

    .line 16
    invoke-interface {p1}, Lcom/shabakaty/downloader/j15;->t()V

    :cond_9
    :goto_2
    return-void
.end method

.method public i()V
    .locals 31

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/n15;->j0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/n15;->j0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->a0:Lcom/shabakaty/downloader/u15;

    const-wide/16 v6, 0x1b

    and-long/2addr v6, v2

    const-wide/16 v8, 0x19

    const/4 v10, 0x0

    cmp-long v11, v6, v4

    if-eqz v11, :cond_1b

    and-long v6, v2, v8

    cmp-long v11, v6, v4

    if-eqz v11, :cond_11

    if-eqz v0, :cond_0

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v10, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/tj;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 9
    iget-object v6, v5, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 10
    check-cast v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 11
    iget-object v7, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    .line 12
    iget-object v10, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoViewsNumber:Ljava/lang/String;

    .line 13
    iget-object v12, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->year:Ljava/lang/String;

    .line 14
    iget-object v13, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 15
    iget-object v14, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    .line 16
    iget-object v15, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeDesc:Ljava/lang/String;

    .line 17
    iget-object v8, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->categories:Ljava/util/List;

    .line 18
    iget-object v9, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    move-object/from16 v18, v4

    .line 19
    iget-object v4, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->stars:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v18, v4

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    :goto_3
    if-eqz v7, :cond_4

    .line 20
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    :goto_4
    if-eqz v11, :cond_6

    if-eqz v19, :cond_5

    const-wide/16 v20, 0x100

    goto :goto_5

    :cond_5
    const-wide/16 v20, 0x80

    :goto_5
    or-long v2, v2, v20

    .line 21
    :cond_6
    iget-object v11, v1, Lcom/shabakaty/downloader/m15;->Y:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v20, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v10, v5, v21

    const v10, 0x7f1202d0

    invoke-virtual {v11, v10, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 22
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/shabakaty/downloader/m15;->Z:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v21, v5

    const v5, 0x7f1202ac

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " :"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/shabakaty/downloader/m15;->M:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v22, v5

    const v5, 0x7f1202af

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 24
    iget-object v10, v1, Lcom/shabakaty/downloader/m15;->V:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1202cf

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v4, v13, v23

    invoke-virtual {v10, v11, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz v14, :cond_7

    .line 25
    iget-object v11, v14, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    if-eqz v9, :cond_8

    const-string v13, "2"

    .line 26
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    :goto_7
    const-wide/16 v16, 0x19

    and-long v23, v2, v16

    const-wide/16 v25, 0x0

    cmp-long v14, v23, v25

    if-eqz v14, :cond_a

    if-eqz v13, :cond_9

    const-wide/16 v23, 0x4000

    goto :goto_8

    :cond_9
    const-wide/16 v23, 0x2000

    :goto_8
    or-long v2, v2, v23

    :cond_a
    if-eqz v19, :cond_b

    const/16 v14, 0x8

    goto :goto_9

    :cond_b
    const/4 v14, 0x0

    :goto_9
    move-object/from16 v19, v4

    const-string v4, "  "

    .line 27
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v13, :cond_c

    const/4 v5, 0x0

    goto :goto_a

    :cond_c
    const/16 v5, 0x8

    :goto_a
    if-eqz v11, :cond_d

    const-string v13, "1"

    .line 28
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_b

    :cond_d
    const/4 v11, 0x0

    :goto_b
    const-wide/16 v16, 0x19

    and-long v23, v2, v16

    const-wide/16 v25, 0x0

    cmp-long v13, v23, v25

    if-eqz v13, :cond_f

    if-eqz v11, :cond_e

    const-wide/16 v23, 0x40

    goto :goto_c

    :cond_e
    const-wide/16 v23, 0x20

    :goto_c
    or-long v2, v2, v23

    .line 29
    :cond_f
    invoke-static {v4, v15}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    iget-object v13, v1, Lcom/shabakaty/downloader/m15;->N:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v11, :cond_10

    const v15, 0x7f120210

    goto :goto_d

    :cond_10
    const v15, 0x7f1202da

    :goto_d
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v23, 0x18

    move-object/from16 v15, v19

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const-wide/16 v23, 0x18

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    move-object/from16 v30, v18

    move-object/from16 v18, v6

    move-object v6, v8

    move-object/from16 v8, v30

    :goto_e
    and-long v23, v2, v23

    const-wide/16 v25, 0x0

    cmp-long v19, v23, v25

    if-eqz v19, :cond_13

    if-eqz v0, :cond_12

    .line 31
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v19

    goto :goto_f

    :cond_12
    const/16 v19, 0x0

    :goto_f
    move-object/from16 v23, v4

    move-object/from16 v4, v19

    if-eqz v4, :cond_14

    .line 32
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    goto :goto_10

    :cond_13
    move-object/from16 v23, v4

    :cond_14
    const/4 v4, 0x0

    :goto_10
    if-eqz v0, :cond_15

    move-object/from16 v19, v4

    .line 33
    iget-object v4, v0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    goto :goto_11

    :cond_15
    move-object/from16 v19, v4

    const/4 v4, 0x0

    :goto_11
    move/from16 v24, v5

    const/4 v5, 0x1

    .line 34
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_16

    .line 35
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/tj;

    goto :goto_12

    :cond_16
    const/4 v4, 0x0

    :goto_12
    if-eqz v4, :cond_17

    .line 36
    iget-object v4, v4, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_13

    :cond_17
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_18

    .line 37
    sget-object v5, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_14

    :cond_18
    const/4 v4, 0x0

    :goto_14
    const-wide/16 v25, 0x1b

    and-long v25, v2, v25

    const-wide/16 v27, 0x0

    cmp-long v5, v25, v27

    if-eqz v5, :cond_19

    if-eqz v4, :cond_1a

    const-wide/16 v25, 0x400

    or-long v2, v2, v25

    :cond_19
    const-wide/16 v25, 0x200

    goto :goto_15

    :cond_1a
    const-wide/16 v25, 0x200

    or-long v2, v2, v25

    :goto_15
    move-object/from16 v29, v22

    move-object/from16 v22, v12

    move-object v12, v10

    move-object v10, v7

    move v7, v4

    move-wide/from16 v4, v27

    move-object/from16 v30, v23

    move-object/from16 v23, v6

    move-object v6, v15

    move v15, v14

    move-object v14, v13

    move-object/from16 v13, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v18

    move/from16 v18, v11

    move-object v11, v8

    move/from16 v8, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v30

    goto :goto_16

    :cond_1b
    const-wide/16 v25, 0x200

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object v14, v13

    move-object v6, v15

    move-object/from16 v13, v21

    move-object/from16 v29, v22

    const/4 v15, 0x0

    move-object/from16 v22, v12

    move-object/from16 v21, v20

    move-object v12, v10

    move-object/from16 v20, v19

    move-object/from16 v19, v27

    move-object v10, v8

    const/4 v8, 0x0

    :goto_16
    and-long v25, v2, v25

    cmp-long v27, v25, v4

    if-eqz v27, :cond_21

    if-eqz v0, :cond_1c

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    goto :goto_17

    :cond_1c
    move-object/from16 v0, v20

    :goto_17
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v1, v4, v0}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_1d

    .line 40
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/shabakaty/downloader/tj;

    :cond_1d
    move-object/from16 v0, v21

    if-eqz v0, :cond_1e

    .line 41
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 42
    move-object/from16 v23, v0

    check-cast v23, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    :cond_1e
    move-object/from16 v0, v23

    if-eqz v0, :cond_1f

    .line 43
    iget-object v4, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    goto :goto_18

    :cond_1f
    move-object/from16 v4, v24

    :goto_18
    if-eqz v4, :cond_20

    const-string v5, "1"

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_19

    :cond_20
    move-object/from16 v23, v0

    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, v23

    :goto_19
    const-wide/16 v20, 0x1b

    and-long v20, v2, v20

    const-wide/16 v23, 0x0

    cmp-long v5, v20, v23

    if-eqz v5, :cond_26

    if-eqz v7, :cond_22

    const/4 v4, 0x1

    :cond_22
    if-eqz v5, :cond_24

    if-eqz v4, :cond_23

    const-wide/16 v20, 0x1000

    goto :goto_1a

    :cond_23
    const-wide/16 v20, 0x800

    :goto_1a
    or-long v2, v2, v20

    :cond_24
    if-eqz v4, :cond_25

    goto :goto_1b

    :cond_25
    const/16 v4, 0x8

    goto :goto_1c

    :cond_26
    :goto_1b
    const/4 v4, 0x0

    :goto_1c
    const-wide/16 v16, 0x19

    and-long v16, v2, v16

    const-wide/16 v20, 0x0

    cmp-long v5, v16, v20

    if-eqz v5, :cond_2d

    .line 45
    iget-object v5, v1, Lcom/shabakaty/downloader/m15;->M:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v5, v1, Lcom/shabakaty/downloader/m15;->M:Landroid/widget/TextView;

    invoke-static {v5, v9}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 47
    iget-object v5, v1, Lcom/shabakaty/downloader/m15;->N:Landroid/widget/TextView;

    invoke-static {v5, v14}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 48
    iget-object v5, v1, Lcom/shabakaty/downloader/m15;->N:Landroid/widget/TextView;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "<this>"

    .line 49
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_27

    const/4 v7, 0x0

    move/from16 v16, v4

    goto/16 :goto_20

    .line 50
    :cond_27
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v9, "context"

    if-eqz v7, :cond_2b

    .line 51
    invoke-static {v5}, Lcom/shabakaty/downloader/s45;->d(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_28

    const/4 v7, 0x0

    goto :goto_1d

    :cond_28
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    :goto_1d
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v16, v4

    const v4, 0x7f08014a

    invoke-static {v14, v4}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_29

    const/4 v14, 0x0

    goto :goto_1e

    :cond_29
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    :goto_1e
    invoke-static {v7, v14}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    const v7, 0x3f333333    # 0.7f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v4, 0x43160000    # 150.0f

    .line 52
    invoke-static {v5, v7, v14, v4}, Lcom/shabakaty/downloader/s45;->f(Landroid/view/View;FFF)V

    .line 53
    :cond_2a
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f08014a

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1f

    :cond_2b
    move/from16 v16, v4

    .line 54
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f08013b

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1f
    move-object/from16 v25, v4

    .line 55
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0xd

    move-object/from16 v23, v5

    .line 56
    invoke-static/range {v23 .. v28}, Lcom/shabakaty/downloader/s45;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    .line 57
    sget-object v7, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_20
    if-nez v7, :cond_2c

    const/16 v4, 0x8

    .line 58
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :cond_2c
    iget-object v4, v1, Lcom/shabakaty/downloader/m15;->O:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-static {v4, v11, v5}, Lcom/shabakaty/downloader/gm4;->b(Landroid/widget/TextView;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 60
    iget-object v4, v1, Lcom/shabakaty/downloader/m15;->U:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v4, v1, Lcom/shabakaty/downloader/m15;->U:Landroid/widget/TextView;

    invoke-static {v4, v10}, Lcom/shabakaty/downloader/gm4;->d(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 62
    iget-object v4, v1, Lcom/shabakaty/downloader/m15;->V:Landroid/widget/TextView;

    invoke-static {v4, v12}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, v1, Lcom/shabakaty/downloader/m15;->V:Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 64
    iget-object v4, v1, Lcom/shabakaty/downloader/m15;->Y:Landroid/widget/TextView;

    invoke-static {v4, v13}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 65
    iget-object v4, v1, Lcom/shabakaty/downloader/m15;->Y:Landroid/widget/TextView;

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/gm4;->h(Landroid/widget/TextView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 66
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->Z:Landroid/widget/TextView;

    move-object/from16 v4, v29

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->Z:Landroid/widget/TextView;

    move-object/from16 v12, v22

    invoke-static {v0, v12}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_21

    :cond_2d
    move/from16 v16, v4

    :goto_21
    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2e

    .line 68
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->N:Landroid/widget/TextView;

    const v4, 0x7f1202d9

    invoke-static {v0, v4, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 69
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->N:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/shabakaty/downloader/n15;->e0:Lcom/shabakaty/downloader/mm0;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 70
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1200dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v4, v1, Lcom/shabakaty/downloader/n15;->g0:Landroid/view/View$OnClickListener;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/st2;->d(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v4, v1, Lcom/shabakaty/downloader/n15;->i0:Landroid/view/View$OnClickListener;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/st2;->e(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v4, v1, Lcom/shabakaty/downloader/n15;->h0:Landroid/view/View$OnClickListener;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/st2;->f(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v4, v1, Lcom/shabakaty/downloader/n15;->c0:Landroid/view/View$OnClickListener;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/st2;->g(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->T:Landroid/widget/TextView;

    invoke-static {v0, v5, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 76
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->V:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/shabakaty/downloader/n15;->f0:Lcom/shabakaty/downloader/mm0;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 77
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->W:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1202db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->W:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v5, v0}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 79
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->W:Lcom/google/android/material/button/MaterialButton;

    iget-object v4, v1, Lcom/shabakaty/downloader/n15;->d0:Lcom/shabakaty/downloader/mm0;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_2e
    const-wide/16 v4, 0x18

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2f

    .line 80
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    move-object/from16 v4, v19

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/views/DownloadButton;->setExternalId(Ljava/lang/String;)V

    :cond_2f
    const-wide/16 v4, 0x1b

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_30

    .line 81
    iget-object v0, v1, Lcom/shabakaty/downloader/m15;->X:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v4, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_30
    return-void

    :catchall_0
    move-exception v0

    .line 82
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/n15;->j0:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/n15;->j0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/n15;->j0:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/n15;->j0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/n15;->j0:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/n15;->j0:J

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
