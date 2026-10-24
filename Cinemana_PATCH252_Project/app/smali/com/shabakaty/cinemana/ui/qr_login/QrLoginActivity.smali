.class public final Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;
.super Lcom/shabakaty/downloader/xi;
.source "QrLoginActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/dk3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xi<",
        "Lcom/shabakaty/downloader/i3;",
        "Lcom/shabakaty/downloader/dk3;",
        "Lcom/shabakaty/downloader/fk3;",
        ">;",
        "Lcom/shabakaty/downloader/dk3;"
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
        "Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;",
        "Lcom/shabakaty/downloader/xi;",
        "Lcom/shabakaty/downloader/i3;",
        "Lcom/shabakaty/downloader/dk3;",
        "Lcom/shabakaty/downloader/fk3;",
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
.field public static final synthetic v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0020

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public H()V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/ld0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;->m0()V

    goto :goto_0

    .line 3
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/s2;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public S1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/i3;

    iget-object v0, v0, Lcom/shabakaty/downloader/i3;->M:Lcom/shabakaty/downloader/r42;

    const-string v1, "binding.itemUserCode"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->k(Lcom/shabakaty/downloader/r42;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    const v0, 0x7f120131

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;->q(I)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;->k0(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/fk3;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/fk3;

    return-object v0
.end method

.method public final k0(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codeAsNumber.toString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(locale, format, *args)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fk3;

    const-string v1, "userCode"

    .line 4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/fk3;->g:Lcom/shabakaty/downloader/xv2;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 6
    new-instance v1, Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;

    iget-object v2, v0, Lcom/shabakaty/downloader/fk3;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-direct {v1, v2}, Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;-><init>(Lcom/shabakaty/usermanagement/UserManagement;)V

    new-instance v2, Lcom/shabakaty/downloader/ek3;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/ek3;-><init>(Lcom/shabakaty/downloader/fk3;)V

    invoke-virtual {v1, v2, p1}, Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;->verifyDeviceWithUserCode(Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f120202

    .line 7
    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;->q(I)V

    :goto_0
    return-void
.end method

.method public k1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final m0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x65

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ji1;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "UserCode"

    .line 2
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_2

    .line 3
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/bn2;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120200

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/bn2;->q(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/bn2;

    move-result-object v1

    .line 7
    iget-object v2, v1, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1202a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shabakaty/downloader/ck3;->s:Lcom/shabakaty/downloader/ck3;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/bn2;->m(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1202bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/shabakaty/downloader/qh0;

    invoke-direct {v2, p0, p3}, Lcom/shabakaty/downloader/qh0;-><init>(Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/bn2;->o(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    .line 10
    invoke-virtual {v1}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    :cond_3
    if-ne p1, p2, :cond_4

    const-string p1, "android.permission.CAMERA"

    .line 11
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/ld0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;->m0()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/i3;

    iget-object p1, p1, Lcom/shabakaty/downloader/i3;->N:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/r9;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getSupportActionBar()Lcom/shabakaty/downloader/k2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/k2;->m(Z)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ji1;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 2
    array-length p1, p3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, p2

    if-eqz p1, :cond_2

    .line 3
    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;->m0()V

    goto :goto_1

    :cond_1
    const-string p1, "android.permission.CAMERA"

    .line 5
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/s2;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "package"

    invoke-static {v1, p3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v0, "fromParts(\"package\", packageName, null)"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
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
