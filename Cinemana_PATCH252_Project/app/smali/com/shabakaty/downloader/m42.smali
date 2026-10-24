.class public Lcom/shabakaty/downloader/m42;
.super Lcom/shabakaty/downloader/hn;
.source "ItemCategoryBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# instance fields
.field public final P:Landroidx/cardview/widget/CardView;

.field public final Q:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final R:Lcom/shabakaty/downloader/mm0;

.field public S:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    .line 2
    aget-object v2, v0, v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/shabakaty/downloader/hn;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;)V

    const-wide/16 v4, -0x1

    .line 3
    iput-wide v4, p0, Lcom/shabakaty/downloader/m42;->S:J

    .line 4
    aget-object p1, v0, v3

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/shabakaty/downloader/m42;->P:Landroidx/cardview/widget/CardView;

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object v0, v0, p1

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/shabakaty/downloader/m42;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/hn;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 9
    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/m42;->R:Lcom/shabakaty/downloader/mm0;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m42;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/cx;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/hn;->M:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/m42;->S:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/m42;->S:J

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
    const/16 v0, 0xb

    if-ne v0, p1, :cond_1

    .line 9
    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/hn;->O:Ljava/lang/Object;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/m42;->S:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/m42;->S:J

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
    iget-object p1, p0, Lcom/shabakaty/downloader/hn;->M:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/cx;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/hn;->O:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/cx;->X0(Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/m42;->S:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/m42;->S:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/hn;->O:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    const-wide/16 v5, 0x6

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, v4, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    .line 7
    iget-object v6, v4, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    .line 8
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->x:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v7

    move-object v5, v4

    move-object v6, v5

    :goto_0
    if-eqz v8, :cond_1

    .line 9
    iget-object v8, p0, Lcom/shabakaty/downloader/m42;->P:Landroidx/cardview/widget/CardView;

    invoke-static {v8, v6, v5}, Lcom/shabakaty/downloader/nl6;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v8, p0, Lcom/shabakaty/downloader/m42;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v8, v4, v7, v7, v7}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 11
    iget-object v4, p0, Lcom/shabakaty/downloader/hn;->N:Landroid/widget/TextView;

    invoke-static {v4, v6, v5}, Lcom/shabakaty/downloader/gm4;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/m42;->P:Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/shabakaty/downloader/m42;->R:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v1, v7}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 13
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/m42;->S:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/m42;->S:J

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
