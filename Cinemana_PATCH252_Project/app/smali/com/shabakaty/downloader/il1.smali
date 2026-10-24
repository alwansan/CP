.class public Lcom/shabakaty/downloader/il1;
.super Lcom/shabakaty/downloader/hl1;
.source "FragmentUserListsBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final X:Landroid/util/SparseIntArray;


# instance fields
.field public final T:Lcom/shabakaty/downloader/mm0;

.field public final U:Lcom/shabakaty/downloader/mm0;

.field public final V:Lcom/shabakaty/downloader/mm0;

.field public W:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/il1;->X:Landroid/util/SparseIntArray;

    const v1, 0x7f0a04dc

    const/4 v2, 0x7

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/il1;->X:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/4 v13, 0x0

    move-object/from16 v2, p1

    invoke-static {v2, v12, v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v14

    const/4 v0, 0x4

    .line 2
    aget-object v0, v14, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v15, 0x2

    aget-object v0, v14, v15

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, v14, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v10, 0x3

    aget-object v0, v14, v10

    move-object v7, v0

    check-cast v7, Landroidx/cardview/widget/CardView;

    const/4 v0, 0x7

    aget-object v0, v14, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x5

    aget-object v0, v14, v0

    move-object v9, v0

    check-cast v9, Landroidx/cardview/widget/CardView;

    const/4 v3, 0x1

    aget-object v0, v14, v3

    move-object/from16 v16, v0

    check-cast v16, Landroidx/cardview/widget/CardView;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x1

    move/from16 v3, v17

    const/4 v15, 0x3

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/hl1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroidx/constraintlayout/widget/Guideline;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v11, Lcom/shabakaty/downloader/il1;->W:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, v14, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v11, Lcom/shabakaty/downloader/hl1;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v11, Lcom/shabakaty/downloader/hl1;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v11, Lcom/shabakaty/downloader/hl1;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v11, Lcom/shabakaty/downloader/hl1;->P:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v11, Lcom/shabakaty/downloader/hl1;->Q:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v11, Lcom/shabakaty/downloader/hl1;->R:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 12
    invoke-virtual {v12, v0, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    invoke-direct {v0, v11, v15}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/il1;->T:Lcom/shabakaty/downloader/mm0;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x1

    invoke-direct {v0, v11, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/il1;->U:Lcom/shabakaty/downloader/mm0;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/lm0;

    const/4 v1, 0x2

    invoke-direct {v0, v11, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object v0, v11, Lcom/shabakaty/downloader/il1;->V:Lcom/shabakaty/downloader/mm0;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/il1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x26

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/fy4;

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/ey4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/hl1;->S:Lcom/shabakaty/downloader/ey4;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/il1;->W:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/il1;->W:J

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 8
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    iget-object p1, p0, Lcom/shabakaty/downloader/hl1;->S:Lcom/shabakaty/downloader/ey4;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ey4;->K1()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/hl1;->S:Lcom/shabakaty/downloader/ey4;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/ey4;->S0()V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/hl1;->S:Lcom/shabakaty/downloader/ey4;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/ey4;->p()V

    :cond_6
    :goto_0
    return-void
.end method

.method public i()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/il1;->W:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/il1;->W:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/hl1;->M:Landroid/widget/TextView;

    const v1, 0x7f12012c

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/hl1;->N:Landroid/widget/TextView;

    const v1, 0x7f1202de

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/hl1;->O:Landroid/widget/TextView;

    const v1, 0x7f1202d9

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/hl1;->P:Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/shabakaty/downloader/il1;->V:Lcom/shabakaty/downloader/mm0;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/hl1;->Q:Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/shabakaty/downloader/il1;->T:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/hl1;->R:Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/shabakaty/downloader/il1;->U:Lcom/shabakaty/downloader/mm0;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 11
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/il1;->W:J

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

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/il1;->W:J

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
