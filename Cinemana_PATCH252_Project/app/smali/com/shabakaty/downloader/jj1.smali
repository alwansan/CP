.class public Lcom/shabakaty/downloader/jj1;
.super Lcom/shabakaty/downloader/ij1;
.source "FragmentEditProfileBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/jj1$a;
    }
.end annotation


# static fields
.field public static final q0:Landroidx/databinding/ViewDataBinding$e;

.field public static final r0:Landroid/util/SparseIntArray;


# instance fields
.field public final j0:Landroid/widget/ProgressBar;

.field public final k0:Lcom/shabakaty/downloader/mm0;

.field public final l0:Lcom/shabakaty/downloader/mm0;

.field public final m0:Lcom/shabakaty/downloader/mm0;

.field public final n0:Lcom/shabakaty/downloader/mm0;

.field public o0:Lcom/shabakaty/downloader/jj1$a;

.field public p0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/jj1;->q0:Landroidx/databinding/ViewDataBinding$e;

    const-string v2, "item_edit_profile_input"

    const-string v3, "item_edit_profile_input"

    const-string v4, "item_edit_profile_input"

    const-string v5, "item_edit_profile_input"

    const-string v6, "item_edit_profile_input"

    const-string v7, "item_edit_profile_input"

    const-string v8, "item_edit_profile_input"

    .line 2
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$e;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/jj1;->r0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a035e

    const/16 v2, 0x17

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
    .end array-data

    :array_1
    .array-data 4
        0x7f0d0097
        0x7f0d0097
        0x7f0d0097
        0x7f0d0097
        0x7f0d0097
        0x7f0d0097
        0x7f0d0097
    .end array-data
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 27

    move-object/from16 v3, p0

    move-object/from16 v15, p2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v4, Lcom/shabakaty/downloader/jj1;->q0:Landroidx/databinding/ViewDataBinding$e;

    sget-object v5, Lcom/shabakaty/downloader/jj1;->r0:Landroid/util/SparseIntArray;

    const/16 v6, 0x18

    move-object/from16 v7, p1

    invoke-static {v7, v15, v6, v4, v5}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v25

    const/4 v4, 0x5

    .line 2
    aget-object v4, v25, v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    const/4 v14, 0x4

    aget-object v5, v25, v14

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x6

    aget-object v6, v25, v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0xb

    aget-object v7, v25, v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xc

    aget-object v8, v25, v8

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    const/16 v9, 0x8

    aget-object v9, v25, v9

    check-cast v9, Lcom/google/android/material/chip/ChipGroup;

    const/4 v10, 0x7

    aget-object v10, v25, v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v11, v25, v13

    check-cast v11, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v12, 0xd

    aget-object v12, v25, v12

    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    const/16 v16, 0xf

    aget-object v16, v25, v16

    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    move-object/from16 v13, v16

    const/16 v16, 0xe

    aget-object v16, v25, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v14, v16

    const/16 v16, 0xa

    aget-object v16, v25, v16

    check-cast v16, Lcom/google/android/material/chip/Chip;

    move-object/from16 v15, v16

    const/16 v16, 0x9

    aget-object v16, v25, v16

    check-cast v16, Lcom/google/android/material/chip/Chip;

    const/16 v17, 0x13

    aget-object v17, v25, v17

    check-cast v17, Lcom/shabakaty/downloader/r42;

    const/16 v18, 0x12

    aget-object v18, v25, v18

    check-cast v18, Lcom/shabakaty/downloader/r42;

    const/16 v19, 0x15

    aget-object v19, v25, v19

    check-cast v19, Lcom/shabakaty/downloader/r42;

    const/16 v20, 0x10

    aget-object v20, v25, v20

    check-cast v20, Lcom/shabakaty/downloader/r42;

    const/16 v21, 0x11

    aget-object v21, v25, v21

    check-cast v21, Lcom/shabakaty/downloader/r42;

    const/16 v22, 0x16

    aget-object v22, v25, v22

    check-cast v22, Lcom/shabakaty/downloader/r42;

    const/16 v23, 0x14

    aget-object v23, v25, v23

    check-cast v23, Lcom/shabakaty/downloader/r42;

    const/16 v24, 0x17

    aget-object v24, v25, v24

    check-cast v24, Landroidx/core/widget/NestedScrollView;

    const/16 v26, 0x10

    move/from16 v3, v26

    invoke-direct/range {v0 .. v24}, Lcom/shabakaty/downloader/ij1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/chip/ChipGroup;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;Lcom/shabakaty/downloader/r42;Lcom/shabakaty/downloader/r42;Lcom/shabakaty/downloader/r42;Lcom/shabakaty/downloader/r42;Lcom/shabakaty/downloader/r42;Lcom/shabakaty/downloader/r42;Lcom/shabakaty/downloader/r42;Landroidx/core/widget/NestedScrollView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/shabakaty/downloader/jj1;->p0:J

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->M:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->Q:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->R:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->T:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->U:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->V:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->X:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->Y:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->Z:Lcom/shabakaty/downloader/r42;

    if-eqz v0, :cond_0

    .line 18
    iput-object v2, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 19
    :cond_0
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->a0:Lcom/shabakaty/downloader/r42;

    if-eqz v0, :cond_1

    .line 20
    iput-object v2, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 21
    :cond_1
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->b0:Lcom/shabakaty/downloader/r42;

    if-eqz v0, :cond_2

    .line 22
    iput-object v2, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 23
    :cond_2
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->c0:Lcom/shabakaty/downloader/r42;

    if-eqz v0, :cond_3

    .line 24
    iput-object v2, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 25
    :cond_3
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->d0:Lcom/shabakaty/downloader/r42;

    if-eqz v0, :cond_4

    .line 26
    iput-object v2, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 27
    :cond_4
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->e0:Lcom/shabakaty/downloader/r42;

    if-eqz v0, :cond_5

    .line 28
    iput-object v2, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 29
    :cond_5
    iget-object v0, v2, Lcom/shabakaty/downloader/ij1;->f0:Lcom/shabakaty/downloader/r42;

    if-eqz v0, :cond_6

    .line 30
    iput-object v2, v0, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    :cond_6
    const/4 v0, 0x0

    .line 31
    aget-object v0, v25, v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 33
    aget-object v3, v25, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x3

    .line 35
    aget-object v4, v25, v3

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v2, Lcom/shabakaty/downloader/jj1;->j0:Landroid/widget/ProgressBar;

    .line 36
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0128

    move-object/from16 v4, p2

    .line 37
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/jj1;->k0:Lcom/shabakaty/downloader/mm0;

    .line 39
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/jj1;->l0:Lcom/shabakaty/downloader/mm0;

    .line 40
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/jj1;->m0:Lcom/shabakaty/downloader/mm0;

    .line 41
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/jj1;->n0:Lcom/shabakaty/downloader/mm0;

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/jj1;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->c0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->d0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->a0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->Z:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->f0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->b0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->e0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/f21;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ij1;->i0:Lcom/shabakaty/downloader/f21;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/32 v1, 0x10000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/g21;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/ij1;->h0:Lcom/shabakaty/downloader/g21;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/32 v1, 0x20000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ij1;->i0:Lcom/shabakaty/downloader/f21;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_8

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/f21;->q1()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ij1;->i0:Lcom/shabakaty/downloader/f21;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_8

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/f21;->P0()V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/ij1;->i0:Lcom/shabakaty/downloader/f21;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_8

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/f21;->d1()V

    goto :goto_0

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/ij1;->i0:Lcom/shabakaty/downloader/f21;

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/f21;->t0()V

    :cond_8
    :goto_0
    return-void
