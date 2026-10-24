.class public Lcom/shabakaty/downloader/vs0;
.super Lcom/shabakaty/downloader/us0;
.source "DialogAdvancedSearchFilterBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# instance fields
.field public final d0:Lcom/google/android/material/button/MaterialButton;

.field public final e0:Lcom/shabakaty/cinemana/utils/StatusView;

.field public final f0:Lcom/shabakaty/downloader/mm0;

.field public final g0:Lcom/shabakaty/downloader/mm0;

.field public final h0:Lcom/shabakaty/downloader/mm0;

.field public i0:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 21

    move-object/from16 v2, p0

    move-object/from16 v1, p2

    const/16 v0, 0x11

    const/4 v3, 0x0

    move-object/from16 v15, p1

    .line 1
    invoke-static {v15, v1, v0, v3, v3}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v19

    const/16 v0, 0xb

    .line 2
    aget-object v0, v19, v0

    move-object v4, v0

    check-cast v4, Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v0, 0xa

    aget-object v0, v19, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v6, v19, v0

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    const/4 v7, 0x7

    aget-object v7, v19, v7

    check-cast v7, Landroid/widget/NumberPicker;

    const/16 v8, 0xd

    aget-object v8, v19, v8

    check-cast v8, Lcom/google/android/material/slider/Slider;

    const/16 v9, 0xc

    aget-object v9, v19, v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    aget-object v10, v19, v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v11, 0x5

    aget-object v11, v19, v11

    check-cast v11, Landroidx/core/widget/NestedScrollView;

    const/16 v12, 0x9

    aget-object v12, v19, v12

    check-cast v12, Landroid/widget/NumberPicker;

    const/16 v13, 0xe

    aget-object v13, v19, v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v14, 0x8

    aget-object v14, v19, v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v16, 0x6

    aget-object v16, v19, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/4 v3, 0x1

    aget-object v16, v19, v3

    check-cast v16, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v17, 0xf

    aget-object v17, v19, v17

    check-cast v17, Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v18, v19, v3

    check-cast v18, Landroid/widget/TextView;

    const/16 v20, 0x6

    move/from16 v3, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v18}, Lcom/shabakaty/downloader/us0;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/skydoves/powerspinner/PowerSpinnerView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/NumberPicker;Lcom/google/android/material/slider/Slider;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/NumberPicker;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/EditText;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/shabakaty/downloader/vs0;->i0:J

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->O:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->P:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->Q:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->T:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->U:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->Y:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x10

    .line 17
    aget-object v0, v19, v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, v2, Lcom/shabakaty/downloader/vs0;->d0:Lcom/google/android/material/button/MaterialButton;

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 19
    aget-object v0, v19, v0

    check-cast v0, Lcom/shabakaty/cinemana/utils/StatusView;

    iput-object v0, v2, Lcom/shabakaty/downloader/vs0;->e0:Lcom/shabakaty/cinemana/utils/StatusView;

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->Z:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v0, v2, Lcom/shabakaty/downloader/us0;->a0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    move-object/from16 v1, p2

    .line 23
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/vs0;->f0:Lcom/shabakaty/downloader/mm0;

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/vs0;->g0:Lcom/shabakaty/downloader/mm0;

    .line 26
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v2, Lcom/shabakaty/downloader/vs0;->h0:Lcom/shabakaty/downloader/mm0;

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/vs0;->p()V

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
    iput-object p2, p0, Lcom/shabakaty/downloader/us0;->b0:Lcom/shabakaty/downloader/dz3;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

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
    iput-object p2, p0, Lcom/shabakaty/downloader/us0;->c0:Lcom/shabakaty/downloader/hz3;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

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

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/us0;->b0:Lcom/shabakaty/downloader/dz3;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/dz3;->T()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/us0;->b0:Lcom/shabakaty/downloader/dz3;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/dz3;->f1()V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/us0;->b0:Lcom/shabakaty/downloader/dz3;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/dz3;->T()V

    :cond_6
    :goto_0
    return-void
.end method

