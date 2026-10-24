.class public Lcom/shabakaty/downloader/z2;
.super Lcom/shabakaty/downloader/y2;
.source "ActivityHomeBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/i63$a;


# static fields
.field public static final W:Landroid/util/SparseIntArray;


# instance fields
.field public final U:Landroid/view/View$OnClickListener;

.field public V:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/z2;->W:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0405

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0407

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01e2

    const/4 v2, 0x5

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a04c8

    const/4 v2, 0x6

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0204

    const/4 v2, 0x7

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/z2;->W:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/4 v13, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v12, v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v14

    const/4 v0, 0x2

    .line 2
    aget-object v0, v14, v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    const/4 v0, 0x5

    aget-object v0, v14, v0

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/FragmentContainerView;

    const/4 v0, 0x7

    aget-object v0, v14, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v0, 0x3

    aget-object v0, v14, v0

    move-object v7, v0

    check-cast v7, Landroidx/cardview/widget/CardView;

    const/4 v15, 0x1

    aget-object v0, v14, v15

    move-object v8, v0

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x4

    aget-object v0, v14, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, v14, v0

    move-object v10, v0

    check-cast v10, Landroid/view/View;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/y2;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shabakaty/cinemana/ui/home_activity/CastButton;Landroidx/fragment/app/FragmentContainerView;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroidx/cardview/widget/CardView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v11, Lcom/shabakaty/downloader/z2;->V:J

    .line 4
    iget-object v0, v11, Lcom/shabakaty/downloader/y2;->M:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, v14, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v11, Lcom/shabakaty/downloader/y2;->Q:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 8
    invoke-virtual {v12, v0, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/i63;

    invoke-direct {v0, v11, v15}, Lcom/shabakaty/downloader/i63;-><init>(Lcom/shabakaty/downloader/i63$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/z2;->U:Landroid/view/View$OnClickListener;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/z2;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x26

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/zu1;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/y2;->T:Lcom/shabakaty/downloader/zu1;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/z2;->V:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/z2;->V:J

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

.method public final b(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/y2;->T:Lcom/shabakaty/downloader/zu1;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/eu1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/eu1;->A1()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/z2;->V:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/z2;->V:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/y2;->M:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/y2;->N:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->setFragmentContainer(Landroidx/fragment/app/FragmentContainerView;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/y2;->M:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/y2;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->setTouchDetector(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/y2;->Q:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/z2;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 8
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/z2;->V:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/z2;->V:J

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
