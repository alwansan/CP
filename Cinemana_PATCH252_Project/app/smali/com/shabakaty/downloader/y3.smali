.class public Lcom/shabakaty/downloader/y3;
.super Lcom/shabakaty/downloader/x3;
.source "ActivitySignUpBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final f0:Landroid/util/SparseIntArray;


# instance fields
.field public final Y:Lcom/google/android/material/textfield/TextInputEditText;

.field public final Z:Lcom/google/android/material/textfield/TextInputEditText;

.field public final a0:Lcom/google/android/material/textfield/TextInputEditText;

.field public final b0:Lcom/shabakaty/downloader/mm0;

.field public final c0:Lcom/shabakaty/downloader/mm0;

.field public final d0:Lcom/shabakaty/downloader/mm0;

.field public e0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/y3;->f0:Landroid/util/SparseIntArray;

    const v1, 0x7f0a042d

    const/16 v2, 0xa

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0079

    const/16 v2, 0xb

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a042c

    const/16 v2, 0xc

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0433

    const/16 v2, 0xd

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0430

    const/16 v2, 0xe

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0432

    const/16 v2, 0xf

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/y3;->f0:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const/4 v13, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v14, v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v16

    const/16 v0, 0xb

    .line 2
    aget-object v0, v16, v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v0, 0x9

    aget-object v0, v16, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ProgressBar;

    const/4 v0, 0x5

    aget-object v0, v16, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0xc

    aget-object v0, v16, v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v0, 0xa

    aget-object v0, v16, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x6

    aget-object v0, v16, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, v16, v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0xe

    aget-object v0, v16, v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v12, 0x1

    aget-object v0, v16, v12

    move-object/from16 v17, v0

    check-cast v17, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v0, 0xf

    aget-object v0, v16, v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/appcompat/widget/Toolbar;

    const/16 v0, 0xd

    aget-object v0, v16, v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v0, 0x8

    aget-object v0, v16, v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/TextView;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    invoke-direct/range {v0 .. v15}, Lcom/shabakaty/downloader/x3;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputLayout;Lcom/facebook/drawee/view/SimpleDraweeView;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/shabakaty/downloader/y3;->e0:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, v16, v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 6
    aget-object v3, v16, v0

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v3, v2, Lcom/shabakaty/downloader/y3;->Y:Lcom/google/android/material/textfield/TextInputEditText;

    .line 7
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x3

    .line 8
    aget-object v4, v16, v3

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v4, v2, Lcom/shabakaty/downloader/y3;->Z:Lcom/google/android/material/textfield/TextInputEditText;

    .line 9
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x4

    .line 10
    aget-object v4, v16, v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v4, v2, Lcom/shabakaty/downloader/y3;->a0:Lcom/google/android/material/textfield/TextInputEditText;

    .line 11
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v4, v2, Lcom/shabakaty/downloader/x3;->M:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v4, v2, Lcom/shabakaty/downloader/x3;->N:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v4, v2, Lcom/shabakaty/downloader/x3;->P:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v4, v2, Lcom/shabakaty/downloader/x3;->Q:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v4, v2, Lcom/shabakaty/downloader/x3;->S:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v4, v2, Lcom/shabakaty/downloader/x3;->V:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0128

    move-object/from16 v4, p2

    .line 18
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/y3;->b0:Lcom/shabakaty/downloader/mm0;

    .line 20
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/y3;->c0:Lcom/shabakaty/downloader/mm0;

    .line 21
    new-instance v1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v1, v2, Lcom/shabakaty/downloader/y3;->d0:Lcom/shabakaty/downloader/mm0;

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/y3;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/z54;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/x3;->X:Lcom/shabakaty/downloader/z54;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

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
    check-cast p2, Lcom/shabakaty/downloader/a64;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/x3;->W:Lcom/shabakaty/downloader/a64;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

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
    iget-object p1, p0, Lcom/shabakaty/downloader/x3;->X:Lcom/shabakaty/downloader/z54;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/z54;->a1()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/x3;->X:Lcom/shabakaty/downloader/z54;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/z54;->x0()V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/x3;->X:Lcom/shabakaty/downloader/z54;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/z54;->I0()V

    :cond_6
    :goto_0
    return-void
.end method

