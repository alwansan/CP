.class public interface abstract Lcom/shabakaty/usermanagement/data/IAccountRepository;
.super Ljava/lang/Object;
.source "IAccountRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J$\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H&J\u001c\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0006\u0010\t\u001a\u00020\u0002H&J\u001c\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0006\u0010\u000b\u001a\u00020\u0002H&J\u001c\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0006\u0010\u000b\u001a\u00020\u0002H&J\u001e\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00060\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H&J>\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H&J$\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00060\u00052\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H&Jd\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u00060\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00022\u0008\u0010 \u001a\u0004\u0018\u00010\u0002H&J\u001c\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u00060\u00052\u0006\u0010\u0010\u001a\u00020\u0002H&J4\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\u00060\u00052\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u0002H&J6\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u00060\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010(\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u0002H&J$\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0\u00060\u00052\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u0002H&\u00a8\u00060"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/IAccountRepository;",
        "",
        "",
        "username",
        "password",
        "Lcom/shabakaty/downloader/f74;",
        "Lcom/shabakaty/downloader/xs3;",
        "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
        "login",
        "refreshToken",
        "refresh",
        "token",
        "loginWithGoogle",
        "loginWithFacebook",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "getUserInfo",
        "email",
        "confirmPassword",
        "Landroid/net/Uri;",
        "imageUri",
        "Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;",
        "registerNewAccount",
        "bearerToken",
        "Lcom/shabakaty/usermanagement/data/model/response/UpdatePictureResponse;",
        "updateProfilePicture",
        "phoneNumber",
        "Lcom/shabakaty/usermanagement/data/model/Gender;",
        "gender",
        "dateOfBirth",
        "firstName",
        "lastName",
        "country",
        "city",
        "Lcom/shabakaty/usermanagement/data/model/response/UpdateAccountResponse;",
        "updateAccountInfo",
        "Lcom/shabakaty/usermanagement/data/model/response/ForgotPasswordResponse;",
        "forgotPassword",
        "code",
        "Lcom/shabakaty/usermanagement/data/model/response/ResetPasswordResponse;",
        "resetPassword",
        "oldPassword",
        "newPassword",
        "confirmPassowrd",
        "Lcom/shabakaty/usermanagement/data/model/response/ChangePasswordResponse;",
        "changePassword",
        "userCode",
        "Lcom/shabakaty/usermanagement/data/model/response/DeviceLoginResponse;",
        "verifyDevice",
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
.method public abstract changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
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
            "Lcom/shabakaty/usermanagement/data/model/response/ChangePasswordResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract forgotPassword(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/ForgotPasswordResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUserInfo(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
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

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

.method public abstract loginWithFacebook(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract loginWithGoogle(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract refresh(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract registerNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/shabakaty/downloader/f74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
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
            "Lcom/shabakaty/usermanagement/data/model/response/ResetPasswordResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateAccountInfo(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/usermanagement/data/model/Gender;",
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

.method public abstract updateProfilePicture(Ljava/lang/String;Landroid/net/Uri;)Lcom/shabakaty/downloader/f74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UpdatePictureResponse;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract verifyDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
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
