.class public Lcom/shabakaty/downloader/vk1;
.super Lcom/shabakaty/downloader/uk1;
.source "FragmentSubscriptionsBindingImpl.java"


# static fields
.field public static final U:Landroid/util/SparseIntArray;


# instance fields
.field public final R:Lcom/shabakaty/cinemana/utils/StatusView;

.field public final S:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public T:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vk1;->U:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0173

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vk1;->U:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    .line 2
    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/uk1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/vk1;->T:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/uk1;->M:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/uk1;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, v0, p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 8
    aget-object p1, v0, p1

    check-cast p1, Lcom/shabakaty/cinemana/utils/StatusView;

    iput-object p1, p0, Lcom/shabakaty/downloader/vk1;->R:Lcom/shabakaty/cinemana/utils/StatusView;

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 10
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/shabakaty/downloader/vk1;->S:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/uk1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 13
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vk1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/wf4;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/uk1;->P:Lcom/shabakaty/downloader/wf4;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/vk1;->T:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/vk1;->T:J

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
    const/16 v0, 0x26

    if-ne v0, p1, :cond_1

    .line 9
    check-cast p2, Lcom/shabakaty/downloader/yf4;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/uk1;->Q:Lcom/shabakaty/downloader/yf4;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/vk1;->T:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/vk1;->T:J

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

.method public i()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/vk1;->T:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/vk1;->T:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/uk1;->P:Lcom/shabakaty/downloader/wf4;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/uk1;->Q:Lcom/shabakaty/downloader/yf4;

    const-wide/16 v7, 0x1b

    and-long/2addr v7, v2

    const-wide/16 v9, 0x1a

    const-wide/16 v11, 0x19

    const/4 v13, 0x0

    cmp-long v14, v7, v4

    if-eqz v14, :cond_f

    and-long v7, v2, v11

    const/4 v14, 0x1

    cmp-long v15, v7, v4

    if-eqz v15, :cond_6

    if-eqz v6, :cond_0

    .line 7
    iget-object v7, v6, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 8
    :goto_0
    invoke-virtual {v1, v13, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/tj$a;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 10
    :goto_1
    sget-object v8, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    if-ne v7, v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v15, :cond_4

    if-eqz v8, :cond_3

    const-wide/16 v15, 0x100

    goto :goto_3

    :cond_3
    const-wide/16 v15, 0x80

    :goto_3
    or-long/2addr v2, v15

    :cond_4
    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/16 v8, 0x8

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x0

    :goto_5
    and-long/2addr v9, v2

    cmp-long v13, v9, v4

    if-eqz v13, :cond_e

    if-eqz v6, :cond_7

    .line 11
    iget-object v6, v6, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    .line 12
    :goto_6
    invoke-virtual {v1, v14, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_8

    .line 13
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/tj;

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_9

    .line 14
    iget-object v9, v6, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 15
    iget-object v6, v6, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 16
    check-cast v6, Ljava/util/List;

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_a

    .line 17
    sget-object v10, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {v9, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :goto_9
    if-eqz v13, :cond_c

    if-eqz v9, :cond_b

    const-wide/16 v13, 0x40

    goto :goto_a

    :cond_b
    const-wide/16 v13, 0x20

    :goto_a
    or-long/2addr v2, v13

    :cond_c
    if-eqz v9, :cond_d

    goto :goto_b

    :cond_d
    const/16 v9, 0x8

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_b
    const/4 v9, 0x0

    goto :goto_c

    :cond_f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_c
    const-wide/16 v13, 0x10

    and-long/2addr v13, v2

    cmp-long v10, v13, v4

    if-eqz v10, :cond_10

    .line 18
    iget-object v10, v1, Lcom/shabakaty/downloader/uk1;->M:Landroid/widget/TextView;

    const v13, 0x7f120269

    invoke-static {v10, v13, v10}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 19
    iget-object v10, v1, Lcom/shabakaty/downloader/uk1;->N:Landroid/widget/TextView;

    const v13, 0x7f1201dc

    invoke-static {v10, v13, v10}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 20
    iget-object v10, v1, Lcom/shabakaty/downloader/uk1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f12026a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_10
    const-wide/16 v13, 0x14

    and-long/2addr v13, v2

    cmp-long v10, v13, v4

    if-eqz v10, :cond_11

    .line 21
    iget-object v10, v1, Lcom/shabakaty/downloader/vk1;->R:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v10, v0}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    :cond_11
    and-long v10, v2, v11

    cmp-long v0, v10, v4

    if-eqz v0, :cond_12

    .line 22
    iget-object v0, v1, Lcom/shabakaty/downloader/vk1;->R:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v7}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    .line 23
    iget-object v0, v1, Lcom/shabakaty/downloader/uk1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_12
    const-wide/16 v7, 0x1a

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_13

    .line 24
    iget-object v0, v1, Lcom/shabakaty/downloader/vk1;->S:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 25
    iget-object v0, v1, Lcom/shabakaty/downloader/uk1;->O:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v6, v2, v2}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    :cond_13
    return-void

    :catchall_0
    move-exception v0

    .line 26
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/vk1;->T:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/vk1;->T:J

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
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/vk1;->T:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/vk1;->T:J

    .line 4
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return v0

    .line 5
    :cond_2
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_3

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/vk1;->T:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/vk1;->T:J

    .line 8
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    :goto_1
    return v0
.end method
