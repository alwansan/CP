.class public Lcom/shabakaty/downloader/l42;
.super Lcom/shabakaty/downloader/k42;
.source "ItemBottomListTextButtonBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# instance fields
.field public final S:Lcom/shabakaty/downloader/mm0;

.field public T:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x4

    .line 2
    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    move-object v10, v3

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    move-object v11, v0

    check-cast v11, Landroidx/cardview/widget/CardView;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v11}, Lcom/shabakaty/downloader/k42;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/cardview/widget/CardView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/l42;->T:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/k42;->M:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/k42;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/k42;->O:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/k42;->P:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/k42;->Q:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 9
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p1, p0, v2}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/l42;->S:Lcom/shabakaty/downloader/mm0;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l42;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/pl4;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/k42;->R:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/l42;->T:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/l42;->T:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    const/4 p1, 0x1

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
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/k42;->R:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/pl4;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qv4;

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
    iget-wide v2, v1, Lcom/shabakaty/downloader/l42;->T:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/l42;->T:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/k42;->R:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/pl4;

    const-wide/16 v6, 0x3

    and-long v8, v2, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v8, v4

    if-eqz v12, :cond_8

    if-eqz v0, :cond_0

    .line 6
    iget-object v8, v0, Lcom/shabakaty/downloader/pl4;->a:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v9, v0, Lcom/shabakaty/downloader/pl4;->d:Ljava/lang/String;

    .line 8
    iget-object v13, v0, Lcom/shabakaty/downloader/pl4;->b:Ljava/lang/String;

    .line 9
    iget-boolean v0, v0, Lcom/shabakaty/downloader/pl4;->e:Z

    goto :goto_0

    :cond_0
    move-object v8, v10

    move-object v9, v8

    move-object v13, v9

    const/4 v0, 0x0

    :goto_0
    if-eqz v12, :cond_2

    if-eqz v0, :cond_1

    const-wide/16 v14, 0x8

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0x4

    :goto_1
    or-long/2addr v2, v14

    :cond_2
    if-nez v8, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    const/16 v14, 0x8

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/16 v0, 0x8

    :goto_3
    and-long v15, v2, v6

    cmp-long v17, v15, v4

    if-eqz v17, :cond_6

    if-eqz v12, :cond_5

    const-wide/16 v15, 0x20

    goto :goto_4

    :cond_5
    const-wide/16 v15, 0x10

    :goto_4
    or-long/2addr v2, v15

    :cond_6
    if-eqz v12, :cond_7

    const/16 v11, 0x8

    :cond_7
    move/from16 v18, v11

    move v11, v0

    move/from16 v0, v18

    goto :goto_5

    :cond_8
    move-object v8, v10

    move-object v9, v8

    move-object v13, v9

    const/4 v0, 0x0

    :goto_5
    and-long/2addr v6, v2

    cmp-long v12, v6, v4

    if-eqz v12, :cond_9

    .line 10
    iget-object v6, v1, Lcom/shabakaty/downloader/k42;->M:Ljava/lang/Object;

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v6, v1, Lcom/shabakaty/downloader/k42;->N:Landroid/widget/TextView;

    invoke-static {v6, v13}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 12
    iget-object v6, v1, Lcom/shabakaty/downloader/k42;->O:Ljava/lang/Object;

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6, v9}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 13
    iget-object v6, v1, Lcom/shabakaty/downloader/k42;->P:Ljava/lang/Object;

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, v1, Lcom/shabakaty/downloader/k42;->P:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    const-wide/16 v6, 0x2

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a

    .line 15
    iget-object v0, v1, Lcom/shabakaty/downloader/k42;->Q:Landroidx/cardview/widget/CardView;

    iget-object v2, v1, Lcom/shabakaty/downloader/l42;->S:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v2, v10}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 16
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/l42;->T:J

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

    const-wide/16 v0, 0x2

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/l42;->T:J

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
