.class public interface abstract Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;
.super Ljava/lang/Object;
.source "UserActionsCallbacks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH&J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH&J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH&J\u001a\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH&J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH&J\u001a\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0013H&J$\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0015H&J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH&J\u0008\u0010\u001a\u001a\u00020\u0004H&\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;",
        "",
        "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
        "token",
        "Lcom/shabakaty/downloader/qv4;",
        "updateToken",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "user",
        "Lcom/shabakaty/downloader/q70;",
        "saveAccountToDevice",
        "",
        "success",
        "changePasswordResult",
        "forgotPasswordResult",
        "loginResult",
        "Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;",
        "error",
        "registerResult",
        "resetPasswordResult",
        "Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;",
        "updateAccountInfoResult",
        "",
        "smallUrl",
        "largeUrl",
        "updateProfilePictureResult",
        "verifyDevice",
        "goZombie",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# virtual methods
.method public abstract changePasswordResult(Z)V
.end method

.method public abstract forgotPasswordResult(Z)V
.end method

.method public abstract goZombie()V
.end method

.method public abstract loginResult(Z)V
.end method

.method public abstract registerResult(ZLcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;)V
.end method

.method public abstract resetPasswordResult(Z)V
.end method

.method public abstract saveAccountToDevice(Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)Lcom/shabakaty/downloader/q70;
.end method

.method public abstract updateAccountInfoResult(ZLcom/shabakaty/usermanagement/data/model/domain/UserInfo;)V
.end method

.method public abstract updateProfilePictureResult(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateToken(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V
.end method

.method public abstract verifyDevice(Z)V
.end method
