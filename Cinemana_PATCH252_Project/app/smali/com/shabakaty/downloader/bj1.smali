.class public Lcom/shabakaty/downloader/bj1;
.super Lcom/shabakaty/downloader/aj1;
.source "FragmentDiscoverMoreBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bj1$b;,
        Lcom/shabakaty/downloader/bj1$a;,
        Lcom/shabakaty/downloader/bj1$c;
    }
.end annotation


# static fields
.field public static final V:Landroidx/databinding/ViewDataBinding$e;


# instance fields
.field public R:Lcom/shabakaty/downloader/bj1$c;

.field public S:Lcom/shabakaty/downloader/bj1$a;

.field public T:Lcom/shabakaty/downloader/bj1$b;

.field public U:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/bj1;->V:Landroidx/databinding/ViewDataBinding$e;

    const-string v1, "item_more_apps"

    .line 2
    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$e;->a(I[Ljava/lang/String;[I[I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x7f0d00a0
        0x7f0d00a0
        0x7f0d00a0
    .end array-data
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/bj1;->V:Landroidx/databinding/ViewDataBinding$e;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Lcom/shabakaty/downloader/g52;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lcom/shabakaty/downloader/g52;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lcom/shabakaty/downloader/g52;

    const/4 v6, 0x6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/aj1;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shabakaty/downloader/g52;Lcom/shabakaty/downloader/g52;Lcom/shabakaty/downloader/g52;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/bj1;->U:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/g52;

    if-eqz p1, :cond_0

    .line 5
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/g52;

    if-eqz p1, :cond_1

    .line 7
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/g52;

    if-eqz p1, :cond_2

    .line 9
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    :cond_2
    const/4 p1, 0x0

    .line 10
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 12
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bj1;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/rt0;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/aj1;->P:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

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
    check-cast p2, Lcom/shabakaty/downloader/st0;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/aj1;->Q:Ljava/lang/Object;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

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
    .locals 22

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/bj1;->U:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/bj1;->U:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/aj1;->P:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/rt0;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/aj1;->Q:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/st0;

    const-wide/16 v7, 0x140

    and-long/2addr v7, v2

    const/4 v9, 0x0

    cmp-long v10, v7, v4

    if-eqz v10, :cond_3

    if-eqz v0, :cond_3

    .line 7
    iget-object v7, v1, Lcom/shabakaty/downloader/bj1;->R:Lcom/shabakaty/downloader/bj1$c;

    if-nez v7, :cond_0

    new-instance v7, Lcom/shabakaty/downloader/bj1$c;

    invoke-direct {v7}, Lcom/shabakaty/downloader/bj1$c;-><init>()V

    iput-object v7, v1, Lcom/shabakaty/downloader/bj1;->R:Lcom/shabakaty/downloader/bj1$c;

    .line 8
    :cond_0
    iput-object v0, v7, Lcom/shabakaty/downloader/bj1$c;->r:Lcom/shabakaty/downloader/rt0;

    .line 9
    iget-object v8, v1, Lcom/shabakaty/downloader/bj1;->S:Lcom/shabakaty/downloader/bj1$a;

    if-nez v8, :cond_1

    new-instance v8, Lcom/shabakaty/downloader/bj1$a;

    invoke-direct {v8}, Lcom/shabakaty/downloader/bj1$a;-><init>()V

    iput-object v8, v1, Lcom/shabakaty/downloader/bj1;->S:Lcom/shabakaty/downloader/bj1$a;

    .line 10
    :cond_1
    iput-object v0, v8, Lcom/shabakaty/downloader/bj1$a;->r:Lcom/shabakaty/downloader/rt0;

    .line 11
    iget-object v11, v1, Lcom/shabakaty/downloader/bj1;->T:Lcom/shabakaty/downloader/bj1$b;

    if-nez v11, :cond_2

    new-instance v11, Lcom/shabakaty/downloader/bj1$b;

    invoke-direct {v11}, Lcom/shabakaty/downloader/bj1$b;-><init>()V

    iput-object v11, v1, Lcom/shabakaty/downloader/bj1;->T:Lcom/shabakaty/downloader/bj1$b;

    .line 12
    :cond_2
    iput-object v0, v11, Lcom/shabakaty/downloader/bj1$b;->r:Lcom/shabakaty/downloader/rt0;

    goto :goto_0

    :cond_3
    move-object v7, v9

    move-object v8, v7

    move-object v11, v8

    :goto_0
    const-wide/16 v12, 0x1a9

    and-long/2addr v12, v2

    const-wide/16 v14, 0x1a0

    const-wide/16 v16, 0x188

    const-wide/16 v18, 0x181

    cmp-long v0, v12, v4

    if-eqz v0, :cond_a

    and-long v12, v2, v18

    cmp-long v0, v12, v4

    if-eqz v0, :cond_5

    if-eqz v6, :cond_4

    .line 13
    iget-object v0, v6, Lcom/shabakaty/downloader/st0;->f:Lcom/shabakaty/downloader/xv2;

    goto :goto_1

    :cond_4
    move-object v0, v9

    :goto_1
    const/4 v12, 0x0

    .line 14
    invoke-virtual {v1, v12, v0}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    move-object v0, v9

    :goto_2
    and-long v12, v2, v16

    cmp-long v20, v12, v4

    if-eqz v20, :cond_7

    if-eqz v6, :cond_6

    .line 16
    iget-object v12, v6, Lcom/shabakaty/downloader/st0;->h:Lcom/shabakaty/downloader/xv2;

    goto :goto_3

    :cond_6
    move-object v12, v9

    :goto_3
    const/4 v13, 0x3

    .line 17
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_7

    .line 18
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_4

    :cond_7
    move-object v12, v9

    :goto_4
    and-long v20, v2, v14

    cmp-long v13, v20, v4

    if-eqz v13, :cond_9

    if-eqz v6, :cond_8

    .line 19
    iget-object v6, v6, Lcom/shabakaty/downloader/st0;->g:Lcom/shabakaty/downloader/xv2;

    goto :goto_5

    :cond_8
    move-object v6, v9

    :goto_5
    const/4 v13, 0x5

    .line 20
    invoke-virtual {v1, v13, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_9

    .line 21
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/Boolean;

    :cond_9
    move-object v6, v9

    move-object v9, v12

    goto :goto_6

    :cond_a
    move-object v0, v9

    move-object v6, v0

    :goto_6
    const-wide/16 v12, 0x100

    and-long/2addr v12, v2

    cmp-long v20, v12, v4

    if-eqz v20, :cond_b

    .line 22
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    .line 23
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 24
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1201ce

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/g52;->G(Ljava/lang/String;)V

    .line 25
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    .line 26
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 27
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f08022f

    invoke-static {v13, v14}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/g52;->H(Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    .line 29
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 30
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1201cf

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/g52;->L(Ljava/lang/String;)V

    .line 31
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    .line 32
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 33
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120252

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/g52;->G(Ljava/lang/String;)V

    .line 34
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    .line 35
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 36
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f080249

    invoke-static {v13, v14}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/g52;->H(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    .line 38
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 39
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120253

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/g52;->L(Ljava/lang/String;)V

    .line 40
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    .line 41
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 42
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120285

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/g52;->G(Ljava/lang/String;)V

    .line 43
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    .line 44
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 45
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f080252

    invoke-static {v13, v14}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/g52;->H(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    .line 47
    iget-object v13, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 48
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f120286

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/g52;->L(Ljava/lang/String;)V

    :cond_b
    and-long v12, v2, v16

    cmp-long v14, v12, v4

    if-eqz v14, :cond_c

    .line 49
    iget-object v12, v1, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v12, v9}, Lcom/shabakaty/downloader/g52;->I(Ljava/lang/Boolean;)V

    :cond_c
    if-eqz v10, :cond_d

    .line 50
    iget-object v9, v1, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v9, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v9, v11}, Lcom/shabakaty/downloader/g52;->J(Lcom/shabakaty/downloader/rm1;)V

    .line 51
    iget-object v9, v1, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v9, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v9, v8}, Lcom/shabakaty/downloader/g52;->J(Lcom/shabakaty/downloader/rm1;)V

    .line 52
    iget-object v8, v1, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v8, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/g52;->J(Lcom/shabakaty/downloader/rm1;)V

    :cond_d
    and-long v7, v2, v18

    cmp-long v9, v7, v4

    if-eqz v9, :cond_e

    .line 53
    iget-object v7, v1, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v7, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/g52;->I(Ljava/lang/Boolean;)V

    :cond_e
    const-wide/16 v7, 0x1a0

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_f

    .line 54
    iget-object v0, v1, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/g52;->I(Ljava/lang/Boolean;)V

    .line 55
    :cond_f
    iget-object v0, v1, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    .line 56
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 57
    iget-object v0, v1, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    .line 58
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 59
    iget-object v0, v1, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    .line 60
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/bj1;->U:J

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
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 8
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

    const-wide/16 v0, 0x100

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/bj1;->U:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->N:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->M:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/aj1;->O:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/g52;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception v0

    .line 8
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
    iget-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

    const-wide/16 v2, 0x20

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

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
    check-cast p2, Lcom/shabakaty/downloader/g52;

    if-nez p3, :cond_3

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

    const-wide/16 v2, 0x10

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

    const-wide/16 v2, 0x8

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

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
    check-cast p2, Lcom/shabakaty/downloader/g52;

    if-nez p3, :cond_7

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

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
    check-cast p2, Lcom/shabakaty/downloader/g52;

    if-nez p3, :cond_9

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/bj1;->U:J

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
