.class public final Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;
.super Ljava/lang/Object;
.source "UserManagement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/usermanagement/UserManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceFlow"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;",
        "",
        "Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;",
        "verifyDeviceCallback",
        "",
        "userCode",
        "Lcom/shabakaty/downloader/qv4;",
        "verifyDeviceWithUserCode",
        "<init>",
        "(Lcom/shabakaty/usermanagement/UserManagement;)V",
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
    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verifyDeviceWithUserCode(Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;Ljava/lang/String;)V
    .locals 1

    const-string v0, "verifyDeviceCallback"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCode"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {v0, p1}, Lcom/shabakaty/usermanagement/UserManagement;->access$setVerifyDeviceCallback$p(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {p1}, Lcom/shabakaty/usermanagement/UserManagement;->access$getUserNetworkManager$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->getBearerToken()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->verifyDevice(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
