.class public final Lcom/shabakaty/cinemana/ui/login/SignUpActivity;
.super Lcom/shabakaty/downloader/xi;
.source "SignUpActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/z54;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xi<",
        "Lcom/shabakaty/downloader/x3;",
        "Lcom/shabakaty/downloader/z54;",
        "Lcom/shabakaty/downloader/a64;",
        ">;",
        "Lcom/shabakaty/downloader/z54;"
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
        "Lcom/shabakaty/cinemana/ui/login/SignUpActivity;",
        "Lcom/shabakaty/downloader/xi;",
        "Lcom/shabakaty/downloader/x3;",
        "Lcom/shabakaty/downloader/z54;",
        "Lcom/shabakaty/downloader/a64;",
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
.field public static final synthetic w:I


# instance fields
.field public v:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0023

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public I0()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/jpg"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Select Image"

    .line 5
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x265c

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public S(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(message)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->R:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/x3;

    iget-object p1, p1, Lcom/shabakaty/downloader/x3;->R:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method public W(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(message)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->O:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/x3;

    iget-object p1, p1, Lcom/shabakaty/downloader/x3;->O:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method public a1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public c0()V
    .locals 2

    const v0, 0x7f120020

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.all_t\u2026_fields_are_required_txt)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this"

    .line 2
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/vj$a;->b(Lcom/shabakaty/downloader/vj;Ljava/lang/String;)V

    return-void
.end method

.method public g1(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(message)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->U:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/x3;

    iget-object p1, p1, Lcom/shabakaty/downloader/x3;->U:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/a64;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/a64;

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

.method public o0()V
    .locals 1

    const v0, 0x7f12025c

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ui/login/SignUpActivity;->q(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ji1;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x265c

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/login/SignUpActivity;->v:Landroid/net/Uri;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/x3;

    iget-object p1, p1, Lcom/shabakaty/downloader/x3;->S:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object p2, p0, Lcom/shabakaty/cinemana/ui/login/SignUpActivity;->v:Landroid/net/Uri;

    invoke-virtual {p1, p2, p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->e(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/a64;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/a64;->k:Lcom/shabakaty/downloader/xv2;

    .line 7
    iget-object p2, p0, Lcom/shabakaty/cinemana/ui/login/SignUpActivity;->v:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x3

    new-array v0, p1, [Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/x3;

    iget-object v1, v1, Lcom/shabakaty/downloader/x3;->O:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "binding.signUpEmailInput"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/x3;

    iget-object v1, v1, Lcom/shabakaty/downloader/x3;->U:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v4, "binding.signUpUsernameInput"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v1, Lcom/shabakaty/downloader/x3;

    iget-object v1, v1, Lcom/shabakaty/downloader/x3;->R:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v6, "binding.signUpPasswordInput"

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    aput-object v1, v0, v7

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->b([Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->T:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getSupportActionBar()Lcom/shabakaty/downloader/k2;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/k2;->m(Z)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->N:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f060136

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/wt2;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 15
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->R:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/wk2;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/wk2;-><init>(Lcom/shabakaty/cinemana/ui/login/SignUpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_1
    new-array p1, p1, [Lcom/shabakaty/downloader/j44;

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 17
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->O:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/q44;->b(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/shabakaty/downloader/j44$a;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/shabakaty/downloader/j44;

    iget-object v2, v0, Lcom/shabakaty/downloader/j44$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v8, 0x0

    invoke-direct {v1, v2, v8}, Lcom/shabakaty/downloader/j44;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/shabakaty/downloader/nn0;)V

    .line 19
    new-instance v2, Lcom/shabakaty/downloader/k44;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/k44;-><init>(Lcom/shabakaty/downloader/j44$a;)V

    .line 20
    iput-object v2, v1, Lcom/shabakaty/downloader/j44;->c:Lcom/shabakaty/downloader/tm1;

    .line 21
    iget-object v2, v0, Lcom/shabakaty/downloader/j44$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2}, Lcom/shabakaty/downloader/vd5;->j(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object v9, v0, Lcom/shabakaty/downloader/j44$a;->c:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v9}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/mq3;

    .line 23
    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/mq3;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 24
    iput-boolean v2, v1, Lcom/shabakaty/downloader/j44;->b:Z

    .line 25
    invoke-virtual {v0}, Lcom/shabakaty/downloader/j44$a;->a()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120150

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    iput-object v0, v1, Lcom/shabakaty/downloader/j44;->d:Ljava/lang/String;

    aput-object v1, p1, v3

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 28
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->R:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/q44;->b(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/shabakaty/downloader/j44$a;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/shabakaty/downloader/j44;

    iget-object v2, v0, Lcom/shabakaty/downloader/j44$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v1, v2, v8}, Lcom/shabakaty/downloader/j44;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/shabakaty/downloader/nn0;)V

    .line 30
    sget-object v2, Lcom/shabakaty/downloader/l44;->r:Lcom/shabakaty/downloader/l44;

    .line 31
    iput-object v2, v1, Lcom/shabakaty/downloader/j44;->c:Lcom/shabakaty/downloader/tm1;

    .line 32
    iget-object v2, v0, Lcom/shabakaty/downloader/j44$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2}, Lcom/shabakaty/downloader/vd5;->j(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/q44;->a(Ljava/lang/String;)Z

    move-result v2

    .line 33
    iput-boolean v2, v1, Lcom/shabakaty/downloader/j44;->b:Z

    .line 34
    invoke-virtual {v0}, Lcom/shabakaty/downloader/j44$a;->a()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120254

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    iput-object v0, v1, Lcom/shabakaty/downloader/j44;->d:Ljava/lang/String;

    aput-object v1, p1, v5

    .line 36
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 37
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->U:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/q44;->b(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/shabakaty/downloader/j44$a;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/shabakaty/downloader/j44;

    iget-object v2, v0, Lcom/shabakaty/downloader/j44$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v1, v2, v8}, Lcom/shabakaty/downloader/j44;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/shabakaty/downloader/nn0;)V

    .line 39
    new-instance v2, Lcom/shabakaty/downloader/m44;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/m44;-><init>(Lcom/shabakaty/downloader/j44$a;)V

    .line 40
    iput-object v2, v1, Lcom/shabakaty/downloader/j44;->c:Lcom/shabakaty/downloader/tm1;

    .line 41
    iget-object v2, v0, Lcom/shabakaty/downloader/j44$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2}, Lcom/shabakaty/downloader/vd5;->j(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v2

    .line 42
    iget-object v3, v0, Lcom/shabakaty/downloader/j44$a;->d:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v3}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/mq3;

    .line 43
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/mq3;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 44
    iput-boolean v2, v1, Lcom/shabakaty/downloader/j44;->b:Z

    .line 45
    invoke-virtual {v0}, Lcom/shabakaty/downloader/j44$a;->a()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120255

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    iput-object v0, v1, Lcom/shabakaty/downloader/j44;->d:Ljava/lang/String;

    aput-object v1, p1, v7

    .line 47
    new-instance v0, Lcom/shabakaty/downloader/y54;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/y54;-><init>(Lcom/shabakaty/cinemana/ui/login/SignUpActivity;)V

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/q44;->c([Lcom/shabakaty/downloader/j44;Lcom/shabakaty/downloader/tm1;)V

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

.method public s1()V
    .locals 1

    const v0, 0x7f12025b

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ui/login/SignUpActivity;->q(I)V

    return-void
.end method

.method public x0()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/a64;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/a64;->h:Lcom/shabakaty/downloader/xv2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/x3;

    iget-object v1, v1, Lcom/shabakaty/downloader/x3;->U:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "binding.signUpUsernameInput"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->j(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/a64;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/a64;->j:Lcom/shabakaty/downloader/xv2;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/x3;

    iget-object v1, v1, Lcom/shabakaty/downloader/x3;->O:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "binding.signUpEmailInput"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->j(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/a64;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/a64;->i:Lcom/shabakaty/downloader/xv2;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast v1, Lcom/shabakaty/downloader/x3;

    iget-object v1, v1, Lcom/shabakaty/downloader/x3;->R:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "binding.signUpPasswordInput"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->j(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 14
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->U:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 16
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->U:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 18
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->O:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 20
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->O:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 22
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->R:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 24
    check-cast v0, Lcom/shabakaty/downloader/x3;

    iget-object v0, v0, Lcom/shabakaty/downloader/x3;->R:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/a64;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    .line 26
    iget-object v4, v0, Lcom/shabakaty/downloader/a64;->h:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, v0, Lcom/shabakaty/downloader/a64;->j:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, v0, Lcom/shabakaty/downloader/a64;->i:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 27
    aget-object v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-eqz v7, :cond_1

    .line 28
    invoke-static {v7}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    or-int/2addr v6, v7

    goto :goto_0

    :cond_2
    if-nez v6, :cond_7

    .line 29
    iget-object v1, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 30
    invoke-static {v1}, Lcom/shabakaty/downloader/zi2;->i(Lcom/shabakaty/downloader/xv2;)V

    .line 31
    iget-object v2, v0, Lcom/shabakaty/downloader/a64;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 32
    iget-object v1, v0, Lcom/shabakaty/downloader/a64;->h:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    if-nez v1, :cond_3

    move-object v1, v3

    .line 33
    :cond_3
    iget-object v4, v0, Lcom/shabakaty/downloader/a64;->j:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_4

    move-object v4, v3

    .line 34
    :cond_4
    iget-object v5, v0, Lcom/shabakaty/downloader/a64;->i:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_5

    move-object v5, v3

    .line 35
    :cond_5
    iget-object v6, v0, Lcom/shabakaty/downloader/a64;->i:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_6

    move-object v6, v3

    .line 36
    :cond_6
    iget-object v3, v0, Lcom/shabakaty/downloader/a64;->k:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/net/Uri;

    .line 37
    iget-object v8, v0, Lcom/shabakaty/downloader/a64;->g:Lcom/shabakaty/downloader/a64$a;

    move-object v3, v1

    .line 38
    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/usermanagement/UserManagement;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;)V

    goto :goto_3

    .line 39
    :cond_7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/z54;

    invoke-interface {v0}, Lcom/shabakaty/downloader/z54;->c0()V

    :goto_3
    return-void
.end method

.method public z0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->b(Lcom/shabakaty/downloader/vj;Ljava/lang/String;)V

    return-void
.end method
