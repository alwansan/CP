.class public Lcom/shabakaty/downloader/ok1;
.super Lcom/shabakaty/downloader/nk1;
.source "FragmentStaffInfoBindingImpl.java"


# static fields
.field public static final a0:Landroidx/databinding/ViewDataBinding$e;

.field public static final b0:Landroid/util/SparseIntArray;


# instance fields
.field public final Y:Lcom/shabakaty/cinemana/utils/StatusView;

.field public Z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ok1;->a0:Landroidx/databinding/ViewDataBinding$e;

    const-string v1, "videos_layout"

    .line 2
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$e;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ok1;->b0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0455

    const/16 v2, 0x9

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a005d

    const/16 v2, 0xa

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a045a

    const/16 v2, 0xb

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7f0d0123
        0x7f0d0123
    .end array-data
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ok1;->a0:Landroidx/databinding/ViewDataBinding$e;

    sget-object v1, Lcom/shabakaty/downloader/ok1;->b0:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    move-object/from16 v3, p1

    invoke-static {v3, v14, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v16

    const/16 v0, 0xa

    .line 2
    aget-object v0, v16, v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/4 v0, 0x5

    aget-object v0, v16, v0

    move-object v5, v0

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x6

    aget-object v0, v16, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    aget-object v0, v16, v0

    move-object v7, v0

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/16 v0, 0x9

    aget-object v0, v16, v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x3

    aget-object v0, v16, v0

    move-object v9, v0

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x2

    aget-object v0, v16, v0

    move-object v10, v0

    check-cast v10, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x7

    aget-object v0, v16, v0

    move-object v11, v0

    check-cast v11, Lcom/shabakaty/downloader/a35;

    const/4 v0, 0x4

    aget-object v0, v16, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, v16, v0

    move-object v13, v0

    check-cast v13, Landroidx/appcompat/widget/Toolbar;

    const/16 v0, 0x8

    aget-object v0, v16, v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/shabakaty/downloader/a35;

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lcom/shabakaty/downloader/nk1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/CollapsingToolbarLayout;Landroidx/core/widget/NestedScrollView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/downloader/a35;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Lcom/shabakaty/downloader/a35;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v15, Lcom/shabakaty/downloader/ok1;->Z:J

    .line 4
    iget-object v0, v15, Lcom/shabakaty/downloader/nk1;->M:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v15, Lcom/shabakaty/downloader/nk1;->N:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v15, Lcom/shabakaty/downloader/nk1;->O:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    aget-object v0, v16, v0

    check-cast v0, Lcom/shabakaty/cinemana/utils/StatusView;

    iput-object v0, v15, Lcom/shabakaty/downloader/ok1;->Y:Lcom/shabakaty/cinemana/utils/StatusView;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v15, Lcom/shabakaty/downloader/nk1;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v15, Lcom/shabakaty/downloader/nk1;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v15, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    if-eqz v0, :cond_0

    .line 12
    iput-object v15, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 13
    :cond_0
    iget-object v0, v15, Lcom/shabakaty/downloader/nk1;->T:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v15, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    if-eqz v0, :cond_1

    .line 15
    iput-object v15, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    :cond_1
    const v0, 0x7f0a0128

    move-object/from16 v1, p2

    .line 16
    invoke-virtual {v1, v0, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ok1;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/ib4;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/nk1;->X:Lcom/shabakaty/downloader/ib4;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

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
    check-cast p2, Lcom/shabakaty/downloader/mb4;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/nk1;->W:Lcom/shabakaty/downloader/mb4;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

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
    .locals 18

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/ok1;->Z:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/ok1;->Z:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->X:Lcom/shabakaty/downloader/ib4;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/nk1;->W:Lcom/shabakaty/downloader/mb4;

    const-wide/16 v7, 0x65

    and-long/2addr v7, v2

    const-wide/16 v9, 0x64

    const-wide/16 v11, 0x61

    const-wide/16 v13, 0x60

    const/4 v15, 0x0

    cmp-long v16, v7, v4

    if-eqz v16, :cond_d

    and-long v7, v2, v11

    cmp-long v11, v7, v4

    if-eqz v11, :cond_1

    if-eqz v6, :cond_0

    .line 7
    iget-object v7, v6, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 8
    :goto_0
    invoke-virtual {v1, v15, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/tj$a;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-long v11, v2, v13

    cmp-long v8, v11, v4

    if-eqz v8, :cond_4

    if-eqz v6, :cond_2

    .line 10
    iget-object v8, v6, Lcom/shabakaty/downloader/mb4;->j:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v8}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/ob4;

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    .line 11
    iget-object v8, v8, Lcom/shabakaty/downloader/ob4;->r:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const-string v11, "_img"

    .line 12
    invoke-static {v8, v11}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "_name"

    .line 13
    invoke-static {v8, v12}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_4
    and-long v12, v2, v9

    cmp-long v14, v12, v4

    if-eqz v14, :cond_e

    if-eqz v6, :cond_5

    .line 14
    iget-object v6, v6, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    const/4 v12, 0x2

    .line 15
    invoke-virtual {v1, v12, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_6

    .line 16
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/tj;

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_7

    .line 17
    iget-object v12, v6, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 18
    iget-object v6, v6, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 19
    check-cast v6, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 20
    :goto_7
    sget-object v13, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    if-ne v12, v13, :cond_8

    const/4 v12, 0x1

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    if-eqz v14, :cond_a

    if-eqz v12, :cond_9

    const-wide/16 v13, 0x100

    goto :goto_9

    :cond_9
    const-wide/16 v13, 0x80

    :goto_9
    or-long/2addr v2, v13

    :cond_a
    if-eqz v6, :cond_b

    .line 21
    iget-object v13, v6, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->imgThumbObjUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {v6}, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->a()Ljava/util/List;

    move-result-object v14

    .line 23
    invoke-virtual {v6}, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->b()Ljava/util/List;

    move-result-object v15

    .line 24
    iget-object v4, v6, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->imgObjUrl:Ljava/lang/String;

    .line 25
    iget-object v5, v6, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->title:Ljava/lang/String;

    goto :goto_a

    :cond_b
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_a
    if-eqz v12, :cond_c

    const/4 v6, 0x0

    goto :goto_b

    :cond_c
    const/16 v6, 0x8

    goto :goto_b

    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :cond_e
    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    :goto_b
    and-long/2addr v9, v2

    const-wide/16 v16, 0x0

    cmp-long v12, v9, v16

    if-eqz v12, :cond_f

    .line 26
    iget-object v9, v1, Lcom/shabakaty/downloader/nk1;->M:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    iget-object v6, v1, Lcom/shabakaty/downloader/nk1;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v9, 0x0

    invoke-static {v6, v4, v9, v9, v13}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 28
    iget-object v6, v1, Lcom/shabakaty/downloader/nk1;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v9, v4}, Lcom/shabakaty/downloader/oy1;->b(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 29
    iget-object v6, v1, Lcom/shabakaty/downloader/nk1;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v10, 0x28

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v4, v9, v10, v13}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 30
    iget-object v4, v1, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v4, v14}, Lcom/shabakaty/downloader/a35;->P(Ljava/util/List;)V

    .line 31
    iget-object v4, v1, Lcom/shabakaty/downloader/nk1;->T:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 32
    iget-object v4, v1, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v4, v15}, Lcom/shabakaty/downloader/a35;->P(Ljava/util/List;)V

    :cond_f
    const-wide/16 v4, 0x50

    and-long/2addr v4, v2

    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-eqz v6, :cond_10

    .line 33
    iget-object v4, v1, Lcom/shabakaty/downloader/ok1;->Y:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v4, v0}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    .line 34
    iget-object v4, v1, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/a35;->J(Lcom/shabakaty/downloader/qk;)V

    .line 35
    iget-object v4, v1, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/a35;->J(Lcom/shabakaty/downloader/qk;)V

    :cond_10
    const-wide/16 v4, 0x61

    and-long/2addr v4, v2

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_11

    .line 36
    iget-object v0, v1, Lcom/shabakaty/downloader/ok1;->Y:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v7}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    :cond_11
    const-wide/16 v4, 0x60

    and-long/2addr v4, v2

    cmp-long v0, v4, v9

    if-eqz v0, :cond_12

    .line 37
    sget v0, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_12

    .line 38
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 39
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->T:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    :cond_12
    const-wide/16 v4, 0x40

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_13

    .line 40
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a35;->I(Ljava/lang/Integer;)V

    .line 41
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    .line 42
    iget-object v2, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1202a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a35;->M(Ljava/lang/String;)V

    .line 44
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a35;->N(Ljava/lang/Boolean;)V

    .line 45
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a35;->I(Ljava/lang/Integer;)V

    .line 46
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    .line 47
    iget-object v2, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1202b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a35;->M(Ljava/lang/String;)V

    .line 49
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a35;->N(Ljava/lang/Boolean;)V

    .line 50
    :cond_13
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    .line 51
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 52
    iget-object v0, v1, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    .line 53
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 3
    monitor-exit p0

    return v4

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
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

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/a35;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    const-wide/16 v2, 0x8

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

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
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_3

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

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

    .line 9
    :cond_4
    check-cast p2, Lcom/shabakaty/downloader/a35;

    if-nez p3, :cond_5

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    .line 12
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_5
    :goto_2
    return v0

    .line 13
    :cond_6
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_7

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ok1;->Z:J

    .line 16
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_7
    :goto_3
    return v0
.end method
