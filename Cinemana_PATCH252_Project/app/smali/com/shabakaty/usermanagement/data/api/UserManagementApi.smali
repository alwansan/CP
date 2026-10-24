.class public interface abstract Lcom/shabakaty/usermanagement/data/api/UserManagementApi;
.super Ljava/lang/Object;
.source "UserManagementApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J,\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\'JP\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u00070\u00062\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\nH\'J{\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00070\u00062\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\u0008\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ \u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u00070\u00062\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\'J \u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u00070\u00062\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\'J \u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u00070\u00062\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\"H\'J,\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\u00070\u00062\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010%H\'JP\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u00070\u00062\n\u0008\u0001\u0010(\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010)\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010*\u001a\u0004\u0018\u00010\u0002H\'JD\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u00070\u00062\n\u0008\u0001\u0010(\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010-\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010)\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010*\u001a\u0004\u0018\u00010\u0002H\'J8\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u00070\u00062\n\u0008\u0001\u0010/\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u00100\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010)\u001a\u0004\u0018\u00010\u0002H\'J8\u00102\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u00070\u00062\n\u0008\u0001\u0010/\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u00100\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010)\u001a\u0004\u0018\u00010\u0002H\'J,\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002040\u00070\u00062\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u00103\u001a\u0004\u0018\u00010\u0002H\'\u00a8\u00066"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/api/UserManagementApi;",
        "",
        "",
        "auth",
        "Lcom/shabakaty/downloader/sv2$c;",
        "picture",
        "Lcom/shabakaty/downloader/f74;",
        "Lcom/shabakaty/downloader/xs3;",
        "Lcom/shabakaty/usermanagement/data/model/response/UpdatePictureResponse;",
        "setUserPicture",
        "Lcom/shabakaty/downloader/yr3;",
        "username",
        "email",
        "password",
        "confirmPassword",
        "Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;",
        "register",
        "phoneNumber",
        "",
        "gender",
        "dateOfBirth",
        "firstName",
        "lastName",
        "country",
        "city",
        "Lcom/shabakaty/usermanagement/data/model/response/UpdateAccountResponse;",
        "updateAccount",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "getUserInfo",
        "Lcom/shabakaty/usermanagement/data/model/requestBody/ForgotPasswordBody;",
        "body",
        "Lcom/shabakaty/usermanagement/data/model/response/ForgotPasswordResponse;",
        "forgotPassword",
        "Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;",
        "Lcom/shabakaty/usermanagement/data/model/response/ResetPasswordResponse;",
        "resetPassword",
        "Lcom/shabakaty/usermanagement/data/model/requestBody/ChangePasswordBody;",
        "Lcom/shabakaty/usermanagement/data/model/response/ChangePasswordResponse;",
        "changePassword",
        "basicToken",
        "scope",
        "grantType",
        "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
        "getIdentityTokens",
        "refreshToken",
        "refreshIdentityTokens",
        "token",
        "clientId",
        "getIdentityTokensUsingGoogle",
        "getIdentityTokensUsingFacebook",
        "userCode",
        "Lcom/shabakaty/usermanagement/data/model/response/DeviceLoginResponse;",
        "verifyDeviceWithUserCode",
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
.method public abstract changePassword(Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/requestBody/ChangePasswordBody;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/shabakaty/usermanagement/data/model/requestBody/ChangePasswordBody;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "core/api/password"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/usermanagement/data/model/requestBody/ChangePasswordBody;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/ChangePasswordResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract forgotPassword(Lcom/shabakaty/usermanagement/data/model/requestBody/ForgotPasswordBody;)Lcom/shabakaty/downloader/f74;
    .param p1    # Lcom/shabakaty/usermanagement/data/model/requestBody/ForgotPasswordBody;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "core/api/password/mobile-forgot-password"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/usermanagement/data/model/requestBody/ForgotPasswordBody;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/ForgotPasswordResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getIdentityTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "username"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "password"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "scope"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "grant_type"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "core/connect/token"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getIdentityTokensUsingFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "clientId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "scope"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "core/connect/facebook"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getIdentityTokensUsingGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "clientId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "scope"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "core/connect/google"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUserInfo(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Authorization"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "core/connect/userinfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract refreshIdentityTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "refresh_token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "scope"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "grant_type"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "core/connect/token"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract register(Lcom/shabakaty/downloader/sv2$c;Lcom/shabakaty/downloader/yr3;Lcom/shabakaty/downloader/yr3;Lcom/shabakaty/downloader/yr3;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/f74;
    .param p1    # Lcom/shabakaty/downloader/sv2$c;
        .annotation runtime Lcom/shabakaty/downloader/sa3;
        .end annotation
    .end param
    .param p2    # Lcom/shabakaty/downloader/yr3;
        .annotation runtime Lcom/shabakaty/downloader/sa3;
            value = "username"
        .end annotation
    .end param
    .param p3    # Lcom/shabakaty/downloader/yr3;
        .annotation runtime Lcom/shabakaty/downloader/sa3;
            value = "email"
        .end annotation
    .end param
    .param p4    # Lcom/shabakaty/downloader/yr3;
        .annotation runtime Lcom/shabakaty/downloader/sa3;
            value = "password"
        .end annotation
    .end param
    .param p5    # Lcom/shabakaty/downloader/yr3;
        .annotation runtime Lcom/shabakaty/downloader/sa3;
            value = "confirmpassword"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "core/api/registration"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/rv2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/sv2$c;",
            "Lcom/shabakaty/downloader/yr3;",
            "Lcom/shabakaty/downloader/yr3;",
            "Lcom/shabakaty/downloader/yr3;",
            "Lcom/shabakaty/downloader/yr3;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract resetPassword(Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;)Lcom/shabakaty/downloader/f74;
    .param p1    # Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "core/api/password/mobile-reset"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/ResetPasswordResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract setUserPicture(Ljava/lang/String;Lcom/shabakaty/downloader/sv2$c;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/shabakaty/downloader/sv2$c;
        .annotation runtime Lcom/shabakaty/downloader/sa3;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/j93;
        value = "core/api/account/picture"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/rv2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/sv2$c;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UpdatePictureResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "phoneNumber"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "gender"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "dateOfBirth"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "firstName"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "lastName"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "country"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/la1;
            value = "city"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "core/api/account"
    .end annotation

    .annotation runtime Lcom/shabakaty/downloader/vh1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UpdateAccountResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract verifyDeviceWithUserCode(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "userCode"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "core/api/device"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/DeviceLoginResponse;",
            ">;>;"
        }
    .end annotation
.end method
