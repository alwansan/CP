.class public interface abstract Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;
.super Ljava/lang/Object;
.source "IUserNetworkManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0006H&J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0006H&J2\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H&J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0006H&JV\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0006H&J\u0018\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u000c\u001a\u00020\u0006H&J(\u0010%\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H&J\u0010\u0010\'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0006H&J(\u0010)\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H&J\u0018\u0010+\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H&R\u001e\u0010\u000c\u001a\u0004\u0018\u00010,8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100\u00a8\u00061"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;",
        "",
        "Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;",
        "userActionsCallbacks",
        "Lcom/shabakaty/downloader/qv4;",
        "setUserActionsCallbacks",
        "",
        "username",
        "password",
        "login",
        "googleAccessToken",
        "loginUsingGoogle",
        "token",
        "loginUsingFacebook",
        "refreshToken",
        "getNewToken",
        "email",
        "confirmPassword",
        "Landroid/net/Uri;",
        "imageUri",
        "register",
        "updateProfilePicture",
        "phoneNumber",
        "Lcom/shabakaty/usermanagement/data/model/Gender;",
        "gender",
        "dateOfBirth",
        "firstName",
        "lastName",
        "country",
        "city",
        "updateAccountInfo",
        "Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;",
        "getUserInfoCallback",
        "getUserInfo",
        "newPassword",
        "confirmNewPassword",
        "code",
        "resetPassword",
        "userEmail",
        "forgotPassword",
        "oldPassword",
        "changePassword",
        "userCode",
        "verifyDevice",
        "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
        "getToken",
        "()Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
        "setToken",
        "(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V",
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
.method public abstract changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract forgotPassword(Ljava/lang/String;)V
.end method

.method public abstract getNewToken(Ljava/lang/String;)V
.end method

.method public abstract getToken()Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;
.end method

.method public abstract getUserInfo(Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;Ljava/lang/String;)V
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loginUsingFacebook(Ljava/lang/String;)V
.end method

.method public abstract loginUsingGoogle(Ljava/lang/String;)V
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUserActionsCallbacks(Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;)V
.end method

.method public abstract updateAccountInfo(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateProfilePicture(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract verifyDevice(Ljava/lang/String;Ljava/lang/String;)V
.end method
