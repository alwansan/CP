.class public final Lcom/shabakaty/cinemana/ui/login/LoginActivity;
.super Lcom/shabakaty/downloader/xi;
.source "LoginActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/yk2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xi<",
        "Lcom/shabakaty/downloader/c3;",
        "Lcom/shabakaty/downloader/yk2;",
        "Lcom/shabakaty/downloader/dl2;",
        ">;",
        "Lcom/shabakaty/downloader/yk2;"
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
        "Lcom/shabakaty/cinemana/ui/login/LoginActivity;",
        "Lcom/shabakaty/downloader/xi;",
        "Lcom/shabakaty/downloader/c3;",
        "Lcom/shabakaty/downloader/yk2;",
        "Lcom/shabakaty/downloader/dl2;",
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
.field public static final synthetic z:I


# instance fields
.field public v:Landroidx/appcompat/app/b;

.field public w:Landroidx/appcompat/app/b;

.field public x:Lcom/facebook/CallbackManager;

.field public y:Lcom/shabakaty/usermanagement/UserManagement;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d001f

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    return-void
.end method

.method public static final synthetic k0(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)Lcom/shabakaty/downloader/dl2;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/dl2;

    return-object p0
.end method


# virtual methods
.method public B1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shabakaty/cinemana/ui/login/SignUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2a44

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/dl2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/dl2;->q(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->m0()Lcom/shabakaty/usermanagement/UserManagement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/usermanagement/UserManagement;->getGoogleSignInIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x350b

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public G0()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;-><init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ih2;->c(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/c3;

    iget-object v0, v0, Lcom/shabakaty/downloader/c3;->V:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public M1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->w:Landroidx/appcompat/app/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fa;->dismiss()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->w:Landroidx/appcompat/app/b;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layoutInflater"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0d0052

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v1, v2, v0, v3, v4}, Lcom/shabakaty/downloader/vd5;->n(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZI)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ws0;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dl2;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ws0;->G(Lcom/shabakaty/downloader/dl2;)V

    .line 5
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 6
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->k()V

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/bn2;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v2, v0, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 9
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/bn2;->r(Landroid/view/View;)Lcom/shabakaty/downloader/bn2;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->v:Landroidx/appcompat/app/b;

    .line 12
    iget-object v1, v0, Lcom/shabakaty/downloader/ws0;->O:Lcom/shabakaty/downloader/r42;

    iget-object v1, v1, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v2, Lcom/shabakaty/cinemana/ui/login/LoginActivity$c;

    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity$c;-><init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)V

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15
    :goto_1
    iget-object v1, v0, Lcom/shabakaty/downloader/ws0;->N:Lcom/shabakaty/downloader/r42;

    iget-object v1, v1, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    new-instance v2, Lcom/shabakaty/cinemana/ui/login/LoginActivity$d;

    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity$d;-><init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)V

    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 18
    :goto_2
    iget-object v0, v0, Lcom/shabakaty/downloader/ws0;->M:Lcom/shabakaty/downloader/r42;

    iget-object v0, v0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    new-instance v1, Lcom/shabakaty/cinemana/ui/login/LoginActivity$e;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity$e;-><init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_3
    return-void
.end method

.method public b1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->w:Landroidx/appcompat/app/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fa;->dismiss()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->w:Landroidx/appcompat/app/b;

    return-void
.end method

.method public g0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->m0()Lcom/shabakaty/usermanagement/UserManagement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/usermanagement/UserManagement;->loginUsingFacebook(Landroid/app/Activity;)V

    return-void
.end method

.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/dl2;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/dl2;

    return-object v0
.end method

.method public j1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public l()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layoutInflater"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0d0055

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/vd5;->n(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZI)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/at0;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dl2;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/at0;->G(Lcom/shabakaty/downloader/dl2;)V

    .line 3
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 4
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->k()V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/bn2;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v2, v0, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 7
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/bn2;->r(Landroid/view/View;)Lcom/shabakaty/downloader/bn2;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->w:Landroidx/appcompat/app/b;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/at0;->M:Lcom/shabakaty/downloader/r42;

    iget-object v0, v0, Lcom/shabakaty/downloader/r42;->M:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lcom/shabakaty/cinemana/ui/login/LoginActivity$b;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity$b;-><init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    return-void
.end method

.method public final m0()Lcom/shabakaty/usermanagement/UserManagement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->y:Lcom/shabakaty/usermanagement/UserManagement;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "userManagement"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public m1()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/c3;

    iget-object v0, v0, Lcom/shabakaty/downloader/c3;->T:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ji1;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2a44

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x350b

    if-eq p1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/dl2;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/dl2;->q(Z)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->x:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/facebook/internal/CallbackManagerImpl;

    .line 4
    iget-object v0, v0, Lcom/facebook/internal/CallbackManagerImpl;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/CallbackManagerImpl$Callback;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p2, p3}, Lcom/facebook/internal/CallbackManagerImpl$Callback;->a(ILandroid/content/Intent;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7
    const-class v0, Lcom/facebook/internal/CallbackManagerImpl;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl;->b:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1, p2, p3}, Lcom/facebook/internal/CallbackManagerImpl$Callback;->a(ILandroid/content/Intent;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0

    throw p1

    :cond_1
    const-string p1, "callbackManager"

    .line 11
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_2
    :try_start_1
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Intent;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->m0()Lcom/shabakaty/usermanagement/UserManagement;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/shabakaty/usermanagement/UserManagement;->handleGoogleSignInResult(Lcom/shabakaty/downloader/uk4;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/dl2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/dl2;->q(Z)V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/c3;

    iget-object v1, v1, Lcom/shabakaty/downloader/c3;->T:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "binding.loginPasswordInput"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/c3;

    iget-object v1, v1, Lcom/shabakaty/downloader/c3;->V:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v4, "binding.loginUsernameInput"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->b([Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/c3;

    iget-object v0, v0, Lcom/shabakaty/downloader/c3;->U:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getSupportActionBar()Lcom/shabakaty/downloader/k2;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/k2;->m(Z)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    check-cast v0, Lcom/shabakaty/downloader/c3;

    iget-object v0, v0, Lcom/shabakaty/downloader/c3;->M:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f060136

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/wt2;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast v0, Lcom/shabakaty/downloader/c3;

    iget-object v0, v0, Lcom/shabakaty/downloader/c3;->T:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/wk2;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/wk2;-><init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_1
    new-array p1, p1, [Lcom/shabakaty/downloader/j44;

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 14
    check-cast v0, Lcom/shabakaty/downloader/c3;

    iget-object v0, v0, Lcom/shabakaty/downloader/c3;->V:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/q44;->b(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/shabakaty/downloader/j44$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/j44$a;->b()Lcom/shabakaty/downloader/j44;

    move-result-object v0

    aput-object v0, p1, v3

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 16
    check-cast v0, Lcom/shabakaty/downloader/c3;

    iget-object v0, v0, Lcom/shabakaty/downloader/c3;->T:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/q44;->b(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/shabakaty/downloader/j44$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/j44$a;->b()Lcom/shabakaty/downloader/j44;

    move-result-object v0

    aput-object v0, p1, v5

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/xk2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/xk2;-><init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)V

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/q44;->c([Lcom/shabakaty/downloader/j44;Lcom/shabakaty/downloader/tm1;)V

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->m0()Lcom/shabakaty/usermanagement/UserManagement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->setupFacebookLogin()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->x:Lcom/facebook/CallbackManager;

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

.method public r()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->v:Landroidx/appcompat/app/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fa;->dismiss()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->v:Landroidx/appcompat/app/b;

    return-void
.end method
