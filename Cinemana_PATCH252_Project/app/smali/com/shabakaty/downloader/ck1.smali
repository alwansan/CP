.class public Lcom/shabakaty/downloader/ck1;
.super Lcom/shabakaty/downloader/bk1;
.source "FragmentProfileBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;
.implements Lcom/shabakaty/downloader/qm1$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ck1$e;,
        Lcom/shabakaty/downloader/ck1$d;,
        Lcom/shabakaty/downloader/ck1$c;,
        Lcom/shabakaty/downloader/ck1$b;,
        Lcom/shabakaty/downloader/ck1$a;,
        Lcom/shabakaty/downloader/ck1$f;
    }
.end annotation


# static fields
.field public static final x0:Landroidx/databinding/ViewDataBinding$e;

.field public static final y0:Landroid/util/SparseIntArray;


# instance fields
.field public final d0:Landroid/widget/TextView;

.field public final e0:Landroid/widget/TextView;

.field public final f0:Lcom/google/android/material/button/MaterialButton;

.field public final g0:Lcom/shabakaty/downloader/ot0;

.field public final h0:Landroid/widget/TextView;

.field public final i0:Landroid/widget/ProgressBar;

.field public final j0:Landroid/widget/TextView;

.field public final k0:Lcom/shabakaty/downloader/mm0;

.field public final l0:Lcom/shabakaty/downloader/mm0;

.field public final m0:Lcom/shabakaty/downloader/rm1;

.field public final n0:Lcom/shabakaty/downloader/mm0;

.field public final o0:Lcom/shabakaty/downloader/mm0;

.field public final p0:Lcom/shabakaty/downloader/mm0;

.field public q0:Lcom/shabakaty/downloader/ck1$f;

.field public r0:Lcom/shabakaty/downloader/ck1$a;

.field public s0:Lcom/shabakaty/downloader/ck1$b;

.field public t0:Lcom/shabakaty/downloader/ck1$c;

.field public u0:Lcom/shabakaty/downloader/ck1$d;

.field public v0:Lcom/shabakaty/downloader/ck1$e;

