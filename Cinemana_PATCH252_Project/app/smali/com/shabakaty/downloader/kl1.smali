.class public Lcom/shabakaty/downloader/kl1;
.super Lcom/shabakaty/downloader/jl1;
.source "FragmentVideoInfoBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final t0:Landroidx/databinding/ViewDataBinding$e;

.field public static final u0:Landroid/util/SparseIntArray;


# instance fields
.field public final j0:Lcom/shabakaty/cinemana/utils/StatusView;

.field public final k0:Landroidx/appcompat/widget/AppCompatImageView;

.field public final l0:Lcom/shabakaty/downloader/mm0;

.field public final m0:Lcom/shabakaty/downloader/mm0;

.field public final n0:Lcom/shabakaty/downloader/mm0;

.field public final o0:Lcom/shabakaty/downloader/mm0;

.field public final p0:Lcom/shabakaty/downloader/mm0;

.field public final q0:Lcom/shabakaty/downloader/mm0;

.field public final r0:Lcom/shabakaty/downloader/mm0;

.field public s0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/kl1;->t0:Landroidx/databinding/ViewDataBinding$e;

    const-string v1, "video_info_top_actions_layout"

    const-string v2, "video_info_seasons_layout"

    const-string v3, "video_info_cast_and_crew_layout"

    const-string v4, "videos_layout"

    .line 2
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$e;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/kl1;->u0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a04ed

    const/16 v2, 0x13

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a04f1

    const/16 v2, 0x14

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0511

    const/16 v2, 0x15

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0517

    const/16 v2, 0x16

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03c9

    const/16 v2, 0x17

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a025a

    const/16 v2, 0x18

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0xf
        0x10
        0x11
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x7f0d0122
        0x7f0d0121
        0x7f0d0120
        0x7f0d0123
    .end array-data
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 29

    move-object/from16 v2, p0

    move-object/from16 v1, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/kl1;->t0:Landroidx/databinding/ViewDataBinding$e;

    sget-object v3, Lcom/shabakaty/downloader/kl1;->u0:Landroid/util/SparseIntArray;

    const/16 v4, 0x19

    move-object/from16 v15, p1

    invoke-static {v15, v1, v4, v0, v3}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v27

    const/4 v0, 0x6

    .line 2
    aget-object v3, v27, v0

    move-object v4, v3

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v3, 0x18

    aget-object v3, v27, v3

    move-object v5, v3

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    aget-object v6, v27, v3

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v7, 0x17

    aget-object v7, v27, v7

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    const/16 v8, 0xd

    aget-object v8, v27, v8

    check-cast v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/16 v9, 0x13

    aget-object v9, v27, v9

    check-cast v9, Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v10, 0x11

    aget-object v10, v27, v10

    check-cast v10, Lcom/shabakaty/downloader/s05;

    const/16 v11, 0x14

    aget-object v11, v27, v11

    check-cast v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/4 v14, 0x7

    aget-object v12, v27, v14

    check-cast v12, Lcom/shabakaty/cinemana/utils/ExpandableTextView;

    const/16 v13, 0x9

    aget-object v13, v27, v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v16, 0xb

    aget-object v16, v27, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v14, v16

    const/16 v16, 0x8

    aget-object v16, v27, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/4 v3, 0x5

    aget-object v16, v27, v3

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v17, v27, v3

    check-cast v17, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v18, 0x15

    aget-object v18, v27, v18

    check-cast v18, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v19, 0x12

    aget-object v19, v27, v19

    check-cast v19, Lcom/shabakaty/downloader/a35;

    const/16 v20, 0x0

    aget-object v20, v27, v20

    check-cast v20, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/16 v21, 0xc

    aget-object v21, v27, v21

    check-cast v21, Lcom/google/android/material/button/MaterialButton;

    const/16 v22, 0xa

    aget-object v22, v27, v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x16

    aget-object v23, v27, v23

    check-cast v23, Landroidx/appcompat/widget/Toolbar;

    const/16 v24, 0xf

    aget-object v24, v27, v24

    check-cast v24, Lcom/shabakaty/downloader/m15;

    const/4 v3, 0x4

    aget-object v25, v27, v3

    check-cast v25, Landroid/widget/TextView;

    const/16 v26, 0x10

    aget-object v26, v27, v26

    check-cast v26, Lcom/shabakaty/downloader/k15;

    const/16 v28, 0xa

    move/from16 v3, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v26}, Lcom/shabakaty/downloader/jl1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/appbar/AppBarLayout;Lcom/shabakaty/downloader/s05;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Lcom/shabakaty/cinemana/utils/ExpandableTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/shabakaty/downloader/a35;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Lcom/shabakaty/downloader/m15;Landroid/widget/TextView;Lcom/shabakaty/downloader/k15;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/jl1;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xe

    .line 5
    aget-object v0, v27, v0

    check-cast v0, Lcom/shabakaty/cinemana/utils/StatusView;

    iput-object v0, v2, Lcom/shabakaty/downloader/kl1;->j0:Lcom/shabakaty/cinemana/utils/StatusView;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 7
    aget-object v3, v27, v0

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v3, v2, Lcom/shabakaty/downloader/kl1;->k0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->N:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->P:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->R:Lcom/shabakaty/downloader/s05;

    if-eqz v3, :cond_0

    .line 12
    iput-object v2, v3, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 13
    :cond_0
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->S:Lcom/shabakaty/cinemana/utils/ExpandableTextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->T:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->U:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->V:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->W:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    if-eqz v3, :cond_1

    .line 20
    iput-object v2, v3, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 21
    :cond_1
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->a0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->b0:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    if-eqz v3, :cond_2

    .line 25
    iput-object v2, v3, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 26
    :cond_2
    iget-object v3, v2, Lcom/shabakaty/downloader/jl1;->f0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 27
    iget-object v1, v2, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    if-eqz v1, :cond_3

    .line 28
    iput-object v2, v1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    :cond_3
    const v1, 0x7f0a0128

    move-object/from16 v3, p2

    .line 29
    invoke-virtual {v3, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 30
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/kl1;->l0:Lcom/shabakaty/downloader/mm0;

    .line 31
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/kl1;->m0:Lcom/shabakaty/downloader/mm0;

    .line 32
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/kl1;->n0:Lcom/shabakaty/downloader/mm0;

    .line 33
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/kl1;->o0:Lcom/shabakaty/downloader/mm0;

    .line 34
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/kl1;->p0:Lcom/shabakaty/downloader/mm0;

    .line 35
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/kl1;->q0:Lcom/shabakaty/downloader/mm0;

    .line 36
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/kl1;->r0:Lcom/shabakaty/downloader/mm0;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/kl1;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->R:Lcom/shabakaty/downloader/s05;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/j15;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/jl1;->i0:Lcom/shabakaty/downloader/j15;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x400

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

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
    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/jl1;->h0:Lcom/shabakaty/downloader/u15;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x800

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

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
    .locals 9

    const/4 p2, 0x0

    const/4 v0, -0x1

    const v1, 0x7f12016c

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_19

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/jl1;->i0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1e

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/j15;->e()V

    goto/16 :goto_19

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/jl1;->i0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1e

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/j15;->n()V

    goto/16 :goto_19

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/jl1;->i0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1e

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/j15;->O()V

    goto/16 :goto_19

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/shabakaty/downloader/jl1;->h0:Lcom/shabakaty/downloader/u15;

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_1e

    .line 8
    iget-object v4, p1, Lcom/shabakaty/downloader/u15;->j:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v4}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u15;->u()Lcom/shabakaty/downloader/lx4;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/lx4;->e:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/lx4$b;

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lx4$b;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lx4$b;->b(I)V

    .line 13
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lx4$b;->g()Lcom/shabakaty/downloader/f74;

    move-result-object p2

    :goto_4
    move-object v4, p2

    goto :goto_a

    .line 14
    :cond_4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lx4$b;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lx4$b;->c(I)V

    .line 16
    :cond_5
    iget-object v0, v1, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 18
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_6

    goto :goto_5

    .line 19
    :cond_6
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 20
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_7

    :goto_5
    move-object v0, p2

    goto :goto_6

    .line 21
    :cond_7
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    :goto_6
    if-nez v0, :cond_8

    goto :goto_7

    .line 22
    :cond_8
    iput-boolean v3, v0, Lcom/shabakaty/downloader/q25;->r:Z

    .line 23
    :goto_7
    iget-object v0, v1, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 24
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 25
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_9

    goto :goto_8

    .line 26
    :cond_9
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 27
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_a

    goto :goto_8

    .line 28
    :cond_a
    iget-object p2, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    :goto_8
    if-nez p2, :cond_b

    goto :goto_9

    .line 29
    :cond_b
    iput-boolean v2, p2, Lcom/shabakaty/downloader/q25;->u:Z

    .line 30
    :goto_9
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/lx4$b;->b(I)V

    .line 31
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lx4$b;->f()Lcom/shabakaty/downloader/f74;

    move-result-object p2

    goto :goto_4

    :goto_a
    if-nez v4, :cond_c

    goto :goto_b

    .line 32
    :cond_c
    new-instance v5, Lcom/shabakaty/downloader/z15;

    invoke-direct {v5, p1}, Lcom/shabakaty/downloader/z15;-><init>(Lcom/shabakaty/downloader/u15;)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    .line 33
    :goto_b
    iget-object p2, p1, Lcom/shabakaty/downloader/u15;->l:Lcom/shabakaty/downloader/p5;

    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/p5;->b(Ljava/lang/String;I)V

    goto/16 :goto_19

    .line 34
    :cond_d
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/j15;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/vj;->q(I)V

    goto/16 :goto_19

    .line 35
    :pswitch_4
    iget-object p1, p0, Lcom/shabakaty/downloader/jl1;->h0:Lcom/shabakaty/downloader/u15;

    if-eqz p1, :cond_e

    const/4 v4, 0x1

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_1e

    .line 36
    iget-object v4, p1, Lcom/shabakaty/downloader/u15;->j:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v4}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 37
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u15;->u()Lcom/shabakaty/downloader/lx4;

    move-result-object v1

    .line 38
    iget-object v1, v1, Lcom/shabakaty/downloader/lx4;->e:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/lx4$b;

    .line 39
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lx4$b;->e()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 40
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lx4$b;->c(I)V

    .line 41
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lx4$b;->g()Lcom/shabakaty/downloader/f74;

    move-result-object p2

    :goto_d
    move-object v3, p2

    goto :goto_13

    .line 42
    :cond_f
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lx4$b;->d()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 43
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lx4$b;->b(I)V

    .line 44
    :cond_10
    iget-object v0, v1, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 45
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 46
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_11

    goto :goto_e

    .line 47
    :cond_11
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 48
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_12

    :goto_e
    move-object v0, p2

    goto :goto_f

    .line 49
    :cond_12
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    :goto_f
    if-nez v0, :cond_13

    goto :goto_10

    .line 50
    :cond_13
    iput-boolean v2, v0, Lcom/shabakaty/downloader/q25;->r:Z

    .line 51
    :goto_10
    iget-object v0, v1, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 52
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 53
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_14

    goto :goto_11

    .line 54
    :cond_14
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 55
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_15

    goto :goto_11

    .line 56
    :cond_15
    iget-object p2, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    :goto_11
    if-nez p2, :cond_16

    goto :goto_12

    .line 57
    :cond_16
    iput-boolean v3, p2, Lcom/shabakaty/downloader/q25;->u:Z

    .line 58
    :goto_12
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/lx4$b;->c(I)V

    .line 59
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lx4$b;->f()Lcom/shabakaty/downloader/f74;

    move-result-object p2

    goto :goto_d

    :goto_13
    if-nez v3, :cond_17

    goto :goto_14

    .line 60
    :cond_17
    new-instance v4, Lcom/shabakaty/downloader/a25;

    invoke-direct {v4, p1}, Lcom/shabakaty/downloader/a25;-><init>(Lcom/shabakaty/downloader/u15;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    .line 61
    :goto_14
    iget-object p2, p1, Lcom/shabakaty/downloader/u15;->l:Lcom/shabakaty/downloader/p5;

    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/p5;->b(Ljava/lang/String;I)V

    goto/16 :goto_19

    .line 62
    :cond_18
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/j15;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/vj;->q(I)V

    goto :goto_19

    .line 63
    :pswitch_5
    iget-object p1, p0, Lcom/shabakaty/downloader/jl1;->i0:Lcom/shabakaty/downloader/j15;

    if-eqz p1, :cond_19

    goto :goto_15

    :cond_19
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_1e

    .line 64
    invoke-interface {p1}, Lcom/shabakaty/downloader/j15;->r1()V

    goto :goto_19

    .line 65
    :pswitch_6
    iget-object p1, p0, Lcom/shabakaty/downloader/jl1;->h0:Lcom/shabakaty/downloader/u15;

    if-eqz p1, :cond_1a

    const/4 p2, 0x1

    goto :goto_16

    :cond_1a
    const/4 p2, 0x0

    :goto_16
    if-eqz p2, :cond_1e

    .line 66
    iget-object p2, p1, Lcom/shabakaty/downloader/u15;->j:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 67
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u15;->u()Lcom/shabakaty/downloader/lx4;

    move-result-object p2

    .line 68
    iget-object p2, p2, Lcom/shabakaty/downloader/lx4;->d:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p2}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/lx4$a;

    .line 69
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lx4$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 70
    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/lx4$a;->c(Z)V

    .line 71
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lx4$a;->b()Lcom/shabakaty/downloader/f74;

    move-result-object p2

    goto :goto_17

    .line 72
    :cond_1b
    invoke-virtual {p2, v2}, Lcom/shabakaty/downloader/lx4$a;->c(Z)V

    .line 73
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lx4$a;->b()Lcom/shabakaty/downloader/f74;

    move-result-object p2

    :goto_17
    move-object v4, p2

    if-nez v4, :cond_1c

    goto :goto_18

    .line 74
    :cond_1c
    new-instance v5, Lcom/shabakaty/downloader/x15;

    invoke-direct {v5, p1}, Lcom/shabakaty/downloader/x15;-><init>(Lcom/shabakaty/downloader/u15;)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    .line 75
    :goto_18
    iget-object p2, p1, Lcom/shabakaty/downloader/u15;->l:Lcom/shabakaty/downloader/p5;

    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/p5;->b(Ljava/lang/String;I)V

    goto :goto_19

    .line 76
    :cond_1d
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/j15;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/vj;->q(I)V

    :cond_1e
    :goto_19
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()V
    .locals 71

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v6, v1, Lcom/shabakaty/downloader/jl1;->i0:Lcom/shabakaty/downloader/j15;

    .line 6
    iget-object v7, v1, Lcom/shabakaty/downloader/jl1;->h0:Lcom/shabakaty/downloader/u15;

    const-wide/16 v8, 0x19b9

    and-long/2addr v8, v2

    const-wide/16 v16, 0x1881

    const-wide/16 v18, 0x1880

    const-wide/16 v20, 0x1808

    const-wide/16 v22, 0x1801

    const-wide/16 v24, 0x1900

    const-wide/16 v26, 0x1800

    const-wide/high16 v28, 0x1000000000000L

    const-wide/16 v30, 0x1820

    const/4 v10, 0x0

    cmp-long v11, v8, v4

    if-eqz v11, :cond_4e

    const-wide/16 v8, 0x1891

    and-long/2addr v8, v2

    cmp-long v11, v8, v4

    if-eqz v11, :cond_2e

    if-eqz v7, :cond_0

    .line 7
    iget-object v8, v7, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 8
    :goto_0
    invoke-virtual {v1, v10, v8}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_1

    .line 9
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/tj;

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    and-long v10, v2, v22

    cmp-long v34, v10, v4

    if-eqz v34, :cond_7

    if-eqz v9, :cond_2

    .line 10
    iget-object v10, v9, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 11
    iget-object v11, v9, Lcom/shabakaty/downloader/tj;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ne v10, v0, :cond_3

    const/16 v35, 0x1

    goto :goto_3

    :cond_3
    const/16 v35, 0x0

    :goto_3
    if-eqz v34, :cond_5

    if-eqz v35, :cond_4

    const-wide v36, 0x100000000L

    goto :goto_4

    :cond_4
    const-wide v36, 0x80000000L

    :goto_4
    or-long v2, v2, v36

    :cond_5
    if-eqz v35, :cond_6

    goto :goto_5

    :cond_6
    const/16 v34, 0x8

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    const/4 v10, 0x0

    :goto_5
    const/16 v34, 0x0

    :goto_6
    if-eqz v9, :cond_8

    .line 12
    iget-object v9, v9, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 13
    check-cast v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    and-long v35, v2, v22

    cmp-long v37, v35, v4

    if-eqz v37, :cond_1e

    if-eqz v9, :cond_9

    .line 14
    iget-object v4, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    .line 15
    iget-object v5, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 16
    iget-object v14, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoLikesNumber:Ljava/lang/String;

    .line 17
    iget-object v15, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoDisLikesNumber:Ljava/lang/String;

    .line 18
    iget-object v12, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enContent:Ljava/lang/String;

    .line 19
    iget-object v13, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arContent:Ljava/lang/String;

    move-object/from16 v40, v4

    .line 20
    iget-boolean v4, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->showComments:Z

    move/from16 v41, v4

    .line 21
    iget-object v4, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->trailer:Ljava/lang/String;

    move-object/from16 v42, v4

    .line 22
    iget-object v4, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgObjUrl:Ljava/lang/String;

    move-object/from16 v43, v4

    .line 23
    iget-object v4, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->parentSkipping:Ljava/lang/String;

    move-object/from16 v69, v5

    move-object v5, v4

    move/from16 v4, v41

    move-object/from16 v41, v15

    move-object v15, v14

    move-object v14, v13

    move-object/from16 v13, v69

    move-object/from16 v70, v40

    move-object/from16 v40, v12

    move-object/from16 v12, v70

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v41, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v5

    move-object v5, v4

    const/4 v4, 0x0

    :goto_8
    if-eqz v37, :cond_b

    if-eqz v4, :cond_a

    const-wide/32 v44, 0x40000000

    goto :goto_9

    :cond_a
    const-wide/32 v44, 0x20000000

    :goto_9
    or-long v2, v2, v44

    :cond_b
    if-eqz v12, :cond_c

    move-object/from16 v37, v5

    .line 24
    iget-boolean v5, v12, Lcom/shabakaty/downloader/q25;->r:Z

    move/from16 v44, v5

    .line 25
    iget-boolean v5, v12, Lcom/shabakaty/downloader/q25;->u:Z

    .line 26
    iget-boolean v12, v12, Lcom/shabakaty/downloader/q25;->v:Z

    move/from16 v69, v12

    move v12, v5

    move/from16 v5, v44

    move/from16 v44, v69

    goto :goto_a

    :cond_c
    move-object/from16 v37, v5

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/16 v44, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/16 v44, 0x0

    :goto_a
    and-long v45, v2, v22

    const-wide/16 v47, 0x0

    cmp-long v49, v45, v47

    if-eqz v49, :cond_e

    if-eqz v5, :cond_d

    const-wide v45, 0x4000000000L

    or-long v2, v2, v45

    goto :goto_b

    :cond_d
    const-wide v38, 0x2000000000L

    or-long v2, v2, v38

    :cond_e
    :goto_b
    and-long v45, v2, v22

    cmp-long v49, v45, v47

    if-eqz v49, :cond_10

    if-eqz v12, :cond_f

    const-wide/32 v45, 0x40000

    goto :goto_c

    :cond_f
    const-wide/32 v45, 0x20000

    :goto_c
    or-long v2, v2, v45

    :cond_10
    and-long v45, v2, v22

    cmp-long v49, v45, v47

    if-eqz v49, :cond_12

    if-eqz v44, :cond_11

    const-wide/32 v45, 0x400000

    or-long v2, v2, v45

    const-wide v45, 0x10000000000L

    goto :goto_d

    :cond_11
    const-wide/32 v45, 0x200000

    or-long v2, v2, v45

    const-wide v45, 0x8000000000L

    :goto_d
    or-long v2, v2, v45

    :cond_12
    if-eqz v40, :cond_13

    .line 27
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->isEmpty()Z

    move-result v45

    goto :goto_e

    :cond_13
    const/16 v45, 0x0

    :goto_e
    and-long v46, v2, v22

    const-wide/16 v48, 0x0

    cmp-long v50, v46, v48

    if-eqz v50, :cond_15

    if-eqz v45, :cond_14

    const-wide/32 v46, 0x1000000

    goto :goto_f

    :cond_14
    const-wide/32 v46, 0x800000

    :goto_f
    or-long v2, v2, v46

    :cond_15
    if-eqz v4, :cond_16

    const/4 v4, 0x0

    goto :goto_10

    :cond_16
    const/16 v4, 0x8

    :goto_10
    if-eqz v42, :cond_17

    .line 28
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->isEmpty()Z

    move-result v42

    goto :goto_11

    :cond_17
    const/16 v42, 0x0

    :goto_11
    and-long v46, v2, v22

    const-wide/16 v48, 0x0

    cmp-long v50, v46, v48

    if-eqz v50, :cond_19

    if-eqz v42, :cond_18

    const-wide/32 v46, 0x100000

    goto :goto_12

    :cond_18
    const-wide/32 v46, 0x80000

    :goto_12
    or-long v2, v2, v46

    :cond_19
    move-wide/from16 v46, v2

    .line 29
    iget-object v2, v1, Lcom/shabakaty/downloader/kl1;->k0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v44, :cond_1a

    const v3, 0x7f12020e

    goto :goto_13

    :cond_1a
    const v3, 0x7f12001e

    :goto_13
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    iget-object v3, v1, Lcom/shabakaty/downloader/kl1;->k0:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v44, :cond_1b

    const v44, 0x7f06005f

    move-object/from16 v48, v2

    const v2, 0x7f06005f

    goto :goto_14

    :cond_1b
    const v44, 0x7f060128

    move-object/from16 v48, v2

    const v2, 0x7f060128

    :goto_14
    invoke-static {v3, v2}, Landroidx/databinding/ViewDataBinding;->l(Landroid/view/View;I)I

    move-result v2

    if-eqz v45, :cond_1c

    const/16 v3, 0x8

    goto :goto_15

    :cond_1c
    const/4 v3, 0x0

    :goto_15
    if-eqz v42, :cond_1d

    const/16 v42, 0x8

    goto :goto_16

    :cond_1d
    const/16 v42, 0x0

    :goto_16
    move/from16 v44, v5

    move-object/from16 v5, v37

    move/from16 v37, v3

    move v3, v2

    move-object/from16 v2, v48

    goto :goto_17

    :cond_1e
    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v41, 0x0

    const/4 v5, 0x0

    const/16 v40, 0x0

    const/16 v37, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-wide/from16 v46, v2

    move-object v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    if-eqz v9, :cond_1f

    .line 31
    iget-object v9, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    goto :goto_18

    :cond_1f
    const/4 v9, 0x0

    :goto_18
    if-eqz v9, :cond_20

    move-object/from16 v45, v2

    const-string v2, "2"

    .line 32
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_19

    :cond_20
    move-object/from16 v45, v2

    const/4 v2, 0x0

    :goto_19
    and-long v48, v46, v22

    const-wide/16 v50, 0x0

    cmp-long v52, v48, v50

    if-eqz v52, :cond_22

    if-eqz v2, :cond_21

    const-wide/32 v48, 0x4000000

    goto :goto_1a

    :cond_21
    const-wide/32 v48, 0x2000000

    :goto_1a
    or-long v46, v46, v48

    :cond_22
    and-long v48, v46, v16

    cmp-long v52, v48, v50

    if-eqz v52, :cond_24

    if-eqz v2, :cond_23

    or-long v46, v46, v28

    goto :goto_1b

    :cond_23
    const-wide v48, 0x800000000000L

    or-long v46, v46, v48

    :cond_24
    :goto_1b
    const-wide/16 v35, 0x1811

    and-long v48, v46, v35

    cmp-long v52, v48, v50

    if-eqz v52, :cond_26

    if-eqz v2, :cond_25

    const-wide/high16 v32, 0x4000000000000L

    or-long v46, v46, v32

    goto :goto_1c

    :cond_25
    const-wide/high16 v48, 0x2000000000000L

    or-long v46, v46, v48

    :cond_26
    :goto_1c
    and-long v48, v46, v22

    cmp-long v52, v48, v50

    if-eqz v52, :cond_28

    if-eqz v2, :cond_27

    goto :goto_1d

    :cond_27
    const/16 v48, 0x8

    goto :goto_1e

    :cond_28
    :goto_1d
    const/16 v48, 0x0

    :goto_1e
    if-eqz v52, :cond_2d

    if-eqz v9, :cond_29

    move/from16 v49, v2

    const-string v2, "1"

    .line 33
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1f

    :cond_29
    move/from16 v49, v2

    const/4 v2, 0x0

    :goto_1f
    if-eqz v52, :cond_2b

    if-eqz v2, :cond_2a

    const-wide/32 v50, 0x10000

    goto :goto_20

    :cond_2a
    const-wide/32 v50, 0x8000

    :goto_20
    or-long v46, v46, v50

    :cond_2b
    if-eqz v2, :cond_2c

    const/4 v2, 0x6

    move v9, v4

    const/4 v4, 0x6

    goto :goto_21

    :cond_2c
    const/4 v2, 0x4

    move v9, v4

    const/4 v4, 0x4

    goto :goto_21

    :cond_2d
    move/from16 v49, v2

    const/4 v2, 0x0

    move v9, v4

    const/4 v4, 0x0

    :goto_21
    move-object/from16 v69, v5

    move v5, v3

    move-wide/from16 v2, v46

    move/from16 v46, v44

    move-object/from16 v44, v43

    move/from16 v43, v42

    move-object/from16 v42, v41

    move-object/from16 v41, v40

    move/from16 v40, v37

    move/from16 v37, v34

    move-object/from16 v34, v15

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v8

    move-object/from16 v8, v69

    goto :goto_22

    :cond_2e
    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v41, 0x0

    const/16 v34, 0x0

    const/4 v5, 0x0

    const/16 v40, 0x0

    const/16 v37, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/4 v9, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v47, 0x0

    move-object v12, v11

    move-object/from16 v34, v15

    move-object/from16 v42, v41

    move-object/from16 v44, v43

    move-object/from16 v45, v46

    const/16 v37, 0x0

    const/16 v43, 0x0

    const/16 v46, 0x0

    const/16 v49, 0x0

    move-object v11, v10

    move-object v15, v14

    move-object/from16 v41, v40

    const/16 v40, 0x0

    move-object v10, v8

    move-object v14, v13

    const/4 v13, 0x0

    move-object v8, v5

    const/4 v5, 0x0

    :goto_22
    and-long v50, v2, v20

    const-wide/16 v52, 0x0

    cmp-long v47, v50, v52

    if-eqz v47, :cond_35

    if-eqz v7, :cond_2f

    move/from16 v50, v4

    .line 34
    iget-object v4, v7, Lcom/shabakaty/downloader/u15;->w:Lcom/shabakaty/downloader/xv2;

    goto :goto_23

    :cond_2f
    move/from16 v50, v4

    const/4 v4, 0x0

    :goto_23
    move/from16 v51, v5

    const/4 v5, 0x3

    .line 35
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_30

    .line 36
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/hd0;

    goto :goto_24

    :cond_30
    const/4 v4, 0x0

    :goto_24
    if-eqz v4, :cond_31

    .line 37
    iget-object v4, v4, Lcom/shabakaty/downloader/hd0;->a:Ljava/lang/String;

    goto :goto_25

    :cond_31
    const/4 v4, 0x0

    :goto_25
    if-eqz v4, :cond_32

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_26

    :cond_32
    const/4 v5, 0x0

    :goto_26
    if-eqz v5, :cond_33

    .line 39
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    goto :goto_27

    :cond_33
    const/4 v5, 0x0

    :goto_27
    if-eqz v47, :cond_36

    if-eqz v5, :cond_34

    const-wide/32 v52, 0x10000000

    goto :goto_28

    :cond_34
    const-wide/32 v52, 0x8000000

    :goto_28
    or-long v2, v2, v52

    goto :goto_29

    :cond_35
    move/from16 v50, v4

    move/from16 v51, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_36
    :goto_29
    const-wide/16 v52, 0x1810

    and-long v52, v2, v52

    const-wide/16 v54, 0x0

    cmp-long v47, v52, v54

    if-eqz v47, :cond_39

    if-eqz v7, :cond_37

    move-object/from16 v47, v4

    .line 40
    iget-object v4, v7, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    const/16 v52, 0x4

    goto :goto_2a

    :cond_37
    move-object/from16 v47, v4

    const/16 v52, 0x4

    const/4 v4, 0x0

    :goto_2a
    move/from16 v52, v5

    const/4 v5, 0x4

    .line 41
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_38

    .line 42
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/tj;

    goto :goto_2b

    :cond_38
    const/4 v5, 0x0

    goto :goto_2b

    :cond_39
    move-object/from16 v47, v4

    move/from16 v52, v5

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_2b
    and-long v53, v2, v30

    const-wide/16 v55, 0x0

    cmp-long v57, v53, v55

    if-eqz v57, :cond_3b

    if-eqz v7, :cond_3a

    move-object/from16 v53, v4

    .line 43
    iget-object v4, v7, Lcom/shabakaty/downloader/u15;->x:Lcom/shabakaty/downloader/u43;

    goto :goto_2c

    :cond_3a
    move-object/from16 v53, v4

    const/4 v4, 0x0

    :goto_2c
    move-object/from16 v54, v5

    const/4 v5, 0x5

    move-object/from16 v55, v8

    .line 44
    sget-object v8, Landroidx/databinding/ViewDataBinding;->I:Lcom/shabakaty/downloader/og0;

    invoke-virtual {v1, v5, v4, v8}, Landroidx/databinding/ViewDataBinding;->F(ILjava/lang/Object;Lcom/shabakaty/downloader/og0;)Z

    if-eqz v4, :cond_3c

    .line 45
    iget-boolean v4, v4, Lcom/shabakaty/downloader/u43;->s:Z

    goto :goto_2d

    :cond_3b
    move-object/from16 v53, v4

    move-object/from16 v54, v5

    move-object/from16 v55, v8

    :cond_3c
    const/4 v4, 0x0

    :goto_2d
    and-long v56, v2, v26

    const-wide/16 v58, 0x0

    cmp-long v5, v56, v58

    if-eqz v5, :cond_3e

    if-eqz v7, :cond_3d

    .line 46
    invoke-virtual {v7}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v5

    goto :goto_2e

    :cond_3d
    const/4 v5, 0x0

    :goto_2e
    if-eqz v5, :cond_3e

    .line 47
    iget-object v5, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    goto :goto_2f

    :cond_3e
    const/4 v5, 0x0

    :goto_2f
    and-long v56, v2, v18

    const-wide/16 v58, 0x0

    cmp-long v8, v56, v58

    if-eqz v8, :cond_49

    if-eqz v7, :cond_3f

    move/from16 v56, v4

    .line 48
    iget-object v4, v7, Lcom/shabakaty/downloader/u15;->y:Lcom/shabakaty/downloader/mj;

    goto :goto_30

    :cond_3f
    move/from16 v56, v4

    const/4 v4, 0x0

    :goto_30
    move-object/from16 v57, v5

    const/4 v5, 0x7

    .line 49
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_40

    .line 50
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/tj;

    goto :goto_31

    :cond_40
    const/4 v5, 0x0

    :goto_31
    if-eqz v5, :cond_41

    move-object/from16 v58, v4

    .line 51
    iget-object v4, v5, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 52
    check-cast v4, Ljava/lang/Boolean;

    goto :goto_32

    :cond_41
    move-object/from16 v58, v4

    const/4 v4, 0x0

    .line 53
    :goto_32
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v59

    if-nez v4, :cond_42

    const/4 v4, 0x1

    goto :goto_33

    :cond_42
    const/4 v4, 0x0

    :goto_33
    if-eqz v8, :cond_44

    if-eqz v59, :cond_43

    const-wide/16 v60, 0x4000

    or-long v2, v2, v60

    const-wide v60, 0x100000000000L

    goto :goto_34

    :cond_43
    const-wide/16 v60, 0x2000

    or-long v2, v2, v60

    const-wide v60, 0x80000000000L

    :goto_34
    or-long v2, v2, v60

    :cond_44
    and-long v60, v2, v18

    const-wide/16 v62, 0x0

    cmp-long v8, v60, v62

    if-eqz v8, :cond_46

    if-eqz v4, :cond_45

    const-wide v60, 0x400000000000L

    goto :goto_35

    :cond_45
    const-wide v60, 0x200000000000L

    :goto_35
    or-long v2, v2, v60

    :cond_46
    if-eqz v59, :cond_47

    .line 54
    iget-object v8, v1, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-wide/from16 v60, v2

    const v2, 0x7f120268

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    :cond_47
    move-wide/from16 v60, v2

    iget-object v2, v1, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120267

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    :goto_36
    iget-object v3, v1, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    if-eqz v59, :cond_48

    const v8, 0x7f06005f

    goto :goto_37

    :cond_48
    const v8, 0x7f060128

    :goto_37
    invoke-static {v3, v8}, Landroidx/databinding/ViewDataBinding;->l(Landroid/view/View;I)I

    move-result v3

    xor-int/lit8 v4, v4, 0x1

    move v8, v4

    move-object v4, v2

    move/from16 v69, v59

    move/from16 v59, v3

    move-wide/from16 v2, v60

    move/from16 v60, v69

    goto :goto_38

    :cond_49
    move/from16 v56, v4

    move-object/from16 v57, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    :goto_38
    and-long v61, v2, v24

    const-wide/16 v63, 0x0

    cmp-long v65, v61, v63

    if-eqz v65, :cond_4c

    if-eqz v7, :cond_4a

    move-wide/from16 v61, v2

    .line 56
    iget-object v2, v7, Lcom/shabakaty/downloader/u15;->u:Lcom/shabakaty/downloader/mj;

    goto :goto_39

    :cond_4a
    move-wide/from16 v61, v2

    const/4 v2, 0x0

    :goto_39
    const/16 v3, 0x8

    .line 57
    invoke-virtual {v1, v3, v2}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v2, :cond_4b

    .line 58
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/tj;

    goto :goto_3a

    :cond_4b
    const/4 v2, 0x0

    :goto_3a
    if-eqz v2, :cond_4d

    .line 59
    iget-object v2, v2, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 60
    check-cast v2, Ljava/util/List;

    goto :goto_3b

    :cond_4c
    move-wide/from16 v61, v2

    :cond_4d
    const/4 v2, 0x0

    :goto_3b
    move/from16 v39, v8

    move/from16 v38, v13

    move/from16 v8, v37

    move-object/from16 v13, v42

    move/from16 v66, v43

    move/from16 v67, v48

    move/from16 v48, v51

    move-object/from16 v42, v57

    move/from16 v68, v59

    move-object/from16 v37, v5

    move-object/from16 v43, v6

    move/from16 v6, v40

    move-object/from16 v5, v47

    move/from16 v51, v49

    move-object/from16 v40, v4

    move-object v4, v11

    move-object/from16 v47, v44

    move/from16 v49, v46

    move-object/from16 v11, v55

    move-object/from16 v44, v10

    move-object/from16 v46, v14

    move-object/from16 v10, v34

    move-object/from16 v14, v41

    move-object/from16 v34, v53

    move-object/from16 v41, v2

    move/from16 v53, v52

    move-object/from16 v52, v54

    move/from16 v54, v56

    move-wide/from16 v2, v61

    const-wide v55, 0x2000000000L

    move-object/from16 v69, v45

    move/from16 v45, v9

    move-object v9, v15

    move-object v15, v12

    move-object/from16 v12, v69

    goto/16 :goto_3c

    :cond_4e
    const/4 v12, 0x0

    const/16 v42, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/16 v34, 0x0

    const/16 v45, 0x0

    const/16 v37, 0x0

    const/16 v41, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v40, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v61, 0x0

    move-object v5, v4

    move-object/from16 v40, v9

    move-object v4, v11

    move-object/from16 v37, v15

    move-object/from16 v13, v42

    move-object/from16 v42, v43

    move-object/from16 v9, v49

    move-object/from16 v47, v56

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v49, 0x0

    const-wide v55, 0x2000000000L

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v43, v6

    move-object v11, v8

    move-object v15, v12

    move-object/from16 v12, v45

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v45, 0x0

    move-object/from16 v69, v41

    move-object/from16 v41, v10

    move-object/from16 v10, v34

    move-object/from16 v34, v14

    move-object/from16 v14, v69

    :goto_3c
    and-long v55, v2, v55

    const-wide/16 v61, 0x0

    cmp-long v57, v55, v61

    if-eqz v57, :cond_4f

    move-object/from16 v55, v9

    .line 61
    iget-object v9, v1, Lcom/shabakaty/downloader/jl1;->V:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v56, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v57, 0x0

    aput-object v10, v14, v57

    move-object/from16 v57, v10

    const v10, 0x7f120162

    invoke-virtual {v9, v10, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3d

    :cond_4f
    move-object/from16 v55, v9

    move-object/from16 v57, v10

    move-object/from16 v56, v14

    const/4 v9, 0x0

    :goto_3d
    const-wide/high16 v32, 0x4000000000000L

    and-long v32, v2, v32

    cmp-long v10, v32, v61

    if-eqz v10, :cond_54

    if-eqz v7, :cond_50

    .line 62
    iget-object v10, v7, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    goto :goto_3e

    :cond_50
    move-object/from16 v10, v34

    :goto_3e
    const/4 v14, 0x4

    .line 63
    invoke-virtual {v1, v14, v10}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_51

    .line 64
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v52, v14

    check-cast v52, Lcom/shabakaty/downloader/tj;

    :cond_51
    move-object/from16 v14, v52

    if-eqz v14, :cond_52

    .line 65
    iget-object v14, v14, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_3f

    :cond_52
    const/4 v14, 0x0

    :goto_3f
    if-ne v14, v0, :cond_53

    const/4 v14, 0x1

    goto :goto_40

    :cond_53
    move-object/from16 v34, v10

    :cond_54
    const/4 v14, 0x0

    move-object/from16 v10, v34

    :goto_40
    const-wide/32 v32, 0x20000

    and-long v32, v2, v32

    const-wide/16 v61, 0x0

    cmp-long v34, v32, v61

    if-eqz v34, :cond_55

    move-object/from16 v32, v9

    .line 66
    iget-object v9, v1, Lcom/shabakaty/downloader/jl1;->T:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v33, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v34, 0x0

    aput-object v13, v14, v34

    move-object/from16 v34, v10

    const v10, 0x7f1200d7

    invoke-virtual {v9, v10, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_41

    :cond_55
    move-object/from16 v32, v9

    move-object/from16 v34, v10

    move/from16 v33, v14

    const/4 v9, 0x0

    :goto_41
    const-wide/32 v63, 0x8000000

    and-long v63, v2, v63

    cmp-long v10, v63, v61

    if-eqz v10, :cond_56

    if-nez v5, :cond_56

    const/4 v10, 0x1

    goto :goto_42

    :cond_56
    const/4 v10, 0x0

    :goto_42
    and-long v28, v2, v28

    cmp-long v14, v28, v61

    if-eqz v14, :cond_5a

    if-eqz v7, :cond_57

    .line 67
    iget-object v14, v7, Lcom/shabakaty/downloader/u15;->y:Lcom/shabakaty/downloader/mj;

    move-object/from16 v28, v9

    goto :goto_43

    :cond_57
    move-object/from16 v28, v9

    move-object/from16 v14, v58

    :goto_43
    const/4 v9, 0x7

    .line 68
    invoke-virtual {v1, v9, v14}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_58

    .line 69
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/tj;

    goto :goto_44

    :cond_58
    move-object/from16 v9, v37

    :goto_44
    if-eqz v9, :cond_59

    .line 70
    iget-object v9, v9, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_45

    :cond_59
    const/4 v9, 0x0

    :goto_45
    if-ne v9, v0, :cond_5b

    const/4 v0, 0x1

    goto :goto_46

    :cond_5a
    move-object/from16 v28, v9

    :cond_5b
    const/4 v0, 0x0

    :goto_46
    and-long v58, v2, v22

    const-wide/16 v61, 0x0

    cmp-long v9, v58, v61

    if-eqz v9, :cond_5e

    if-eqz v38, :cond_5c

    .line 71
    iget-object v9, v1, Lcom/shabakaty/downloader/jl1;->T:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f12020c

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_47

    :cond_5c
    move-object/from16 v9, v28

    :goto_47
    if-eqz v49, :cond_5d

    .line 72
    iget-object v14, v1, Lcom/shabakaty/downloader/jl1;->V:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v28, v0

    const v0, 0x7f120211

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v0

    goto :goto_48

    :cond_5d
    move/from16 v28, v0

    goto :goto_48

    :cond_5e
    move/from16 v28, v0

    const/16 v32, 0x0

    const/4 v9, 0x0

    :goto_48
    move-object/from16 v0, v32

    and-long v58, v2, v20

    const-wide/16 v61, 0x0

    cmp-long v14, v58, v61

    if-eqz v14, :cond_62

    if-eqz v53, :cond_5f

    const/4 v10, 0x1

    :cond_5f
    if-eqz v14, :cond_61

    if-eqz v10, :cond_60

    const-wide v52, 0x400000000L

    goto :goto_49

    :cond_60
    const-wide v52, 0x200000000L

    :goto_49
    or-long v2, v2, v52

    :cond_61
    if-eqz v10, :cond_62

    const/4 v10, 0x4

    goto :goto_4a

    :cond_62
    const/4 v10, 0x0

    :goto_4a
    and-long v52, v2, v16

    const-wide/16 v58, 0x0

    cmp-long v14, v52, v58

    if-eqz v14, :cond_67

    if-eqz v51, :cond_63

    goto :goto_4b

    :cond_63
    const/16 v28, 0x0

    :goto_4b
    if-eqz v14, :cond_65

    if-eqz v28, :cond_64

    const-wide v52, 0x40000000000L

    goto :goto_4c

    :cond_64
    const-wide v52, 0x20000000000L

    :goto_4c
    or-long v2, v2, v52

    :cond_65
    if-eqz v28, :cond_66

    goto :goto_4d

    :cond_66
    const/16 v14, 0x8

    goto :goto_4e

    :cond_67
    :goto_4d
    const/4 v14, 0x0

    :goto_4e
    const-wide/16 v28, 0x1811

    and-long v52, v2, v28

    const-wide/16 v28, 0x0

    cmp-long v32, v52, v28

    if-eqz v32, :cond_6c

    if-eqz v51, :cond_68

    goto :goto_4f

    :cond_68
    const/16 v28, 0x0

    const/16 v33, 0x0

    :goto_4f
    if-eqz v32, :cond_6a

    if-eqz v33, :cond_69

    const-wide v28, 0x1000000000L

    goto :goto_50

    :cond_69
    const-wide v28, 0x800000000L

    :goto_50
    or-long v2, v2, v28

    :cond_6a
    if-eqz v33, :cond_6b

    const/16 v28, 0x0

    goto :goto_51

    :cond_6b
    const/16 v28, 0x8

    :goto_51
    move/from16 v69, v28

    move/from16 v28, v14

    move/from16 v14, v69

    goto :goto_52

    :cond_6c
    const/16 v28, 0x0

    move/from16 v28, v14

    const/4 v14, 0x0

    :goto_52
    const-wide/16 v32, 0x1000

    and-long v32, v2, v32

    const-wide/16 v52, 0x0

    cmp-long v29, v32, v52

    if-eqz v29, :cond_6d

    move-object/from16 v29, v5

    .line 73
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    move/from16 v32, v10

    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move/from16 v33, v14

    const v14, 0x7f120145

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 74
    iget-object v5, v1, Lcom/shabakaty/downloader/kl1;->k0:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v10, v1, Lcom/shabakaty/downloader/kl1;->r0:Lcom/shabakaty/downloader/mm0;

    const/4 v14, 0x0

    invoke-static {v5, v10, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 75
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->P:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v10, v1, Lcom/shabakaty/downloader/kl1;->m0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v5, v10, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 76
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->S:Lcom/shabakaty/cinemana/utils/ExpandableTextView;

    const/16 v10, 0x8c

    invoke-virtual {v5, v10}, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->setTrimLength(I)V

    .line 77
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->T:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/shabakaty/downloader/kl1;->l0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v5, v10, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 78
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->U:Landroid/widget/TextView;

    const v10, 0x7f120299

    invoke-static {v5, v10, v5}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 79
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->V:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/shabakaty/downloader/kl1;->p0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v5, v10, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 80
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v10}, Lcom/shabakaty/downloader/a35;->G(Ljava/lang/Boolean;)V

    .line 81
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    .line 82
    iget-object v10, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 83
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f120188

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/shabakaty/downloader/a35;->M(Ljava/lang/String;)V

    .line 84
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->b0:Lcom/google/android/material/button/MaterialButton;

    const v10, 0x7f120256

    invoke-static {v5, v10, v5}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 85
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->b0:Lcom/google/android/material/button/MaterialButton;

    iget-object v10, v1, Lcom/shabakaty/downloader/kl1;->q0:Lcom/shabakaty/downloader/mm0;

    const/4 v14, 0x0

    invoke-static {v5, v10, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 86
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/shabakaty/downloader/kl1;->o0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v5, v10, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 87
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->f0:Landroid/widget/TextView;

    const v10, 0x7f1202dc

    invoke-static {v5, v10, v5}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 88
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->f0:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/shabakaty/downloader/kl1;->n0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v5, v10, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    goto :goto_53

    :cond_6d
    move-object/from16 v29, v5

    move/from16 v32, v10

    move/from16 v33, v14

    :goto_53
    and-long v22, v2, v22

    const-wide/16 v52, 0x0

    cmp-long v5, v22, v52

    if-eqz v5, :cond_6f

    .line 89
    iget-object v5, v1, Lcom/shabakaty/downloader/jl1;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v10, "draweeView"

    .line 90
    invoke-static {v5, v10}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "1"

    .line 91
    invoke-static {v11, v10}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6e

    const/4 v10, 0x0

    goto :goto_54

    :cond_6e
    const/16 v10, 0x8

    :goto_54
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v5, v1, Lcom/shabakaty/downloader/kl1;->j0:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v5, v15}, Lcom/shabakaty/cinemana/utils/StatusView;->setMessage(Ljava/lang/String;)V

    .line 93
    iget-object v5, v1, Lcom/shabakaty/downloader/kl1;->j0:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v5, v4}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    .line 94
    iget-object v4, v1, Lcom/shabakaty/downloader/kl1;->k0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v4, v12}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, v1, Lcom/shabakaty/downloader/kl1;->k0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 96
    invoke-static/range {v48 .. v48}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 98
    iget-object v4, v1, Lcom/shabakaty/downloader/jl1;->N:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 99
    iget-object v4, v1, Lcom/shabakaty/downloader/jl1;->S:Lcom/shabakaty/cinemana/utils/ExpandableTextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v4, v1, Lcom/shabakaty/downloader/jl1;->S:Lcom/shabakaty/cinemana/utils/ExpandableTextView;

    move-object/from16 v15, v55

    move-object/from16 v5, v56

    invoke-static {v4, v5, v15}, Lcom/shabakaty/downloader/gm4;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v4, v1, Lcom/shabakaty/downloader/jl1;->S:Lcom/shabakaty/cinemana/utils/ExpandableTextView;

    invoke-static {v4, v5, v15}, Lcom/shabakaty/downloader/nl6;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v4, v1, Lcom/shabakaty/downloader/jl1;->T:Landroid/widget/TextView;

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, v1, Lcom/shabakaty/downloader/jl1;->T:Landroid/widget/TextView;

    invoke-static {v4, v13}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 104
    iget-object v4, v1, Lcom/shabakaty/downloader/jl1;->T:Landroid/widget/TextView;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/gm4;->g(Landroid/widget/TextView;Ljava/lang/Boolean;)V

    .line 105
    iget-object v4, v1, Lcom/shabakaty/downloader/jl1;->V:Landroid/widget/TextView;

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->V:Landroid/widget/TextView;

    move-object/from16 v4, v57

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 107
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->V:Landroid/widget/TextView;

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/gm4;->g(Landroid/widget/TextView;Ljava/lang/Boolean;)V

    .line 108
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x0

    move-object/from16 v14, v46

    move-object/from16 v5, v47

    invoke-static {v0, v5, v4, v4, v14}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 109
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v4, v5}, Lcom/shabakaty/downloader/oy1;->b(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 110
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/a35;->I(Ljava/lang/Integer;)V

    .line 111
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    invoke-static/range {v51 .. v51}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/a35;->N(Ljava/lang/Boolean;)V

    .line 112
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->b0:Lcom/google/android/material/button/MaterialButton;

    move/from16 v9, v45

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->f0:Landroid/widget/TextView;

    move/from16 v4, v66

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    .line 115
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    move/from16 v4, v67

    .line 116
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    move-object/from16 v10, v44

    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/k15;->H(Lcom/shabakaty/downloader/xv2;)V

    :cond_6f
    const-wide/16 v4, 0x1400

    and-long/2addr v4, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_70

    .line 118
    iget-object v0, v1, Lcom/shabakaty/downloader/kl1;->j0:Lcom/shabakaty/cinemana/utils/StatusView;

    move-object/from16 v4, v43

    invoke-virtual {v0, v4}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    .line 119
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->R:Lcom/shabakaty/downloader/s05;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/s05;->G(Lcom/shabakaty/downloader/j15;)V

    .line 120
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/a35;->J(Lcom/shabakaty/downloader/qk;)V

    .line 121
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/m15;->G(Lcom/shabakaty/downloader/j15;)V

    :cond_70
    and-long v4, v2, v26

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_71

    .line 122
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->R:Lcom/shabakaty/downloader/s05;

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/s05;->H(Lcom/shabakaty/downloader/u15;)V

    .line 123
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/m15;->H(Lcom/shabakaty/downloader/u15;)V

    .line 124
    sget v0, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_71

    .line 125
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v4, v42

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    :cond_71
    const-wide/16 v4, 0x1811

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_72

    .line 126
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->U:Landroid/widget/TextView;

    move/from16 v4, v33

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_72
    and-long v4, v2, v20

    cmp-long v0, v4, v6

    if-eqz v0, :cond_74

    .line 127
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->W:Landroid/widget/TextView;

    move/from16 v10, v32

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->W:Landroid/widget/TextView;

    const-string v4, "<this>"

    .line 129
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v4, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "resources"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "en"

    .line 131
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    const-string v4, "Parental rating: "

    move-object/from16 v5, v29

    .line 132
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_55

    :cond_73
    move-object/from16 v5, v29

    const-string v4, "\u0627\u0644\u062a\u0635\u0646\u064a\u0641 \u0627\u0644\u0639\u0645\u0631\u064a: "

    .line 133
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 134
    :goto_55
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->W:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_74
    and-long v4, v2, v30

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_75

    .line 136
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/a35;->H(Ljava/lang/Boolean;)V

    :cond_75
    and-long v4, v2, v24

    cmp-long v0, v4, v6

    if-eqz v0, :cond_76

    .line 137
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    move-object/from16 v10, v41

    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/a35;->P(Ljava/util/List;)V

    :cond_76
    and-long v4, v2, v18

    cmp-long v0, v4, v6

    if-eqz v0, :cond_78

    .line 138
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    move/from16 v4, v68

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    move-object/from16 v4, v40

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 140
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    move/from16 v5, v39

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 141
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    const-string v4, "<this>"

    .line 142
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    if-eqz v60, :cond_77

    .line 143
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f06005f

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/wt2;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_56

    .line 144
    :cond_77
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f060128

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/wt2;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 145
    :goto_56
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/im4;->b(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_78
    and-long v4, v2, v16

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_79

    .line 146
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->c0:Landroid/widget/TextView;

    move/from16 v14, v28

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_79
    const-wide/16 v4, 0x1810

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_7a

    .line 147
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    move-object/from16 v10, v34

    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/k15;->G(Lcom/shabakaty/downloader/xv2;)V

    .line 148
    :cond_7a
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    .line 149
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 150
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    .line 151
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 152
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->R:Lcom/shabakaty/downloader/s05;

    .line 153
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 154
    iget-object v0, v1, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    .line 155
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 156
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/kl1;->s0:J

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
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->R:Lcom/shabakaty/downloader/s05;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    :cond_4
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 9
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

    const-wide/16 v0, 0x1000

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->R:Lcom/shabakaty/downloader/s05;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 8
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public u(ILjava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1
    :pswitch_0
    check-cast p2, Lcom/shabakaty/downloader/k15;

    if-nez p3, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :pswitch_1
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 8
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 9
    :pswitch_2
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_2

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 12
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 13
    :pswitch_3
    check-cast p2, Lcom/shabakaty/downloader/m15;

    if-nez p3, :cond_3

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 16
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 17
    :pswitch_4
    check-cast p2, Lcom/shabakaty/downloader/u43;

    if-nez p3, :cond_4

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 20
    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 21
    :pswitch_5
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_5

    .line 22
    monitor-enter p0

    .line 23
    :try_start_5
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 24
    monitor-exit p0

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 25
    :pswitch_6
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_6

    .line 26
    monitor-enter p0

    .line 27
    :try_start_6
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 28
    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 29
    :pswitch_7
    check-cast p2, Lcom/shabakaty/downloader/a35;

    if-nez p3, :cond_7

    .line 30
    monitor-enter p0

    .line 31
    :try_start_7
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 32
    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_7
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 33
    :pswitch_8
    check-cast p2, Lcom/shabakaty/downloader/s05;

    if-nez p3, :cond_8

    .line 34
    monitor-enter p0

    .line 35
    :try_start_8
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 36
    monitor-exit p0

    goto :goto_8

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :cond_8
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 37
    :pswitch_9
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_9

    .line 38
    monitor-enter p0

    .line 39
    :try_start_9
    iget-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/kl1;->s0:J

    .line 40
    monitor-exit p0

    goto :goto_9

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :cond_9
    const/4 v0, 0x0

    :goto_9
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
