.class public final Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator$manager$2;
.super Lcom/shabakaty/downloader/af2;
.source "SimpleAccountAuthenticator.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroid/accounts/AccountManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroid/accounts/AccountManager;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "()Landroid/accounts/AccountManager;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator$manager$2;->this$0:Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/accounts/AccountManager;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator$manager$2;->this$0:Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;

    invoke-static {v0}, Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;->access$getContext$p(Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator$manager$2;->invoke()Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method
