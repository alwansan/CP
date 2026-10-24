.class public final Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$2;
.super Ljava/lang/Object;
.source "UserNetworkManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->updateProfilePicture(Landroid/net/Uri;Ljava/lang/String;)V
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcom/shabakaty/downloader/xs3;",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "response",
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
.field public final synthetic this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$2;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

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

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$2;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    const/4 v1, 0x1

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;

    invoke-static {v0, v1, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->access$onResponseProfilePicture(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;ZLcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$2;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->access$onResponseProfilePicture(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;ZLcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xs3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$2;->accept(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method
