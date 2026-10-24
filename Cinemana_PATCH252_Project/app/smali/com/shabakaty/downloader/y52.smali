.class public Lcom/shabakaty/downloader/y52;
.super Lcom/shabakaty/downloader/i52;
.source "ItemWatchedBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# instance fields
.field public final U:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final V:Lcom/shabakaty/downloader/mm0;

.field public W:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 15

    move-object v10, p0

    move-object/from16 v11, p2

    const/4 v0, 0x7

    const/4 v12, 0x0

    move-object/from16 v1, p1

    .line 1
    invoke-static {v1, v11, v0, v12, v12}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x1

    .line 2
    aget-object v0, v13, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, v13, v0

    move-object v5, v0

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x4

    aget-object v0, v13, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, v13, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v13, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, v13, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/shabakaty/downloader/i52;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v10, Lcom/shabakaty/downloader/y52;->W:J

    .line 4
    iget-object v0, v10, Lcom/shabakaty/downloader/i52;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, v13, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v10, Lcom/shabakaty/downloader/y52;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v10, Lcom/shabakaty/downloader/i52;->N:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v1, "VideoThumb"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v10, Lcom/shabakaty/downloader/i52;->P:Landroid/widget/TextView;

    const-string v1, "text_color|secondary_text,text_size|subheading"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v10, Lcom/shabakaty/downloader/i52;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v10, Lcom/shabakaty/downloader/i52;->M:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v10, Lcom/shabakaty/downloader/i52;->R:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 12
    invoke-virtual {v11, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v0, p0, v14}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v10, Lcom/shabakaty/downloader/y52;->V:Lcom/shabakaty/downloader/mm0;

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y52;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/i52;->S:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/y52;->W:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/y52;->W:J

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
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 9
    check-cast p2, Lcom/shabakaty/downloader/pk;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/i52;->T:Ljava/lang/Object;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/y52;->W:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/y52;->W:J

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

.method public final d(ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/i52;->T:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/pk;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/i52;->S:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/pk;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/y52;->W:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/y52;->W:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/i52;->S:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-wide/16 v6, 0x5

    and-long v8, v2, v6

    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    if-eqz v0, :cond_0

    .line 6
    iget-object v4, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->stars:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->b()Ljava/lang/String;

    move-result-object v8

    .line 9
    iget-object v9, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 10
    iget-object v11, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    .line 11
    iget-object v12, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 12
    iget-object v13, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->year:Ljava/lang/String;

    .line 13
    iget-object v14, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->categories:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_1

    const-string v15, "1"

    .line 14
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-eqz v10, :cond_3

    if-eqz v11, :cond_2

    const-wide/16 v15, 0x10

    goto :goto_2

    :cond_2
    const-wide/16 v15, 0x8

    :goto_2
    or-long/2addr v2, v15

    :cond_3
    const-string v10, ", "

    .line 15
    invoke-static {v13, v10}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v11, :cond_4

    const/16 v11, 0x8

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    and-long/2addr v6, v2

    const-wide/16 v15, 0x0

    cmp-long v13, v6, v15

    if-eqz v13, :cond_6

    .line 16
    iget-object v6, v1, Lcom/shabakaty/downloader/i52;->O:Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 17
    iget-object v5, v1, Lcom/shabakaty/downloader/y52;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/nl6;->w(Landroid/view/View;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 18
    iget-object v0, v1, Lcom/shabakaty/downloader/i52;->N:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v5, 0x0

    invoke-static {v0, v12, v5, v5, v5}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 19
    iget-object v0, v1, Lcom/shabakaty/downloader/i52;->P:Landroid/widget/TextView;

    invoke-static {v0, v14, v5}, Lcom/shabakaty/downloader/gm4;->b(Landroid/widget/TextView;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 20
    iget-object v0, v1, Lcom/shabakaty/downloader/i52;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, v1, Lcom/shabakaty/downloader/i52;->Q:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 22
    iget-object v0, v1, Lcom/shabakaty/downloader/i52;->M:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 23
    iget-object v0, v1, Lcom/shabakaty/downloader/i52;->R:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 24
    sget v0, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_6

    .line 25
    iget-object v0, v1, Lcom/shabakaty/downloader/i52;->N:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    :cond_6
    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 26
    iget-object v0, v1, Lcom/shabakaty/downloader/i52;->O:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 27
    iget-object v0, v1, Lcom/shabakaty/downloader/y52;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v1, Lcom/shabakaty/downloader/y52;->V:Lcom/shabakaty/downloader/mm0;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 28
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/y52;->W:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/y52;->W:J

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