.field public w0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ck1;->x0:Landroidx/databinding/ViewDataBinding$e;

    const-string v2, "profile_item_layout"

    const-string v3, "profile_item_layout"

    const-string v4, "profile_item_layout"

    const-string v5, "profile_item_layout"

    const-string v6, "profile_item_layout"

    const-string v7, "profile_item_layout"

    const-string v8, "profile_item_layout"

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

    const-string v1, "discover_more_apps_layout"

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [I

    const/16 v3, 0x16

    const/4 v5, 0x0

    aput v3, v2, v5

    new-array v3, v4, [I

    const v4, 0x7f0d0056

    aput v4, v3, v5

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/databinding/ViewDataBinding$e;->a(I[Ljava/lang/String;[I[I)V

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ck1;->y0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a035e

    const/16 v2, 0x18

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a035f

    const/16 v2, 0x19

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x17
    .end array-data

    :array_1
    .array-data 4
        0x7f0d010b
        0x7f0d010b
        0x7f0d010b
        0x7f0d010b
        0x7f0d010b
        0x7f0d010b
        0x7f0d010b
    .end array-data
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 23

    move-object/from16 v3, p0

    move-object/from16 v15, p2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v4, Lcom/shabakaty/downloader/ck1;->x0:Landroidx/databinding/ViewDataBinding$e;

    sget-object v5, Lcom/shabakaty/downloader/ck1;->y0:Landroid/util/SparseIntArray;

    const/16 v6, 0x1a

    move-object/from16 v7, p1

    invoke-static {v7, v15, v6, v4, v5}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v21

    const/16 v4, 0x8

    .line 2
    aget-object v4, v21, v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    const/16 v5, 0x15

    aget-object v5, v21, v5

    check-cast v5, Lcom/shabakaty/downloader/kg3;

    const/16 v6, 0x14

    aget-object v6, v21, v6

    check-cast v6, Lcom/shabakaty/downloader/kg3;

    const/16 v7, 0xd

    aget-object v7, v21, v7

    check-cast v7, Landroidx/cardview/widget/CardView;

    const/16 v8, 0x12

    aget-object v8, v21, v8

    check-cast v8, Lcom/shabakaty/downloader/kg3;

    const/16 v9, 0x9

    aget-object v9, v21, v9

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    const/16 v10, 0x13

    aget-object v10, v21, v10

    check-cast v10, Lcom/shabakaty/downloader/kg3;

    const/4 v11, 0x7

    aget-object v11, v21, v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v14, 0x3

    aget-object v12, v21, v14

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x5

    aget-object v16, v21, v13

    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    move-object/from16 v13, v16

    const/4 v3, 0x2

    aget-object v16, v21, v3

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v14, v16

    const/16 v16, 0x17

    aget-object v16, v21, v16

    check-cast v16, Lcom/shabakaty/downloader/kg3;

    move-object/from16 v15, v16

    const/16 v16, 0x10

    aget-object v16, v21, v16

    check-cast v16, Lcom/shabakaty/downloader/kg3;

    const/16 v17, 0x18

    aget-object v17, v21, v17

    check-cast v17, Landroidx/core/widget/NestedScrollView;

    const/16 v18, 0x19

    aget-object v18, v21, v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/16 v19, 0x11

    aget-object v19, v21, v19

    check-cast v19, Lcom/shabakaty/downloader/kg3;

    const/4 v3, 0x6

    aget-object v20, v21, v3

    check-cast v20, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v22, 0xc

    move/from16 v3, v22

    invoke-direct/range {v0 .. v20}, Lcom/shabakaty/downloader/bk1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;Lcom/shabakaty/downloader/kg3;Lcom/shabakaty/downloader/kg3;Landroidx/cardview/widget/CardView;Lcom/shabakaty/downloader/kg3;Lcom/google/android/material/button/MaterialButton;Lcom/shabakaty/downloader/kg3;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Lcom/shabakaty/downloader/kg3;Lcom/shabakaty/downloader/kg3;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Lcom/shabakaty/downloader/kg3;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/shabakaty/downloader/ck1;->w0:J

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/bk1;->M:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, v21, v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    aget-object v3, v21, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xa

    .line 9
    aget-object v3, v21, v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/shabakaty/downloader/ck1;->d0:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 11
    aget-object v3, v21, v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/shabakaty/downloader/ck1;->e0:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xc

    .line 13
    aget-object v3, v21, v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    iput-object v3, v2, Lcom/shabakaty/downloader/ck1;->f0:Lcom/google/android/material/button/MaterialButton;

    .line 14
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0x16

    .line 15
    aget-object v3, v21, v3

    check-cast v3, Lcom/shabakaty/downloader/ot0;

    iput-object v3, v2, Lcom/shabakaty/downloader/ck1;->g0:Lcom/shabakaty/downloader/ot0;

    if-eqz v3, :cond_0

    .line 16
    iput-object v2, v3, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    :cond_0
    const/16 v3, 0xe

    .line 17
    aget-object v3, v21, v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/shabakaty/downloader/ck1;->h0:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xf

    .line 19
    aget-object v3, v21, v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/shabakaty/downloader/ck1;->i0:Landroid/widget/ProgressBar;

    .line 20
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 21
    aget-object v4, v21, v3

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/shabakaty/downloader/ck1;->j0:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->N:Lcom/shabakaty/downloader/kg3;

    if-eqz v4, :cond_1

    .line 24
    iput-object v2, v4, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 25
    :cond_1
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->O:Lcom/shabakaty/downloader/kg3;

    if-eqz v4, :cond_2

    .line 26
    iput-object v2, v4, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 27
    :cond_2
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->P:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 28
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->Q:Lcom/shabakaty/downloader/kg3;

    if-eqz v4, :cond_3

    .line 29
    iput-object v2, v4, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 30
    :cond_3
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->R:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 31
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->S:Lcom/shabakaty/downloader/kg3;

    if-eqz v4, :cond_4

    .line 32
    iput-object v2, v4, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 33
    :cond_4
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->T:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 34
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->U:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->V:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->X:Lcom/shabakaty/downloader/kg3;

    if-eqz v4, :cond_5

    .line 38
    iput-object v2, v4, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 39
    :cond_5
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->Y:Lcom/shabakaty/downloader/kg3;

    if-eqz v4, :cond_6

    .line 40
    iput-object v2, v4, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 41
    :cond_6
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->Z:Lcom/shabakaty/downloader/kg3;

    if-eqz v4, :cond_7

    .line 42
    iput-object v2, v4, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 43
    :cond_7
    iget-object v4, v2, Lcom/shabakaty/downloader/bk1;->a0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0128

    move-object/from16 v4, p2

    .line 44
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 45
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    const/4 v4, 0x6

    invoke-direct {v1, v2, v4}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/ck1;->k0:Lcom/shabakaty/downloader/mm0;

    .line 46
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/ck1;->l0:Lcom/shabakaty/downloader/mm0;

    .line 47
    new-instance v1, Lcom/shabakaty/downloader/qm1;

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/qm1;-><init>(Lcom/shabakaty/downloader/qm1$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/ck1;->m0:Lcom/shabakaty/downloader/rm1;

    .line 48
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/ck1;->n0:Lcom/shabakaty/downloader/mm0;

    .line 49
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/ck1;->o0:Lcom/shabakaty/downloader/mm0;

    .line 50
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/ck1;->p0:Lcom/shabakaty/downloader/mm0;

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ck1;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->Y:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->Z:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->Q:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->S:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->O:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->N:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/ck1;->g0:Lcom/shabakaty/downloader/ot0;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->X:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/dh3;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/bk1;->c0:Lcom/shabakaty/downloader/dh3;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x1000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/fh3;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/bk1;->b0:Lcom/shabakaty/downloader/fh3;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x2000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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

.method public final c(I)Lcom/shabakaty/downloader/qv4;
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/bk1;->b0:Lcom/shabakaty/downloader/fh3;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v1}, Lzendesk/core/Zendesk;->getIdentity()Lzendesk/core/Identity;

    move-result-object v3

    instance-of v4, v3, Lzendesk/core/AnonymousIdentity;

    if-eqz v4, :cond_1

    check-cast v3, Lzendesk/core/AnonymousIdentity;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 4
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fh3;->q()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/shabakaty/downloader/fh3;->h:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v4}, Lcom/shabakaty/usermanagement/UserManagement;->getUserEmail()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_4

    if-nez v3, :cond_3

    move-object v4, v2

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {v3}, Lzendesk/core/AnonymousIdentity;->getEmail()Ljava/lang/String;

    move-result-object v4

    .line 6
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fh3;->q()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/shabakaty/downloader/fh3;->h:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v6}, Lcom/shabakaty/usermanagement/UserManagement;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/shabakaty/downloader/fh3;->h:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v6}, Lcom/shabakaty/usermanagement/UserManagement;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object v5, v2

    :goto_4
    if-nez v5, :cond_7

    if-nez v3, :cond_6

    move-object v5, v2

    goto :goto_5

    .line 7
    :cond_6
    invoke-virtual {v3}, Lzendesk/core/AnonymousIdentity;->getName()Ljava/lang/String;

    move-result-object v5

    .line 8
    :cond_7
    :goto_5
    new-instance v6, Lzendesk/core/AnonymousIdentity$Builder;

    invoke-direct {v6}, Lzendesk/core/AnonymousIdentity$Builder;-><init>()V

    if-nez v3, :cond_8

    move-object v7, v2

    goto :goto_6

    .line 9
    :cond_8
    invoke-virtual {v3}, Lzendesk/core/AnonymousIdentity;->getEmail()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-static {v4, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v0

    if-nez v3, :cond_9

    move-object v3, v2

    goto :goto_7

    .line 10
    :cond_9
    invoke-virtual {v3}, Lzendesk/core/AnonymousIdentity;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v7, :cond_a

    .line 11
    invoke-virtual {v6, v4}, Lzendesk/core/AnonymousIdentity$Builder;->withEmailIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    move-result-object v6

    const-string v3, "newIdentity.withEmailIdentifier(email)"

    invoke-static {v6, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    if-eqz v0, :cond_b

    .line 12
    invoke-virtual {v6, v5}, Lzendesk/core/AnonymousIdentity$Builder;->withNameIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    move-result-object v6

    const-string v3, "newIdentity.withNameIdentifier(name)"

    invoke-static {v6, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :cond_b
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fh3;->q()Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v7, :cond_c

    if-eqz v0, :cond_e

    .line 14
    :cond_c
    invoke-virtual {v6}, Lzendesk/core/AnonymousIdentity$Builder;->build()Lzendesk/core/Identity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzendesk/core/Zendesk;->setIdentity(Lzendesk/core/Identity;)V

    goto :goto_8

    .line 15
    :cond_d
    new-instance v0, Lzendesk/core/AnonymousIdentity$Builder;

    invoke-direct {v0}, Lzendesk/core/AnonymousIdentity$Builder;-><init>()V

    invoke-virtual {v0}, Lzendesk/core/AnonymousIdentity$Builder;->build()Lzendesk/core/Identity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzendesk/core/Zendesk;->setIdentity(Lzendesk/core/Identity;)V

    .line 16
    :cond_e
    :goto_8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/dh3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/dh3;->r0()V

    :cond_f
    return-object v2
.end method

.method public final d(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/bk1;->c0:Lcom/shabakaty/downloader/dh3;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_a

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/dh3;->C1()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/bk1;->c0:Lcom/shabakaty/downloader/dh3;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_a

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/dh3;->I()V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/bk1;->c0:Lcom/shabakaty/downloader/dh3;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_a

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/dh3;->c1()V

    goto :goto_0

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/bk1;->c0:Lcom/shabakaty/downloader/dh3;

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_a

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/dh3;->n0()V

    goto :goto_0

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/shabakaty/downloader/bk1;->b0:Lcom/shabakaty/downloader/fh3;

    if-eqz p1, :cond_9

    const/4 p2, 0x1

    :cond_9
    if-eqz p2, :cond_a

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/dh3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/dh3;->h()V

    :cond_a
    :goto_0
    return-void
.end method

.method public i()V
    .locals 29

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/ck1;->w0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->c0:Lcom/shabakaty/downloader/dh3;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->b0:Lcom/shabakaty/downloader/fh3;

    const-wide/16 v7, 0x5000

    and-long/2addr v7, v2

    cmp-long v9, v7, v4

    if-eqz v9, :cond_6

    if-eqz v0, :cond_6

    .line 7
    iget-object v7, v1, Lcom/shabakaty/downloader/ck1;->q0:Lcom/shabakaty/downloader/ck1$f;

    if-nez v7, :cond_0

    new-instance v7, Lcom/shabakaty/downloader/ck1$f;

    invoke-direct {v7}, Lcom/shabakaty/downloader/ck1$f;-><init>()V

    iput-object v7, v1, Lcom/shabakaty/downloader/ck1;->q0:Lcom/shabakaty/downloader/ck1$f;

    .line 8
    :cond_0
    iput-object v0, v7, Lcom/shabakaty/downloader/ck1$f;->r:Lcom/shabakaty/downloader/dh3;

    .line 9
    iget-object v8, v1, Lcom/shabakaty/downloader/ck1;->r0:Lcom/shabakaty/downloader/ck1$a;

    if-nez v8, :cond_1

    new-instance v8, Lcom/shabakaty/downloader/ck1$a;

    invoke-direct {v8}, Lcom/shabakaty/downloader/ck1$a;-><init>()V

    iput-object v8, v1, Lcom/shabakaty/downloader/ck1;->r0:Lcom/shabakaty/downloader/ck1$a;

    .line 10
    :cond_1
    iput-object v0, v8, Lcom/shabakaty/downloader/ck1$a;->r:Lcom/shabakaty/downloader/dh3;

    .line 11
    iget-object v9, v1, Lcom/shabakaty/downloader/ck1;->s0:Lcom/shabakaty/downloader/ck1$b;

    if-nez v9, :cond_2

    new-instance v9, Lcom/shabakaty/downloader/ck1$b;

    invoke-direct {v9}, Lcom/shabakaty/downloader/ck1$b;-><init>()V

    iput-object v9, v1, Lcom/shabakaty/downloader/ck1;->s0:Lcom/shabakaty/downloader/ck1$b;

    .line 12
    :cond_2
    iput-object v0, v9, Lcom/shabakaty/downloader/ck1$b;->r:Lcom/shabakaty/downloader/dh3;

    .line 13
    iget-object v10, v1, Lcom/shabakaty/downloader/ck1;->t0:Lcom/shabakaty/downloader/ck1$c;

    if-nez v10, :cond_3

    new-instance v10, Lcom/shabakaty/downloader/ck1$c;

    invoke-direct {v10}, Lcom/shabakaty/downloader/ck1$c;-><init>()V

    iput-object v10, v1, Lcom/shabakaty/downloader/ck1;->t0:Lcom/shabakaty/downloader/ck1$c;

    .line 14
    :cond_3
    iput-object v0, v10, Lcom/shabakaty/downloader/ck1$c;->r:Lcom/shabakaty/downloader/dh3;

    .line 15
    iget-object v11, v1, Lcom/shabakaty/downloader/ck1;->u0:Lcom/shabakaty/downloader/ck1$d;

    if-nez v11, :cond_4

    new-instance v11, Lcom/shabakaty/downloader/ck1$d;

    invoke-direct {v11}, Lcom/shabakaty/downloader/ck1$d;-><init>()V

    iput-object v11, v1, Lcom/shabakaty/downloader/ck1;->u0:Lcom/shabakaty/downloader/ck1$d;

    .line 16
    :cond_4
    iput-object v0, v11, Lcom/shabakaty/downloader/ck1$d;->r:Lcom/shabakaty/downloader/dh3;

    .line 17
    iget-object v12, v1, Lcom/shabakaty/downloader/ck1;->v0:Lcom/shabakaty/downloader/ck1$e;

    if-nez v12, :cond_5

    new-instance v12, Lcom/shabakaty/downloader/ck1$e;

    invoke-direct {v12}, Lcom/shabakaty/downloader/ck1$e;-><init>()V

    iput-object v12, v1, Lcom/shabakaty/downloader/ck1;->v0:Lcom/shabakaty/downloader/ck1$e;

    .line 18
    :cond_5
    iput-object v0, v12, Lcom/shabakaty/downloader/ck1$e;->r:Lcom/shabakaty/downloader/dh3;

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const-wide/16 v13, 0x6c32

    and-long/2addr v13, v2

    const-wide/16 v17, 0x6400

    const-wide/16 v19, 0x6020

    const-wide/16 v21, 0x6002

    const-wide/16 v23, 0x6010

    cmp-long v0, v13, v4

    if-eqz v0, :cond_1b

    and-long v13, v2, v21

    cmp-long v0, v13, v4

    if-eqz v0, :cond_d

    if-eqz v6, :cond_7

    .line 19
    iget-object v13, v6, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x1

    .line 20
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_8

    .line 21
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/tj$a;

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    .line 22
    :goto_2
    sget-object v14, Lcom/shabakaty/downloader/tj$a;->t:Lcom/shabakaty/downloader/tj$a;

    if-ne v13, v14, :cond_9

    const/4 v14, 0x1

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_3
    if-eqz v0, :cond_b

    if-eqz v14, :cond_a

    const-wide/32 v25, 0x100000

    goto :goto_4

    :cond_a
    const-wide/32 v25, 0x80000

    :goto_4
    or-long v2, v2, v25

    :cond_b
    if-eqz v14, :cond_c

    goto :goto_5

    :cond_c
    const/16 v0, 0x8

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v0, 0x0

    :goto_6
    and-long v13, v2, v23

    cmp-long v25, v13, v4

    if-eqz v25, :cond_13

    if-eqz v6, :cond_e

    .line 23
    iget-object v13, v6, Lcom/shabakaty/downloader/fh3;->m:Lcom/shabakaty/downloader/u43;

    goto :goto_7

    :cond_e
    const/4 v13, 0x0

    :goto_7
    const/4 v14, 0x4

    .line 24
    sget-object v15, Landroidx/databinding/ViewDataBinding;->I:Lcom/shabakaty/downloader/og0;

    invoke-virtual {v1, v14, v13, v15}, Landroidx/databinding/ViewDataBinding;->F(ILjava/lang/Object;Lcom/shabakaty/downloader/og0;)Z

    if-eqz v13, :cond_f

    .line 25
    iget-boolean v13, v13, Lcom/shabakaty/downloader/u43;->s:Z

    goto :goto_8

    :cond_f
    const/4 v13, 0x0

    :goto_8
    if-eqz v25, :cond_11

    if-eqz v13, :cond_10

    const-wide/32 v14, 0x10000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x40000

    goto :goto_9

    :cond_10
    const-wide/32 v14, 0x8000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x20000

    :goto_9
    or-long/2addr v2, v14

    :cond_11
    if-eqz v13, :cond_12

    const/4 v14, 0x0

    goto :goto_a

    :cond_12
    const/16 v14, 0x8

    :goto_a
    if-eqz v13, :cond_14

    const/16 v13, 0x8

    goto :goto_b

    :cond_13
    const/4 v14, 0x0

    :cond_14
    const/4 v13, 0x0

    :goto_b
    and-long v15, v2, v19

    cmp-long v25, v15, v4

    if-eqz v25, :cond_17

    if-eqz v6, :cond_15

    .line 26
    iget-object v4, v6, Lcom/shabakaty/downloader/fh3;->p:Lcom/shabakaty/downloader/xv2;

    goto :goto_c

    :cond_15
    const/4 v4, 0x0

    :goto_c
    const/4 v5, 0x5

    .line 27
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_16

    .line 28
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_d

    :cond_16
    const/4 v4, 0x0

    :goto_d
    const-string v5, "By: Ali Tuama\n\nINST: e.1mw\n\nTG: AlwanSan\n\n\nversion "

    .line 29
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    :goto_e
    and-long v15, v2, v17

    const-wide/16 v27, 0x0

    cmp-long v5, v15, v27

    if-eqz v5, :cond_19

    if-eqz v6, :cond_18

    .line 30
    iget-object v5, v6, Lcom/shabakaty/downloader/fh3;->o:Lcom/shabakaty/downloader/xv2;

    goto :goto_f

    :cond_18
    const/4 v5, 0x0

    :goto_f
    const/16 v15, 0xa

    .line 31
    invoke-virtual {v1, v15, v5}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_19

    .line 32
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_10

    :cond_19
    const/4 v5, 0x0

    :goto_10
    const-wide/16 v15, 0x6800

    and-long v27, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v25, v27, v15

    if-eqz v25, :cond_1c

    if-eqz v6, :cond_1a

    .line 33
    iget-object v6, v6, Lcom/shabakaty/downloader/fh3;->q:Lcom/shabakaty/downloader/xv2;

    goto :goto_11

    :cond_1a
    const/4 v6, 0x0

    :goto_11
    const/16 v15, 0xb

    .line 34
    invoke-virtual {v1, v15, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1c

    .line 35
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_12

    :cond_1b
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1c
    const/4 v6, 0x0

    :goto_12
    and-long v15, v2, v23

    const-wide/16 v23, 0x0

    cmp-long v25, v15, v23

    if-eqz v25, :cond_1d

    .line 36
    iget-object v15, v1, Lcom/shabakaty/downloader/bk1;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v15, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 37
    iget-object v15, v1, Lcom/shabakaty/downloader/bk1;->R:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v15, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    iget-object v15, v1, Lcom/shabakaty/downloader/bk1;->S:Lcom/shabakaty/downloader/kg3;

    .line 39
    iget-object v15, v15, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 40
    invoke-virtual {v15, v14}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v15, v1, Lcom/shabakaty/downloader/bk1;->T:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v15, v1, Lcom/shabakaty/downloader/bk1;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object v13, v1, Lcom/shabakaty/downloader/bk1;->X:Lcom/shabakaty/downloader/kg3;

    .line 44
    iget-object v13, v13, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 45
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v13, v1, Lcom/shabakaty/downloader/bk1;->Y:Lcom/shabakaty/downloader/kg3;

    .line 47
    iget-object v13, v13, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 48
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v13, v1, Lcom/shabakaty/downloader/bk1;->Z:Lcom/shabakaty/downloader/kg3;

    .line 50
    iget-object v13, v13, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 51
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v13, v1, Lcom/shabakaty/downloader/bk1;->a0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1d
    const-wide/16 v13, 0x4000

    and-long/2addr v13, v2

    const-wide/16 v15, 0x0

    cmp-long v23, v13, v15

    if-eqz v23, :cond_1e

    .line 53
    iget-object v13, v1, Lcom/shabakaty/downloader/bk1;->M:Lcom/google/android/material/button/MaterialButton;

    iget-object v14, v1, Lcom/shabakaty/downloader/ck1;->l0:Lcom/shabakaty/downloader/mm0;

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 54
    iget-object v13, v1, Lcom/shabakaty/downloader/ck1;->d0:Landroid/widget/TextView;

    const v14, 0x7f1200e8

    invoke-static {v13, v14, v13}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 55
    iget-object v13, v1, Lcom/shabakaty/downloader/ck1;->e0:Landroid/widget/TextView;

    const v14, 0x7f12027d

    invoke-static {v13, v14, v13}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 56
    iget-object v13, v1, Lcom/shabakaty/downloader/ck1;->f0:Lcom/google/android/material/button/MaterialButton;

    const v14, 0x7f120251

    invoke-static {v13, v14, v13}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 57
    iget-object v13, v1, Lcom/shabakaty/downloader/ck1;->f0:Lcom/google/android/material/button/MaterialButton;

    iget-object v14, v1, Lcom/shabakaty/downloader/ck1;->o0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v13, v14, v15}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 58
    iget-object v13, v1, Lcom/shabakaty/downloader/ck1;->j0:Landroid/widget/TextView;

    const v14, 0x7f120167

    invoke-static {v13, v14, v13}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 59
    iget-object v13, v1, Lcom/shabakaty/downloader/bk1;->N:Lcom/shabakaty/downloader/kg3;

    .line 60
    iget-object v14, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 61
    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f12029c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/shabakaty/downloader/kg3;->G(Ljava/lang/String;)V

    .line 62
    iget-object v13, v1, Lcom/shabakaty/downloader/bk1;->N:Lcom/shabakaty/downloader/kg3;

    iget-object v14, v1, Lcom/shabakaty/downloader/ck1;->m0:Lcom/shabakaty/downloader/rm1;

    invoke-virtual {v13, v14}, Lcom/shabakaty/downloader/kg3;->H(Lcom/shabakaty/downloader/rm1;)V

    .line 63
    iget-object v13, v1, Lcom/shabakaty/downloader/bk1;->O:Lcom/shabakaty/downloader/kg3;

    .line 64
    iget-object v14, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 65
    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f12024f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/shabakaty/downloader/kg3;->G(Ljava/lang/String;)V

    .line 66
    iget-object v13, v1, Lcom/shabakaty/downloader/bk1;->P:Landroidx/cardview/widget/CardView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/shabakaty/downloader/bk1;->P:Landroidx/cardview/widget/CardView;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v6

    const v6, 0x7f1200d6

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->P:Landroidx/cardview/widget/CardView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v15, 0x7f120187

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 67
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->P:Landroidx/cardview/widget/CardView;

    iget-object v13, v1, Lcom/shabakaty/downloader/ck1;->k0:Lcom/shabakaty/downloader/mm0;

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 68
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->Q:Lcom/shabakaty/downloader/kg3;

    .line 69
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 70
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1200df

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/kg3;->G(Ljava/lang/String;)V

    .line 71
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->R:Lcom/google/android/material/button/MaterialButton;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/shabakaty/downloader/bk1;->R:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v14}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f1200e2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/shabakaty/downloader/bk1;->R:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v14}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f1202aa

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 72
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->R:Lcom/google/android/material/button/MaterialButton;

    const v13, 0x7f1200e2

    invoke-static {v6, v13, v6}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 73
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->R:Lcom/google/android/material/button/MaterialButton;

    iget-object v13, v1, Lcom/shabakaty/downloader/ck1;->n0:Lcom/shabakaty/downloader/mm0;

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 74
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->S:Lcom/shabakaty/downloader/kg3;

    .line 75
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1202c6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/kg3;->G(Ljava/lang/String;)V

    .line 77
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->U:Landroid/widget/TextView;

    const v13, 0x7f120146

    invoke-static {v6, v13, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 78
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->V:Lcom/google/android/material/button/MaterialButton;

    const v13, 0x7f120168

    invoke-static {v6, v13, v6}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 79
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->V:Lcom/google/android/material/button/MaterialButton;

    iget-object v13, v1, Lcom/shabakaty/downloader/ck1;->p0:Lcom/shabakaty/downloader/mm0;

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 80
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->X:Lcom/shabakaty/downloader/kg3;

    .line 81
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 82
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120169

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/kg3;->G(Ljava/lang/String;)V

    .line 83
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->X:Lcom/shabakaty/downloader/kg3;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/kg3;->I(Ljava/lang/Boolean;)V

    .line 84
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->Y:Lcom/shabakaty/downloader/kg3;

    .line 85
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 86
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1201dd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/kg3;->G(Ljava/lang/String;)V

    .line 87
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->Z:Lcom/shabakaty/downloader/kg3;

    .line 88
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 89
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f12026a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/kg3;->G(Ljava/lang/String;)V

    .line 90
    iget-object v6, v1, Lcom/shabakaty/downloader/bk1;->a0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1202c5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_1e
    move-object/from16 v16, v6

    :goto_13
    and-long v13, v2, v19

    const-wide/16 v19, 0x0

    cmp-long v6, v13, v19

    if-eqz v6, :cond_1f

    .line 91
    iget-object v6, v1, Lcom/shabakaty/downloader/ck1;->h0:Landroid/widget/TextView;

    invoke-static {v6, v4}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1f
    and-long v13, v2, v21

    cmp-long v4, v13, v19

    if-eqz v4, :cond_20

    .line 92
    iget-object v4, v1, Lcom/shabakaty/downloader/ck1;->i0:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_20
    const-wide/16 v13, 0x5000

    and-long/2addr v13, v2

    cmp-long v0, v13, v19

    if-eqz v0, :cond_21

    .line 93
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->O:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/kg3;->H(Lcom/shabakaty/downloader/rm1;)V

    .line 94
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->Q:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/kg3;->H(Lcom/shabakaty/downloader/rm1;)V

    .line 95
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->S:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/kg3;->H(Lcom/shabakaty/downloader/rm1;)V

    .line 96
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->X:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/kg3;->H(Lcom/shabakaty/downloader/rm1;)V

    .line 97
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->Y:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/kg3;->H(Lcom/shabakaty/downloader/rm1;)V

    .line 98
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->Z:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0, v11}, Lcom/shabakaty/downloader/kg3;->H(Lcom/shabakaty/downloader/rm1;)V

    :cond_21
    and-long v6, v2, v17

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_22

    .line 99
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->T:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_22
    const-wide/16 v4, 0x6800

    and-long/2addr v2, v4

    cmp-long v0, v2, v8

    if-eqz v0, :cond_23

    .line 100
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->a0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    move-object/from16 v6, v16

    invoke-static {v0, v6, v2, v2, v2}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 101
    :cond_23
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->Y:Lcom/shabakaty/downloader/kg3;

    .line 102
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 103
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->Z:Lcom/shabakaty/downloader/kg3;

    .line 104
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 105
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->Q:Lcom/shabakaty/downloader/kg3;

    .line 106
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 107
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->S:Lcom/shabakaty/downloader/kg3;

    .line 108
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 109
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->O:Lcom/shabakaty/downloader/kg3;

    .line 110
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 111
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->N:Lcom/shabakaty/downloader/kg3;

    .line 112
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 113
    iget-object v0, v1, Lcom/shabakaty/downloader/ck1;->g0:Lcom/shabakaty/downloader/ot0;

    .line 114
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 115
    iget-object v0, v1, Lcom/shabakaty/downloader/bk1;->X:Lcom/shabakaty/downloader/kg3;

    .line 116
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 117
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->Y:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->Z:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->Q:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->S:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->O:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->N:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/ck1;->g0:Lcom/shabakaty/downloader/ot0;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    return v4

    .line 12
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->X:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    :cond_8
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 13
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

    const-wide/16 v0, 0x4000

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->Y:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->Z:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->Q:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->S:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->O:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->N:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/ck1;->g0:Lcom/shabakaty/downloader/ot0;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/bk1;->X:Lcom/shabakaty/downloader/kg3;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 12
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception v0

    .line 13
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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x800

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x400

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/kg3;

    if-nez p3, :cond_2

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/kg3;

    if-nez p3, :cond_3

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/kg3;

    if-nez p3, :cond_4

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/kg3;

    if-nez p3, :cond_5

    .line 22
    monitor-enter p0

    .line 23
    :try_start_5
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/u43;

    if-nez p3, :cond_7

    .line 30
    monitor-enter p0

    .line 31
    :try_start_7
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/kg3;

    if-nez p3, :cond_8

    .line 34
    monitor-enter p0

    .line 35
    :try_start_8
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/kg3;

    if-nez p3, :cond_9

    .line 38
    monitor-enter p0

    .line 39
    :try_start_9
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_a

    .line 42
    monitor-enter p0

    .line 43
    :try_start_a
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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
    check-cast p2, Lcom/shabakaty/downloader/kg3;

    if-nez p3, :cond_b

    .line 46
    monitor-enter p0

    .line 47
    :try_start_b
    iget-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ck1;->w0:J

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

    :pswitch_data_0
    .packed-switch 0x0
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