.method public i()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/y3;->e0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/y3;->e0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/x3;->W:Lcom/shabakaty/downloader/a64;

    const-wide/16 v6, 0x6f

    and-long/2addr v6, v2

    const-wide/16 v8, 0x62

    const-wide/16 v10, 0x61

    const-wide/16 v12, 0x64

    const/4 v14, 0x0

    cmp-long v15, v6, v4

    if-eqz v15, :cond_d

    and-long v6, v2, v10

    cmp-long v15, v6, v4

    if-eqz v15, :cond_6

    if-eqz v0, :cond_0

    .line 6
    iget-object v6, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v14, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/tj$a;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 9
    sget-object v7, Lcom/shabakaty/downloader/tj$a;->t:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v15, :cond_4

    if-eqz v6, :cond_3

    const-wide/16 v15, 0x100

    goto :goto_3

    :cond_3
    const-wide/16 v15, 0x80

    :goto_3
    or-long/2addr v2, v15

    :cond_4
    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    const/16 v6, 0x8

    const/16 v14, 0x8

    :cond_6
    :goto_4
    and-long v6, v2, v8

    cmp-long v15, v6, v4

    if-eqz v15, :cond_8

    if-eqz v0, :cond_7

    .line 10
    iget-object v6, v0, Lcom/shabakaty/downloader/a64;->h:Lcom/shabakaty/downloader/xv2;

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    const/4 v7, 0x1

    .line 11
    invoke-virtual {v1, v7, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_8

    .line 12
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    and-long v15, v2, v12

    cmp-long v7, v15, v4

    if-eqz v7, :cond_a

    if-eqz v0, :cond_9

    .line 13
    iget-object v7, v0, Lcom/shabakaty/downloader/a64;->j:Lcom/shabakaty/downloader/xv2;

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    const/4 v15, 0x2

    .line 14
    invoke-virtual {v1, v15, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_a

    .line 15
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    :goto_8
    const-wide/16 v15, 0x68

    and-long/2addr v15, v2

    cmp-long v17, v15, v4

    if-eqz v17, :cond_c

    if-eqz v0, :cond_b

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/a64;->i:Lcom/shabakaty/downloader/xv2;

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    :goto_9
    const/4 v15, 0x3

    .line 17
    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_c

    .line 18
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_a
    and-long/2addr v12, v2

    cmp-long v15, v12, v4

    if-eqz v15, :cond_e

    .line 19
    iget-object v12, v1, Lcom/shabakaty/downloader/y3;->Y:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v12, v7}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_e
    and-long v7, v2, v8

    cmp-long v9, v7, v4

    if-eqz v9, :cond_f

    .line 20
    iget-object v7, v1, Lcom/shabakaty/downloader/y3;->Z:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_f
    const-wide/16 v6, 0x68

    and-long/2addr v6, v2

    cmp-long v8, v6, v4

    if-eqz v8, :cond_10

    .line 21
    iget-object v6, v1, Lcom/shabakaty/downloader/y3;->a0:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_10
    and-long v6, v2, v10

    cmp-long v0, v6, v4

    if-eqz v0, :cond_11

    .line 22
    iget-object v0, v1, Lcom/shabakaty/downloader/x3;->M:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_11
    const-wide/16 v6, 0x40

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    .line 23
    iget-object v0, v1, Lcom/shabakaty/downloader/x3;->N:Lcom/google/android/material/button/MaterialButton;

    const v2, 0x7f12025d

    invoke-static {v0, v2, v0}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 24
    iget-object v0, v1, Lcom/shabakaty/downloader/x3;->N:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v1, Lcom/shabakaty/downloader/y3;->d0:Lcom/shabakaty/downloader/mm0;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 25
    iget-object v0, v1, Lcom/shabakaty/downloader/x3;->P:Landroid/widget/TextView;

    const v2, 0x7f120021

    invoke-static {v0, v2, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 26
    iget-object v0, v1, Lcom/shabakaty/downloader/x3;->Q:Lcom/google/android/material/button/MaterialButton;

    const v2, 0x7f120168

    invoke-static {v0, v2, v0}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 27
    iget-object v0, v1, Lcom/shabakaty/downloader/x3;->Q:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v1, Lcom/shabakaty/downloader/y3;->b0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 28
    iget-object v0, v1, Lcom/shabakaty/downloader/x3;->S:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, v1, Lcom/shabakaty/downloader/y3;->c0:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 29
    iget-object v0, v1, Lcom/shabakaty/downloader/x3;->V:Landroid/widget/TextView;

    const v2, 0x7f12027c

    invoke-static {v0, v2, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    .line 30
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/y3;->e0:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/y3;->e0:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

    const-wide/16 v2, 0x8

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/y3;->e0:J

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
