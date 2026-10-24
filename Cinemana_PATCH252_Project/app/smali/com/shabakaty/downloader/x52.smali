.class public Lcom/shabakaty/downloader/x52;
.super Lcom/shabakaty/downloader/w52;
.source "ItemVideoInfoEpisodeBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/i63$a;
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final h0:Landroid/util/SparseIntArray;


# instance fields
.field public final V:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final W:Landroid/widget/ProgressBar;

.field public final X:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final Y:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final Z:Landroid/view/View$OnClickListener;

.field public final a0:Lcom/shabakaty/downloader/mm0;

.field public final b0:Lcom/shabakaty/downloader/mm0;

.field public final c0:Landroid/view/View$OnClickListener;

.field public final d0:Lcom/shabakaty/downloader/mm0;

.field public final e0:Landroid/view/View$OnClickListener;

.field public final f0:Landroid/view/View$OnClickListener;

.field public g0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/x52;->h0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01f8

    const/16 v2, 0xa

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x52;->h0:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/4 v13, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v12, v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v14

    const/16 v0, 0x9

    .line 2
    aget-object v0, v14, v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/views/DownloadButton;

    const/16 v0, 0xa

    aget-object v0, v14, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0x8

    aget-object v0, v14, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v15, 0x6

    aget-object v0, v14, v15

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v10, 0x3

    aget-object v0, v14, v10

    move-object v8, v0

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v9, 0x2

    aget-object v0, v14, v9

    move-object/from16 v16, v0

    check-cast v16, Landroidx/cardview/widget/CardView;

    const/4 v3, 0x7

    aget-object v0, v14, v3

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x7

    move/from16 v3, v18

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/w52;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shabakaty/downloader/views/DownloadButton;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v11, Lcom/shabakaty/downloader/x52;->g0:J

    .line 4
    iget-object v0, v11, Lcom/shabakaty/downloader/w52;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, v14, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v11, Lcom/shabakaty/downloader/x52;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    aget-object v1, v14, v0

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v11, Lcom/shabakaty/downloader/x52;->W:Landroid/widget/ProgressBar;

    .line 8
    invoke-virtual {v1, v13}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 9
    aget-object v2, v14, v1

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v11, Lcom/shabakaty/downloader/x52;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x5

    .line 11
    aget-object v3, v14, v2

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v11, Lcom/shabakaty/downloader/x52;->Y:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v3, v11, Lcom/shabakaty/downloader/w52;->N:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v3, v11, Lcom/shabakaty/downloader/w52;->O:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v11, Lcom/shabakaty/downloader/w52;->P:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v11, Lcom/shabakaty/downloader/w52;->Q:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v11, Lcom/shabakaty/downloader/w52;->R:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0a0128

    .line 18
    invoke-virtual {v12, v3, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    new-instance v3, Lcom/shabakaty/downloader/i63;

    invoke-direct {v3, v11, v15}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v3, v11, Lcom/shabakaty/downloader/x52;->Z:Landroid/view/View$OnClickListener;

    .line 20
    new-instance v3, Lcom/shabakaty/downloader/lm0;

    const/4 v4, 0x3

    invoke-direct {v3, v11, v4}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v3, v11, Lcom/shabakaty/downloader/x52;->a0:Lcom/shabakaty/downloader/mm0;

    .line 21
    new-instance v3, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v3, v11, v0}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v3, v11, Lcom/shabakaty/downloader/x52;->b0:Lcom/shabakaty/downloader/mm0;

    .line 22
    new-instance v0, Lcom/shabakaty/downloader/i63;

    invoke-direct {v0, v11, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/x52;->c0:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x2

    invoke-direct {v0, v11, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/x52;->d0:Lcom/shabakaty/downloader/mm0;

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/i63;

    invoke-direct {v0, v11, v2}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/x52;->e0:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x6

    invoke-direct {v0, v11, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/x52;->f0:Landroid/view/View$OnClickListener;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/x52;->p()V

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
    iput-object p2, p0, Lcom/shabakaty/downloader/w52;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/x52;->g0:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/x52;->g0:J

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
    check-cast p2, Lcom/shabakaty/downloader/c41;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/w52;->T:Lcom/shabakaty/downloader/c41;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/x52;->g0:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/x52;->g0:J

    .line 13
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 15
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x16

    if-ne v0, p1, :cond_2

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/x52;->G(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/w52;->S:Ljava/lang/String;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/x52;->g0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/x52;->g0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

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

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_4

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/w52;->T:Lcom/shabakaty/downloader/c41;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w52;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/c41;->Q(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V

    goto :goto_4

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/w52;->T:Lcom/shabakaty/downloader/c41;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/w52;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    .line 6
    check-cast p2, Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/c41;->K(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V

    goto :goto_4

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/w52;->T:Lcom/shabakaty/downloader/c41;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/w52;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    .line 9
    check-cast p2, Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/c41;->n1(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V

    goto :goto_4

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/w52;->T:Lcom/shabakaty/downloader/c41;

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/w52;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 12
    check-cast p2, Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/c41;->O0(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V

    :cond_8
    :goto_4
    return-void
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
    iget-object p1, p0, Lcom/shabakaty/downloader/w52;->T:Lcom/shabakaty/downloader/c41;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/w52;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/c41;->y0(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/w52;->T:Lcom/shabakaty/downloader/c41;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/w52;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 6
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/c41;->y0(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/w52;->T:Lcom/shabakaty/downloader/c41;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/w52;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/w52;->P:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p1, v1, p2}, Lcom/shabakaty/downloader/pk;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public i()V
    .locals 28

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/x52;->g0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/x52;->g0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/w52;->U:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/w52;->S:Ljava/lang/String;

    const-wide/16 v7, 0xd

    and-long v9, v2, v7

    const-wide/16 v15, 0x9

    const/16 v18, 0x0

    cmp-long v19, v9, v4

    if-eqz v19, :cond_f

    and-long v9, v2, v15

    cmp-long v19, v9, v4

    if-eqz v19, :cond_8

    if-eqz v0, :cond_0

    .line 7
    iget-object v9, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeDesc:Ljava/lang/String;

    .line 8
    iget-object v10, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    .line 9
    iget-object v14, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->duration:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v20

    .line 11
    iget-object v13, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 12
    iget-boolean v7, v10, Lcom/shabakaty/downloader/q25;->s:Z

    .line 13
    iget-wide v11, v10, Lcom/shabakaty/downloader/q25;->x:J

    goto :goto_1

    :cond_1
    move-wide v11, v4

    const/4 v7, 0x0

    :goto_1
    if-eqz v19, :cond_3

    if-eqz v7, :cond_2

    const-wide/16 v25, 0x200

    or-long v2, v2, v25

    const-wide/16 v25, 0x800

    goto :goto_2

    :cond_2
    const-wide/16 v25, 0x100

    or-long v2, v2, v25

    const-wide/16 v25, 0x400

    :goto_2
    or-long v2, v2, v25

    :cond_3
    if-eqz v7, :cond_4

    const/16 v8, 0x8

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v7, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    const/16 v10, 0x8

    :goto_4
    cmp-long v19, v11, v4

    if-nez v19, :cond_6

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :goto_5
    and-long v25, v2, v15

    cmp-long v12, v25, v4

    if-eqz v12, :cond_9

    if-eqz v11, :cond_7

    const-wide/16 v25, 0x2000

    or-long v2, v2, v25

    goto :goto_6

    :cond_7
    const-wide/16 v23, 0x1000

    or-long v2, v2, v23

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    .line 14
    iget-object v12, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    goto :goto_7

    :cond_a
    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_b

    .line 15
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    const-wide/16 v21, 0xd

    and-long v25, v2, v21

    cmp-long v19, v25, v4

    if-eqz v19, :cond_d

    if-eqz v6, :cond_c

    const-wide/16 v25, 0x20

    goto :goto_9

    :cond_c
    const-wide/16 v25, 0x10

    :goto_9
    or-long v2, v2, v25

    :cond_d
    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_a

    :cond_e
    const/16 v6, 0x8

    :goto_a
    move-object/from16 v27, v20

    const-wide/16 v23, 0x1000

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v23, 0x1000

    const/16 v27, 0x0

    :goto_b
    and-long v23, v2, v23

    cmp-long v19, v23, v4

    if-eqz v19, :cond_10

    if-eqz v14, :cond_10

    .line 16
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    goto :goto_c

    :cond_10
    const/16 v19, 0x0

    :goto_c
    and-long v23, v2, v15

    cmp-long v20, v23, v4

    if-eqz v20, :cond_13

    if-eqz v11, :cond_11

    const/16 v19, 0x1

    :cond_11
    if-eqz v20, :cond_14

    if-eqz v19, :cond_12

    const-wide/16 v23, 0x80

    goto :goto_d

    :cond_12
    const-wide/16 v23, 0x40

    :goto_d
    or-long v2, v2, v23

    goto :goto_e

    :cond_13
    const/16 v19, 0x0

    :cond_14
    :goto_e
    and-long v23, v2, v15

    cmp-long v11, v23, v4

    if-eqz v11, :cond_19

    if-eqz v19, :cond_15

    const/16 v17, 0x1

    goto :goto_f

    :cond_15
    move/from16 v17, v7

    :goto_f
    if-eqz v11, :cond_17

    if-eqz v17, :cond_16

    const-wide/32 v23, 0x8000

    goto :goto_10

    :cond_16
    const-wide/16 v23, 0x4000

    :goto_10
    or-long v2, v2, v23

    :cond_17
    if-eqz v17, :cond_18

    const/16 v18, 0x8

    :cond_18
    move/from16 v7, v18

    goto :goto_11

    :cond_19
    const/4 v7, 0x0

    :goto_11
    const-wide/16 v17, 0x8

    and-long v17, v2, v17

    cmp-long v11, v17, v4

    if-eqz v11, :cond_1a

    .line 17
    iget-object v11, v1, Lcom/shabakaty/downloader/w52;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1200dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 18
    iget-object v4, v1, Lcom/shabakaty/downloader/w52;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v5, v1, Lcom/shabakaty/downloader/x52;->c0:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/st2;->d(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v4, v1, Lcom/shabakaty/downloader/w52;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v5, v1, Lcom/shabakaty/downloader/x52;->e0:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/st2;->e(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v4, v1, Lcom/shabakaty/downloader/w52;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v5, v1, Lcom/shabakaty/downloader/x52;->f0:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/st2;->f(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v4, v1, Lcom/shabakaty/downloader/w52;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v5, v1, Lcom/shabakaty/downloader/x52;->Z:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/st2;->g(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v4, v1, Lcom/shabakaty/downloader/x52;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, v1, Lcom/shabakaty/downloader/x52;->b0:Lcom/shabakaty/downloader/mm0;

    const/4 v11, 0x0

    invoke-static {v4, v5, v11}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 23
    iget-object v4, v1, Lcom/shabakaty/downloader/x52;->W:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f1202df

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 24
    iget-object v4, v1, Lcom/shabakaty/downloader/x52;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f120262

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 25
    iget-object v4, v1, Lcom/shabakaty/downloader/x52;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v1, Lcom/shabakaty/downloader/x52;->d0:Lcom/shabakaty/downloader/mm0;

    const/4 v11, 0x0

    invoke-static {v4, v5, v11}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 26
    iget-object v4, v1, Lcom/shabakaty/downloader/x52;->Y:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f1202de

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 27
    iget-object v4, v1, Lcom/shabakaty/downloader/x52;->Y:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v1, Lcom/shabakaty/downloader/x52;->a0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v4, v5, v11}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    const-wide/16 v4, 0x9

    goto :goto_12

    :cond_1a
    move-wide v4, v15

    :goto_12
    and-long/2addr v4, v2

    const-wide/16 v15, 0x0

    cmp-long v11, v4, v15

    if-eqz v11, :cond_1b

    .line 28
    iget-object v4, v1, Lcom/shabakaty/downloader/w52;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v4, v12}, Lcom/shabakaty/downloader/views/DownloadButton;->setExternalId(Ljava/lang/String;)V

    .line 29
    iget-object v4, v1, Lcom/shabakaty/downloader/x52;->W:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 30
    iget-object v4, v1, Lcom/shabakaty/downloader/x52;->W:Landroid/widget/ProgressBar;

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/st2;->j(Landroid/widget/ProgressBar;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 31
    iget-object v0, v1, Lcom/shabakaty/downloader/x52;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object v0, v1, Lcom/shabakaty/downloader/x52;->Y:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object v0, v1, Lcom/shabakaty/downloader/w52;->N:Landroid/widget/TextView;

    invoke-static {v0, v14}, Lcom/shabakaty/downloader/gm4;->d(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 34
    iget-object v0, v1, Lcom/shabakaty/downloader/w52;->O:Landroid/widget/TextView;

    move-object/from16 v4, v27

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 35
    iget-object v0, v1, Lcom/shabakaty/downloader/w52;->P:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x0

    invoke-static {v0, v13, v4, v4, v4}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 36
    iget-object v0, v1, Lcom/shabakaty/downloader/w52;->R:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1b
    const-wide/16 v4, 0xd

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    .line 37
    iget-object v0, v1, Lcom/shabakaty/downloader/w52;->Q:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1c
    return-void

    :catchall_0
    move-exception v0

    .line 38
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/x52;->g0:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/x52;->g0:J

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
