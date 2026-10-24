.class public final Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;
.super Lcom/facebook/AccessTokenTracker;
.source "UserManagement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/UserManagement;->createFacebookAccessTokenTracker()Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "com/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1",
        "Lcom/facebook/AccessTokenTracker;",
        "Lcom/facebook/AccessToken;",
        "oldToken",
        "newToken",
        "Lcom/shabakaty/downloader/qv4;",
        "onCurrentAccessTokenChanged",
        "usermanagement_debug"
    }
    k = 0x1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p2, Lcom/facebook/AccessToken;->v:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {p2}, Lcom/shabakaty/usermanagement/UserManagement;->access$getUserNetworkManager$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->loginUsingFacebook(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
