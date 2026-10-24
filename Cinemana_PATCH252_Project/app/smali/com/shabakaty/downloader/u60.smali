.class public final Lcom/shabakaty/downloader/u60;
.super Lcom/shabakaty/downloader/aj;
.source "CommentsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/v60;
.implements Lcom/shabakaty/downloader/r60;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/aj<",
        "Lcom/shabakaty/downloader/si1;",
        "Lcom/shabakaty/downloader/v60;",
        "Lcom/shabakaty/downloader/g70;",
        ">;",
        "Lcom/shabakaty/downloader/v60;",
        "Lcom/shabakaty/downloader/r60;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00032\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/downloader/u60;",
        "Lcom/shabakaty/downloader/aj;",
        "Lcom/shabakaty/downloader/si1;",
        "Lcom/shabakaty/downloader/v60;",
        "Lcom/shabakaty/downloader/g70;",
        "Lcom/shabakaty/downloader/r60;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic S:I


# instance fields
.field public N:Lcom/shabakaty/downloader/zv0;

.field public O:Lcom/shabakaty/downloader/ys0;

.field public P:Landroidx/appcompat/app/b;

.field public Q:Landroidx/appcompat/app/b;

.field public R:Landroidx/appcompat/app/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d006c

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/aj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public A0(Lcom/shabakaty/cinemana/domain/models/local/Comment;)V
    .locals 5

    const-string v0, "comment"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u60;->h2()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/Comment;

    .line 4
    iget-object v3, v3, Lcom/shabakaty/cinemana/domain/models/local/Comment;->commentNb:Ljava/lang/String;

    iget-object v4, p1, Lcom/shabakaty/cinemana/domain/models/local/Comment;->commentNb:Ljava/lang/String;

    .line 5
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/u60;->N:Lcom/shabakaty/downloader/zv0;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/u60;->h2()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRemoved(I)V

    :goto_2
    return-void

    :cond_4
    const-string p1, "commentsAdapter"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public K0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g70;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g70;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/si1;

    iget-object v0, v0, Lcom/shabakaty/downloader/si1;->S:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/g70;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "comment"

    .line 8
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/g70;->h:Lcom/shabakaty/downloader/ox4;

    iget-object v3, v1, Lcom/shabakaty/downloader/g70;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "videoNb"

    .line 10
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v4, v2, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v5, v2, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v5}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3, v0}, Lcom/shabakaty/downloader/k9;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 12
    iget-object v3, v2, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v4, Lcom/shabakaty/downloader/hx;

    const/16 v5, 0xc

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v3, Lcom/shabakaty/downloader/v74;

    invoke-direct {v3, v0, v4}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 14
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/a70;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/a70;-><init>(Lcom/shabakaty/downloader/g70;)V

    sget-object v3, Lcom/shabakaty/downloader/b70;->r:Lcom/shabakaty/downloader/b70;

    invoke-virtual {v1, v0, v2, v3}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 17
    check-cast v0, Lcom/shabakaty/downloader/si1;

    iget-object v0, v0, Lcom/shabakaty/downloader/si1;->S:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    const v0, 0x7f12016c

    .line 18
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/u60;->q(I)V

    :goto_3
    return-void
.end method

