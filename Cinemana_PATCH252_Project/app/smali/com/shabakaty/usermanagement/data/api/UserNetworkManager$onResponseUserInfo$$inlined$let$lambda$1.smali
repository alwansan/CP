.class public final Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$onResponseUserInfo$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "UserNetworkManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseUserInfo(Lcom/shabakaty/downloader/xs3;)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/shabakaty/downloader/qv4;",
        "run",
        "()V",
        "com/shabakaty/usermanagement/data/api/UserNetworkManager$onResponseUserInfo$1$1",
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

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$onResponseUserInfo$$inlined$let$lambda$1;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$onResponseUserInfo$$inlined$let$lambda$1;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    invoke-static {v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->access$getLOG_TAG$p(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "response(user info): success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$onResponseUserInfo$$inlined$let$lambda$1;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    invoke-static {v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->access$getUserActionsCallbacks$p(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->loginResult(Z)V

    return-void
.end method
