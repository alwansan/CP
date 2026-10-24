.class public Lcom/shabakaty/downloader/gl1;
.super Lcom/shabakaty/downloader/fl1;
.source "FragmentUserListDetailsBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gl1$a;
    }
.end annotation


# instance fields
.field public final S:Landroid/widget/TextView;

.field public T:Lcom/shabakaty/downloader/gl1$a;

.field public U:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    .line 2
    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    move-object v9, v2

    check-cast v9, Lcom/shabakaty/cinemana/utils/StatusView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    move-object v10, v2

    check-cast v10, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    const/4 v6, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/fl1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Lcom/shabakaty/cinemana/utils/StatusView;Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/gl1;->U:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/fl1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/fl1;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 8
    aget-object p1, v0, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shabakaty/downloader/gl1;->S:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/fl1;->O:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/fl1;->P:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 12
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gl1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/cy4;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/fl1;->Q:Lcom/shabakaty/downloader/cy4;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

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
    check-cast p2, Lcom/shabakaty/downloader/by4;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/fl1;->R:Lcom/shabakaty/downloader/by4;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

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
    .locals 28

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/gl1;->U:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/gl1;->U:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/fl1;->Q:Lcom/shabakaty/downloader/cy4;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/fl1;->R:Lcom/shabakaty/downloader/by4;

    const-wide/16 v7, 0x28

    and-long/2addr v7, v2

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    if-eqz v0, :cond_1

    .line 7
    iget-object v7, v1, Lcom/shabakaty/downloader/gl1;->T:Lcom/shabakaty/downloader/gl1$a;

    if-nez v7, :cond_0

    new-instance v7, Lcom/shabakaty/downloader/gl1$a;

    invoke-direct {v7}, Lcom/shabakaty/downloader/gl1$a;-><init>()V

    iput-object v7, v1, Lcom/shabakaty/downloader/gl1;->T:Lcom/shabakaty/downloader/gl1$a;

    .line 8
    :cond_0
    iput-object v0, v7, Lcom/shabakaty/downloader/gl1$a;->r:Lcom/shabakaty/downloader/cy4;

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const-wide/16 v8, 0x37

    and-long/2addr v8, v2

    const-wide/16 v10, 0x34

    const-wide/16 v12, 0x32

    const-wide/16 v16, 0x1000

    const-wide/32 v18, 0x10000

    const-wide/16 v20, 0x31

    const/4 v14, 0x1

    const/4 v15, 0x0

    cmp-long v24, v8, v4

    if-eqz v24, :cond_16

    and-long v8, v2, v20

    cmp-long v24, v8, v4

    if-eqz v24, :cond_b

    if-eqz v6, :cond_2

    .line 9
    iget-object v8, v6, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 10
    :goto_1
    invoke-virtual {v1, v15, v8}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_3

    .line 11
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/tj$a;

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    .line 12
    sget-object v9, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v24, :cond_6

    if-eqz v9, :cond_5

    const-wide/32 v24, 0x200000

    goto :goto_4

    :cond_5
    const-wide/32 v24, 0x100000

    :goto_4
    or-long v2, v2, v24

    .line 13
    :cond_6
    sget-object v15, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    if-ne v8, v15, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    and-long v24, v2, v20

    cmp-long v15, v24, v4

    if-eqz v15, :cond_9

    if-eqz v8, :cond_8

    const-wide/32 v24, 0x80000

    goto :goto_6

    :cond_8
    const-wide/32 v24, 0x40000

    :goto_6
    or-long v2, v2, v24

    :cond_9
    const/16 v15, 0x8

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    goto :goto_7

    :cond_a
    const/16 v9, 0x8

    :goto_7
    if-eqz v8, :cond_c

    const/4 v15, 0x0

    goto :goto_8

    :cond_b
    const/4 v15, 0x0

    const/4 v9, 0x0

    :cond_c
    :goto_8
    and-long v24, v2, v12

    cmp-long v8, v24, v4

    if-eqz v8, :cond_10

    if-eqz v6, :cond_d

    .line 14
    iget-object v8, v6, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    .line 15
    :goto_9
    invoke-virtual {v1, v14, v8}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_e

    .line 16
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/tj;

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_f

    .line 17
    iget-object v14, v8, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_b

    :cond_f
    const/4 v14, 0x0

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    const/4 v8, 0x0

    :goto_b
    and-long/2addr v10, v2

    cmp-long v24, v10, v4

    if-eqz v24, :cond_15

    if-eqz v6, :cond_11

    .line 18
    iget-object v6, v6, Lcom/shabakaty/downloader/by4;->i:Lcom/shabakaty/downloader/xv2;

    goto :goto_c

    :cond_11
    const/4 v6, 0x0

    :goto_c
    const/4 v10, 0x2

    .line 19
    invoke-virtual {v1, v10, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_12

    .line 20
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_d

    :cond_12
    const/4 v6, 0x0

    :goto_d
    const-string v10, "3"

    if-ne v6, v10, :cond_13

    const/4 v10, 0x1

    goto :goto_e

    :cond_13
    const/4 v10, 0x0

    :goto_e
    if-eqz v24, :cond_17

    if-eqz v10, :cond_14

    const-wide/16 v24, 0x80

    or-long v2, v2, v24

    const-wide/16 v24, 0x2000

    or-long v2, v2, v24

    const-wide/32 v24, 0x20000

    or-long v2, v2, v24

    goto :goto_f

    :cond_14
    const-wide/16 v22, 0x40

    or-long v2, v2, v22

    or-long v2, v2, v16

    or-long v2, v2, v18

    goto :goto_f

    :cond_15
    const/4 v6, 0x0

    const/4 v10, 0x0

    goto :goto_f

    :cond_16
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    :cond_17
    :goto_f
    const-wide/32 v24, 0x11000

    and-long v24, v2, v24

    cmp-long v11, v24, v4

    if-eqz v11, :cond_21

    const-string v11, "1"

    if-ne v6, v11, :cond_18

    const/4 v11, 0x1

    goto :goto_10

    :cond_18
    const/4 v11, 0x0

    :goto_10
    and-long v24, v2, v18

    cmp-long v26, v24, v4

    if-eqz v26, :cond_1a

    if-eqz v11, :cond_19

    const-wide/16 v24, 0x800

    goto :goto_11

    :cond_19
    const-wide/16 v24, 0x400

    :goto_11
    or-long v2, v2, v24

    :cond_1a
    and-long v24, v2, v16

    cmp-long v26, v24, v4

    if-eqz v26, :cond_1c

    if-eqz v11, :cond_1b

    const-wide/32 v24, 0x8000

    goto :goto_12

    :cond_1b
    const-wide/16 v24, 0x4000

    :goto_12
    or-long v2, v2, v24

    :cond_1c
    and-long v18, v2, v18

    cmp-long v24, v18, v4

    if-eqz v24, :cond_1e

    .line 21
    iget-object v12, v1, Lcom/shabakaty/downloader/gl1;->S:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v11, :cond_1d

    const v13, 0x7f1202dd

    goto :goto_13

    :cond_1d
    const v13, 0x7f1202d8

    :goto_13
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_14

    :cond_1e
    const/4 v12, 0x0

    :goto_14
    and-long v16, v2, v16

    cmp-long v13, v16, v4

    if-eqz v13, :cond_20

    if-eqz v11, :cond_1f

    .line 22
    iget-object v11, v1, Lcom/shabakaty/downloader/fl1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    const v13, 0x7f08019b

    goto :goto_15

    :cond_1f
    iget-object v11, v1, Lcom/shabakaty/downloader/fl1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    const v13, 0x7f080148

    :goto_15
    invoke-static {v11, v13}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_16

    :cond_20
    const/4 v11, 0x0

    goto :goto_16

    :cond_21
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_16
    const-wide/16 v16, 0x40

    and-long v16, v2, v16

    cmp-long v13, v16, v4

    if-eqz v13, :cond_25

    const-string v4, "2"

    if-ne v6, v4, :cond_22

    const/4 v4, 0x1

    goto :goto_17

    :cond_22
    const/4 v4, 0x0

    :goto_17
    if-eqz v13, :cond_24

    if-eqz v4, :cond_23

    const-wide/16 v5, 0x200

    goto :goto_18

    :cond_23
    const-wide/16 v5, 0x100

    :goto_18
    or-long/2addr v2, v5

    :cond_24
    if-eqz v4, :cond_25

    .line 23
    iget-object v4, v1, Lcom/shabakaty/downloader/gl1;->S:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08013b

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_19

    :cond_25
    const/4 v4, 0x0

    :goto_19
    const-wide/16 v5, 0x34

    and-long/2addr v5, v2

    const-wide/16 v16, 0x0

    cmp-long v13, v5, v16

    if-eqz v13, :cond_28

    if-eqz v10, :cond_26

    .line 24
    iget-object v4, v1, Lcom/shabakaty/downloader/gl1;->S:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080199

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_26
    if-eqz v10, :cond_27

    .line 25
    iget-object v5, v1, Lcom/shabakaty/downloader/fl1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08019a

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :cond_27
    if-eqz v10, :cond_29

    .line 26
    iget-object v5, v1, Lcom/shabakaty/downloader/gl1;->S:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12012b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1a

    :cond_28
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    :cond_29
    :goto_1a
    move-object/from16 v25, v4

    and-long v4, v2, v20

    const-wide/16 v16, 0x0

    cmp-long v6, v4, v16

    if-eqz v6, :cond_2a

    .line 27
    iget-object v4, v1, Lcom/shabakaty/downloader/fl1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object v4, v1, Lcom/shabakaty/downloader/fl1;->N:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object v4, v1, Lcom/shabakaty/downloader/gl1;->S:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object v4, v1, Lcom/shabakaty/downloader/fl1;->O:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2a
    if-eqz v13, :cond_2b

    .line 31
    iget-object v4, v1, Lcom/shabakaty/downloader/fl1;->M:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v11}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v4, v1, Lcom/shabakaty/downloader/gl1;->S:Landroid/widget/TextView;

    invoke-static {v4, v12}, Lcom/shabakaty/downloader/nl6;->r(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 33
    iget-object v4, v1, Lcom/shabakaty/downloader/gl1;->S:Landroid/widget/TextView;

    const-string v5, "<this>"

    .line 34
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xb

    move-object/from16 v22, v4

    .line 36
    invoke-static/range {v22 .. v27}, Lcom/shabakaty/downloader/s45;->i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    :cond_2b
    const-wide/16 v4, 0x20

    and-long/2addr v4, v2

    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-eqz v6, :cond_2c

    .line 37
    iget-object v4, v1, Lcom/shabakaty/downloader/fl1;->N:Landroid/widget/TextView;

    const v5, 0x7f1201dc

    invoke-static {v4, v5, v4}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    :cond_2c
    const-wide/16 v4, 0x28

    and-long/2addr v4, v2

    cmp-long v6, v4, v9

    if-eqz v6, :cond_2d

    .line 38
    iget-object v4, v1, Lcom/shabakaty/downloader/fl1;->O:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v4, v0}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    .line 39
    iget-object v0, v1, Lcom/shabakaty/downloader/fl1;->P:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0, v7}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setOnScrolledToEnd(Lcom/shabakaty/downloader/rm1;)V

    :cond_2d
    const-wide/16 v4, 0x32

    and-long/2addr v2, v4

    cmp-long v0, v2, v9

    if-eqz v0, :cond_2e

    .line 40
    iget-object v0, v1, Lcom/shabakaty/downloader/fl1;->O:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v14}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    .line 41
    iget-object v0, v1, Lcom/shabakaty/downloader/fl1;->P:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0, v8}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setVideos(Lcom/shabakaty/downloader/tj;)V

    :cond_2e
    return-void

    :catchall_0
    move-exception v0

    .line 42
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/gl1;->U:J

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

    const-wide/16 v0, 0x20

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/gl1;->U:J

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

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/gl1;->U:J

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
.end method