.end method

.method public i()V
    .locals 32

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/jj1;->p0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->h0:Lcom/shabakaty/downloader/g21;

    const-wide/32 v6, 0x66d8b

    and-long/2addr v6, v2

    const-wide/32 v8, 0x60008

    const-wide/32 v10, 0x60002

    const-wide/32 v14, 0x60001

    const-wide/32 v16, 0x60800

    const-wide/32 v18, 0x60000

    const-wide/32 v20, 0x60080

    const-wide/32 v22, 0x60100

    const/4 v12, 0x0

    cmp-long v13, v6, v4

    if-eqz v13, :cond_1a

    and-long v6, v2, v14

    const/16 v13, 0x8

    cmp-long v25, v6, v4

    if-eqz v25, :cond_5

    if-eqz v0, :cond_0

    .line 6
    iget-object v6, v0, Lcom/shabakaty/downloader/g21;->g:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v12, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 9
    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v25, :cond_3

    if-eqz v6, :cond_2

    const-wide/32 v25, 0x100000

    goto :goto_2

    :cond_2
    const-wide/32 v25, 0x80000

    :goto_2
    or-long v2, v2, v25

    :cond_3
    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const/16 v6, 0x8

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v6, 0x0

    :goto_4
    and-long/2addr v10, v2

    cmp-long v7, v10, v4

    if-eqz v7, :cond_9

    if-eqz v0, :cond_6

    .line 10
    iget-object v7, v0, Lcom/shabakaty/downloader/g21;->n:Lcom/shabakaty/downloader/xv2;

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    const/4 v10, 0x1

    .line 11
    invoke-virtual {v1, v10, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_7

    .line 12
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_8

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_9

    const-string v10, "female"

    .line 14
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "male"

    .line 15
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_8
    and-long/2addr v8, v2

    cmp-long v11, v8, v4

    if-eqz v11, :cond_b

    if-eqz v0, :cond_a

    .line 16
    iget-object v8, v0, Lcom/shabakaty/downloader/g21;->p:Lcom/shabakaty/downloader/xv2;

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    const/4 v9, 0x3

    .line 17
    invoke-virtual {v1, v9, v8}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_b

    .line 18
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_a

    :cond_b
    const/4 v8, 0x0

    :goto_a
    and-long v11, v2, v20

    cmp-long v9, v11, v4

    if-eqz v9, :cond_d

    if-eqz v0, :cond_c

    .line 19
    iget-object v9, v0, Lcom/shabakaty/downloader/g21;->q:Lcom/shabakaty/downloader/xv2;

    goto :goto_b

    :cond_c
    const/4 v9, 0x0

    :goto_b
    const/4 v11, 0x7

    .line 20
    invoke-virtual {v1, v11, v9}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_d

    .line 21
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_c

    :cond_d
    const/4 v9, 0x0

    :goto_c
    and-long v11, v2, v22

    cmp-long v25, v11, v4

    if-eqz v25, :cond_f

    if-eqz v0, :cond_e

    .line 22
    iget-object v11, v0, Lcom/shabakaty/downloader/g21;->s:Lcom/shabakaty/downloader/xv2;

    goto :goto_d

    :cond_e
    const/4 v11, 0x0

    .line 23
    :goto_d
    invoke-virtual {v1, v13, v11}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_f

    .line 24
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_e

    :cond_f
    const/4 v11, 0x0

    :goto_e
    const-wide/32 v12, 0x62400

    and-long/2addr v12, v2

    cmp-long v24, v12, v4

    if-eqz v24, :cond_13

    if-eqz v0, :cond_10

    .line 25
    iget-object v12, v0, Lcom/shabakaty/downloader/g21;->m:Lcom/shabakaty/downloader/xv2;

    .line 26
    iget-object v13, v0, Lcom/shabakaty/downloader/g21;->l:Lcom/shabakaty/downloader/xv2;

    goto :goto_f

    :cond_10
    const/4 v13, 0x0

    const/4 v12, 0x0

    :goto_f
    const/16 v14, 0xa

    .line 27
    invoke-virtual {v1, v14, v12}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    const/16 v14, 0xd

    .line 28
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_11

    .line 29
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_10

    :cond_11
    const/4 v12, 0x0

    :goto_10
    if-eqz v13, :cond_12

    .line 30
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_11

    :cond_12
    const/4 v13, 0x0

    :goto_11
    const-string v14, " "

    .line 31
    invoke-static {v13, v14}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 32
    invoke-static {v14, v12}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_12

    :cond_13
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_12
    and-long v25, v2, v16

    cmp-long v15, v25, v4

    if-eqz v15, :cond_15

    if-eqz v0, :cond_14

    .line 33
    iget-object v15, v0, Lcom/shabakaty/downloader/g21;->o:Lcom/shabakaty/downloader/xv2;

    goto :goto_13

    :cond_14
    const/4 v15, 0x0

    :goto_13
    const/16 v4, 0xb

    .line 34
    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_15

    .line 35
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_14

    :cond_15
    const/4 v4, 0x0

    :goto_14
    and-long v27, v2, v18

    const-wide/16 v25, 0x0

    cmp-long v5, v27, v25

    if-eqz v5, :cond_17

    if-eqz v0, :cond_17

    .line 36
    iget-object v5, v1, Lcom/shabakaty/downloader/jj1;->o0:Lcom/shabakaty/downloader/jj1$a;

    if-nez v5, :cond_16

    new-instance v5, Lcom/shabakaty/downloader/jj1$a;

    invoke-direct {v5}, Lcom/shabakaty/downloader/jj1$a;-><init>()V

    iput-object v5, v1, Lcom/shabakaty/downloader/jj1;->o0:Lcom/shabakaty/downloader/jj1$a;

    .line 37
    :cond_16
    iput-object v0, v5, Lcom/shabakaty/downloader/jj1$a;->a:Lcom/shabakaty/downloader/g21;

    goto :goto_15

    :cond_17
    const/4 v5, 0x0

    :goto_15
    const-wide/32 v27, 0x64000

    and-long v27, v2, v27

    const-wide/16 v25, 0x0

    cmp-long v15, v27, v25

    if-eqz v15, :cond_19

    if-eqz v0, :cond_18

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->r:Lcom/shabakaty/downloader/xv2;

    goto :goto_16

    :cond_18
    const/4 v0, 0x0

    :goto_16
    const/16 v15, 0xe

    .line 39
    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_19

    .line 40
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_17

    :cond_19
    const/4 v0, 0x0

    goto :goto_17

    :cond_1a
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    const-wide/32 v25, 0x40000

    and-long v25, v2, v25

    const-wide/16 v27, 0x0

    cmp-long v15, v25, v27

    if-eqz v15, :cond_1b

    .line 41
    iget-object v15, v1, Lcom/shabakaty/downloader/ij1;->M:Lcom/google/android/material/button/MaterialButton;

    move/from16 v25, v6

    const v6, 0x7f120081

    invoke-static {v15, v6, v15}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 42
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->M:Lcom/google/android/material/button/MaterialButton;

    iget-object v15, v1, Lcom/shabakaty/downloader/jj1;->l0:Lcom/shabakaty/downloader/mm0;

    move-object/from16 v26, v8

    const/4 v8, 0x0

    invoke-static {v6, v15, v8}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 43
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->O:Landroid/widget/TextView;

    const v8, 0x7f120140

    invoke-static {v6, v8, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 44
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->P:Landroid/widget/TextView;

    const v8, 0x7f1200c8

    invoke-static {v6, v8, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 45
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->Q:Lcom/google/android/material/button/MaterialButton;

    iget-object v8, v1, Lcom/shabakaty/downloader/jj1;->m0:Lcom/shabakaty/downloader/mm0;

    const/4 v15, 0x0

    invoke-static {v6, v8, v15}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 46
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->R:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f12013f

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 47
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->S:Landroid/widget/TextView;

    invoke-static {v6, v15, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 48
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->T:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f1202c5

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 49
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->U:Lcom/google/android/material/button/MaterialButton;

    const v8, 0x7f12023f

    invoke-static {v6, v8, v6}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 50
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->U:Lcom/google/android/material/button/MaterialButton;

    iget-object v8, v1, Lcom/shabakaty/downloader/jj1;->n0:Lcom/shabakaty/downloader/mm0;

    const/4 v15, 0x0

    invoke-static {v6, v8, v15}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 51
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->V:Lcom/google/android/material/button/MaterialButton;

    const v8, 0x7f120080

    invoke-static {v6, v8, v6}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 52
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->V:Lcom/google/android/material/button/MaterialButton;

    iget-object v8, v1, Lcom/shabakaty/downloader/jj1;->k0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v6, v8, v15}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 53
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->W:Landroid/widget/TextView;

    const v8, 0x7f12024a

    invoke-static {v6, v8, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 54
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->X:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f120130

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 55
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->Y:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f12016f

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 56
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->Z:Lcom/shabakaty/downloader/r42;

    .line 57
    iget-object v8, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 58
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f12008a

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 59
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->a0:Lcom/shabakaty/downloader/r42;

    .line 60
    iget-object v8, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f1200c4

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 62
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->b0:Lcom/shabakaty/downloader/r42;

    .line 63
    iget-object v8, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 64
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f1200c7

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 65
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->b0:Lcom/shabakaty/downloader/r42;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/r42;->H(Ljava/lang/Boolean;)V

    .line 66
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->c0:Lcom/shabakaty/downloader/r42;

    .line 67
    iget-object v15, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 68
    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v27, v12

    const v12, 0x7f120136

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 69
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->d0:Lcom/shabakaty/downloader/r42;

    .line 70
    iget-object v12, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 71
    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f120159

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 72
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->e0:Lcom/shabakaty/downloader/r42;

    .line 73
    iget-object v12, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 74
    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f1201d3

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 75
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->e0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/r42;->H(Ljava/lang/Boolean;)V

    .line 76
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->f0:Lcom/shabakaty/downloader/r42;

    .line 77
    iget-object v8, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 78
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f1201f7

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    goto :goto_18

    :cond_1b
    move/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v12

    :goto_18
    const-wide/32 v28, 0x62400

    and-long v28, v2, v28

    const-wide/16 v30, 0x0

    cmp-long v6, v28, v30

    if-eqz v6, :cond_1c

    .line 79
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->N:Landroid/widget/TextView;

    invoke-static {v6, v14}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1c
    const-wide/32 v14, 0x64000

    and-long/2addr v14, v2

    cmp-long v6, v14, v30

    if-eqz v6, :cond_1d

    .line 80
    iget-object v6, v1, Lcom/shabakaty/downloader/ij1;->Q:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1d
    and-long v14, v2, v18

    cmp-long v0, v14, v30

    if-eqz v0, :cond_1e

    .line 81
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->R:Lcom/google/android/material/chip/ChipGroup;

    const-string v6, "<this>"

    .line 82
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v6, Lcom/shabakaty/downloader/l91;

    invoke-direct {v6, v5}, Lcom/shabakaty/downloader/l91;-><init>(Lcom/shabakaty/downloader/so1;)V

    invoke-virtual {v0, v6}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$d;)V

    :cond_1e
    and-long v5, v2, v22

    cmp-long v0, v5, v30

    if-eqz v0, :cond_1f

    .line 84
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->T:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v5, 0x0

    invoke-static {v0, v11, v5, v5, v5}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1f
    const-wide/32 v5, 0x60002

    and-long/2addr v5, v2

    cmp-long v0, v5, v30

    if-eqz v0, :cond_20

    .line 85
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->X:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, v10}, Lcom/shabakaty/downloader/i90;->a(Landroid/widget/CompoundButton;Z)V

    .line 86
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->Y:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/i90;->a(Landroid/widget/CompoundButton;Z)V

    :cond_20
    and-long v5, v2, v16

    cmp-long v0, v5, v30

    if-eqz v0, :cond_21

    .line 87
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->Z:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/r42;->I(Ljava/lang/String;)V

    :cond_21
    and-long v4, v2, v20

    cmp-long v0, v4, v30

    if-eqz v0, :cond_22

    .line 88
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->a0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/r42;->I(Ljava/lang/String;)V

    :cond_22
    const-wide/32 v4, 0x62000

    and-long/2addr v4, v2

    cmp-long v0, v4, v30

    if-eqz v0, :cond_23

    .line 89
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->c0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, v13}, Lcom/shabakaty/downloader/r42;->I(Ljava/lang/String;)V

    :cond_23
    const-wide/32 v4, 0x60400

    and-long/2addr v4, v2

    cmp-long v0, v4, v30

    if-eqz v0, :cond_24

    .line 90
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->d0:Lcom/shabakaty/downloader/r42;

    move-object/from16 v12, v27

    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/r42;->I(Ljava/lang/String;)V

    :cond_24
    const-wide/32 v4, 0x60008

    and-long/2addr v4, v2

    cmp-long v0, v4, v30

    if-eqz v0, :cond_25

    .line 91
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->f0:Lcom/shabakaty/downloader/r42;

    move-object/from16 v8, v26

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/r42;->I(Ljava/lang/String;)V

    :cond_25
    const-wide/32 v4, 0x60001

    and-long/2addr v2, v4

    cmp-long v0, v2, v30

    if-eqz v0, :cond_26

    .line 92
    iget-object v0, v1, Lcom/shabakaty/downloader/jj1;->j0:Landroid/widget/ProgressBar;

    move/from16 v6, v25

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    :cond_26
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->c0:Lcom/shabakaty/downloader/r42;

    .line 94
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 95
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->d0:Lcom/shabakaty/downloader/r42;

    .line 96
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 97
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->a0:Lcom/shabakaty/downloader/r42;

    .line 98
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 99
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->Z:Lcom/shabakaty/downloader/r42;

    .line 100
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 101
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->f0:Lcom/shabakaty/downloader/r42;

    .line 102
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 103
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->b0:Lcom/shabakaty/downloader/r42;

    .line 104
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 105
    iget-object v0, v1, Lcom/shabakaty/downloader/ij1;->e0:Lcom/shabakaty/downloader/r42;

    .line 106
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 107
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->c0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->d0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->a0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->Z:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->f0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->b0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->e0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    return v4

    :cond_7
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 12
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

    const-wide/32 v0, 0x40000

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->c0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->d0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->a0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->Z:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->f0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->b0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/ij1;->e0:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 11
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

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

.method public u(ILjava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1
    :pswitch_0
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/32 v1, 0x8000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x4000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_2

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x2000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_3

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x1000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_4

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x800

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_5

    .line 22
    monitor-enter p0

    .line 23
    :try_start_5
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x400

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_6

    .line 26
    monitor-enter p0

    .line 27
    :try_start_6
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_7

    .line 30
    monitor-enter p0

    .line 31
    :try_start_7
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_8

    .line 34
    monitor-enter p0

    .line 35
    :try_start_8
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_9

    .line 38
    monitor-enter p0

    .line 39
    :try_start_9
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

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

    .line 41
    :pswitch_a
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_a

    .line 42
    monitor-enter p0

    .line 43
    :try_start_a
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    .line 44
    monitor-exit p0

    goto :goto_a

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    :cond_a
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 45
    :pswitch_b
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_b

    .line 46
    monitor-enter p0

    .line 47
    :try_start_b
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    .line 48
    monitor-exit p0

    goto :goto_b

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    :cond_b
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 49
    :pswitch_c
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_c

    .line 50
    monitor-enter p0

    .line 51
    :try_start_c
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    .line 52
    monitor-exit p0

    goto :goto_c

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    :cond_c
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 53
    :pswitch_d
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_d

    .line 54
    monitor-enter p0

    .line 55
    :try_start_d
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    .line 56
    monitor-exit p0

    goto :goto_d

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw p1

    :cond_d
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 57
    :pswitch_e
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_e

    .line 58
    monitor-enter p0

    .line 59
    :try_start_e
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    .line 60
    monitor-exit p0

    goto :goto_e

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw p1

    :cond_e
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 61
    :pswitch_f
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_f

    .line 62
    monitor-enter p0

    .line 63
    :try_start_f
    iget-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jj1;->p0:J

    .line 64
    monitor-exit p0

    goto :goto_f

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw p1

    :cond_f
    const/4 v0, 0x0

    :goto_f
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
