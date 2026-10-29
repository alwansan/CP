.class public Lcom/shabakaty/downloader/j52;
.super Lcom/shabakaty/downloader/i52;
.source "ItemNotificationBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final X:Landroid/util/SparseIntArray;


# instance fields
.field public final U:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final V:Lcom/shabakaty/downloader/mm0;

.field public W:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j52;->X:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01f9

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a021f

    const/4 v2, 0x6

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/j52;->X:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    move-object v12, v3

    check-cast v12, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v12}, Lcom/shabakaty/downloader/i52;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/j52;->W:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/shabakaty/downloader/j52;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/i52;->O:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/i52;->P:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/i52;->Q:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/i52;->R:Ljava/lang/Object;

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v0, "VideoThumb"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 10
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/j52;->V:Lcom/shabakaty/downloader/mm0;

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/j52;->p()V

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/j52;->W:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/j52;->W:J

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
    check-cast p2, Lcom/shabakaty/downloader/u03;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/i52;->T:Ljava/lang/Object;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/j52;->W:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/j52;->W:J

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

    check-cast p1, Lcom/shabakaty/downloader/u03;

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
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/j52;->W:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/j52;->W:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/i52;->S:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_1

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v6, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 8
    iget-object v9, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 9
    iget-object v10, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeNummer:Ljava/lang/String;

    .line 10
    iget-object v11, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgObjUrl:Ljava/lang/String;

    .line 11
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->publishDate:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v7

    move-object v5, v4

    move-object v6, v5

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    .line 12
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/shabakaty/downloader/i52;->O:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1202af

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "https://cnth2.shabakaty.cc/"

    .line 13
    invoke-static {v12, v11}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    .line 14
    invoke-static {v6, v12}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v6}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, p0, Lcom/shabakaty/downloader/i52;->O:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120298

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, " "

    .line 16
    invoke-static {v6, v12}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v6, v10}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v4, v7

    move-object v5, v4

    move-object v6, v5

    move-object v9, v6

    move-object v11, v9

    :goto_1
    const-wide/16 v12, 0x4

    and-long/2addr v0, v12

    cmp-long v10, v0, v2

    if-eqz v10, :cond_2

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/j52;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/shabakaty/downloader/j52;->V:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v1, v7}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_2
    if-eqz v8, :cond_3

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/i52;->O:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/i52;->P:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/gm4;->c(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/i52;->Q:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/i52;->R:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v14, 0x0

    iget-object v12, p0, Lcom/shabakaty/downloader/i52;->S:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz v12, :notification272_thumbnail

    iget-object v14, v12, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    if-eqz v14, :notification274_small

    invoke-virtual {v14}, Ljava/lang/String;->length()I
    move-result v13
    if-lez v13, :notification274_small

    move-object v11, v14

    :notification274_small
    iget-object v14, v12, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgThumbObjUrl:Ljava/lang/String;

    :notification272_thumbnail
    invoke-static {v0, v11, v7, v7, v14}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 23
    sget v0, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/i52;->R:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 25
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/j52;->W:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/j52;->W:J

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
