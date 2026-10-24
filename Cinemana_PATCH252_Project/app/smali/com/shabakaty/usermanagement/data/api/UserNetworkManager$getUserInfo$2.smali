.class public final Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$2;
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
        "Ljava/lang/Throwable;",
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
        "\u0000\u0010\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/shabakaty/downloader/qv4;",
        "accept",
        "(Ljava/lang/Throwable;)V",
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

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$2;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    iput-object p2, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$2;->$getUserInfoCallback:Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$2;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    const-string v1, "it"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$2;->$getUserInfoCallback:Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;

    invoke-static {v0, p1, v1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->access$onErrorGetUserInfo(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V

    return-void
.end method
