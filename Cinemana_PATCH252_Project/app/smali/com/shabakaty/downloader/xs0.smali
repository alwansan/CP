.class public Lcom/shabakaty/downloader/xs0;
.super Lcom/shabakaty/downloader/ws0;
.source "DialogChangePasswordBindingImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/lm0$a;


# static fields
.field public static final T:Landroidx/databinding/ViewDataBinding$e;


# instance fields
.field public final R:Lcom/shabakaty/downloader/mm0;

.field public S:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$e;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/xs0;->T:Landroidx/databinding/ViewDataBinding$e;

    const-string v1, "item_edit_profile_input"

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
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x7f0d0097
        0x7f0d0097
        0x7f0d0097
    .end array-data
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/xs0;->T:Landroidx/databinding/ViewDataBinding$e;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Lcom/shabakaty/downloader/r42;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lcom/shabakaty/downloader/r42;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lcom/shabakaty/downloader/r42;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    move-object v10, v3

    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    const/4 v6, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/ws0;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shabakaty/downloader/r42;Lcom/shabakaty/downloader/r42;Lcom/shabakaty/downloader/r42;Lcom/google/android/material/button/MaterialButton;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/xs0;->S:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/ws0;->M:Lcom/shabakaty/downloader/r42;

    if-eqz p1, :cond_0

    .line 7
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ws0;->N:Lcom/shabakaty/downloader/r42;

    if-eqz p1, :cond_1

    .line 9
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ws0;->O:Lcom/shabakaty/downloader/r42;

    if-eqz p1, :cond_2

    .line 11
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/ViewDataBinding;

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ws0;->P:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 13
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/lm0;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/lm0;-><init>(Lcom/shabakaty/downloader/lm0$a;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/xs0;->R:Lcom/shabakaty/downloader/mm0;

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xs0;->p()V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/rh2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->O:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->N:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->M:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->B(Lcom/shabakaty/downloader/rh2;)V

    return-void
.end method

.method public D(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x26

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/dl2;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/xs0;->G(Lcom/shabakaty/downloader/dl2;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public G(Lcom/shabakaty/downloader/dl2;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ws0;->Q:Lcom/shabakaty/downloader/dl2;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/xs0;->S:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/xs0;->S:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x26

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

.method public final d(ILandroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ws0;->Q:Lcom/shabakaty/downloader/dl2;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_5

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/dl2;->s:Ljava/lang/String;

    invoke-static {p2}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/shabakaty/downloader/dl2;->s:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p2, p1, Lcom/shabakaty/downloader/dl2;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/shabakaty/downloader/dl2;->r:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yk2;

    const p2, 0x7f1201ed

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/vj;->q(I)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object p2, p1, Lcom/shabakaty/downloader/dl2;->q:Ljava/lang/String;

    invoke-static {p2}, Lcom/shabakaty/downloader/q44;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yk2;

    const p2, 0x7f120254

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/vj;->q(I)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p1, Lcom/shabakaty/downloader/dl2;->h:Lcom/shabakaty/usermanagement/UserManagement;

    .line 8
    iget-object v1, p1, Lcom/shabakaty/downloader/dl2;->k:Lcom/shabakaty/downloader/dl2$d;

    .line 9
    iget-object v2, p1, Lcom/shabakaty/downloader/dl2;->p:Ljava/lang/String;

    .line 10
    iget-object v3, p1, Lcom/shabakaty/downloader/dl2;->q:Ljava/lang/String;

    .line 11
    iget-object v4, p1, Lcom/shabakaty/downloader/dl2;->r:Ljava/lang/String;

    .line 12
    iget-object v5, p1, Lcom/shabakaty/downloader/dl2;->s:Ljava/lang/String;

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/usermanagement/UserManagement;->resetPassword(Lcom/shabakaty/usermanagement/callbacks/ResetPasswordCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yk2;

    const p2, 0x7f120248

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/vj;->q(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public i()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/xs0;->S:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/xs0;->S:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->M:Lcom/shabakaty/downloader/r42;

    .line 6
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->N:Lcom/shabakaty/downloader/r42;

    .line 9
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->O:Lcom/shabakaty/downloader/r42;

    .line 12
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/r42;->G(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->P:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f120266

    invoke-static {v0, v1, v0}, Lcom/shabakaty/downloader/e3;->a(Lcom/google/android/material/button/MaterialButton;ILcom/google/android/material/button/MaterialButton;)V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->P:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/xs0;->R:Lcom/shabakaty/downloader/mm0;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/st2;->c(Landroid/view/View;Lcom/shabakaty/downloader/mm0;Ljava/lang/Boolean;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->O:Lcom/shabakaty/downloader/r42;

    .line 17
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->N:Lcom/shabakaty/downloader/r42;

    .line 19
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->M:Lcom/shabakaty/downloader/r42;

    .line 21
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 22
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/xs0;->S:J

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
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->O:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->N:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->M:Lcom/shabakaty/downloader/r42;

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

    const-wide/16 v0, 0x10

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/xs0;->S:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->O:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->N:Lcom/shabakaty/downloader/r42;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ws0;->M:Lcom/shabakaty/downloader/r42;

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

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/xs0;->S:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/xs0;->S:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/xs0;->S:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/xs0;->S:J

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
    check-cast p2, Lcom/shabakaty/downloader/r42;

    if-nez p3, :cond_5

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/xs0;->S:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/xs0;->S:J

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
