.class public Lcom/shabakaty/downloader/ek1;
.super Lcom/shabakaty/downloader/dk1;
.source "FragmentSearchAllTabBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final X:Landroid/util/SparseIntArray;


# instance fields
.field public final S:Landroidx/constraintlayout/helper/widget/Flow;

.field public final T:Lcom/shabakaty/cinemana/utils/StatusView;

.field public final U:Lcom/shabakaty/downloader/mm0;

.field public final V:Lcom/shabakaty/downloader/mm0;

.field public W:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ek1;->X:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03e0

    const/4 v2, 0x7

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03e2

    const/16 v2, 0x8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ek1;->X:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    .line 2
    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x2

    aget-object v3, v0, v1

    move-object v8, v3

    check-cast v8, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    const/16 v3, 0x8

    aget-object v3, v0, v3

    move-object v9, v3

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    move-object v10, v3

    check-cast v10, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    const/4 v3, 0x5

    aget-object v3, v0, v3

    move-object v12, v3

    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    const/4 v6, 0x4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v12}, Lcom/shabakaty/downloader/dk1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/ek1;->W:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v0, p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 5
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object v3, v0, p1

    check-cast v3, Landroidx/constraintlayout/helper/widget/Flow;

    iput-object v3, p0, Lcom/shabakaty/downloader/ek1;->S:Landroidx/constraintlayout/helper/widget/Flow;

    .line 7
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x6

    .line 8
    aget-object v0, v0, v3

    check-cast v0, Lcom/shabakaty/cinemana/utils/StatusView;

    iput-object v0, p0, Lcom/shabakaty/downloader/ek1;->T:Lcom/shabakaty/cinemana/utils/StatusView;

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/dk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/dk1;->N:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/dk1;->O:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/dk1;->P:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 14
    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 15
    new-instance p2, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ek1;->U:Lcom/shabakaty/downloader/mm0;

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ek1;->V:Lcom/shabakaty/downloader/mm0;

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ek1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/dz3;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/dk1;->Q:Lcom/shabakaty/downloader/dz3;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

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
    check-cast p2, Lcom/shabakaty/downloader/hz3;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/dk1;->R:Lcom/shabakaty/downloader/hz3;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/dk1;->Q:Lcom/shabakaty/downloader/dz3;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 2
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/dz3;->F1(I)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/dk1;->Q:Lcom/shabakaty/downloader/dz3;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/dz3;->F1(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public i()V
    .locals 26

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/ek1;->W:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/ek1;->W:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->Q:Lcom/shabakaty/downloader/dz3;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/dk1;->R:Lcom/shabakaty/downloader/hz3;

    const-wide/16 v7, 0x6f

    and-long/2addr v7, v2

    const-wide/32 v9, 0x20000

    const-wide/16 v11, 0x61

    const-wide/16 v15, 0x64

    const-wide/16 v17, 0x62

    const/4 v13, 0x1

    const/4 v14, 0x0

    cmp-long v21, v7, v4

    if-eqz v21, :cond_10

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
    invoke-virtual {v1, v14, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/tj$a;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-long v11, v2, v17

    cmp-long v8, v11, v4

    if-eqz v8, :cond_6

    if-eqz v6, :cond_2

    .line 10
    iget-object v11, v6, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 11
    :goto_2
    invoke-virtual {v1, v13, v11}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_3

    .line 12
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/tj;

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    if-eqz v8, :cond_7

    if-eqz v12, :cond_5

    const-wide/32 v13, 0x40000

    or-long/2addr v2, v13

    goto :goto_5

    :cond_5
    or-long/2addr v2, v9

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_7
    :goto_5
    and-long v13, v2, v15

    cmp-long v8, v13, v4

    if-eqz v8, :cond_c

    if-eqz v6, :cond_8

    .line 13
    iget-object v13, v6, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    const/4 v14, 0x2

    .line 14
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_9

    .line 15
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/tj;

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    :goto_7
    if-nez v13, :cond_a

    const/4 v14, 0x1

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    :goto_8
    if-eqz v8, :cond_d

    if-eqz v14, :cond_b

    const-wide/32 v21, 0x10000

    or-long v2, v2, v21

    goto :goto_9

    :cond_b
    const-wide/32 v19, 0x8000

    or-long v2, v2, v19

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_d
    :goto_9
    const-wide/16 v21, 0x68

    and-long v21, v2, v21

    cmp-long v8, v21, v4

    if-eqz v8, :cond_f

    if-eqz v6, :cond_e

    .line 16
    iget-object v6, v6, Lcom/shabakaty/downloader/hz3;->B:Landroidx/lifecycle/LiveData;

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    :goto_a
    const/4 v8, 0x3

    .line 17
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_f

    .line 18
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    :goto_b
    const-wide/32 v19, 0x8000

    and-long v19, v2, v19

    cmp-long v8, v19, v4

    if-eqz v8, :cond_12

    if-eqz v13, :cond_11

    .line 19
    iget-object v8, v13, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 20
    check-cast v8, Ljava/util/List;

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    :goto_c
    if-nez v8, :cond_13

    const/16 v19, 0x1

    goto :goto_d

    :cond_12
    const/4 v8, 0x0

    :cond_13
    const/16 v19, 0x0

    :goto_d
    and-long/2addr v9, v2

    cmp-long v20, v9, v4

    if-eqz v20, :cond_15

    if-eqz v11, :cond_14

    .line 21
    iget-object v9, v11, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 22
    check-cast v9, Ljava/util/List;

    goto :goto_e

    :cond_14
    const/4 v9, 0x0

    :goto_e
    if-nez v9, :cond_16

    const/4 v10, 0x1

    goto :goto_f

    :cond_15
    const/4 v9, 0x0

    :cond_16
    const/4 v10, 0x0

    :goto_f
    and-long v20, v2, v15

    const-wide/16 v22, 0x200

    cmp-long v24, v20, v4

    if-eqz v24, :cond_19

    if-eqz v14, :cond_17

    const/16 v19, 0x1

    :cond_17
    if-eqz v24, :cond_1a

    if-eqz v19, :cond_18

    const-wide/16 v20, 0x400

    or-long v2, v2, v20

    goto :goto_10

    :cond_18
    or-long v2, v2, v22

    goto :goto_10

    :cond_19
    const/16 v19, 0x0

    :cond_1a
    :goto_10
    and-long v20, v2, v17

    const-wide/16 v24, 0x800

    cmp-long v14, v20, v4

    if-eqz v14, :cond_1d

    if-eqz v12, :cond_1b

    const/4 v10, 0x1

    :cond_1b
    if-eqz v14, :cond_1e

    if-eqz v10, :cond_1c

    const-wide/16 v20, 0x1000

    or-long v2, v2, v20

    goto :goto_11

    :cond_1c
    or-long v2, v2, v24

    goto :goto_11

    :cond_1d
    const/4 v10, 0x0

    :cond_1e
    :goto_11
    and-long v20, v2, v22

    cmp-long v12, v20, v4

    if-eqz v12, :cond_20

    if-eqz v13, :cond_1f

    .line 23
    iget-object v8, v13, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 24
    check-cast v8, Ljava/util/List;

    :cond_1f
    if-eqz v8, :cond_20

    .line 25
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    goto :goto_12

    :cond_20
    const/4 v8, 0x0

    :goto_12
    and-long v20, v2, v24

    cmp-long v12, v20, v4

    if-eqz v12, :cond_22

    if-eqz v11, :cond_21

    .line 26
    iget-object v9, v11, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 27
    check-cast v9, Ljava/util/List;

    :cond_21
    if-eqz v9, :cond_22

    .line 28
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    goto :goto_13

    :cond_22
    const/4 v9, 0x0

    :goto_13
    and-long v20, v2, v15

    cmp-long v12, v20, v4

    if-eqz v12, :cond_26

    if-eqz v19, :cond_23

    const/4 v8, 0x1

    :cond_23
    if-eqz v12, :cond_25

    if-eqz v8, :cond_24

    const-wide/16 v19, 0x100

    goto :goto_14

    :cond_24
    const-wide/16 v19, 0x80

    :goto_14
    or-long v2, v2, v19

    :cond_25
    if-eqz v8, :cond_26

    const/16 v8, 0x8

    goto :goto_15

    :cond_26
    const/4 v8, 0x0

    :goto_15
    and-long v19, v2, v17

    cmp-long v12, v19, v4

    if-eqz v12, :cond_2a

    if-eqz v10, :cond_27

    const/4 v9, 0x1

    :cond_27
    if-eqz v12, :cond_29

    if-eqz v9, :cond_28

    const-wide/16 v19, 0x4000

    goto :goto_16

    :cond_28
    const-wide/16 v19, 0x2000

    :goto_16
    or-long v2, v2, v19

    :cond_29
    if-eqz v9, :cond_2a

    const/16 v9, 0x8

    goto :goto_17

    :cond_2a
    const/4 v9, 0x0

    :goto_17
    const-wide/16 v19, 0x68

    and-long v19, v2, v19

    cmp-long v10, v19, v4

    if-eqz v10, :cond_2b

    .line 29
    iget-object v10, v1, Lcom/shabakaty/downloader/ek1;->S:Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {v10, v6}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    :cond_2b
    const-wide/16 v19, 0x50

    and-long v19, v2, v19

    cmp-long v6, v19, v4

    if-eqz v6, :cond_2c

    .line 30
    iget-object v6, v1, Lcom/shabakaty/downloader/ek1;->T:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v6, v0}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    :cond_2c
    const-wide/16 v19, 0x61

    and-long v19, v2, v19

    cmp-long v0, v19, v4

    if-eqz v0, :cond_2d

    .line 31
    iget-object v0, v1, Lcom/shabakaty/downloader/ek1;->T:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v7}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    :cond_2d
    const-wide/16 v6, 0x40

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2e

    .line 32
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setItemCount(I)V

    .line 33
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f1202a4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setTitle(Ljava/lang/String;)V

    .line 34
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->N:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setItemCount(I)V

    .line 35
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->N:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1202b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setTitle(Ljava/lang/String;)V

    .line 36
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->O:Lcom/google/android/material/button/MaterialButton;

    const v6, 0x7f12024b

    invoke-static {v0, v6, v0}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 37
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->O:Lcom/google/android/material/button/MaterialButton;

    iget-object v7, v1, Lcom/shabakaty/downloader/ek1;->U:Lcom/shabakaty/downloader/mm0;

    const/4 v10, 0x0

    invoke-static {v0, v7, v10}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 38
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->P:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v6, v0}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 39
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->P:Lcom/google/android/material/button/MaterialButton;

    iget-object v6, v1, Lcom/shabakaty/downloader/ek1;->V:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v6, v10}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_2e
    and-long v6, v2, v17

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2f

    .line 40
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0, v11}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setVideos(Lcom/shabakaty/downloader/tj;)V

    .line 41
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->O:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2f
    and-long/2addr v2, v15

    cmp-long v0, v2, v4

    if-eqz v0, :cond_30

    .line 42
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->N:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0, v13}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setVideos(Lcom/shabakaty/downloader/tj;)V

    .line 43
    iget-object v0, v1, Lcom/shabakaty/downloader/dk1;->P:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_30
    return-void

    :catchall_0
    move-exception v0

    .line 44
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/ek1;->W:J

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

    const-wide/16 v0, 0x40

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/ek1;->W:J

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

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

    const-wide/16 v2, 0x8

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

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
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_5

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ek1;->W:J

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
