.class public final Lcom/shabakaty/downloader/e21;
.super Lcom/shabakaty/downloader/hj;
.source "EditProfileFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/f21;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/ij1;",
        "Lcom/shabakaty/downloader/f21;",
        "Lcom/shabakaty/downloader/g21;",
        ">;",
        "Lcom/shabakaty/downloader/f21;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/downloader/e21;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/ij1;",
        "Lcom/shabakaty/downloader/f21;",
        "Lcom/shabakaty/downloader/g21;",
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
.field public static final synthetic y:I


# instance fields
.field public x:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0073

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public N1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/ij1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij1;->g0:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    const v0, 0x7f120127

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e21;->q(I)V

    return-void
.end method

.method public P0()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g21;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->l:Lcom/shabakaty/downloader/xv2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/ij1;

    iget-object v1, v1, Lcom/shabakaty/downloader/ij1;->c0:Lcom/shabakaty/downloader/r42;

    const-string v2, "binding.itemEditProfileFirstName"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->k(Lcom/shabakaty/downloader/r42;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g21;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->m:Lcom/shabakaty/downloader/xv2;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/ij1;

    iget-object v1, v1, Lcom/shabakaty/downloader/ij1;->d0:Lcom/shabakaty/downloader/r42;

    const-string v2, "binding.itemEditProfileLastName"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->k(Lcom/shabakaty/downloader/r42;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g21;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->q:Lcom/shabakaty/downloader/xv2;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast v1, Lcom/shabakaty/downloader/ij1;

    iget-object v1, v1, Lcom/shabakaty/downloader/ij1;->a0:Lcom/shabakaty/downloader/r42;

    const-string v2, "binding.itemEditProfileCountry"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->k(Lcom/shabakaty/downloader/r42;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g21;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->o:Lcom/shabakaty/downloader/xv2;

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 16
    check-cast v1, Lcom/shabakaty/downloader/ij1;

    iget-object v1, v1, Lcom/shabakaty/downloader/ij1;->Z:Lcom/shabakaty/downloader/r42;

    const-string v2, "binding.itemEditProfileCity"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->k(Lcom/shabakaty/downloader/r42;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g21;

    .line 18
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->p:Lcom/shabakaty/downloader/xv2;

    .line 19
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 20
    check-cast v1, Lcom/shabakaty/downloader/ij1;

    iget-object v1, v1, Lcom/shabakaty/downloader/ij1;->f0:Lcom/shabakaty/downloader/r42;

    const-string v2, "binding.itemEditProfilePhone"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->k(Lcom/shabakaty/downloader/r42;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g21;

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->r:Lcom/shabakaty/downloader/xv2;

    .line 23
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 24
    check-cast v1, Lcom/shabakaty/downloader/ij1;

    iget-object v1, v1, Lcom/shabakaty/downloader/ij1;->Q:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g21;

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->p:Lcom/shabakaty/downloader/xv2;

    .line 27
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g21;

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->r:Lcom/shabakaty/downloader/xv2;

    .line 29
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_4

    .line 30
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g21;

    .line 31
    iget-object v1, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 32
    invoke-static {v1}, Lcom/shabakaty/downloader/zi2;->i(Lcom/shabakaty/downloader/xv2;)V

    .line 33
    iget-object v2, v0, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 34
    iget-object v3, v0, Lcom/shabakaty/downloader/g21;->i:Lcom/shabakaty/downloader/g21$c;

    .line 35
    iget-object v1, v0, Lcom/shabakaty/downloader/g21;->p:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 36
    iget-object v1, v0, Lcom/shabakaty/downloader/g21;->n:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v5, "FEMALE"

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/shabakaty/usermanagement/data/model/Gender;->FEMALE:Lcom/shabakaty/usermanagement/data/model/Gender;

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/shabakaty/usermanagement/data/model/Gender;->MALE:Lcom/shabakaty/usermanagement/data/model/Gender;

    :goto_3
    move-object v5, v1

    .line 37
    iget-object v1, v0, Lcom/shabakaty/downloader/g21;->r:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 38
    iget-object v1, v0, Lcom/shabakaty/downloader/g21;->l:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 39
    iget-object v1, v0, Lcom/shabakaty/downloader/g21;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 40
    iget-object v1, v0, Lcom/shabakaty/downloader/g21;->q:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 41
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->o:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 42
    invoke-virtual/range {v2 .. v10}, Lcom/shabakaty/usermanagement/UserManagement;->updateAccountInfo(Lcom/shabakaty/usermanagement/callbacks/UpdateAccountInfoCallback;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :goto_4
    const v0, 0x7f120020

    .line 43
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e21;->q(I)V

    :goto_5
    return-void
.end method

.method public V1()V
    .locals 1

    const v0, 0x7f1201e8

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e21;->q(I)V

    return-void
.end method

.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public d0()V
    .locals 1

    const v0, 0x7f120128

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e21;->q(I)V

    return-void
.end method

.method public d1()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 5
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/d21;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/d21;-><init>(Lcom/shabakaty/downloader/e21;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 6
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/g21;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/g21;

    return-object v0
.end method

.method public e0()V
    .locals 1

    const v0, 0x7f120151

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e21;->q(I)V

    return-void
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

.method public o1()V
    .locals 1

    const v0, 0x7f1201e7

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e21;->q(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x265c

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/e21;->x:Landroid/net/Uri;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/g21;

    iget-object p2, p0, Lcom/shabakaty/downloader/e21;->x:Landroid/net/Uri;

    if-nez p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p3, p1, Lcom/shabakaty/downloader/g21;->g:Lcom/shabakaty/downloader/xv2;

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 6
    iget-object p3, p1, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/g21;->h:Lcom/shabakaty/downloader/g21$d;

    invoke-virtual {p3, p2, p1}, Lcom/shabakaty/usermanagement/UserManagement;->updateProfilePicture(Landroid/net/Uri;Lcom/shabakaty/usermanagement/callbacks/UpdateProfilePictureCallback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x7

    new-array p1, p1, [Landroid/view/View;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/ij1;

    iget-object p2, p2, Lcom/shabakaty/downloader/ij1;->c0:Lcom/shabakaty/downloader/r42;

    iget-object p2, p2, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "binding.itemEditProfileF\u2026Name.itemEditProfileInput"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/ij1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij1;->d0:Lcom/shabakaty/downloader/r42;

    iget-object v0, v0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.itemEditProfileL\u2026Name.itemEditProfileInput"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, p2

    const/4 p2, 0x2

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/ij1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij1;->f0:Lcom/shabakaty/downloader/r42;

    iget-object v0, v0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.itemEditProfilePhone.itemEditProfileInput"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, p2

    const/4 p2, 0x3

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/ij1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij1;->Z:Lcom/shabakaty/downloader/r42;

    iget-object v0, v0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.itemEditProfileCity.itemEditProfileInput"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 11
    check-cast v0, Lcom/shabakaty/downloader/ij1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij1;->a0:Lcom/shabakaty/downloader/r42;

    iget-object v0, v0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.itemEditProfileC\u2026ntry.itemEditProfileInput"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, p2

    const/4 p2, 0x5

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    check-cast v0, Lcom/shabakaty/downloader/ij1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij1;->b0:Lcom/shabakaty/downloader/r42;

    iget-object v0, v0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.itemEditProfileC\u2026word.itemEditProfileInput"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, p2

    const/4 p2, 0x6

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 15
    check-cast v0, Lcom/shabakaty/downloader/ij1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij1;->e0:Lcom/shabakaty/downloader/r42;

    iget-object v0, v0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.itemEditProfileN\u2026word.itemEditProfileInput"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, p2

    .line 16
    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->b([Landroid/view/View;)V

    return-void
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

.method public q1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/ij1;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij1;->b0:Lcom/shabakaty/downloader/r42;

    const-string v1, "binding.itemEditProfileCurrentPassword"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->k(Lcom/shabakaty/downloader/r42;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/ij1;

    iget-object v1, v1, Lcom/shabakaty/downloader/ij1;->e0:Lcom/shabakaty/downloader/r42;

    const-string v2, "binding.itemEditProfileNewPassword"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->k(Lcom/shabakaty/downloader/r42;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_a

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_4

    goto :goto_6

    .line 6
    :cond_4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v0, 0x7f1201ee

    .line 7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e21;->q(I)V

    goto :goto_7

    :cond_5
    if-eqz v0, :cond_7

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_b

    if-eqz v1, :cond_8

    invoke-static {v1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const/4 v2, 0x1

    :cond_9
    if-nez v2, :cond_b

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/g21;

    const-string v3, "oldPassword"

    .line 10
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newPassword"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, v2, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 12
    invoke-static {v3}, Lcom/shabakaty/downloader/zi2;->i(Lcom/shabakaty/downloader/xv2;)V

    .line 13
    iget-object v3, v2, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    iget-object v2, v2, Lcom/shabakaty/downloader/g21;->j:Lcom/shabakaty/downloader/g21$a;

    invoke-virtual {v3, v2, v0, v1, v1}, Lcom/shabakaty/usermanagement/UserManagement;->changePassword(Lcom/shabakaty/usermanagement/callbacks/ChangePasswordCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    :goto_6
    const v0, 0x7f12004b

    .line 14
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/e21;->q(I)V

    :cond_b
    :goto_7
    return-void
.end method

.method public t0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Select Picture"

    .line 3
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x265c

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
