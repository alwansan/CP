.class public Lcom/shabakaty/downloader/jk1;
.super Lcom/shabakaty/downloader/aj1;
.source "FragmentSettingsListBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/i63$a;


# instance fields
.field public final R:Landroid/widget/TextView;

.field public final S:Landroid/widget/TextView;

.field public final T:Landroid/widget/TextView;

.field public final U:Landroid/view/View$OnClickListener;

.field public final V:Landroid/view/View$OnClickListener;

.field public final W:Landroid/view/View$OnClickListener;

.field public X:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    .line 2
    aget-object v3, v0, v2

    move-object v8, v3

    check-cast v8, Landroidx/cardview/widget/CardView;

    const/4 v3, 0x1

    aget-object v4, v0, v3

    move-object v9, v4

    check-cast v9, Landroidx/cardview/widget/CardView;

    const/4 v4, 0x5

    aget-object v4, v0, v4

    move-object v10, v4

    check-cast v10, Landroidx/cardview/widget/CardView;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/shabakaty/downloader/aj1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;)V

    const-wide/16 v4, -0x1

    .line 3
    iput-wide v4, p0, Lcom/shabakaty/downloader/jk1;->X:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v0, p1

    check-cast p1, Landroid/widget/ScrollView;

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 6
    aget-object v4, v0, p1

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/shabakaty/downloader/jk1;->R:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x4

    .line 8
    aget-object v4, v0, v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/shabakaty/downloader/jk1;->S:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x6

    .line 10
    aget-object v0, v0, v4

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shabakaty/downloader/jk1;->T:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 15
    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    new-instance p2, Lcom/shabakaty/downloader/i63;

    invoke-direct {p2, p0, v2}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/jk1;->U:Landroid/view/View$OnClickListener;

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/i63;

    invoke-direct {p2, p0, v3}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/jk1;->V:Landroid/view/View$OnClickListener;

    .line 18
    new-instance p2, Lcom/shabakaty/downloader/i63;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/jk1;->W:Landroid/view/View$OnClickListener;

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jk1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x26

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/d34;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/aj1;->Q:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/kk1;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/aj1;->P:Ljava/lang/Object;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/jk1;->X:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jk1;->X:J

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
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
    iget-object p1, p0, Lcom/shabakaty/downloader/aj1;->P:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/kk1;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/kk1;->Y0()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/aj1;->P:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/kk1;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/kk1;->R0()V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/aj1;->P:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/kk1;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/kk1;->N0()V

    :cond_6
    :goto_0
    return-void
.end method

.method public i()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/jk1;->X:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/jk1;->X:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/jk1;->R:Landroid/widget/TextView;

    const v1, 0x7f120140

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/jk1;->S:Landroid/widget/TextView;

    const v1, 0x7f120134

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/jk1;->T:Landroid/widget/TextView;

    const v1, 0x7f120271

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lcom/shabakaty/downloader/jk1;->W:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lcom/shabakaty/downloader/jk1;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lcom/shabakaty/downloader/jk1;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/cardview/widget/CardView;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 12
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/jk1;->X:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/jk1;->X:J

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
