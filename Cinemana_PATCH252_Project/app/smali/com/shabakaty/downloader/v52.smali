.class public Lcom/shabakaty/downloader/v52;
.super Lcom/shabakaty/downloader/u52;
.source "ItemVideoInfoCommentBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# instance fields
.field public final X:Lcom/shabakaty/downloader/mm0;

.field public final Y:Lcom/shabakaty/downloader/mm0;

.field public final Z:Lcom/shabakaty/downloader/mm0;

.field public a0:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 19

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    const/16 v0, 0x9

    const/4 v14, 0x0

    move-object/from16 v1, p1

    .line 1
    invoke-static {v1, v13, v0, v14, v14}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v15

    const/4 v11, 0x1

    .line 2
    aget-object v0, v15, v11

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v0, 0x7

    aget-object v0, v15, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x2

    aget-object v0, v15, v10

    move-object v6, v0

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v9, 0x3

    aget-object v0, v15, v9

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, v15, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v15, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, v15, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, v15, v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/downloader/u52;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lcom/shabakaty/downloader/v52;->a0:J

    .line 4
    iget-object v0, v12, Lcom/shabakaty/downloader/u52;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, v15, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v12, Lcom/shabakaty/downloader/u52;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v12, Lcom/shabakaty/downloader/u52;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v12, Lcom/shabakaty/downloader/u52;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v12, Lcom/shabakaty/downloader/u52;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v12, Lcom/shabakaty/downloader/u52;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v12, Lcom/shabakaty/downloader/u52;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v12, Lcom/shabakaty/downloader/u52;->T:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 14
    invoke-virtual {v13, v0, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v12, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/v52;->X:Lcom/shabakaty/downloader/mm0;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x3

    invoke-direct {v0, v12, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/v52;->Y:Lcom/shabakaty/downloader/mm0;

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x2

    invoke-direct {v0, v12, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/v52;->Z:Lcom/shabakaty/downloader/mm0;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/v52;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/Comment;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/u52;->W:Lcom/shabakaty/cinemana/domain/models/local/Comment;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/v52;->a0:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/v52;->a0:J

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
    const/16 v0, 0x22

    if-ne v0, p1, :cond_1

    .line 9
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/v52;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 10
    check-cast p2, Lcom/shabakaty/downloader/r60;

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/u52;->U:Lcom/shabakaty/downloader/r60;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/v52;->a0:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/v52;->a0:J

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

.method public G(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/u52;->V:Ljava/lang/String;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/v52;->a0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/v52;->a0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x22

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
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/u52;->U:Lcom/shabakaty/downloader/r60;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/u52;->W:Lcom/shabakaty/cinemana/domain/models/local/Comment;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/r60;->O1(Lcom/shabakaty/cinemana/domain/models/local/Comment;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/u52;->U:Lcom/shabakaty/downloader/r60;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/u52;->W:Lcom/shabakaty/cinemana/domain/models/local/Comment;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 6
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/r60;->Q0(Lcom/shabakaty/cinemana/domain/models/local/Comment;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/u52;->U:Lcom/shabakaty/downloader/r60;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/u52;->W:Lcom/shabakaty/cinemana/domain/models/local/Comment;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 9
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/r60;->L1(Lcom/shabakaty/cinemana/domain/models/local/Comment;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public i()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/v52;->a0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/v52;->a0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/u52;->W:Lcom/shabakaty/cinemana/domain/models/local/Comment;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/u52;->V:Ljava/lang/String;

    const-wide/16 v7, 0xb

    and-long v9, v2, v7

    const-wide/16 v11, 0x9

    const/4 v13, 0x0

    cmp-long v14, v9, v4

    if-eqz v14, :cond_7

    and-long v9, v2, v11

    cmp-long v15, v9, v4

    if-eqz v15, :cond_0

    if-eqz v0, :cond_0

    .line 7
    iget-object v9, v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;->userName:Ljava/lang/String;

    .line 8
    iget-object v10, v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;->text:Ljava/lang/String;

    .line 9
    iget-object v15, v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;->date:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v9, v13

    move-object v10, v9

    move-object v15, v10

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;->userProfilePic:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v13

    :goto_1
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v14, :cond_4

    if-eqz v6, :cond_3

    const-wide/16 v16, 0x20

    or-long v2, v2, v16

    const-wide/16 v16, 0x80

    goto :goto_3

    :cond_3
    const-wide/16 v16, 0x10

    or-long v2, v2, v16

    const-wide/16 v16, 0x40

    :goto_3
    or-long v2, v2, v16

    :cond_4
    const/16 v14, 0x8

    if-eqz v6, :cond_5

    const/16 v16, 0x0

    goto :goto_4

    :cond_5
    const/16 v16, 0x8

    :goto_4
    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    :goto_5
    move/from16 v6, v16

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v0, v13

    move-object v9, v0

    move-object v10, v9

    move-object v15, v10

    const/4 v6, 0x0

    :goto_6
    and-long/2addr v7, v2

    cmp-long v16, v7, v4

    if-eqz v16, :cond_8

    .line 12
    iget-object v7, v1, Lcom/shabakaty/downloader/u52;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object v7, v1, Lcom/shabakaty/downloader/u52;->N:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v7, v1, Lcom/shabakaty/downloader/u52;->Q:Landroid/widget/TextView;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v7, v1, Lcom/shabakaty/downloader/u52;->T:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    const-wide/16 v6, 0x8

    and-long/2addr v6, v2

    cmp-long v8, v6, v4

    if-eqz v8, :cond_9

    .line 16
    iget-object v6, v1, Lcom/shabakaty/downloader/u52;->N:Landroid/widget/TextView;

    const v7, 0x7f1200ce

    invoke-static {v6, v7, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 17
    iget-object v6, v1, Lcom/shabakaty/downloader/u52;->N:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/shabakaty/downloader/v52;->Z:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v8, v13}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 18
    iget-object v6, v1, Lcom/shabakaty/downloader/u52;->Q:Landroid/widget/TextView;

    const v8, 0x7f120214

    invoke-static {v6, v8, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 19
    iget-object v6, v1, Lcom/shabakaty/downloader/u52;->Q:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/shabakaty/downloader/v52;->X:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v8, v13}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 20
    iget-object v6, v1, Lcom/shabakaty/downloader/u52;->T:Landroid/widget/TextView;

    invoke-static {v6, v7, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 21
    iget-object v6, v1, Lcom/shabakaty/downloader/u52;->T:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/shabakaty/downloader/v52;->Y:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v7, v13}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_9
    and-long/2addr v2, v11

    cmp-long v6, v2, v4

    if-eqz v6, :cond_a

    .line 22
    iget-object v2, v1, Lcom/shabakaty/downloader/u52;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2, v0, v13, v13, v13}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 23
    iget-object v0, v1, Lcom/shabakaty/downloader/u52;->P:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 24
    iget-object v0, v1, Lcom/shabakaty/downloader/u52;->R:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 25
    iget-object v0, v1, Lcom/shabakaty/downloader/u52;->S:Landroid/widget/TextView;

    invoke-static {v0, v15}, Lcom/shabakaty/downloader/gm4;->c(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_a
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/v52;->a0:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/v52;->a0:J

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
