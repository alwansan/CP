.class public Lcom/shabakaty/downloader/y42;
.super Lcom/shabakaty/downloader/k42;
.source "ItemGroupBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final V:Landroid/util/SparseIntArray;


# instance fields
.field public final S:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final T:Lcom/shabakaty/downloader/mm0;

.field public U:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/y42;->V:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01f2

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01fc

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/y42;->V:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Landroidx/cardview/widget/CardView;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/k42;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/cardview/widget/CardView;Landroidx/constraintlayout/widget/Guideline;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/y42;->U:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k42;->P:Ljava/lang/Object;

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/k42;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/shabakaty/downloader/y42;->S:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 8
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/y42;->T:Lcom/shabakaty/downloader/mm0;

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y42;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/k42;->O:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/y42;->U:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/y42;->U:J

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
    check-cast p2, Lcom/shabakaty/downloader/z25;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/k42;->R:Ljava/lang/Object;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/y42;->U:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/y42;->U:J

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/k42;->R:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/z25;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/k42;->O:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/z25;->M0(Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/y42;->U:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/y42;->U:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/k42;->O:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;

    const-wide/16 v5, 0x5

    and-long v7, v0, v5

    const-wide/16 v9, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v7, v2

    if-eqz v13, :cond_3

    if-eqz v4, :cond_0

    .line 6
    iget-object v7, v4, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->videosList:Ljava/util/List;

    .line 7
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v12

    move-object v7, v4

    :goto_0
    if-eqz v7, :cond_1

    .line 8
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v13, :cond_4

    if-eqz v8, :cond_2

    const-wide/16 v13, 0x10

    or-long/2addr v0, v13

    goto :goto_2

    :cond_2
    or-long/2addr v0, v9

    goto :goto_2

    :cond_3
    move-object v4, v12

    move-object v7, v4

    const/4 v8, 0x0

    :cond_4
    :goto_2
    and-long/2addr v9, v0

    cmp-long v13, v9, v2

    if-eqz v13, :cond_6

    if-eqz v7, :cond_5

    .line 9
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    goto :goto_3

    :cond_5
    move-object v7, v12

    :goto_3
    if-eqz v7, :cond_6

    .line 10
    iget-object v7, v7, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v7, v12

    :goto_4
    and-long/2addr v5, v0

    cmp-long v9, v5, v2

    if-eqz v9, :cond_7

    if-eqz v8, :cond_8

    const-string v7, ""

    goto :goto_5

    :cond_7
    move-object v7, v12

    :cond_8
    :goto_5
    if-eqz v9, :cond_9

    .line 11
    iget-object v5, p0, Lcom/shabakaty/downloader/k42;->P:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v7, v12, v12, v12}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 12
    iget-object v5, p0, Lcom/shabakaty/downloader/k42;->N:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 13
    iget-object v5, p0, Lcom/shabakaty/downloader/y42;->S:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_9
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/y42;->S:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/shabakaty/downloader/y42;->T:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v1, v12}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 15
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/y42;->U:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/y42;->U:J

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
