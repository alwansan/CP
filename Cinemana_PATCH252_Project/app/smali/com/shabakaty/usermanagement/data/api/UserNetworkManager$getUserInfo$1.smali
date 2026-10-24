.class public final Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$1;
.super Ljava/lang/Object;
.source "UserNetworkManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->getUserInfo(Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/xc0<",
        "Lcom/shabakaty/downloader/xs3<",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u001a\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0001 \u0002*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/shabakaty/downloader/xs3;",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/shabakaty/downloader/qv4;",
        "accept",
        "(Lcom/shabakaty/downloader/xs3;)V",
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
.field public final synthetic $getUserInfoCallback:Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;

.field public final synthetic this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$1;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    iput-object p2, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$1;->$getUserInfoCallback:Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/shabakaty/downloader/xs3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$1;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    const-string v1, "it"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$1;->$getUserInfoCallback:Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;

    invoke-static {v0, p1, v1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->access$onResponseGetUserInfo(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xs3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$1;->accept(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method
