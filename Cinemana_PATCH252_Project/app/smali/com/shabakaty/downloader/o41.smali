.class public Lcom/shabakaty/downloader/o41;
.super Lcom/shabakaty/downloader/n41;
.source "EpomViewBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/j63$a;


# static fields
.field public static final Y:Landroid/util/SparseIntArray;


# instance fields
.field public final T:Landroid/view/View$OnClickListener;

.field public final U:Landroid/view/View$OnClickListener;

.field public final V:Landroid/view/View$OnClickListener;

.field public final W:Landroid/view/View$OnClickListener;

.field public X:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/o41;->Y:Landroid/util/SparseIntArray;

    const v1, 0x7f0a017e

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a017f

    const/4 v2, 0x6

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;[Landroid/view/View;)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/o41;->Y:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/4 v13, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v12, v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->t(Lcom/shabakaty/downloader/gl0;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v3, v12, v1

    const/4 v14, 0x1

    aget-object v4, v0, v14

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v15, 0x2

    aget-object v5, v0, v15

    check-cast v5, Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v10, 0x4

    aget-object v6, v0, v10

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v7, 0x5

    aget-object v7, v0, v7

    check-cast v7, Landroidx/cardview/widget/CardView;

    const/4 v8, 0x6

    aget-object v8, v0, v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    move-object/from16 v16, v0

    check-cast v16, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    const/4 v14, 0x3

    move-object/from16 v1, p1

    move-object v2, v3

    move/from16 v3, v17

    const/4 v14, 0x4

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/n41;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/facebook/drawee/view/SimpleDraweeView;Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroidx/cardview/widget/CardView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v11, Lcom/shabakaty/downloader/o41;->X:J

    .line 4
    iget-object v0, v11, Lcom/shabakaty/downloader/n41;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v11, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v11, Lcom/shabakaty/downloader/n41;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v11, Lcom/shabakaty/downloader/n41;->P:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v11, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v11, v12}, Landroidx/databinding/ViewDataBinding;->C([Landroid/view/View;)V

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/j63;

    invoke-direct {v0, v11, v14}, Lcom/shabakaty/downloader/j63;-><init>(Lcom/shabakaty/downloader/j63$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/o41;->T:Landroid/view/View$OnClickListener;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/j63;

    invoke-direct {v0, v11, v15}, Lcom/shabakaty/downloader/j63;-><init>(Lcom/shabakaty/downloader/j63$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/o41;->U:Landroid/view/View$OnClickListener;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/j63;

    const/4 v1, 0x3

    invoke-direct {v0, v11, v1}, Lcom/shabakaty/downloader/j63;-><init>(Lcom/shabakaty/downloader/j63$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/o41;->V:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/j63;

    const/4 v1, 0x1

    invoke-direct {v0, v11, v1}, Lcom/shabakaty/downloader/j63;-><init>(Lcom/shabakaty/downloader/j63$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/o41;->W:Landroid/view/View$OnClickListener;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/o41;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/f41;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/n41;->R:Lcom/shabakaty/downloader/f41;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/o41;->X:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/o41;->X:J

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
    check-cast p2, Lcom/shabakaty/downloader/p41;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/n41;->S:Lcom/shabakaty/downloader/p41;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/o41;->X:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/o41;->X:J

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
    .locals 22

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/o41;->X:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/o41;->X:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/n41;->R:Lcom/shabakaty/downloader/f41;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/n41;->S:Lcom/shabakaty/downloader/p41;

    const-wide/16 v7, 0x7

    and-long v9, v2, v7

    const-wide/16 v11, 0x10

    const-wide/16 v13, 0x5

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    cmp-long v18, v9, v4

    if-eqz v18, :cond_3

    and-long v9, v2, v13

    cmp-long v18, v9, v4

    if-eqz v18, :cond_3

    if-eqz v0, :cond_0

    .line 7
    iget-object v9, v0, Lcom/shabakaty/downloader/f41;->u:Ljava/lang/String;

    .line 8
    iget-object v10, v0, Lcom/shabakaty/downloader/f41;->r:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v9, v15

    move-object v10, v9

    :goto_0
    if-eqz v10, :cond_1

    const/16 v19, 0x1

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    :goto_1
    if-eqz v18, :cond_4

    if-eqz v19, :cond_2

    or-long/2addr v2, v11

    goto :goto_2

    :cond_2
    const-wide/16 v20, 0x8

    or-long v2, v2, v20

    goto :goto_2

    :cond_3
    move-object v9, v15

    move-object v10, v9

    const/16 v19, 0x0

    :cond_4
    :goto_2
    and-long/2addr v11, v2

    cmp-long v18, v11, v4

    if-eqz v18, :cond_6

    if-eqz v10, :cond_5

    .line 9
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    xor-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    and-long v20, v2, v13

    cmp-long v12, v20, v4

    if-eqz v12, :cond_b

    if-eqz v19, :cond_7

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    :goto_5
    if-eqz v12, :cond_9

    if-eqz v11, :cond_8

    const-wide/16 v18, 0x40

    goto :goto_6

    :cond_8
    const-wide/16 v18, 0x20

    :goto_6
    or-long v2, v2, v18

    :cond_9
    if-eqz v11, :cond_a

    goto :goto_7

    :cond_a
    const/16 v11, 0x8

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v11, 0x0

    :goto_8
    const-wide/16 v18, 0x4

    and-long v18, v2, v18

    cmp-long v12, v18, v4

    if-eqz v12, :cond_c

    .line 10
    iget-object v12, v1, Lcom/shabakaty/downloader/n41;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v7, v1, Lcom/shabakaty/downloader/o41;->W:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v7, v1, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v8, v1, Lcom/shabakaty/downloader/o41;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v7, v1, Lcom/shabakaty/downloader/n41;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v8, v1, Lcom/shabakaty/downloader/o41;->T:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v7, v1, Lcom/shabakaty/downloader/n41;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f12029d

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/iq6;->w(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 14
    iget-object v7, v1, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v8, v1, Lcom/shabakaty/downloader/o41;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v7, v1, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f1202b9

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/iq6;->w(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_c
    and-long v7, v2, v13

    cmp-long v12, v7, v4

    if-eqz v12, :cond_f

    .line 16
    iget-object v7, v1, Lcom/shabakaty/downloader/n41;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/iq6;->w(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v7, v1, Lcom/shabakaty/downloader/n41;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v8, "<this>"

    .line 18
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v10, :cond_d

    goto :goto_9

    .line 19
    :cond_d
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v8

    .line 20
    sget-object v10, Lcom/facebook/drawee/backends/pipeline/Fresco;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    invoke-virtual {v10}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->a()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v10

    .line 21
    invoke-virtual {v7}, Lcom/facebook/drawee/view/DraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v12

    .line 22
    iput-object v12, v10, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 23
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15, v12}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 24
    new-instance v12, Lcom/shabakaty/downloader/rm;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v13

    const/16 v14, 0x1a

    invoke-direct {v12, v13, v14}, Lcom/shabakaty/downloader/rm;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object v12, v8, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 26
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v8

    .line 27
    iput-object v8, v10, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 28
    invoke-virtual {v10}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/facebook/drawee/view/DraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    goto :goto_9

    .line 29
    :cond_e
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v8

    .line 30
    iput-object v8, v10, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 31
    invoke-virtual {v10}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/facebook/drawee/view/DraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 32
    :goto_9
    iget-object v7, v1, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/iq6;->w(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 33
    iget-object v7, v1, Lcom/shabakaty/downloader/n41;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    const-wide/16 v7, 0x7

    and-long/2addr v2, v7

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1b

    .line 34
    iget-object v2, v1, Lcom/shabakaty/downloader/n41;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v3, "<this>"

    .line 35
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_10

    move-object v3, v15

    goto :goto_a

    .line 36
    :cond_10
    iget-object v3, v0, Lcom/shabakaty/downloader/f41;->r:Ljava/lang/String;

    :goto_a
    if-eqz v3, :cond_12

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    const/4 v3, 0x1

    :goto_c
    if-nez v3, :cond_15

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_15

    if-nez v6, :cond_14

    goto :goto_e

    .line 39
    :cond_14
    invoke-interface {v6}, Lcom/shabakaty/downloader/p41;->f()V

    .line 40
    :cond_15
    :goto_e
    iget-object v2, v1, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v3, "<this>"

    .line 41
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_16

    goto :goto_f

    .line 42
    :cond_16
    iget-object v15, v0, Lcom/shabakaty/downloader/f41;->r:Ljava/lang/String;

    :goto_f
    if-eqz v15, :cond_18

    .line 43
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    goto :goto_11

    :cond_18
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-nez v0, :cond_1b

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_12

    :cond_19
    const/16 v16, 0x0

    :goto_12
    if-eqz v16, :cond_1b

    if-nez v6, :cond_1a

    goto :goto_13

    .line 45
    :cond_1a
    invoke-interface {v6}, Lcom/shabakaty/downloader/p41;->f()V

    :cond_1b
    :goto_13
    return-void

    :catchall_0
    move-exception v0

    .line 46
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/o41;->X:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/o41;->X:J

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
