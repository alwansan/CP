.class public Lcom/shabakaty/downloader/m52;
.super Lcom/shabakaty/downloader/h42;
.source "ItemSliderBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# instance fields
.field public final T:Lcom/shabakaty/downloader/mm0;

.field public final U:Lcom/shabakaty/downloader/mm0;

.field public V:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 13

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    .line 2
    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v3, v0, v2

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    move-object v10, v3

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v12, 0x1

    aget-object v0, v0, v12

    move-object v11, v0

    check-cast v11, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v11}, Lcom/shabakaty/downloader/h42;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/m52;->V:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/h42;->M:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/h42;->O:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/h42;->P:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/h42;->Q:Ljava/lang/Object;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/h42;->N:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v0, "VideoThumb"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 9
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p1, p0, v12}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/m52;->T:Lcom/shabakaty/downloader/mm0;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p1, p0, v2}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/m52;->U:Lcom/shabakaty/downloader/mm0;

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m52;->p()V

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
    iput-object p2, p0, Lcom/shabakaty/downloader/h42;->S:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/m52;->V:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/m52;->V:J

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
    check-cast p2, Lcom/shabakaty/downloader/v84;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/h42;->R:Ljava/lang/Object;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/m52;->V:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/m52;->V:J

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
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/h42;->R:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/v84;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/h42;->S:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    .line 3
    invoke-interface {p1, v2, p2}, Lcom/shabakaty/downloader/v84;->g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/h42;->R:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/v84;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/h42;->S:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 6
    invoke-interface {p1, v2, p2}, Lcom/shabakaty/downloader/pk;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public i()V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/m52;->V:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/m52;->V:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/h42;->S:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTitle:Ljava/lang/String;

    .line 7
    iget-object v6, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    .line 8
    iget-object v9, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgObjUrl:Ljava/lang/String;

    .line 9
    iget-object v10, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enContent:Ljava/lang/String;

    .line 10
    iget-object v11, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arContent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v7

    move-object v6, v5

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    :goto_0
    if-eqz v8, :cond_1

    .line 11
    iget-object v8, p0, Lcom/shabakaty/downloader/h42;->M:Landroid/widget/TextView;

    invoke-static {v8, v10, v11}, Lcom/shabakaty/downloader/gm4;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v8, p0, Lcom/shabakaty/downloader/h42;->O:Landroid/widget/TextView;

    invoke-static {v8, v6, v5}, Lcom/shabakaty/downloader/gm4;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v5, p0, Lcom/shabakaty/downloader/h42;->N:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/nl6;->w(Landroid/view/View;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 14
    iget-object v4, p0, Lcom/shabakaty/downloader/h42;->N:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v4, v9, v7, v7, v7}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/h42;->P:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const v2, 0x7f1202db

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/h42;->P:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/m52;->U:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v1, v7}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/h42;->Q:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/st2;->b(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/Boolean;)V

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/h42;->Q:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/shabakaty/downloader/m52;->T:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v1, v7}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 19
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/m52;->V:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/m52;->V:J

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
