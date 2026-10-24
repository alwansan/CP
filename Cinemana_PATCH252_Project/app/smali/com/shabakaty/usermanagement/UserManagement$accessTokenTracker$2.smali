.class public final Lcom/shabakaty/usermanagement/UserManagement$accessTokenTracker$2;
.super Lcom/shabakaty/downloader/af2;
.source "UserManagement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/UserManagement;-><init>(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;",
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
        "\u0000\u0007\n\u0002\u0008\u0004*\u0001\u0000\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "com/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1",
        "invoke",
        "()Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;",
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
.field public final synthetic this$0:Lcom/shabakaty/usermanagement/UserManagement;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement$accessTokenTracker$2;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement$accessTokenTracker$2;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {v0}, Lcom/shabakaty/usermanagement/UserManagement;->access$createFacebookAccessTokenTracker(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement$accessTokenTracker$2;->invoke()Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;

    move-result-object v0

    return-object v0
.end method
