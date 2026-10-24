.class public Lcom/shabakaty/downloader/q42;
.super Lcom/shabakaty/downloader/p42;
.source "ItemDownloadsCollectionBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# instance fields
.field public final U:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final V:Landroidx/cardview/widget/CardView;

.field public final W:Landroid/widget/TextView;

.field public final X:Lcom/shabakaty/downloader/mm0;

.field public final Y:Lcom/shabakaty/downloader/mm0;

.field public final Z:Lcom/shabakaty/downloader/mm0;

.field public final a0:Lcom/shabakaty/downloader/mm0;

.field public b0:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    const/16 v0, 0x9

    const/4 v12, 0x0

    move-object/from16 v1, p1

    .line 1
    invoke-static {v1, v11, v0, v12, v12}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x1

    .line 2
    aget-object v0, v13, v14

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v0, 0x7

    aget-object v0, v13, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v15, 0x4

    aget-object v0, v13, v15

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x6

    aget-object v0, v13, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v13, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, v13, v0

    move-object v9, v0

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/shabakaty/downloader/p42;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v10, Lcom/shabakaty/downloader/q42;->b0:J

    .line 4
    iget-object v0, v10, Lcom/shabakaty/downloader/p42;->M:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v10, Lcom/shabakaty/downloader/p42;->N:Landroid/widget/TextView;

    const-string v1, "text_color|secondary_text,text_size|subheading"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v10, Lcom/shabakaty/downloader/p42;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v10, Lcom/shabakaty/downloader/p42;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v10, Lcom/shabakaty/downloader/p42;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v10, Lcom/shabakaty/downloader/p42;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 10
    aget-object v0, v13, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v10, Lcom/shabakaty/downloader/q42;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 12
    aget-object v1, v13, v0

    check-cast v1, Landroidx/cardview/widget/CardView;

    iput-object v1, v10, Lcom/shabakaty/downloader/q42;->V:Landroidx/cardview/widget/CardView;

    .line 13
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 14
    aget-object v2, v13, v1

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/shabakaty/downloader/q42;->W:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0a0128

    .line 16
    invoke-virtual {v11, v2, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    new-instance v2, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v2, v10, v15}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v2, v10, Lcom/shabakaty/downloader/q42;->X:Lcom/shabakaty/downloader/mm0;

    .line 18
    new-instance v2, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v2, v10, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v2, v10, Lcom/shabakaty/downloader/q42;->Y:Lcom/shabakaty/downloader/mm0;

    .line 19
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v1, v10, v14}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v10, Lcom/shabakaty/downloader/q42;->Z:Lcom/shabakaty/downloader/mm0;

    .line 20
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v1, v10, v0}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v10, Lcom/shabakaty/downloader/q42;->a0:Lcom/shabakaty/downloader/mm0;

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q42;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/gz0;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/p42;->S:Lcom/shabakaty/downloader/gz0;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/q42;->b0:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q42;->b0:J

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
    check-cast p2, Lcom/shabakaty/downloader/aw0;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/p42;->T:Lcom/shabakaty/downloader/aw0;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/q42;->b0:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/q42;->b0:J

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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/p42;->T:Lcom/shabakaty/downloader/aw0;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/p42;->S:Lcom/shabakaty/downloader/gz0;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_8

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/aw0;->s(Lcom/shabakaty/downloader/gz0;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/p42;->T:Lcom/shabakaty/downloader/aw0;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/p42;->S:Lcom/shabakaty/downloader/gz0;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_8

    .line 6
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/aw0;->w1(Lcom/shabakaty/downloader/gz0;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/p42;->T:Lcom/shabakaty/downloader/aw0;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/p42;->S:Lcom/shabakaty/downloader/gz0;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_8

    .line 9
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/aw0;->w1(Lcom/shabakaty/downloader/gz0;)V

    goto :goto_0

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/p42;->T:Lcom/shabakaty/downloader/aw0;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/p42;->S:Lcom/shabakaty/downloader/gz0;

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 12
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/aw0;->w1(Lcom/shabakaty/downloader/gz0;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public i()V
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/q42;->b0:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/q42;->b0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/p42;->S:Lcom/shabakaty/downloader/gz0;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_6

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, v4, Lcom/shabakaty/downloader/gz0;->u:Ljava/util/List;

    .line 7
    iget-object v6, v4, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    .line 8
    invoke-virtual {v4}, Lcom/shabakaty/downloader/gz0;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    .line 10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-eqz v8, :cond_3

    if-eqz v9, :cond_2

    const-wide/16 v11, 0x10

    or-long/2addr v0, v11

    const-wide/16 v11, 0x40

    goto :goto_2

    :cond_2
    const-wide/16 v11, 0x8

    or-long/2addr v0, v11

    const-wide/16 v11, 0x20

    :goto_2
    or-long/2addr v0, v11

    :cond_3
    const/16 v8, 0x8

    if-eqz v9, :cond_4

    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const/16 v11, 0x8

    :goto_3
    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    .line 11
    :goto_4
    iget-object v9, p0, Lcom/shabakaty/downloader/p42;->N:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v7

    const v14, 0x7f100009

    invoke-virtual {v9, v14, v10, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    iget-object v9, p0, Lcom/shabakaty/downloader/p42;->N:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v9, v14, v10, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v7, v5

    move-object v5, v6

    move-object v6, v8

    const/4 v8, 0x0

    :goto_5
    const-wide/16 v9, 0x4

    and-long/2addr v9, v0

    cmp-long v12, v9, v2

    if-eqz v12, :cond_7

    .line 13
    iget-object v9, p0, Lcom/shabakaty/downloader/p42;->M:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 14
    iget-object v9, p0, Lcom/shabakaty/downloader/p42;->M:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v10, p0, Lcom/shabakaty/downloader/q42;->a0:Lcom/shabakaty/downloader/mm0;

    const/4 v12, 0x0

    invoke-static {v9, v10, v12}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 15
    iget-object v9, p0, Lcom/shabakaty/downloader/p42;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f12018a

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 16
    iget-object v9, p0, Lcom/shabakaty/downloader/p42;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v10, p0, Lcom/shabakaty/downloader/q42;->X:Lcom/shabakaty/downloader/mm0;

    invoke-static {v9, v10, v12}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 17
    iget-object v9, p0, Lcom/shabakaty/downloader/q42;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/st2;->b(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/Boolean;)V

    .line 18
    iget-object v9, p0, Lcom/shabakaty/downloader/q42;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v10, p0, Lcom/shabakaty/downloader/q42;->Z:Lcom/shabakaty/downloader/mm0;

    invoke-static {v9, v10, v12}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 19
    iget-object v9, p0, Lcom/shabakaty/downloader/q42;->V:Landroidx/cardview/widget/CardView;

    iget-object v10, p0, Lcom/shabakaty/downloader/q42;->Y:Lcom/shabakaty/downloader/mm0;

    invoke-static {v9, v10, v12}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 20
    iget-object v9, p0, Lcom/shabakaty/downloader/q42;->W:Landroid/widget/TextView;

    const v10, 0x7f12008c

    invoke-static {v9, v10, v9}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    :cond_7
    const-wide/16 v9, 0x5

    and-long/2addr v0, v9

    cmp-long v9, v0, v2

    if-eqz v9, :cond_8

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/p42;->N:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/p42;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/p42;->O:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/p42;->P:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/p42;->Q:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/shabakaty/downloader/q42;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 27
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/q42;->b0:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/q42;->b0:J

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
