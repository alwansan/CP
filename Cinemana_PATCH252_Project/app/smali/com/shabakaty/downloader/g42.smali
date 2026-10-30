.class public Lcom/shabakaty/downloader/g42;
.super Lcom/shabakaty/downloader/f42;
.source "ItemBaseVideoHorizontalBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final a0:Landroid/util/SparseIntArray;


# instance fields
.field public final V:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final W:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final X:Landroid/widget/TextView;

.field public final Y:Lcom/shabakaty/downloader/mm0;

.field public Z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/g42;->a0:Landroid/util/SparseIntArray;

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
    .locals 18

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/g42;->a0:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v14, v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v16

    const/16 v0, 0xa

    .line 2
    aget-object v0, v16, v0

    move-object v4, v0

    check-cast v4, Landroidx/cardview/widget/CardView;

    const/16 v0, 0xb

    aget-object v0, v16, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    aget-object v0, v16, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v16, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v12, 0x1

    aget-object v0, v16, v12

    move-object v8, v0

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x4

    aget-object v0, v16, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, v16, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, v16, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, v16, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lcom/shabakaty/downloader/f42;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/cardview/widget/CardView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v13, Lcom/shabakaty/downloader/g42;->Z:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, v16, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v13, Lcom/shabakaty/downloader/g42;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 6
    aget-object v0, v16, v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, v13, Lcom/shabakaty/downloader/g42;->W:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 8
    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v13, Lcom/shabakaty/downloader/g42;->X:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v13, Lcom/shabakaty/downloader/f42;->M:Landroid/widget/TextView;

    const-string v1, "text_color|secondary_text,text_size|subheading"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v13, Lcom/shabakaty/downloader/f42;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v13, Lcom/shabakaty/downloader/f42;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v2, "VideoThumb"

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v13, Lcom/shabakaty/downloader/f42;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v13, Lcom/shabakaty/downloader/f42;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v13, Lcom/shabakaty/downloader/f42;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v13, Lcom/shabakaty/downloader/f42;->S:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v15}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 17
    invoke-virtual {v14, v0, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v13, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v13, Lcom/shabakaty/downloader/g42;->Y:Lcom/shabakaty/downloader/mm0;

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/g42;->p()V

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
    iput-object p2, p0, Lcom/shabakaty/downloader/f42;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/g42;->Z:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/g42;->Z:J

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
    iput-object p2, p0, Lcom/shabakaty/downloader/f42;->T:Lcom/shabakaty/downloader/pk;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/g42;->Z:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/g42;->Z:J

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
    iget-object p1, p0, Lcom/shabakaty/downloader/f42;->T:Lcom/shabakaty/downloader/pk;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/f42;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

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
    .locals 29

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/g42;->Z:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/g42;->Z:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/f42;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-wide/16 v6, 0x5

    and-long v8, v2, v6

    cmp-long v10, v8, v4

    if-eqz v10, :cond_8

    if-eqz v0, :cond_0

    .line 6
    iget-object v4, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rate:Ljava/lang/String;

    .line 7
    iget-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTitle:Ljava/lang/String;

    .line 8
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    .line 9
    iget-object v7, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->year:Ljava/lang/String;

    .line 10
    iget-object v8, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    .line 11
    iget-object v9, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->stars:Ljava/lang/String;

    .line 12
    iget-object v11, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 13
    iget-object v12, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    .line 14
    iget-object v13, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 15
    iget-object v14, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->categories:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    .line 16
    :goto_0
    iget-object v15, v1, Lcom/shabakaty/downloader/f42;->Q:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v5, v17

    const v4, 0x7f1202d0

    invoke-virtual {v15, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ", "

    .line 17
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    iget-object v7, v1, Lcom/shabakaty/downloader/f42;->N:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v9, v15, v18

    move-object/from16 v18, v4

    const v4, 0x7f1202cf

    invoke-virtual {v7, v4, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_1

    move-object v15, v4

    move-object v7, v5

    .line 19
    iget-wide v4, v8, Lcom/shabakaty/downloader/q25;->x:J

    goto :goto_1

    :cond_1
    move-object v15, v4

    move-object v7, v5

    const-wide/16 v4, 0x0

    :goto_1
    if-eqz v12, :cond_2

    move-object/from16 v17, v6

    const-string v6, "2"

    .line 20
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_2
    move-object/from16 v17, v6

    const/4 v6, 0x0

    :goto_2
    if-eqz v10, :cond_4

    if-eqz v6, :cond_3

    const-wide/16 v19, 0x100

    goto :goto_3

    :cond_3
    const-wide/16 v19, 0x80

    :goto_3
    or-long v2, v2, v19

    :cond_4
    const-wide/16 v19, 0x0

    cmp-long v10, v4, v19

    if-nez v10, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    const-wide/16 v21, 0x5

    and-long v23, v2, v21

    cmp-long v5, v23, v19

    if-eqz v5, :cond_7

    if-eqz v4, :cond_6

    const-wide/32 v19, 0x10000

    goto :goto_5

    :cond_6
    const-wide/32 v19, 0x8000

    :goto_5
    or-long v2, v2, v19

    :cond_7
    move-object v12, v9

    move-object v5, v14

    move-object/from16 v10, v16

    move v9, v6

    move-object/from16 v16, v11

    move-object v14, v13

    move-object/from16 v11, v17

    move-object/from16 v17, v7

    move-object v13, v8

    move-object/from16 v8, v18

    move-wide/from16 v6, v21

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, v17

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v27, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v27

    move-object/from16 v28, v15

    move-object v15, v14

    move-object/from16 v14, v28

    :goto_6
    and-long/2addr v6, v2

    const-wide/16 v18, 0x200

    const-wide/16 v20, 0x0

    cmp-long v22, v6, v20

    if-eqz v22, :cond_b

    if-eqz v9, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    move v6, v4

    :goto_7
    if-eqz v22, :cond_c

    if-eqz v6, :cond_a

    const-wide/16 v20, 0x400

    or-long v2, v2, v20

    goto :goto_8

    :cond_a
    or-long v2, v2, v18

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :cond_c
    :goto_8
    const-wide/32 v20, 0x8000

    and-long v20, v2, v20

    const-wide/16 v22, 0x0

    cmp-long v7, v20, v22

    if-eqz v7, :cond_e

    if-eqz v0, :cond_d

    .line 21
    iget-object v7, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_f

    .line 22
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :cond_f
    const/4 v9, 0x0

    :goto_a
    const-wide/16 v20, 0x5

    and-long v20, v2, v20

    const-wide/16 v22, 0x20

    const-wide/16 v24, 0x0

    cmp-long v26, v20, v24

    if-eqz v26, :cond_12

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_b

    :cond_10
    move v4, v9

    :goto_b
    if-eqz v26, :cond_13

    if-eqz v4, :cond_11

    const-wide/16 v20, 0x40

    or-long v2, v2, v20

    goto :goto_c

    :cond_11
    or-long v2, v2, v22

    goto :goto_c

    :cond_12
    const/4 v4, 0x0

    :cond_13
    :goto_c
    and-long v20, v2, v22

    const-wide/16 v22, 0x0

    cmp-long v24, v20, v22

    if-eqz v24, :cond_14

    if-eqz v13, :cond_14

    move-object/from16 v20, v7

    .line 23
    iget-boolean v7, v13, Lcom/shabakaty/downloader/q25;->s:Z

    goto :goto_d

    :cond_14
    move-object/from16 v20, v7

    const/4 v7, 0x0

    :goto_d
    and-long v18, v2, v18

    const-wide/16 v21, 0x0

    cmp-long v23, v18, v21

    if-eqz v23, :cond_16

    if-eqz v0, :cond_15

    move/from16 v18, v7

    .line 24
    iget-object v7, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    goto :goto_e

    :cond_15
    move/from16 v18, v7

    move-object/from16 v7, v20

    :goto_e
    if-eqz v7, :cond_17

    .line 25
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    goto :goto_f

    :cond_16
    move/from16 v18, v7

    :cond_17
    :goto_f
    const-wide/16 v19, 0x5

    and-long v19, v2, v19

    const-wide/16 v21, 0x8

    const-wide/16 v23, 0x0

    cmp-long v7, v19, v23

    if-eqz v7, :cond_1f

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    goto :goto_10

    :cond_18
    move/from16 v4, v18

    :goto_10
    if-eqz v6, :cond_19

    const/4 v9, 0x1

    :cond_19
    if-eqz v7, :cond_1b

    if-eqz v4, :cond_1a

    const-wide/16 v6, 0x1000

    goto :goto_11

    :cond_1a
    const-wide/16 v6, 0x800

    :goto_11
    or-long/2addr v2, v6

    :cond_1b
    const-wide/16 v6, 0x5

    and-long/2addr v6, v2

    const-wide/16 v19, 0x0

    cmp-long v23, v6, v19

    if-eqz v23, :cond_1d

    if-eqz v9, :cond_1c

    const-wide/16 v6, 0x10

    or-long/2addr v2, v6

    goto :goto_12

    :cond_1c
    or-long v2, v2, v21

    :cond_1d
    :goto_12
    if-eqz v4, :cond_1e

    const/4 v4, 0x0

    goto :goto_13

    :cond_1e
    const/16 v4, 0x8

    goto :goto_13

    :cond_1f
    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_13
    and-long v6, v2, v21

    const-wide/16 v19, 0x0

    cmp-long v21, v6, v19

    if-eqz v21, :cond_20

    if-eqz v13, :cond_20

    .line 26
    iget-boolean v7, v13, Lcom/shabakaty/downloader/q25;->s:Z

    goto :goto_14

    :cond_20
    move/from16 v7, v18

    :goto_14
    const-wide/16 v18, 0x5

    and-long v18, v2, v18

    const-wide/16 v20, 0x0

    cmp-long v6, v18, v20

    if-eqz v6, :cond_24

    if-eqz v9, :cond_21

    const/4 v7, 0x1

    :cond_21
    if-eqz v6, :cond_23

    if-eqz v7, :cond_22

    const-wide/16 v18, 0x4000

    goto :goto_15

    :cond_22
    const-wide/16 v18, 0x2000

    :goto_15
    or-long v2, v2, v18

    :cond_23
    if-eqz v7, :cond_24

    const/16 v6, 0x8

    goto :goto_16

    :cond_24
    const/4 v6, 0x0

    :goto_16
    const-wide/16 v18, 0x5

    and-long v18, v2, v18

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-eqz v7, :cond_25

    .line 27
    iget-object v7, v1, Lcom/shabakaty/downloader/g42;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/nl6;->w(Landroid/view/View;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 28
    iget-object v7, v1, Lcom/shabakaty/downloader/g42;->W:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/oy1;->a(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 29
    iget-object v7, v1, Lcom/shabakaty/downloader/g42;->X:Landroid/widget/TextView;

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/gm4;->f(Landroid/widget/TextView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 30
    iget-object v7, v1, Lcom/shabakaty/downloader/f42;->M:Landroid/widget/TextView;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v5, v9}, Lcom/shabakaty/downloader/gm4;->b(Landroid/widget/TextView;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 31
    iget-object v5, v1, Lcom/shabakaty/downloader/f42;->N:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v4, v1, Lcom/shabakaty/downloader/f42;->N:Landroid/widget/TextView;

    invoke-static {v4, v15}, Lcom/shabakaty/downloader/nl6;->perfHorizontalDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 33
    iget-object v4, v1, Lcom/shabakaty/downloader/f42;->N:Landroid/widget/TextView;

    invoke-static {v4, v12}, Lcom/shabakaty/downloader/nl6;->perfHorizontalText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 34
    iget-object v4, v1, Lcom/shabakaty/downloader/f42;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v5, 0x0

    invoke-static {v4, v14, v5, v5, v5}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 35
    iget-object v4, v1, Lcom/shabakaty/downloader/f42;->P:Landroid/widget/TextView;

    invoke-static {v4, v11, v10}, Lcom/shabakaty/downloader/gm4;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v4, v1, Lcom/shabakaty/downloader/f42;->Q:Landroid/widget/TextView;

    invoke-static {v4, v8}, Lcom/shabakaty/downloader/nl6;->perfHorizontalDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 37
    iget-object v4, v1, Lcom/shabakaty/downloader/f42;->Q:Landroid/widget/TextView;

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/gm4;->h(Landroid/widget/TextView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 38
    iget-object v4, v1, Lcom/shabakaty/downloader/f42;->R:Landroid/widget/TextView;

    move-object/from16 v7, v17

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/nl6;->perfHorizontalText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 39
    iget-object v4, v1, Lcom/shabakaty/downloader/f42;->S:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 40
    iget-object v4, v1, Lcom/shabakaty/downloader/f42;->S:Landroid/widget/ProgressBar;

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/st2;->j(Landroid/widget/ProgressBar;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 41
    sget v0, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_25

    .line 42
    iget-object v0, v1, Lcom/shabakaty/downloader/f42;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v11, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    :cond_25
    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_26

    .line 43
    iget-object v0, v1, Lcom/shabakaty/downloader/g42;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/st2;->b(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/Boolean;)V

    .line 44
    iget-object v0, v1, Lcom/shabakaty/downloader/g42;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v1, Lcom/shabakaty/downloader/g42;->Y:Lcom/shabakaty/downloader/mm0;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 45
    iget-object v0, v1, Lcom/shabakaty/downloader/f42;->P:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 46
    iget-object v0, v1, Lcom/shabakaty/downloader/f42;->S:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1202df

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/shabakaty/downloader/f42;->S:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/nl6;->perfHorizontalDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_26
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->card(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 47
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/g42;->Z:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/g42;->Z:J

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
