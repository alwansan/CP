.class public Lcom/shabakaty/downloader/ri1;
.super Lcom/shabakaty/downloader/qi1;
.source "FragmentCategoryMoviesTvShowsBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/qm1$a;


# static fields
.field public static final V:Landroidx/databinding/ViewDataBinding$e;


# instance fields
.field public final T:Lcom/shabakaty/downloader/rm1;

.field public U:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ri1;->V:Landroidx/databinding/ViewDataBinding$e;

    const-string v1, "videos_layout"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v3, v4

    new-array v2, v2, [I

    const v5, 0x7f0d0123

    aput v5, v2, v4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$e;->a(I[Ljava/lang/String;[I[I)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ri1;->V:Landroidx/databinding/ViewDataBinding$e;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Lcom/shabakaty/downloader/a35;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    move-object v8, v3

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    move-object v10, v3

    check-cast v10, Lcom/shabakaty/cinemana/utils/StatusView;

    const/4 v6, 0x4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/qi1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shabakaty/downloader/a35;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Lcom/shabakaty/cinemana/utils/StatusView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/ri1;->U:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

    if-eqz p1, :cond_0

    .line 5
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/qi1;->N:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/qi1;->O:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/qi1;->P:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 11
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/qm1;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/qm1;-><init>(Lcom/shabakaty/downloader/qm1$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ri1;->T:Lcom/shabakaty/downloader/rm1;

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ri1;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/vx;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/qi1;->S:Lcom/shabakaty/downloader/vx;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

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
    const/16 v0, 0x21

    if-ne v0, p1, :cond_1

    .line 9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/ri1;->G(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x26

    if-ne v0, p1, :cond_2

    .line 10
    check-cast p2, Lcom/shabakaty/downloader/rx;

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/qi1;->R:Lcom/shabakaty/downloader/rx;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

    .line 14
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 16
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qi1;->Q:Ljava/lang/Integer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/ri1;->U:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/ri1;->U:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x21

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->f(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(I)Lcom/shabakaty/downloader/qv4;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/qi1;->Q:Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qi1;->S:Lcom/shabakaty/downloader/vx;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vx;->f(I)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()V
    .locals 27

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/ri1;->U:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/ri1;->U:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v6, v1, Lcom/shabakaty/downloader/qi1;->S:Lcom/shabakaty/downloader/vx;

    .line 6
    iget-object v7, v1, Lcom/shabakaty/downloader/qi1;->Q:Ljava/lang/Integer;

    .line 7
    iget-object v8, v1, Lcom/shabakaty/downloader/qi1;->R:Lcom/shabakaty/downloader/rx;

    const-wide/16 v9, 0xe6

    and-long/2addr v9, v2

    const-wide/16 v13, 0x800

    const-wide/16 v17, 0x4000

    const/4 v15, 0x1

    const/4 v11, 0x0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_2

    .line 8
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->z(Ljava/lang/Integer;)I

    move-result v7

    if-ne v7, v15, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v12, :cond_3

    if-eqz v9, :cond_1

    or-long/2addr v2, v13

    const-wide/32 v23, 0x8000

    or-long v2, v2, v23

    const-wide/32 v21, 0x200000

    or-long v2, v2, v21

    goto :goto_1

    :cond_1
    const-wide/16 v23, 0x400

    or-long v2, v2, v23

    or-long v2, v2, v17

    const-wide/32 v19, 0x100000

    or-long v2, v2, v19

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    :cond_3
    :goto_1
    const-wide/16 v23, 0xc1

    and-long v25, v2, v23

    cmp-long v12, v25, v4

    if-eqz v12, :cond_9

    if-eqz v8, :cond_4

    .line 9
    iget-object v10, v8, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 10
    :goto_2
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_5

    .line 11
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/tj$a;

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_6

    .line 12
    sget-object v11, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {v10, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    if-eqz v12, :cond_8

    if-eqz v10, :cond_7

    const-wide/32 v11, 0x20000

    goto :goto_5

    :cond_7
    const-wide/32 v11, 0x10000

    :goto_5
    or-long/2addr v2, v11

    :cond_8
    if-eqz v10, :cond_9

    const/16 v10, 0x8

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    :goto_6
    const-wide/32 v11, 0x30c800

    and-long/2addr v11, v2

    cmp-long v25, v11, v4

    if-eqz v25, :cond_16

    const-wide/32 v11, 0x208800

    and-long/2addr v11, v2

    cmp-long v25, v11, v4

    if-eqz v25, :cond_f

    if-eqz v8, :cond_a

    .line 13
    iget-object v11, v8, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 14
    :goto_7
    invoke-virtual {v1, v15, v11}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_b

    .line 15
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/tj;

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    :goto_8
    const-wide/32 v21, 0x200000

    and-long v21, v21, v2

    cmp-long v12, v21, v4

    if-eqz v12, :cond_c

    if-eqz v11, :cond_c

    .line 16
    iget-object v12, v11, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 17
    check-cast v12, Ljava/util/List;

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    :goto_9
    const-wide/32 v21, 0x8800

    and-long v21, v2, v21

    cmp-long v15, v21, v4

    if-eqz v15, :cond_e

    if-eqz v11, :cond_d

    .line 18
    iget-object v11, v11, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_a

    :cond_d
    const/4 v11, 0x0

    :goto_a
    and-long/2addr v13, v2

    cmp-long v15, v13, v4

    if-eqz v15, :cond_10

    if-eqz v11, :cond_10

    .line 19
    invoke-virtual {v11, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_c

    :cond_e
    const/4 v11, 0x0

    goto :goto_b

    :cond_f
    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_10
    :goto_b
    const/4 v13, 0x0

    :goto_c
    const-wide/32 v14, 0x104000

    and-long/2addr v14, v2

    cmp-long v21, v14, v4

    if-eqz v21, :cond_15

    if-eqz v8, :cond_11

    .line 20
    iget-object v14, v8, Lcom/shabakaty/downloader/rx;->j:Lcom/shabakaty/downloader/mj;

    goto :goto_d

    :cond_11
    const/4 v14, 0x0

    :goto_d
    const/4 v15, 0x2

    .line 21
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_12

    .line 22
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shabakaty/downloader/tj;

    goto :goto_e

    :cond_12
    const/4 v15, 0x0

    :goto_e
    and-long v17, v2, v17

    cmp-long v21, v17, v4

    if-eqz v21, :cond_13

    if-eqz v15, :cond_13

    .line 23
    iget-object v4, v15, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_f

    :cond_13
    const/4 v4, 0x0

    :goto_f
    const-wide/32 v17, 0x100000

    and-long v17, v2, v17

    const-wide/16 v19, 0x0

    cmp-long v5, v17, v19

    if-eqz v5, :cond_14

    if-eqz v15, :cond_14

    .line 24
    iget-object v5, v15, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 25
    check-cast v5, Ljava/util/List;

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    goto :goto_11

    :cond_15
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_10

    :cond_16
    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_10
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_11
    const-wide/16 v17, 0xe6

    and-long v17, v2, v17

    const-wide/32 v19, 0x40000

    const-wide/16 v21, 0x0

    cmp-long v25, v17, v21

    if-eqz v25, :cond_1b

    if-eqz v9, :cond_17

    goto :goto_12

    :cond_17
    const/4 v13, 0x0

    :goto_12
    if-eqz v9, :cond_18

    goto :goto_13

    :cond_18
    move-object v11, v4

    :goto_13
    if-eqz v9, :cond_19

    move-object v5, v12

    :cond_19
    if-eqz v25, :cond_1c

    if-eqz v13, :cond_1a

    const-wide/32 v16, 0x80000

    or-long v2, v2, v16

    goto :goto_14

    :cond_1a
    or-long v2, v2, v19

    goto :goto_14

    :cond_1b
    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :cond_1c
    :goto_14
    and-long v16, v2, v19

    const-wide/16 v21, 0x200

    const-wide/16 v25, 0x0

    cmp-long v9, v16, v25

    if-eqz v9, :cond_1f

    const/4 v12, 0x2

    if-ne v7, v12, :cond_1d

    const/4 v7, 0x1

    goto :goto_15

    :cond_1d
    const/4 v7, 0x0

    :goto_15
    if-eqz v9, :cond_20

    if-eqz v7, :cond_1e

    or-long v2, v2, v21

    goto :goto_16

    :cond_1e
    const-wide/16 v16, 0x100

    or-long v2, v2, v16

    goto :goto_16

    :cond_1f
    const/4 v7, 0x0

    :cond_20
    :goto_16
    and-long v16, v2, v21

    const-wide/16 v21, 0x0

    cmp-long v9, v16, v21

    if-eqz v9, :cond_24

    if-eqz v8, :cond_21

    .line 26
    iget-object v14, v8, Lcom/shabakaty/downloader/rx;->j:Lcom/shabakaty/downloader/mj;

    :cond_21
    const/4 v8, 0x2

    .line 27
    invoke-virtual {v1, v8, v14}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_22

    .line 28
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lcom/shabakaty/downloader/tj;

    :cond_22
    if-eqz v15, :cond_23

    .line 29
    iget-object v4, v15, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    :cond_23
    if-eqz v4, :cond_24

    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_17

    :cond_24
    const/4 v0, 0x0

    :goto_17
    and-long v8, v2, v19

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_25

    if-eqz v7, :cond_25

    goto :goto_18

    :cond_25
    const/4 v0, 0x0

    :goto_18
    const-wide/16 v7, 0xe6

    and-long/2addr v7, v2

    cmp-long v4, v7, v14

    if-eqz v4, :cond_2a

    if-eqz v13, :cond_26

    const/4 v0, 0x1

    :cond_26
    if-eqz v4, :cond_28

    if-eqz v0, :cond_27

    const-wide/16 v7, 0x2000

    goto :goto_19

    :cond_27
    const-wide/16 v7, 0x1000

    :goto_19
    or-long/2addr v2, v7

    :cond_28
    if-eqz v0, :cond_29

    goto :goto_1a

    :cond_29
    const/16 v0, 0x8

    goto :goto_1b

    :cond_2a
    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    and-long v7, v2, v23

    const-wide/16 v12, 0x0

    cmp-long v4, v7, v12

    if-eqz v4, :cond_2b

    .line 31
    iget-object v4, v1, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

    .line 32
    iget-object v4, v4, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 33
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    const-wide/16 v7, 0x80

    and-long/2addr v7, v2

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-eqz v4, :cond_2c

    .line 34
    iget-object v4, v1, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

    iget-object v7, v1, Lcom/shabakaty/downloader/ri1;->T:Lcom/shabakaty/downloader/rm1;

    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/a35;->L(Lcom/shabakaty/downloader/rm1;)V

    .line 35
    iget-object v4, v1, Lcom/shabakaty/downloader/qi1;->O:Landroid/widget/TextView;

    const v7, 0x7f1201dc

    invoke-static {v4, v7, v4}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    :cond_2c
    const-wide/16 v7, 0xe6

    and-long/2addr v7, v2

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-eqz v4, :cond_2d

    .line 36
    iget-object v4, v1, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a35;->P(Ljava/util/List;)V

    .line 37
    iget-object v4, v1, Lcom/shabakaty/downloader/qi1;->N:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    iget-object v4, v1, Lcom/shabakaty/downloader/qi1;->O:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v0, v1, Lcom/shabakaty/downloader/qi1;->P:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v11}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    :cond_2d
    const-wide/16 v4, 0x90

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2e

    .line 40
    iget-object v0, v1, Lcom/shabakaty/downloader/qi1;->P:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v6}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    .line 41
    :cond_2e
    iget-object v0, v1, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

    .line 42
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 43
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/ri1;->U:J

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
    iget-object v0, p0, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/ri1;->U:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

    const-wide/16 v2, 0x8

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/ri1;->U:J

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
