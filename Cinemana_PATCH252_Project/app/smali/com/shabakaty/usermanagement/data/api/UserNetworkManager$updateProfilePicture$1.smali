.class public final Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1;
.super Ljava/lang/Object;
.source "UserNetworkManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/in1;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/in1<",
        "Lcom/shabakaty/downloader/xs3<",
        "Lcom/shabakaty/usermanagement/data/model/response/UpdatePictureResponse;",
        ">;",
        "Lcom/shabakaty/downloader/wj3<",
        "+",
        "Lcom/shabakaty/downloader/xs3<",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0008\u001a*\u0012\u000e\u0008\u0001\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0000 \u0005*\u0014\u0012\u000e\u0008\u0001\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0000\u0018\u00010\u00030\u00032\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Lcom/shabakaty/downloader/xs3;",
        "Lcom/shabakaty/usermanagement/data/model/response/UpdatePictureResponse;",
        "it",
        "Lcom/shabakaty/downloader/wj3;",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "kotlin.jvm.PlatformType",
        "apply",
        "(Lcom/shabakaty/downloader/xs3;)Lcom/shabakaty/downloader/wj3;",
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
.field public final synthetic $token:Ljava/lang/String;

.field public final synthetic this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    iput-object p2, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1;->$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/shabakaty/downloader/xs3;)Lcom/shabakaty/downloader/wj3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UpdatePictureResponse;",
            ">;)",
            "Lcom/shabakaty/downloader/wj3<",
            "+",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/UpdatePictureResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UpdatePictureResponse;->getSuccess()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1;->this$0:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    invoke-static {p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->access$getAccountRepository$p(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)Lcom/shabakaty/usermanagement/data/IAccountRepository;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1;->$token:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->getUserInfo(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/f74;->n()Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1$1;->INSTANCE:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1$1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "valueSupplier is null"

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/rg1;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/rg1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;)V

    return-object v1

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/qf1;->d(Ljava/lang/Object;)Lcom/shabakaty/downloader/qf1;

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xs3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1;->apply(Lcom/shabakaty/downloader/xs3;)Lcom/shabakaty/downloader/wj3;

    move-result-object p1

    return-object p1
.end method
