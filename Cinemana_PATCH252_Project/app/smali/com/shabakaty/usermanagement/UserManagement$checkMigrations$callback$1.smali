.class public final Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;
.super Ljava/lang/Object;
.source "UserManagement.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/UserManagement;->checkMigrations()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1",
        "Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;",
        "Lcom/shabakaty/downloader/qv4;",
        "onUserInfoFail",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "userInfo",
        "onUserInfoSuccess",
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
    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserInfoFail()V
    .locals 0

    return-void
.end method

.method public onUserInfoSuccess(Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)V
    .locals 3

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/shabakaty/downloader/c80;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {v1}, Lcom/shabakaty/usermanagement/UserManagement;->access$getScheme$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getPictureLarge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxPictureLarge(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {v1}, Lcom/shabakaty/usermanagement/UserManagement;->access$getScheme$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getPictureSmall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxPictureSmall(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {v1}, Lcom/shabakaty/usermanagement/UserManagement;->access$getScheme$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxFirstName(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {v1}, Lcom/shabakaty/usermanagement/UserManagement;->access$getScheme$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxLastName(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {v1}, Lcom/shabakaty/usermanagement/UserManagement;->access$getScheme$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxUserName(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/y70;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/y70;-><init>([Lcom/shabakaty/downloader/c80;)V

    .line 7
    sget-object v0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1$onUserInfoSuccess$1;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1$onUserInfoSuccess$1;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/q70;->c(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 9
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/q70;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/q21;

    invoke-direct {v1}, Lcom/shabakaty/downloader/q21;-><init>()V

    const-string v2, "observer is null"

    .line 12
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    :try_start_0
    new-instance v2, Lcom/shabakaty/downloader/z70$a;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/z70$a;-><init>(Lcom/shabakaty/downloader/a80;Lcom/shabakaty/downloader/wx3;)V

    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/c80;->a(Lcom/shabakaty/downloader/a80;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 14
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 18
    throw v0

    .line 19
    :goto_1
    throw p1
.end method
