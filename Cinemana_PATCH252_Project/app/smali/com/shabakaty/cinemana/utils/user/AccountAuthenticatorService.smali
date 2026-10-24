.class public final Lcom/shabakaty/cinemana/utils/user/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "AccountAuthenticatorService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/utils/user/AccountAuthenticatorService;",
        "Landroid/app/Service;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Lcom/shabakaty/usermanagement/utils/account/AccountAuthenticator;

    const-class v0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/usermanagement/utils/account/AccountAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
