.class public Lcom/shabakaty/downloader/o42;
.super Lcom/shabakaty/downloader/n42;
.source "ItemDownloadBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/i63$a;
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final a0:Landroid/util/SparseIntArray;


# instance fields
.field public final U:Landroid/view/View$OnClickListener;

.field public final V:Landroid/view/View$OnClickListener;

.field public final W:Landroid/view/View$OnClickListener;

.field public final X:Lcom/shabakaty/downloader/mm0;

.field public final Y:Landroid/view/View$OnClickListener;

.field public Z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/o42;->a0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01f9

    const/4 v2, 0x7

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a021f

    const/16 v2, 0x8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 21

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/o42;->a0:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/4 v14, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v13, v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v15

    const/4 v0, 0x6

    .line 2
    aget-object v0, v15, v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/views/DownloadButton;

    const/4 v11, 0x5

    aget-object v0, v15, v11

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v10, 0x3

    aget-object v0, v15, v10

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v9, 0x4

    aget-object v0, v15, v9

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x2

    aget-object v0, v15, v8

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, v15, v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0x8

    aget-object v0, v15, v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x1

    aget-object v0, v15, v3

    move-object/from16 v19, v0

    check-cast v19, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/downloader/n42;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shabakaty/downloader/views/DownloadButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lcom/shabakaty/downloader/o42;->Z:J

    .line 4
    iget-object v0, v12, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v12, Lcom/shabakaty/downloader/n42;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v12, Lcom/shabakaty/downloader/n42;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v12, Lcom/shabakaty/downloader/n42;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v12, Lcom/shabakaty/downloader/n42;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 9
    aget-object v0, v15, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v12, Lcom/shabakaty/downloader/n42;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v1, "VideoThumb"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 12
    invoke-virtual {v13, v0, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x2

    invoke-direct {v0, v12, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/o42;->U:Landroid/view/View$OnClickListener;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x5

    invoke-direct {v0, v12, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/o42;->V:Landroid/view/View$OnClickListener;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x3

    invoke-direct {v0, v12, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/o42;->W:Landroid/view/View$OnClickListener;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v12, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/o42;->X:Lcom/shabakaty/downloader/mm0;

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/i63;

    const/4 v1, 0x4

    invoke-direct {v0, v12, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/o42;->Y:Landroid/view/View$OnClickListener;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/o42;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/o42;->Z:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/o42;->Z:J

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
    check-cast p2, Lcom/shabakaty/downloader/qw0;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/n42;->T:Lcom/shabakaty/downloader/qw0;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/o42;->Z:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/o42;->Z:J

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

.method public final b(ILandroid/view/View;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/MkvStateStore;->isBusy(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/MkvStateStore;->message(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_4

    .line 1
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/n42;->T:Lcom/shabakaty/downloader/qw0;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_9

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/qw0;->l0(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/views/DownloadButton;)V

    goto :goto_4

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/n42;->T:Lcom/shabakaty/downloader/qw0;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_9

    .line 6
    check-cast p2, Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/qw0;->e1(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/views/DownloadButton;)V

    goto :goto_4

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/n42;->T:Lcom/shabakaty/downloader/qw0;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_9

    .line 9
    check-cast p2, Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/n42;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p1, v0, p2, v1}, Lcom/shabakaty/downloader/qw0;->D0(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/views/DownloadButton;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    goto :goto_4

    .line 10
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/n42;->T:Lcom/shabakaty/downloader/qw0;

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_9

    .line 12
    check-cast p2, Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/qw0;->E(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/views/DownloadButton;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final d(ILandroid/view/View;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/MkvStateStore;->isBusy(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/MkvStateStore;->message(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/n42;->T:Lcom/shabakaty/downloader/qw0;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/qw0;->U0(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/o42;->Z:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/o42;->Z:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    const-wide/16 v6, 0x5

    and-long v8, v2, v6

    cmp-long v10, v8, v4

    if-eqz v10, :cond_d

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/DownloadTitle127;->cleanItem(Ljava/lang/Object;)V

    .line 6
    iget-object v8, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    .line 7
    iget-object v9, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    .line 8
    iget-object v11, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->a()Ljava/lang/String;

    move-result-object v12

    .line 10
    iget-object v13, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    .line 11
    iget-object v14, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 12
    iget-object v15, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    .line 13
    iget v0, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-eqz v8, :cond_1

    .line 14
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    if-eqz v10, :cond_3

    if-eqz v16, :cond_2

    const-wide/16 v17, 0x40

    goto :goto_2

    :cond_2
    const-wide/16 v17, 0x20

    :goto_2
    or-long v2, v2, v17

    :cond_3
    if-eqz v13, :cond_4

    const-string v10, "1"

    .line 15
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    and-long v17, v2, v6

    cmp-long v13, v17, v4

    if-eqz v13, :cond_6

    if-eqz v10, :cond_5

    const-wide/16 v17, 0x10

    goto :goto_4

    :cond_5
    const-wide/16 v17, 0x8

    :goto_4
    or-long v2, v2, v17

    .line 16
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    if-gtz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    and-long/2addr v6, v2

    cmp-long v17, v6, v4

    if-eqz v17, :cond_9

    if-eqz v0, :cond_8

    const-wide/16 v6, 0x100

    goto :goto_6

    :cond_8
    const-wide/16 v6, 0x80

    :goto_6
    or-long/2addr v2, v6

    :cond_9
    if-eqz v16, :cond_a

    const/16 v6, 0x8

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    if-eqz v10, :cond_b

    const/16 v7, 0x8

    goto :goto_8

    :cond_b
    const/4 v7, 0x0

    :goto_8
    const-string v10, " MB"

    .line 17
    invoke-static {v13, v10}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_9
    iget-object v13, v1, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v4, v1, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v13}, Lcom/shabakaty/cinemana/features/MkvStateStore;->isBusy(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Z

    move-result v13

    if-eqz v13, :cond_e

    iget-object v13, v1, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-static {v4, v13}, Lcom/shabakaty/cinemana/features/MkvStateStore;->message(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :cond_e
    const-wide/16 v16, 0x4

    and-long v16, v2, v16

    const-wide/16 v4, 0x0

    cmp-long v13, v16, v4

    if-eqz v13, :cond_f

    .line 18
    iget-object v4, v1, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x7f1200dc

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 19
    iget-object v4, v1, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v5, v1, Lcom/shabakaty/downloader/o42;->U:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/st2;->d(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v4, v1, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v5, v1, Lcom/shabakaty/downloader/o42;->W:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/st2;->e(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v4, v1, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v5, v1, Lcom/shabakaty/downloader/o42;->Y:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/st2;->f(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v4, v1, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v5, v1, Lcom/shabakaty/downloader/o42;->V:Landroid/view/View$OnClickListener;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/st2;->g(Lcom/shabakaty/downloader/views/DownloadButton;Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v4, v1, Lcom/shabakaty/downloader/n42;->P:Landroid/widget/TextView;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v13, 0x0

    invoke-static {v4, v13, v5}, Lcom/shabakaty/downloader/gm4;->b(Landroid/widget/TextView;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 24
    iget-object v4, v1, Lcom/shabakaty/downloader/n42;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v1, Lcom/shabakaty/downloader/o42;->X:Lcom/shabakaty/downloader/mm0;

    invoke-static {v4, v5, v13}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_f
    const-wide/16 v4, 0x5

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v13, v2, v4

    if-eqz v13, :cond_10

    .line 25
    iget-object v2, v1, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v2, v14}, Lcom/shabakaty/downloader/views/DownloadButton;->setExternalId(Ljava/lang/String;)V

    .line 26
    iget-object v2, v1, Lcom/shabakaty/downloader/n42;->N:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object v2, v1, Lcom/shabakaty/downloader/n42;->N:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 28
    iget-object v2, v1, Lcom/shabakaty/downloader/n42;->O:Landroid/widget/TextView;

    invoke-static {v2, v12}, Lcom/shabakaty/downloader/fm4;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 29
    iget-object v2, v1, Lcom/shabakaty/downloader/n42;->O:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object v2, v1, Lcom/shabakaty/downloader/n42;->P:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object v0, v1, Lcom/shabakaty/downloader/n42;->P:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 32
    iget-object v0, v1, Lcom/shabakaty/downloader/n42;->Q:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/shabakaty/downloader/q00;->ca1CleanPlayerTitle130(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 33
    iget-object v0, v1, Lcom/shabakaty/downloader/n42;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    invoke-static {v0, v15, v2, v2, v11}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 34
    sget v0, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_10

    .line 35
    iget-object v0, v1, Lcom/shabakaty/downloader/n42;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    :cond_10
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Native98;->bound(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 36
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/o42;->Z:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/o42;->Z:J

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
