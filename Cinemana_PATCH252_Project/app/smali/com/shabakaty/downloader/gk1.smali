.class public Lcom/shabakaty/downloader/gk1;
.super Lcom/shabakaty/downloader/fk1;
.source "FragmentSearchBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gk1$a;
    }
.end annotation


# static fields
.field public static final b0:Landroidx/databinding/ViewDataBinding$e;

.field public static final c0:Landroid/util/SparseIntArray;


# instance fields
.field public final V:Lcom/shabakaty/downloader/oz2;

.field public final W:Landroid/widget/TextView;

.field public final X:Landroidx/core/widget/NestedScrollView;

.field public final Y:Lcom/shabakaty/downloader/mm0;

.field public Z:Lcom/shabakaty/downloader/gk1$a;

.field public a0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/gk1;->b0:Landroidx/databinding/ViewDataBinding$e;

    const-string v1, "no_search_results_layout"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x8

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v2, v2, [I

    const v4, 0x7f0d00e9

    aput v4, v2, v5

    invoke-virtual {v0, v5, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$e;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gk1;->c0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03e4

    const/16 v2, 0x9

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0220

    const/16 v2, 0xa

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/gk1;->b0:Landroidx/databinding/ViewDataBinding$e;

    sget-object v1, Lcom/shabakaty/downloader/gk1;->c0:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    move-object/from16 v3, p1

    invoke-static {v3, v13, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v14

    const/16 v0, 0xa

    .line 2
    aget-object v0, v14, v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x3

    aget-object v0, v14, v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0x9

    aget-object v0, v14, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x7

    aget-object v0, v14, v0

    move-object v7, v0

    check-cast v7, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    const/4 v0, 0x0

    aget-object v0, v14, v0

    move-object v8, v0

    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v15, 0x1

    aget-object v0, v14, v15

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/SearchView;

    const/4 v0, 0x5

    aget-object v0, v14, v0

    move-object v10, v0

    check-cast v10, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x2

    aget-object v0, v14, v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/tabs/TabLayout;

    const/16 v16, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/downloader/fk1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/appbar/AppBarLayout;Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/appcompat/widget/SearchView;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lcom/shabakaty/downloader/gk1;->a0:J

    const/16 v0, 0x8

    .line 4
    aget-object v0, v14, v0

    check-cast v0, Lcom/shabakaty/downloader/oz2;

    iput-object v0, v12, Lcom/shabakaty/downloader/gk1;->V:Lcom/shabakaty/downloader/oz2;

    if-eqz v0, :cond_0

    .line 5
    iput-object v12, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    :cond_0
    const/4 v0, 0x4

    .line 6
    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v12, Lcom/shabakaty/downloader/gk1;->W:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 8
    aget-object v0, v14, v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, v12, Lcom/shabakaty/downloader/gk1;->X:Landroidx/core/widget/NestedScrollView;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v12, Lcom/shabakaty/downloader/fk1;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v12, Lcom/shabakaty/downloader/fk1;->O:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v12, Lcom/shabakaty/downloader/fk1;->P:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v12, Lcom/shabakaty/downloader/fk1;->Q:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v12, Lcom/shabakaty/downloader/fk1;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v12, Lcom/shabakaty/downloader/fk1;->S:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 16
    invoke-virtual {v13, v0, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v0, v12, v15}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v12, Lcom/shabakaty/downloader/gk1;->Y:Lcom/shabakaty/downloader/mm0;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gk1;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gk1;->V:Lcom/shabakaty/downloader/oz2;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/dz3;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/fk1;->U:Lcom/shabakaty/downloader/dz3;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

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
    iput-object p2, p0, Lcom/shabakaty/downloader/fk1;->T:Lcom/shabakaty/downloader/hz3;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/fk1;->U:Lcom/shabakaty/downloader/dz3;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/dz3;->E0()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 39

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/gk1;->a0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/gk1;->a0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v6, v1, Lcom/shabakaty/downloader/fk1;->U:Lcom/shabakaty/downloader/dz3;

    .line 6
    iget-object v7, v1, Lcom/shabakaty/downloader/fk1;->T:Lcom/shabakaty/downloader/hz3;

    const-wide/16 v8, 0xa0

    and-long/2addr v8, v2

    cmp-long v10, v8, v4

    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    .line 7
    iget-object v8, v1, Lcom/shabakaty/downloader/gk1;->Z:Lcom/shabakaty/downloader/gk1$a;

    if-nez v8, :cond_0

    new-instance v8, Lcom/shabakaty/downloader/gk1$a;

    invoke-direct {v8}, Lcom/shabakaty/downloader/gk1$a;-><init>()V

    iput-object v8, v1, Lcom/shabakaty/downloader/gk1;->Z:Lcom/shabakaty/downloader/gk1$a;

    .line 8
    :cond_0
    iput-object v6, v8, Lcom/shabakaty/downloader/gk1$a;->a:Lcom/shabakaty/downloader/dz3;

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const-wide/16 v9, 0xdf

    and-long/2addr v9, v2

    const-wide/32 v11, 0x800000

    const-wide/16 v15, 0xc0

    const/4 v6, 0x2

    const-wide/16 v17, 0xc4

    const-wide/16 v19, 0x2000

    const-wide/16 v21, 0xc2

    const-wide/16 v23, 0xcc

    const-wide/16 v25, 0xd1

    const-wide/16 v27, 0xcd

    const/4 v14, 0x1

    const/4 v13, 0x0

    cmp-long v32, v9, v4

    if-eqz v32, :cond_16

    const-wide/16 v9, 0xdd

    and-long/2addr v9, v2

    cmp-long v32, v9, v4

    if-eqz v32, :cond_9

    if-eqz v7, :cond_2

    .line 9
    iget-object v9, v7, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 10
    :goto_1
    invoke-virtual {v1, v13, v9}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_3

    .line 11
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/tj;

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_4

    .line 12
    iget-object v9, v9, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-ne v9, v0, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    and-long v32, v2, v25

    cmp-long v10, v32, v4

    if-eqz v10, :cond_7

    if-eqz v9, :cond_6

    or-long v2, v2, v19

    goto :goto_5

    :cond_6
    const-wide/16 v32, 0x1000

    or-long v2, v2, v32

    :cond_7
    :goto_5
    and-long v32, v2, v27

    cmp-long v10, v32, v4

    if-eqz v10, :cond_a

    if-eqz v9, :cond_8

    or-long/2addr v2, v11

    goto :goto_6

    :cond_8
    const-wide/32 v32, 0x400000

    or-long v2, v2, v32

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :cond_a
    :goto_6
    and-long v32, v2, v21

    cmp-long v10, v32, v4

    if-eqz v10, :cond_d

    if-eqz v7, :cond_b

    .line 13
    iget-object v10, v7, Lcom/shabakaty/downloader/hz3;->p:Lcom/shabakaty/downloader/xv2;

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    .line 14
    :goto_7
    invoke-virtual {v1, v14, v10}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_c

    .line 15
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    .line 16
    :goto_8
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->z(Ljava/lang/Integer;)I

    move-result v10

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    :goto_9
    and-long v13, v2, v17

    cmp-long v32, v13, v4

    if-eqz v32, :cond_f

    if-eqz v7, :cond_e

    .line 17
    iget-object v13, v7, Lcom/shabakaty/downloader/hz3;->z:Landroidx/lifecycle/LiveData;

    goto :goto_a

    :cond_e
    const/4 v13, 0x0

    .line 18
    :goto_a
    invoke-virtual {v1, v6, v13}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_10

    .line 19
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/tj;

    goto :goto_b

    :cond_f
    const/4 v13, 0x0

    :cond_10
    const/4 v14, 0x0

    :goto_b
    and-long v32, v2, v15

    cmp-long v34, v32, v4

    if-eqz v34, :cond_11

    if-eqz v7, :cond_11

    .line 20
    iget-object v15, v7, Lcom/shabakaty/downloader/hz3;->q:Ljava/util/List;

    goto :goto_c

    :cond_11
    const/4 v15, 0x0

    :goto_c
    and-long v34, v2, v23

    cmp-long v16, v34, v4

    if-eqz v16, :cond_17

    if-eqz v7, :cond_12

    .line 21
    iget-object v11, v7, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    :goto_d
    const/4 v12, 0x3

    .line 22
    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_13

    .line 23
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_e

    :cond_13
    const/4 v12, 0x0

    :goto_e
    if-eqz v12, :cond_14

    .line 24
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    goto :goto_f

    :cond_14
    const/16 v31, 0x0

    :goto_f
    if-eqz v16, :cond_18

    if-eqz v31, :cond_15

    const-wide/32 v29, 0x8000

    or-long v2, v2, v29

    goto :goto_10

    :cond_15
    const-wide/16 v36, 0x4000

    or-long v2, v2, v36

    goto :goto_10

    :cond_16
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :cond_17
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v31, 0x0

    :cond_18
    :goto_10
    const-wide/32 v36, 0x80a000

    and-long v36, v2, v36

    const/16 v16, 0x8

    cmp-long v38, v36, v4

    if-eqz v38, :cond_27

    const-wide/32 v36, 0x808000

    and-long v36, v2, v36

    cmp-long v38, v36, v4

    if-eqz v38, :cond_1e

    if-eqz v7, :cond_19

    .line 25
    iget-object v13, v7, Lcom/shabakaty/downloader/hz3;->z:Landroidx/lifecycle/LiveData;

    .line 26
    :cond_19
    invoke-virtual {v1, v6, v13}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_1a

    .line 27
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/shabakaty/downloader/tj;

    :cond_1a
    const-wide/32 v29, 0x8000

    and-long v29, v2, v29

    cmp-long v6, v29, v4

    if-eqz v6, :cond_1c

    if-eqz v14, :cond_1b

    .line 28
    iget-object v6, v14, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_11

    :cond_1b
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_1c

    .line 29
    invoke-virtual {v6, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_12

    :cond_1c
    const/4 v6, 0x0

    :goto_12
    const-wide/32 v29, 0x800000

    and-long v29, v29, v2

    cmp-long v13, v29, v4

    if-eqz v13, :cond_1f

    if-eqz v14, :cond_1d

    .line 30
    iget-object v13, v14, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 31
    check-cast v13, Ljava/util/List;

    goto :goto_13

    :cond_1d
    const/4 v13, 0x0

    :goto_13
    if-eqz v13, :cond_1f

    const/4 v13, 0x1

    goto :goto_14

    :cond_1e
    const/4 v6, 0x0

    :cond_1f
    const/4 v13, 0x0

    :goto_14
    and-long v19, v2, v19

    cmp-long v29, v19, v4

    if-eqz v29, :cond_26

    if-eqz v7, :cond_20

    .line 32
    iget-object v4, v7, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    goto :goto_15

    :cond_20
    const/4 v4, 0x0

    :goto_15
    const/4 v5, 0x4

    .line 33
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_21

    .line 34
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/tj;

    goto :goto_16

    :cond_21
    const/4 v4, 0x0

    :goto_16
    if-eqz v4, :cond_22

    .line 35
    iget-object v4, v4, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_17

    :cond_22
    const/4 v4, 0x0

    :goto_17
    if-ne v4, v0, :cond_23

    const/4 v0, 0x1

    goto :goto_18

    :cond_23
    const/4 v0, 0x0

    :goto_18
    if-eqz v29, :cond_25

    if-eqz v0, :cond_24

    const-wide/16 v4, 0x800

    goto :goto_19

    :cond_24
    const-wide/16 v4, 0x400

    :goto_19
    or-long/2addr v2, v4

    :cond_25
    if-eqz v0, :cond_26

    const/16 v0, 0x8

    goto :goto_1a

    :cond_26
    const/4 v0, 0x0

    goto :goto_1a

    :cond_27
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_1a
    and-long v4, v2, v25

    const-wide/16 v19, 0x0

    cmp-long v29, v4, v19

    if-eqz v29, :cond_28

    if-eqz v9, :cond_28

    goto :goto_1b

    :cond_28
    const/4 v0, 0x0

    :goto_1b
    and-long v4, v2, v23

    cmp-long v29, v4, v19

    if-eqz v29, :cond_2d

    if-eqz v31, :cond_29

    goto :goto_1c

    :cond_29
    const/4 v6, 0x0

    :goto_1c
    if-eqz v29, :cond_2b

    if-eqz v6, :cond_2a

    const-wide/32 v4, 0x20000

    goto :goto_1d

    :cond_2a
    const-wide/32 v4, 0x10000

    :goto_1d
    or-long/2addr v2, v4

    :cond_2b
    if-eqz v6, :cond_2c

    goto :goto_1e

    :cond_2c
    const/16 v4, 0x8

    goto :goto_1f

    :cond_2d
    :goto_1e
    const/4 v4, 0x0

    :goto_1f
    and-long v5, v2, v27

    const-wide/32 v19, 0x200000

    const-wide/16 v29, 0x0

    cmp-long v31, v5, v29

    if-eqz v31, :cond_30

    if-eqz v9, :cond_2e

    goto :goto_20

    :cond_2e
    const/4 v13, 0x0

    :goto_20
    if-eqz v31, :cond_31

    if-eqz v13, :cond_2f

    or-long v2, v2, v19

    goto :goto_21

    :cond_2f
    const-wide/32 v5, 0x100000

    or-long/2addr v2, v5

    goto :goto_21

    :cond_30
    const/4 v13, 0x0

    :cond_31
    :goto_21
    and-long v5, v2, v19

    const-wide/32 v29, 0x40000

    const-wide/16 v34, 0x0

    cmp-long v9, v5, v34

    if-eqz v9, :cond_37

    if-eqz v7, :cond_32

    .line 36
    iget-object v11, v7, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    :cond_32
    const/4 v5, 0x3

    .line 37
    invoke-virtual {v1, v5, v11}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_33

    .line 38
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    :cond_33
    if-eqz v12, :cond_34

    .line 39
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    :cond_34
    const/4 v5, 0x0

    :goto_22
    if-eqz v5, :cond_35

    .line 40
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    goto :goto_23

    :cond_35
    const/4 v5, 0x0

    :goto_23
    if-eqz v9, :cond_38

    if-eqz v5, :cond_36

    const-wide/32 v34, 0x80000

    or-long v2, v2, v34

    goto :goto_24

    :cond_36
    or-long v2, v2, v29

    goto :goto_24

    :cond_37
    const/4 v5, 0x0

    :cond_38
    :goto_24
    and-long v29, v2, v29

    const-wide/16 v34, 0x0

    cmp-long v6, v29, v34

    if-eqz v6, :cond_39

    if-nez v12, :cond_39

    const/4 v6, 0x1

    goto :goto_25

    :cond_39
    const/4 v6, 0x0

    :goto_25
    and-long v11, v2, v19

    cmp-long v9, v11, v34

    if-eqz v9, :cond_3a

    if-eqz v5, :cond_3b

    const/4 v6, 0x1

    goto :goto_26

    :cond_3a
    const/4 v6, 0x0

    :cond_3b
    :goto_26
    and-long v11, v2, v27

    cmp-long v5, v11, v34

    if-eqz v5, :cond_40

    if-eqz v13, :cond_3c

    goto :goto_27

    :cond_3c
    const/4 v6, 0x0

    :goto_27
    if-eqz v5, :cond_3e

    if-eqz v6, :cond_3d

    const-wide/16 v11, 0x200

    goto :goto_28

    :cond_3d
    const-wide/16 v11, 0x100

    :goto_28
    or-long/2addr v2, v11

    :cond_3e
    if-eqz v6, :cond_3f

    const/16 v16, 0x0

    :cond_3f
    move/from16 v5, v16

    goto :goto_29

    :cond_40
    const/16 v16, 0x0

    const/4 v5, 0x0

    :goto_29
    const-wide/16 v11, 0x80

    and-long/2addr v11, v2

    const-wide/16 v19, 0x0

    cmp-long v6, v11, v19

    if-eqz v6, :cond_43

    .line 41
    iget-object v6, v1, Lcom/shabakaty/downloader/gk1;->V:Lcom/shabakaty/downloader/oz2;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/oz2;->G(Ljava/lang/Integer;)V

    .line 42
    iget-object v6, v1, Lcom/shabakaty/downloader/gk1;->W:Landroid/widget/TextView;

    const v9, 0x7f120207

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 43
    iget-object v6, v1, Lcom/shabakaty/downloader/fk1;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f120134

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 44
    iget-object v6, v1, Lcom/shabakaty/downloader/fk1;->M:Lcom/google/android/material/button/MaterialButton;

    iget-object v9, v1, Lcom/shabakaty/downloader/gk1;->Y:Lcom/shabakaty/downloader/mm0;

    const/4 v11, 0x0

    invoke-static {v6, v9, v11}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 45
    iget-object v6, v1, Lcom/shabakaty/downloader/fk1;->O:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f120208

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setTitle(Ljava/lang/String;)V

    .line 46
    iget-object v6, v1, Lcom/shabakaty/downloader/fk1;->Q:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f1202ae

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 47
    iget-object v6, v1, Lcom/shabakaty/downloader/fk1;->Q:Landroidx/appcompat/widget/SearchView;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v12, "<this>"

    .line 48
    invoke-static {v6, v12}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {v9, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 50
    invoke-virtual {v6}, Landroidx/appcompat/widget/SearchView;->onActionViewExpanded()V

    .line 51
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_41

    move-object v9, v11

    goto :goto_2a

    :cond_41
    const-string v12, "search"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    :goto_2a
    const-string v12, "null cannot be cast to non-null type android.app.SearchManager"

    invoke-static {v9, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Landroid/app/SearchManager;

    .line 52
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "null cannot be cast to non-null type com.shabakaty.cinemana.ui.home_activity.HomeActivity"

    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    invoke-virtual {v12}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 53
    invoke-virtual {v6}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 54
    :cond_42
    iget-object v6, v1, Lcom/shabakaty/downloader/fk1;->R:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    goto :goto_2b

    :cond_43
    const/4 v11, 0x0

    :goto_2b
    const-wide/16 v12, 0xc0

    and-long/2addr v12, v2

    const-wide/16 v19, 0x0

    cmp-long v6, v12, v19

    if-eqz v6, :cond_4d

    .line 55
    iget-object v6, v1, Lcom/shabakaty/downloader/gk1;->V:Lcom/shabakaty/downloader/oz2;

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/oz2;->H(Lcom/shabakaty/downloader/hz3;)V

    .line 56
    iget-object v6, v1, Lcom/shabakaty/downloader/fk1;->R:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v7, v1, Lcom/shabakaty/downloader/fk1;->S:Lcom/google/android/material/tabs/TabLayout;

    const-string v9, "<this>"

    .line 57
    invoke-static {v6, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v15, :cond_44

    goto :goto_30

    .line 58
    :cond_44
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    const/4 v12, 0x1

    xor-int/2addr v9, v12

    if-eqz v9, :cond_47

    if-nez v7, :cond_45

    goto :goto_2c

    :cond_45
    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v9

    if-nez v9, :cond_46

    const/4 v9, 0x1

    goto :goto_2d

    :cond_46
    :goto_2c
    const/4 v9, 0x0

    :goto_2d
    if-eqz v9, :cond_47

    goto :goto_2e

    :cond_47
    const/4 v12, 0x0

    :goto_2e
    if-eqz v12, :cond_48

    goto :goto_2f

    :cond_48
    move-object v15, v11

    :goto_2f
    if-nez v15, :cond_49

    goto :goto_30

    .line 59
    :cond_49
    invoke-virtual {v6}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v9

    if-nez v9, :cond_4d

    .line 60
    invoke-static {v6}, Lcom/shabakaty/downloader/jl3;->b(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    .line 61
    instance-of v12, v9, Lcom/shabakaty/downloader/yy3;

    if-eqz v12, :cond_4a

    move-object v11, v9

    :cond_4a
    if-nez v11, :cond_4b

    goto :goto_30

    .line 62
    :cond_4b
    check-cast v11, Lcom/shabakaty/downloader/yy3;

    .line 63
    new-instance v9, Lcom/shabakaty/downloader/zy3;

    invoke-direct {v9, v11}, Lcom/shabakaty/downloader/zy3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 64
    invoke-virtual {v6, v9}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    if-nez v7, :cond_4c

    goto :goto_30

    .line 65
    :cond_4c
    new-instance v9, Lcom/google/android/material/tabs/c;

    .line 66
    new-instance v11, Lcom/shabakaty/downloader/y35;

    const/4 v12, 0x0

    invoke-direct {v11, v6, v15, v12}, Lcom/shabakaty/downloader/y35;-><init>(Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;I)V

    .line 67
    invoke-direct {v9, v7, v6, v11}, Lcom/google/android/material/tabs/c;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/c$b;)V

    .line 68
    invoke-virtual {v9}, Lcom/google/android/material/tabs/c;->a()V

    :cond_4d
    :goto_30
    and-long v6, v2, v23

    const-wide/16 v11, 0x0

    cmp-long v9, v6, v11

    if-eqz v9, :cond_4e

    .line 69
    iget-object v6, v1, Lcom/shabakaty/downloader/gk1;->W:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4e
    and-long v6, v2, v27

    cmp-long v4, v6, v11

    if-eqz v4, :cond_4f

    .line 70
    iget-object v4, v1, Lcom/shabakaty/downloader/gk1;->X:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4f
    and-long v4, v2, v21

    cmp-long v6, v4, v11

    if-eqz v6, :cond_50

    .line 71
    iget-object v4, v1, Lcom/shabakaty/downloader/fk1;->M:Lcom/google/android/material/button/MaterialButton;

    sget-object v5, Lcom/shabakaty/downloader/st2;->a:Ljava/util/HashMap;

    const-string v5, "<this>"

    .line 72
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v5, Lcom/shabakaty/downloader/st2;->a:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_50
    and-long v4, v2, v17

    const-wide/16 v6, 0x0

    cmp-long v9, v4, v6

    if-eqz v9, :cond_51

    .line 74
    iget-object v4, v1, Lcom/shabakaty/downloader/fk1;->O:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v4, v14}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setVideos(Lcom/shabakaty/downloader/tj;)V

    :cond_51
    const-wide/16 v4, 0xa0

    and-long/2addr v4, v2

    cmp-long v9, v4, v6

    if-eqz v9, :cond_52

    .line 75
    iget-object v4, v1, Lcom/shabakaty/downloader/fk1;->Q:Landroidx/appcompat/widget/SearchView;

    invoke-static {v4, v8}, Lcom/shabakaty/downloader/st2;->i(Landroidx/appcompat/widget/SearchView;Lcom/shabakaty/downloader/b73;)V

    :cond_52
    and-long v2, v2, v25

    cmp-long v4, v2, v6

    if-eqz v4, :cond_53

    .line 76
    iget-object v2, v1, Lcom/shabakaty/downloader/fk1;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    iget-object v2, v1, Lcom/shabakaty/downloader/fk1;->S:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 78
    :cond_53
    iget-object v0, v1, Lcom/shabakaty/downloader/gk1;->V:Lcom/shabakaty/downloader/oz2;

    .line 79
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 80
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/gk1;->a0:J

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
    iget-object v0, p0, Lcom/shabakaty/downloader/gk1;->V:Lcom/shabakaty/downloader/oz2;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 6
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

    const-wide/16 v0, 0x80

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/gk1;->a0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/gk1;->V:Lcom/shabakaty/downloader/oz2;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 5
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
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

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

    const-wide/16 v2, 0x10

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

    const-wide/16 v2, 0x8

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

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
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_5

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

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

    .line 17
    :cond_8
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_9

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/gk1;->a0:J

    .line 20
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_9
    :goto_4
    return v0
.end method
