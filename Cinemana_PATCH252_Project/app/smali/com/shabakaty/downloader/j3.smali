.class public Lcom/shabakaty/downloader/j3;
.super Lcom/shabakaty/downloader/i3;
.source "ActivityQrLoginBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final Y:Landroidx/databinding/ViewDataBinding$e;

.field public static final Z:Landroid/util/SparseIntArray;


# instance fields
.field public final V:Lcom/shabakaty/downloader/mm0;

.field public final W:Lcom/shabakaty/downloader/mm0;

.field public X:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/j3;->Y:Landroidx/databinding/ViewDataBinding$e;

    const-string v1, "item_edit_profile_input"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v4, v2, [I

    const v6, 0x7f0d0097

    aput v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroidx/databinding/ViewDataBinding$e;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j3;->Z:Landroid/util/SparseIntArray;

    const v1, 0x7f0a027d

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/j3;->Y:Landroidx/databinding/ViewDataBinding$e;

    sget-object v1, Lcom/shabakaty/downloader/j3;->Z:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    .line 2
    aget-object v1, v0, v1

    move-object v6, v1

    check-cast v6, Lcom/shabakaty/downloader/r42;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x2

    aget-object v2, v0, v1

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    const/4 v5, 0x3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v12}, Lcom/shabakaty/downloader/i3;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shabakaty/downloader/r42;Landroidx/appcompat/widget/Toolbar;Landroid/widget/ProgressBar;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/j3;->X:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/i3;->M:Lcom/shabakaty/downloader/r42;

    if-eqz p1, :cond_0

    .line 5
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    :cond_0
    const/4 p1, 0x0

    .line 6
    aget-object p1, v0, p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 8
    aget-object v0, v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->P:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->S:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0128

    .line 15
    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    new-instance p2, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p2, p0, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/j3;->V:Lcom/shabakaty/downloader/mm0;

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/j3;->W:Lcom/shabakaty/downloader/mm0;

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/j3;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->M:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/dk3;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/i3;->U:Lcom/shabakaty/downloader/dk3;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

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
    check-cast p2, Lcom/shabakaty/downloader/fk3;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/i3;->T:Lcom/shabakaty/downloader/fk3;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

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

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/i3;->U:Lcom/shabakaty/downloader/dk3;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/dk3;->H()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/i3;->U:Lcom/shabakaty/downloader/dk3;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/dk3;->S1()V

    :cond_4
    :goto_0
    return-void
.end method

.method public i()V
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/j3;->X:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/j3;->X:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/i3;->T:Lcom/shabakaty/downloader/fk3;

    const-wide/16 v5, 0x35

    and-long/2addr v5, v0

    const-wide/16 v7, 0x34

    const-wide/16 v9, 0x31

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v5, v2

    if-eqz v13, :cond_7

    and-long v5, v0, v9

    cmp-long v13, v5, v2

    if-eqz v13, :cond_5

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, v4, Lcom/shabakaty/downloader/fk3;->g:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    move-object v5, v12

    .line 7
    :goto_0
    invoke-virtual {p0, v11, v5}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v5, v12

    .line 9
    :goto_1
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v13, :cond_3

    if-eqz v5, :cond_2

    const-wide/16 v13, 0x80

    goto :goto_2

    :cond_2
    const-wide/16 v13, 0x40

    :goto_2
    or-long/2addr v0, v13

    :cond_3
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    const/16 v11, 0x8

    :cond_5
    :goto_3
    and-long v5, v0, v7

    cmp-long v13, v5, v2

    if-eqz v13, :cond_7

    if-eqz v4, :cond_6

    .line 10
    iget-object v4, v4, Lcom/shabakaty/downloader/fk3;->h:Lcom/shabakaty/downloader/xv2;

    goto :goto_4

    :cond_6
    move-object v4, v12

    :goto_4
    const/4 v5, 0x2

    .line 11
    invoke-virtual {p0, v5, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_7

    .line 12
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object v4, v12

    :goto_5
    const-wide/16 v5, 0x20

    and-long/2addr v5, v0

    cmp-long v13, v5, v2

    if-eqz v13, :cond_8

    .line 13
    iget-object v5, p0, Lcom/shabakaty/downloader/i3;->M:Lcom/shabakaty/downloader/r42;

    .line 14
    iget-object v6, p0, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 15
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v13, 0x7f1202c2

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 16
    iget-object v5, p0, Lcom/shabakaty/downloader/i3;->P:Lcom/google/android/material/button/MaterialButton;

    const v6, 0x7f120168

    invoke-static {v5, v6, v5}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 17
    iget-object v5, p0, Lcom/shabakaty/downloader/i3;->P:Lcom/google/android/material/button/MaterialButton;

    iget-object v6, p0, Lcom/shabakaty/downloader/j3;->W:Lcom/shabakaty/downloader/mm0;

    invoke-static {v5, v6, v12}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 18
    iget-object v5, p0, Lcom/shabakaty/downloader/i3;->Q:Landroid/widget/TextView;

    const v6, 0x7f120203

    invoke-static {v5, v6, v5}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 19
    iget-object v5, p0, Lcom/shabakaty/downloader/i3;->R:Landroid/widget/TextView;

    const v6, 0x7f120204

    invoke-static {v5, v6, v5}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 20
    iget-object v5, p0, Lcom/shabakaty/downloader/i3;->S:Lcom/google/android/material/button/MaterialButton;

    const v6, 0x7f120241

    invoke-static {v5, v6, v5}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 21
    iget-object v5, p0, Lcom/shabakaty/downloader/i3;->S:Lcom/google/android/material/button/MaterialButton;

    iget-object v6, p0, Lcom/shabakaty/downloader/j3;->V:Lcom/shabakaty/downloader/mm0;

    invoke-static {v5, v6, v12}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    :cond_8
    and-long v5, v0, v7

    cmp-long v7, v5, v2

    if-eqz v7, :cond_9

    .line 22
    iget-object v5, p0, Lcom/shabakaty/downloader/i3;->M:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/r42;->I(Ljava/lang/String;)V

    :cond_9
    and-long/2addr v0, v9

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->M:Lcom/shabakaty/downloader/r42;

    .line 25
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 26
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/j3;->X:J

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
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->M:Lcom/shabakaty/downloader/r42;

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

    const-wide/16 v0, 0x20

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/j3;->X:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/i3;->M:Lcom/shabakaty/downloader/r42;

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

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
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_3

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/j3;->X:J

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