.method public L1(Lcom/shabakaty/cinemana/domain/models/local/Comment;)V
    .locals 4

    const-string v0, "comment"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u60;->R:Landroidx/appcompat/app/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    const v1, 0x7f120214

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bn2;->q(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    const v1, 0x7f120215

    .line 5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const v1, 0x7f1202bc

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/shabakaty/downloader/s60;

    invoke-direct {v3, p0, p1, v2}, Lcom/shabakaty/downloader/s60;-><init>(Lcom/shabakaty/downloader/u60;Lcom/shabakaty/cinemana/domain/models/local/Comment;I)V

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/bn2;->o(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    const p1, 0x7f1202a6

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/shabakaty/downloader/qg4;->t:Lcom/shabakaty/downloader/qg4;

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/bn2;->m(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bn2;->create()Landroidx/appcompat/app/b;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/u60;->R:Landroidx/appcompat/app/b;

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/u60;->R:Landroidx/appcompat/app/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    const-string p1, "reportCommentDialog"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public O1(Lcom/shabakaty/cinemana/domain/models/local/Comment;)V
    .locals 4

    const-string v0, "comment"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u60;->Q:Landroidx/appcompat/app/b;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0054

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/shabakaty/downloader/hl0;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v2, "inflate(layoutInflater, \u2026date_layout, null, false)"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/ys0;

    iput-object v0, p0, Lcom/shabakaty/downloader/u60;->O:Lcom/shabakaty/downloader/ys0;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v2, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/u60;->O:Lcom/shabakaty/downloader/ys0;

    const-string v3, "updateCommentDialogView"

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, v2, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 7
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/bn2;->r(Landroid/view/View;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bn2;->create()Landroidx/appcompat/app/b;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/u60;->Q:Landroidx/appcompat/app/b;

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/u60;->O:Lcom/shabakaty/downloader/ys0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/ys0;->O:Lcom/google/android/material/button/MaterialButton;

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/ig4;

    invoke-direct {v2, p0, p1}, Lcom/shabakaty/downloader/ig4;-><init>(Lcom/shabakaty/downloader/u60;Lcom/shabakaty/cinemana/domain/models/local/Comment;)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/u60;->O:Lcom/shabakaty/downloader/ys0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/shabakaty/downloader/ys0;->N:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lcom/shabakaty/downloader/ck;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ck;-><init>(Lcom/shabakaty/downloader/u60;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_1
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_2
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/u60;->Q:Landroidx/appcompat/app/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_4
    const-string p1, "updateCommentDialog"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public Q0(Lcom/shabakaty/cinemana/domain/models/local/Comment;)V
    .locals 4

    const-string v0, "comment"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u60;->P:Landroidx/appcompat/app/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    const v1, 0x7f1200cf

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bn2;->q(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    const v1, 0x7f1200d0

    .line 5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const v1, 0x7f1202bc

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/s60;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/shabakaty/downloader/s60;-><init>(Lcom/shabakaty/downloader/u60;Lcom/shabakaty/cinemana/domain/models/local/Comment;I)V

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/bn2;->o(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    const p1, 0x7f1202a6

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/shabakaty/downloader/kb;->t:Lcom/shabakaty/downloader/kb;

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/bn2;->m(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bn2;->create()Landroidx/appcompat/app/b;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/u60;->P:Landroidx/appcompat/app/b;

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/u60;->P:Landroidx/appcompat/app/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    const-string p1, "deleteCommentDialog"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d2()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public g2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/g70;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/g70;

    return-object v0
.end method

.method public final h2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/Comment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g70;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g70;->k:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/util/List;

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_1
    return-object v0
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/aj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    .line 3
    instance-of p2, p1, Lcom/google/android/material/bottomsheet/a;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/material/bottomsheet/a;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p2, Lcom/shabakaty/downloader/si1;

    iget-object p2, p2, Lcom/shabakaty/downloader/si1;->P:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.commentsRoot"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/s45;->e(Lcom/google/android/material/bottomsheet/a;Landroid/view/View;)Lcom/google/android/material/bottomsheet/a;

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/g70;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "VideoIDArg"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, ""

    .line 7
    :cond_2
    iput-object p2, p1, Lcom/shabakaty/downloader/g70;->l:Ljava/lang/String;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/t60;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/t60;-><init>(Lcom/shabakaty/downloader/u60;)V

    const-string p2, "COMMENTS_RULES_INTRO_KEY"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/he0;->r(Ljava/lang/String;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/f73;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/g70;

    .line 10
    iget-object p2, p1, Lcom/shabakaty/downloader/g70;->g:Lcom/shabakaty/downloader/q15;

    iget-object v1, p1, Lcom/shabakaty/downloader/g70;->l:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "videoNb"

    .line 11
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v2, p2, Lcom/shabakaty/downloader/q15;->a:Lcom/shabakaty/downloader/k9;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/k9;->getComments(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 13
    iget-object p2, p2, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    new-instance v2, Lcom/shabakaty/downloader/hx;

    const/16 v3, 0x16

    invoke-direct {v2, p2, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/v74;

    invoke-direct {p2, v1, v2}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 15
    invoke-static {p2}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 16
    iget-object v1, p1, Lcom/shabakaty/downloader/g70;->k:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1, p2, v1}, Lcom/shabakaty/downloader/xk;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;

    .line 17
    new-instance p1, Lcom/shabakaty/downloader/zv0;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/g70;

    .line 18
    iget-object v1, v1, Lcom/shabakaty/downloader/g70;->j:Lcom/shabakaty/downloader/xv2;

    .line 19
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p1, p2, v1, p0}, Lcom/shabakaty/downloader/zv0;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/r60;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/u60;->N:Lcom/shabakaty/downloader/zv0;

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 21
    check-cast p1, Lcom/shabakaty/downloader/si1;

    iget-object p1, p1, Lcom/shabakaty/downloader/si1;->O:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/shabakaty/downloader/u60;->N:Lcom/shabakaty/downloader/zv0;

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void

    :cond_3
    const-string p1, "commentsAdapter"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method
