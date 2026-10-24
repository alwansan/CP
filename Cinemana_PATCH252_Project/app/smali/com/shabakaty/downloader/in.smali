.class public Lcom/shabakaty/downloader/in;
.super Lcom/shabakaty/downloader/hn;
.source "BottomListSwitchBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/h63$a;


# instance fields
.field public final P:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public Q:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    aget-object v3, v0, v2

    move-object v8, v3

    check-cast v8, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/hn;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/TextView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/in;->Q:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/hn;->M:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/hn;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, v0, p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 8
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/h63;

    invoke-direct {p1, p0, v2}, Lcom/shabakaty/downloader/h63;-><init>(Lcom/shabakaty/downloader/h63$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/in;->P:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/aj4;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/hn;->O:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/in;->Q:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/in;->Q:J

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

.method public i()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/in;->Q:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/in;->Q:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/hn;->O:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/aj4;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x3

    and-long/2addr v7, v0

    cmp-long v9, v7, v2

    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 6
    iget-boolean v5, v4, Lcom/shabakaty/downloader/aj4;->b:Z

    .line 7
    iget-object v6, v4, Lcom/shabakaty/downloader/aj4;->c:Ljava/lang/String;

    :cond_0
    if-eqz v9, :cond_1

    .line 8
    iget-object v4, p0, Lcom/shabakaty/downloader/hn;->M:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/i90;->a(Landroid/widget/CompoundButton;Z)V

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/hn;->N:Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/hn;->M:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iget-object v1, p0, Lcom/shabakaty/downloader/in;->P:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 11
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/in;->Q:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/in;->Q:J

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