.method public i()V
    .locals 30

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/vs0;->i0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/vs0;->i0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v6, v1, Lcom/shabakaty/downloader/us0;->b0:Lcom/shabakaty/downloader/dz3;

    .line 6
    iget-object v7, v1, Lcom/shabakaty/downloader/us0;->c0:Lcom/shabakaty/downloader/hz3;

    const-wide/16 v8, 0x1bf

    and-long/2addr v8, v2

    const-wide/16 v10, 0x180

    const-wide/16 v12, 0x181

    const-wide/16 v16, 0x188

    const-wide/16 v18, 0x182

    const-wide/16 v20, 0x190

    const/4 v14, 0x0

    cmp-long v15, v8, v4

    if-eqz v15, :cond_22

    and-long v8, v2, v12

    cmp-long v13, v8, v4

    if-eqz v13, :cond_7

    if-eqz v7, :cond_0

    .line 7
    iget-object v8, v7, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 8
    :goto_0
    invoke-virtual {v1, v14, v8}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_1

    .line 9
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/tj$a;

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-ne v8, v0, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v13, :cond_4

    if-eqz v9, :cond_3

    const-wide/16 v24, 0x400

    or-long v2, v2, v24

    const-wide/16 v24, 0x1000

    goto :goto_3

    :cond_3
    const-wide/16 v24, 0x200

    or-long v2, v2, v24

    const-wide/16 v24, 0x800

    :goto_3
    or-long v2, v2, v24

    :cond_4
    if-eqz v9, :cond_5

    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    const/16 v13, 0x8

    :goto_4
    if-eqz v9, :cond_6

    const/16 v9, 0x8

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_5
    and-long/2addr v10, v2

    cmp-long v15, v10, v4

    if-eqz v15, :cond_f

    if-eqz v7, :cond_e

    .line 10
    iget-object v4, v7, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-nez v4, :cond_8

    const/4 v4, 0x0

    goto :goto_8

    .line 11
    :cond_8
    array-length v5, v4

    :goto_6
    if-ge v14, v5, :cond_a

    add-int/lit8 v10, v14, 0x1

    .line 12
    aget-object v11, v4, v14

    .line 13
    iget-object v15, v7, Lcom/shabakaty/downloader/hz3;->t:Lcom/shabakaty/downloader/xv2;

    .line 14
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v11, v15}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_7

    :cond_9
    move v14, v10

    goto :goto_6

    :cond_a
    const/4 v14, -0x1

    .line 15
    :goto_7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 16
    :goto_8
    iget v5, v7, Lcom/shabakaty/downloader/hz3;->l:I

    .line 17
    iget-object v10, v7, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    if-nez v10, :cond_b

    goto :goto_b

    .line 18
    :cond_b
    array-length v11, v10

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v11, :cond_d

    add-int/lit8 v15, v14, 0x1

    .line 19
    aget-object v12, v10, v14

    move-object/from16 v25, v4

    .line 20
    iget-object v4, v7, Lcom/shabakaty/downloader/hz3;->u:Lcom/shabakaty/downloader/xv2;

    .line 21
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_a

    :cond_c
    move v14, v15

    move-object/from16 v4, v25

    goto :goto_9

    :cond_d
    move-object/from16 v25, v4

    const/4 v14, -0x1

    .line 22
    :goto_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v10, v4

    move-object/from16 v4, v25

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    const/4 v10, 0x0

    .line 23
    :goto_c
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->z(Ljava/lang/Integer;)I

    move-result v4

    add-int/lit16 v5, v5, -0x76c

    .line 24
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->z(Ljava/lang/Integer;)I

    move-result v10

    goto :goto_d

    :cond_f
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    and-long v11, v2, v18

    const-wide/16 v14, 0x0

    cmp-long v25, v11, v14

    if-eqz v25, :cond_11

    if-eqz v7, :cond_10

    .line 25
    iget-object v11, v7, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    goto :goto_e

    :cond_10
    const/4 v11, 0x0

    :goto_e
    const/4 v12, 0x1

    .line 26
    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_11

    .line 27
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_f

    :cond_11
    const/4 v11, 0x0

    :goto_f
    const-wide/16 v14, 0x1a4

    and-long/2addr v14, v2

    const-wide/16 v25, 0x0

    cmp-long v12, v14, v25

    if-eqz v12, :cond_1b

    if-eqz v7, :cond_12

    .line 28
    iget-object v12, v7, Lcom/shabakaty/downloader/hz3;->w:Lcom/shabakaty/downloader/mj;

    .line 29
    iget-object v14, v7, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    goto :goto_10

    :cond_12
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_10
    const/4 v15, 0x2

    .line 30
    invoke-virtual {v1, v15, v12}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    const/4 v15, 0x5

    .line 31
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_13

    .line 32
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/tj;

    goto :goto_11

    :cond_13
    const/4 v12, 0x0

    :goto_11
    if-eqz v14, :cond_14

    .line 33
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    goto :goto_12

    :cond_14
    const/4 v14, 0x0

    :goto_12
    if-eqz v12, :cond_15

    .line 34
    iget-object v15, v12, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 35
    check-cast v15, Ljava/util/List;

    goto :goto_13

    :cond_15
    const/4 v15, 0x0

    :goto_13
    const-wide/16 v22, 0x184

    and-long v25, v2, v22

    const-wide/16 v27, 0x0

    cmp-long v29, v25, v27

    if-eqz v29, :cond_1c

    if-eqz v12, :cond_16

    .line 36
    iget-object v12, v12, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_14

    :cond_16
    const/4 v12, 0x0

    :goto_14
    if-eqz v12, :cond_17

    .line 37
    invoke-virtual {v12, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_15

    :cond_17
    const/4 v0, 0x0

    :goto_15
    if-eqz v29, :cond_19

    if-eqz v0, :cond_18

    const-wide/16 v25, 0x4000

    goto :goto_16

    :cond_18
    const-wide/16 v25, 0x2000

    :goto_16
    or-long v2, v2, v25

    :cond_19
    if-eqz v0, :cond_1a

    goto :goto_17

    :cond_1a
    const/16 v12, 0x8

    goto :goto_18

    :cond_1b
    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_1c
    :goto_17
    const/4 v12, 0x0

    :goto_18
    and-long v24, v2, v16

    const-wide/16 v26, 0x0

    cmp-long v0, v24, v26

    if-eqz v0, :cond_1f

    if-eqz v7, :cond_1d

    .line 38
    iget-object v0, v7, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    goto :goto_19

    :cond_1d
    const/4 v0, 0x0

    :goto_19
    move/from16 v24, v4

    const/4 v4, 0x3

    .line 39
    invoke-virtual {v1, v4, v0}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_1e

    .line 40
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1a

    :cond_1e
    const/4 v0, 0x0

    .line 41
    :goto_1a
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->z(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_1b

    :cond_1f
    move/from16 v24, v4

    const/4 v0, 0x0

    :goto_1b
    and-long v25, v2, v20

    const-wide/16 v27, 0x0

    cmp-long v4, v25, v27

    if-eqz v4, :cond_21

    if-eqz v7, :cond_20

    .line 42
    iget-object v4, v7, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    goto :goto_1c

    :cond_20
    const/4 v4, 0x0

    :goto_1c
    const/4 v7, 0x4

    .line 43
    invoke-virtual {v1, v7, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_21

    .line 44
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_1d

    :cond_21
    const/4 v4, 0x0

    :goto_1d
    move v7, v5

    move/from16 v5, v24

    goto :goto_1e

    :cond_22
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v4, v5

    const/4 v5, 0x0

    :goto_1e
    const-wide/16 v22, 0x184

    and-long v22, v2, v22

    const-wide/16 v24, 0x0

    cmp-long v26, v22, v24

    move-object/from16 v22, v11

    if-eqz v26, :cond_23

    .line 45
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->N:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_23
    const-wide/16 v11, 0x1a4

    and-long/2addr v11, v2

    cmp-long v23, v11, v24

    if-eqz v23, :cond_24

    .line 47
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v12, 0x0

    invoke-static {v11, v15, v14, v12}, Lcom/shabakaty/downloader/st2;->h(Lcom/skydoves/powerspinner/PowerSpinnerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/w63;)V

    :cond_24
    const-wide/16 v11, 0x100

    and-long/2addr v11, v2

    cmp-long v14, v11, v24

    if-eqz v14, :cond_25

    .line 48
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->N:Landroid/widget/TextView;

    const v12, 0x7f12028e

    invoke-static {v11, v12, v11}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 49
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->O:Lcom/google/android/material/button/MaterialButton;

    const v12, 0x7f12028f

    invoke-static {v11, v12, v11}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 50
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->O:Lcom/google/android/material/button/MaterialButton;

    iget-object v12, v1, Lcom/shabakaty/downloader/vs0;->f0:Lcom/shabakaty/downloader/mm0;

    const/4 v14, 0x0

    invoke-static {v11, v12, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 51
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->R:Landroid/widget/TextView;

    const v12, 0x7f12014f

    invoke-static {v11, v12, v11}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 52
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->V:Landroid/widget/TextView;

    const v12, 0x7f120261

    invoke-static {v11, v12, v11}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 53
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->W:Landroid/widget/TextView;

    const v12, 0x7f120281

    invoke-static {v11, v12, v11}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 54
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->X:Landroid/widget/TextView;

    const v12, 0x7f1202e2

    invoke-static {v11, v12, v11}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 55
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->Y:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v12, v1, Lcom/shabakaty/downloader/vs0;->g0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v11, v12, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 56
    iget-object v11, v1, Lcom/shabakaty/downloader/vs0;->d0:Lcom/google/android/material/button/MaterialButton;

    const v12, 0x7f120258

    invoke-static {v11, v12, v11}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 57
    iget-object v11, v1, Lcom/shabakaty/downloader/vs0;->d0:Lcom/google/android/material/button/MaterialButton;

    iget-object v12, v1, Lcom/shabakaty/downloader/vs0;->h0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v11, v12, v14}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 58
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->a0:Landroid/widget/TextView;

    const v12, 0x7f120133

    invoke-static {v11, v12, v11}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 59
    sget v11, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_25

    .line 60
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->P:Landroid/widget/NumberPicker;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 61
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->P:Landroid/widget/NumberPicker;

    invoke-virtual {v11, v12}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 62
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->U:Landroid/widget/NumberPicker;

    invoke-virtual {v11, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 63
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->U:Landroid/widget/NumberPicker;

    invoke-virtual {v11, v12}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_25
    and-long v11, v2, v20

    const-wide/16 v14, 0x0

    cmp-long v20, v11, v14

    if-eqz v20, :cond_26

    .line 64
    sget v11, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_26

    .line 65
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->P:Landroid/widget/NumberPicker;

    invoke-virtual {v11, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 66
    iget-object v11, v1, Lcom/shabakaty/downloader/us0;->U:Landroid/widget/NumberPicker;

    invoke-virtual {v11, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_26
    const-wide/16 v11, 0x180

    and-long/2addr v11, v2

    const-wide/16 v14, 0x0

    cmp-long v4, v11, v14

    if-eqz v4, :cond_27

    .line 67
    sget v4, Landroidx/databinding/ViewDataBinding;->G:I

    const/16 v11, 0xb

    if-lt v4, v11, :cond_27

    .line 68
    iget-object v4, v1, Lcom/shabakaty/downloader/us0;->P:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 69
    iget-object v4, v1, Lcom/shabakaty/downloader/us0;->P:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 70
    iget-object v4, v1, Lcom/shabakaty/downloader/us0;->U:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 71
    iget-object v4, v1, Lcom/shabakaty/downloader/us0;->U:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v10}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_27
    and-long v4, v2, v16

    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-eqz v7, :cond_28

    .line 72
    iget-object v4, v1, Lcom/shabakaty/downloader/us0;->Q:Lcom/google/android/material/slider/Slider;

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    :cond_28
    const-wide/16 v4, 0x181

    and-long/2addr v4, v2

    cmp-long v0, v4, v10

    if-eqz v0, :cond_29

    .line 73
    iget-object v0, v1, Lcom/shabakaty/downloader/us0;->T:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 74
    iget-object v0, v1, Lcom/shabakaty/downloader/vs0;->e0:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 75
    iget-object v0, v1, Lcom/shabakaty/downloader/vs0;->e0:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v8}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    :cond_29
    const-wide/16 v4, 0x140

    and-long/2addr v4, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_2a

    .line 76
    iget-object v0, v1, Lcom/shabakaty/downloader/vs0;->e0:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    :cond_2a
    and-long v2, v2, v18

    cmp-long v0, v2, v7

    if-eqz v0, :cond_2b

    .line 77
    iget-object v0, v1, Lcom/shabakaty/downloader/us0;->Z:Landroid/widget/EditText;

    move-object/from16 v11, v22

    invoke-static {v0, v11}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_2b
    return-void

    :catchall_0
    move-exception v0

    .line 78
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/vs0;->i0:J

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

    const-wide/16 v0, 0x100

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/vs0;->i0:J

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

    if-eqz p1, :cond_a

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

    const-wide/16 v2, 0x20

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

    const-wide/16 v2, 0x10

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_5

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

    const-wide/16 v2, 0x8

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

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
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_7

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_9

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

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

    .line 21
    :cond_a
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_b

    .line 22
    monitor-enter p0

    .line 23
    :try_start_5
    iget-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/vs0;->i0:J

    .line 24
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_b
    :goto_5
    return v0
.end method
