.class public Lcom/shabakaty/downloader/c4;
.super Lcom/shabakaty/downloader/b4;
.source "ActivityStatusBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/i63$a;


# static fields
.field public static final U:Landroid/util/SparseIntArray;


# instance fields
.field public final S:Landroid/view/View$OnClickListener;

.field public T:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/c4;->U:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0469

    const/4 v2, 0x4

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/c4;->U:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/b4;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/c4;->T:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v0, p1

    check-cast p1, Landroid/widget/ScrollView;

    .line 5
    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/b4;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/b4;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/b4;->O:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 9
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/i63;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/c4;->S:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c4;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x1b

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/c4;->H(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/q14;

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/ad4;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/b4;->P:Lcom/shabakaty/downloader/ad4;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/c4;->T:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/c4;->T:J

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    const/16 v0, 0x1c

    if-ne v0, p1, :cond_3

    .line 11
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/c4;->I(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Lcom/shabakaty/downloader/q14;)V
    .locals 0

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/b4;->R:Ljava/lang/String;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/c4;->T:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/c4;->T:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

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

.method public I(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/b4;->Q:Ljava/lang/String;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/c4;->T:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/c4;->T:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1c

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/b4;->P:Lcom/shabakaty/downloader/ad4;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ad4;->P1()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/c4;->T:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/c4;->T:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/b4;->R:Ljava/lang/String;

    .line 6
    iget-object v5, p0, Lcom/shabakaty/downloader/b4;->Q:Ljava/lang/String;

    const-wide/16 v6, 0x11

    and-long/2addr v6, v0

    cmp-long v8, v6, v2

    const-wide/16 v6, 0x18

    and-long/2addr v6, v0

    cmp-long v9, v6, v2

    const-wide/16 v6, 0x10

    and-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/b4;->M:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/c4;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v9, :cond_1

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/b4;->N:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/fm4;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v8, :cond_2

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/b4;->O:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/fm4;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 10
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/c4;->T:J

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

    const-wide/16 v0, 0x10

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/c4;->T:J

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
