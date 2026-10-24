.class public Lcom/shabakaty/downloader/e42;
.super Lcom/shabakaty/downloader/d42;
.source "ItemBaseVideoBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final a0:Landroid/util/SparseIntArray;


# instance fields
.field public final U:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final V:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final W:Landroid/widget/TextView;

.field public final X:Landroid/widget/ProgressBar;

.field public final Y:Lcom/shabakaty/downloader/mm0;

.field public Z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/e42;->a0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00c1

    const/16 v2, 0xa

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a025e

    const/16 v2, 0xb

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e42;->a0:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const/4 v14, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v13, v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v15

    const/16 v0, 0xa

    .line 2
    aget-object v0, v15, v0

    move-object v4, v0

    check-cast v4, Landroidx/cardview/widget/CardView;

    const/16 v0, 0xb

    aget-object v0, v15, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    aget-object v0, v15, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v15, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v11, 0x1

    aget-object v0, v15, v11

    move-object v8, v0

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x4

    aget-object v0, v15, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, v15, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, v15, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/downloader/d42;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/cardview/widget/CardView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lcom/shabakaty/downloader/e42;->Z:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, v15, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v12, Lcom/shabakaty/downloader/e42;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 6
    aget-object v0, v15, v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, v12, Lcom/shabakaty/downloader/e42;->V:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 8
    aget-object v0, v15, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v12, Lcom/shabakaty/downloader/e42;->W:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 10
    aget-object v0, v15, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v12, Lcom/shabakaty/downloader/e42;->X:Landroid/widget/ProgressBar;

    .line 11
    invoke-virtual {v0, v14}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v12, Lcom/shabakaty/downloader/d42;->M:Landroid/widget/TextView;

    const-string v1, "text_color|secondary_text,text_size|subheading"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v12, Lcom/shabakaty/downloader/d42;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v12, Lcom/shabakaty/downloader/d42;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v2, "VideoThumb"

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v12, Lcom/shabakaty/downloader/d42;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v12, Lcom/shabakaty/downloader/d42;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v12, Lcom/shabakaty/downloader/d42;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 18
    invoke-virtual {v13, v0, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v12, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/e42;->Y:Lcom/shabakaty/downloader/mm0;

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/e42;->p()V

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
    iput-object p2, p0, Lcom/shabakaty/downloader/d42;->T:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/e42;->Z:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/e42;->Z:J

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
    iput-object p2, p0, Lcom/shabakaty/downloader/d42;->S:Lcom/shabakaty/downloader/pk;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/e42;->Z:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/e42;->Z:J

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
    iget-object p1, p0, Lcom/shabakaty/downloader/d42;->S:Lcom/shabakaty/downloader/pk;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d42;->T:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

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
    .locals 21

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/e42;->Z:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/e42;->Z:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/d42;->T:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v2

    cmp-long v8, v6, v4

    if-eqz v8, :cond_5

    if-eqz v0, :cond_0

    .line 6
    iget-object v4, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->stars:Ljava/lang/String;

    .line 7
    iget-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 8
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTitle:Ljava/lang/String;

    .line 9
    iget-object v7, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    .line 10
    iget-object v9, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 11
    iget-object v10, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->year:Ljava/lang/String;

    .line 12
    iget-object v11, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->categories:Ljava/util/List;

    .line 13
    iget-object v12, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    const-string v13, ", "

    .line 14
    invoke-static {v10, v13}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v12, :cond_1

    .line 15
    iget-wide v13, v12, Lcom/shabakaty/downloader/q25;->x:J

    const-wide/16 v15, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v15, 0x0

    const-wide/16 v13, 0x0

    :goto_1
    cmp-long v17, v13, v15

    if-nez v17, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-eqz v8, :cond_4

    if-eqz v13, :cond_3

    const-wide/16 v14, 0x100

    or-long/2addr v2, v14

    goto :goto_3

    :cond_3
    const-wide/16 v14, 0x80

    or-long/2addr v2, v14

    goto :goto_4

    :cond_4
    :goto_3
    const-wide/16 v14, 0x80

    goto :goto_4

    :cond_5
    const-wide/16 v14, 0x80

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_4
    and-long/2addr v14, v2

    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    if-eqz v8, :cond_7

    if-eqz v0, :cond_6

    .line 16
    iget-object v8, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_7

    .line 17
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    const-wide/16 v14, 0x5

    and-long/2addr v14, v2

    const-wide/16 v16, 0x20

    const-wide/16 v18, 0x0

    cmp-long v20, v14, v18

    if-eqz v20, :cond_a

    if-eqz v13, :cond_8

    const/4 v8, 0x1

    :cond_8
    if-eqz v20, :cond_b

    if-eqz v8, :cond_9

    const-wide/16 v13, 0x40

    or-long/2addr v2, v13

    goto :goto_7

    :cond_9
    or-long v2, v2, v16

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :cond_b
    :goto_7
    and-long v13, v2, v16

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_c

    if-eqz v12, :cond_c

    .line 18
    iget-boolean v12, v12, Lcom/shabakaty/downloader/q25;->s:Z

    goto :goto_8

    :cond_c
    const/4 v12, 0x0

    :goto_8
    const-wide/16 v13, 0x5

    and-long/2addr v13, v2

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_12

    if-eqz v8, :cond_d

    const/4 v12, 0x1

    :cond_d
    if-eqz v17, :cond_f

    if-eqz v12, :cond_e

    const-wide/16 v13, 0x10

    or-long/2addr v2, v13

    const-wide/16 v13, 0x400

    goto :goto_9

    :cond_e
    const-wide/16 v13, 0x8

    or-long/2addr v2, v13

    const-wide/16 v13, 0x200

    :goto_9
    or-long/2addr v2, v13

    :cond_f
    if-eqz v12, :cond_10

    const/4 v8, 0x0

    goto :goto_a

    :cond_10
    const/16 v8, 0x8

    :goto_a
    if-eqz v12, :cond_11

    const/16 v12, 0x8

    goto :goto_b

    :cond_11
    const/4 v12, 0x0

    goto :goto_b

    :cond_12
    const/4 v12, 0x0

    const/4 v8, 0x0

    :goto_b
    const-wide/16 v13, 0x5

    and-long/2addr v13, v2

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_13

    .line 19
    iget-object v13, v1, Lcom/shabakaty/downloader/e42;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v13, v0}, Lcom/shabakaty/downloader/nl6;->w(Landroid/view/View;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 20
    iget-object v13, v1, Lcom/shabakaty/downloader/e42;->V:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v13, v0}, Lcom/shabakaty/downloader/oy1;->a(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 21
    iget-object v13, v1, Lcom/shabakaty/downloader/e42;->W:Landroid/widget/TextView;

    invoke-static {v13, v0}, Lcom/shabakaty/downloader/gm4;->f(Landroid/widget/TextView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 22
    iget-object v13, v1, Lcom/shabakaty/downloader/e42;->X:Landroid/widget/ProgressBar;

    invoke-virtual {v13, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 23
    iget-object v12, v1, Lcom/shabakaty/downloader/e42;->X:Landroid/widget/ProgressBar;

    invoke-static {v12, v0}, Lcom/shabakaty/downloader/st2;->j(Landroid/widget/ProgressBar;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 24
    iget-object v12, v1, Lcom/shabakaty/downloader/d42;->M:Landroid/widget/TextView;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12, v11, v13}, Lcom/shabakaty/downloader/gm4;->b(Landroid/widget/TextView;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 25
    iget-object v11, v1, Lcom/shabakaty/downloader/d42;->N:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v8, v1, Lcom/shabakaty/downloader/d42;->N:Landroid/widget/TextView;

    invoke-static {v8, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 27
    iget-object v4, v1, Lcom/shabakaty/downloader/d42;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v8, 0x0

    invoke-static {v4, v9, v8, v8, v8}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 28
    iget-object v4, v1, Lcom/shabakaty/downloader/d42;->P:Landroid/widget/TextView;

    invoke-static {v4, v7, v6}, Lcom/shabakaty/downloader/gm4;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v4, v1, Lcom/shabakaty/downloader/d42;->Q:Landroid/widget/TextView;

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/gm4;->h(Landroid/widget/TextView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 30
    iget-object v0, v1, Lcom/shabakaty/downloader/d42;->R:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 31
    sget v0, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_13

    .line 32
    iget-object v0, v1, Lcom/shabakaty/downloader/d42;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    :cond_13
    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    .line 33
    iget-object v0, v1, Lcom/shabakaty/downloader/e42;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/st2;->b(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/Boolean;)V

    .line 34
    iget-object v0, v1, Lcom/shabakaty/downloader/e42;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v1, Lcom/shabakaty/downloader/e42;->Y:Lcom/shabakaty/downloader/mm0;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    .line 35
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/e42;->Z:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/e42;->Z:J

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
