.class public Lcom/shabakaty/downloader/ti1;
.super Lcom/shabakaty/downloader/si1;
.source "FragmentCommentsBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final Y:Landroid/util/SparseIntArray;


# instance fields
.field public final W:Lcom/shabakaty/downloader/mm0;

.field public X:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ti1;->Y:Landroid/util/SparseIntArray;

    const v1, 0x7f0a049e

    const/16 v2, 0x8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 17

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ti1;->Y:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v14, v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    .line 2
    aget-object v1, v0, v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    move-object v5, v1

    check-cast v5, Landroid/view/View;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v12, 0x1

    aget-object v1, v0, v12

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lcom/shabakaty/cinemana/utils/StatusView;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    move-object/from16 v16, v0

    check-cast v16, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/shabakaty/downloader/si1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/shabakaty/cinemana/utils/StatusView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v13, Lcom/shabakaty/downloader/ti1;->X:J

    .line 4
    iget-object v0, v13, Lcom/shabakaty/downloader/si1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v13, Lcom/shabakaty/downloader/si1;->N:Landroid/view/View;

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v13, Lcom/shabakaty/downloader/si1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v13, Lcom/shabakaty/downloader/si1;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v13, Lcom/shabakaty/downloader/si1;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v13, Lcom/shabakaty/downloader/si1;->R:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v13, Lcom/shabakaty/downloader/si1;->S:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v13, Lcom/shabakaty/downloader/si1;->T:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 12
    invoke-virtual {v14, v0, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v13, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v13, Lcom/shabakaty/downloader/ti1;->W:Lcom/shabakaty/downloader/mm0;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ti1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/v60;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/si1;->U:Lcom/shabakaty/downloader/v60;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ti1;->X:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ti1;->X:J

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
    check-cast p2, Lcom/shabakaty/downloader/g70;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/si1;->V:Lcom/shabakaty/downloader/g70;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ti1;->X:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ti1;->X:J

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
    iget-object p1, p0, Lcom/shabakaty/downloader/si1;->U:Lcom/shabakaty/downloader/v60;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/v60;->K0()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 23

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/ti1;->X:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/ti1;->X:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/si1;->U:Lcom/shabakaty/downloader/v60;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/si1;->V:Lcom/shabakaty/downloader/g70;

    const-wide/16 v7, 0x1b

    and-long/2addr v7, v2

    const-wide/16 v9, 0x1a

    const-wide/16 v13, 0x40

    const-wide/16 v15, 0x19

    const/4 v12, 0x0

    cmp-long v18, v7, v4

    if-eqz v18, :cond_a

    and-long v7, v2, v15

    cmp-long v18, v7, v4

    if-eqz v18, :cond_1

    if-eqz v6, :cond_0

    .line 7
    iget-object v7, v6, Lcom/shabakaty/downloader/g70;->j:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 8
    :goto_0
    invoke-virtual {v1, v12, v7}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-long v18, v2, v9

    cmp-long v8, v18, v4

    if-eqz v8, :cond_b

    if-eqz v6, :cond_2

    .line 10
    iget-object v12, v6, Lcom/shabakaty/downloader/g70;->k:Lcom/shabakaty/downloader/mj;

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    const/4 v15, 0x1

    .line 11
    invoke-virtual {v1, v15, v12}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_3

    .line 12
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/tj;

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_4

    .line 13
    iget-object v15, v12, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 14
    iget-object v12, v12, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 15
    check-cast v12, Ljava/util/List;

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_5

    .line 16
    sget-object v11, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {v15, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    if-eqz v8, :cond_7

    if-eqz v11, :cond_6

    or-long/2addr v2, v13

    const-wide/16 v20, 0x400

    goto :goto_6

    :cond_6
    const-wide/16 v20, 0x20

    or-long v2, v2, v20

    const-wide/16 v20, 0x200

    :goto_6
    or-long v2, v2, v20

    :cond_7
    if-eqz v12, :cond_8

    .line 17
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    if-eqz v11, :cond_9

    const/16 v20, 0x0

    goto :goto_8

    :cond_9
    const/16 v20, 0x8

    .line 18
    :goto_8
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v22, v20

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :cond_b
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    :goto_9
    and-long/2addr v13, v2

    cmp-long v20, v13, v4

    if-eqz v20, :cond_d

    if-eqz v6, :cond_c

    .line 19
    iget-object v6, v6, Lcom/shabakaty/downloader/g70;->f:Lcom/shabakaty/usermanagement/UserManagement;

    goto :goto_a

    :cond_c
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_d

    .line 20
    invoke-virtual {v6}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v6

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    and-long v13, v2, v9

    cmp-long v20, v13, v4

    if-eqz v20, :cond_12

    if-eqz v11, :cond_e

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    if-eqz v20, :cond_10

    if-eqz v6, :cond_f

    const-wide/16 v13, 0x100

    goto :goto_d

    :cond_f
    const-wide/16 v13, 0x80

    :goto_d
    or-long/2addr v2, v13

    :cond_10
    if-eqz v6, :cond_11

    const/16 v17, 0x0

    goto :goto_e

    :cond_11
    const/16 v17, 0x8

    :goto_e
    move/from16 v6, v17

    goto :goto_f

    :cond_12
    const/4 v6, 0x0

    :goto_f
    and-long/2addr v9, v2

    cmp-long v11, v9, v4

    if-eqz v11, :cond_13

    .line 21
    iget-object v9, v1, Lcom/shabakaty/downloader/si1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v9, v1, Lcom/shabakaty/downloader/si1;->N:Landroid/view/View;

    move/from16 v10, v22

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v9, v1, Lcom/shabakaty/downloader/si1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 24
    iget-object v9, v1, Lcom/shabakaty/downloader/si1;->O:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v11, 0x0

    invoke-static {v9, v12, v11, v11}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    .line 25
    iget-object v9, v1, Lcom/shabakaty/downloader/si1;->Q:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v9, v1, Lcom/shabakaty/downloader/si1;->Q:Landroid/widget/TextView;

    invoke-static {v9, v8}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 27
    iget-object v8, v1, Lcom/shabakaty/downloader/si1;->R:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v8, v15}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    .line 28
    iget-object v8, v1, Lcom/shabakaty/downloader/si1;->S:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    iget-object v8, v1, Lcom/shabakaty/downloader/si1;->T:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    const-wide/16 v8, 0x10

    and-long/2addr v8, v2

    cmp-long v6, v8, v4

    if-eqz v6, :cond_14

    .line 30
    iget-object v6, v1, Lcom/shabakaty/downloader/si1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120266

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 31
    iget-object v6, v1, Lcom/shabakaty/downloader/si1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v8, v1, Lcom/shabakaty/downloader/ti1;->W:Lcom/shabakaty/downloader/mm0;

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 32
    iget-object v6, v1, Lcom/shabakaty/downloader/si1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1200a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_14
    const-wide/16 v8, 0x14

    and-long/2addr v8, v2

    cmp-long v6, v8, v4

    if-eqz v6, :cond_15

    .line 33
    iget-object v6, v1, Lcom/shabakaty/downloader/si1;->R:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v6, v0}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    :cond_15
    const-wide/16 v8, 0x19

    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_16

    .line 34
    iget-object v0, v1, Lcom/shabakaty/downloader/si1;->T:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    invoke-static {v0, v7, v2, v2, v2}, Lcom/shabakaty/downloader/oy1;->c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_16
    return-void

    :catchall_0
    move-exception v0

    .line 35
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/ti1;->X:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/ti1;->X:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ti1;->X:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ti1;->X:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ti1;->X:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ti1;->X:J

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
