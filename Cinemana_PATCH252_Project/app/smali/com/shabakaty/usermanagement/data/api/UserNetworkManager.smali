.class public final Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;
.super Ljava/lang/Object;
.source "UserNetworkManager.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010i\u001a\u00020h\u00a2\u0006\u0004\u0008k\u0010lJ\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010\u000b\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0002H\u0002J\u0016\u0010\u000c\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0012\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0002J\u0016\u0010\u0011\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0002H\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010\u0014\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001a\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001e\u0010\u001e\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001e\u0010\"\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00022\u0006\u0010!\u001a\u00020 H\u0002J\u0018\u0010#\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 H\u0002J\u0016\u0010%\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020$0\u0002H\u0002J\u0010\u0010&\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010(\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\'0\u0002H\u0002J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010+\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020*0\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010/\u001a\u00020\u00052\u0006\u0010.\u001a\u00020-H\u0002JH\u00106\u001a\u00020\u0005\"\u0004\u0008\u0000\u001002\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00028\u0000012\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005032\u0016\u0008\u0002\u00105\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0005\u0018\u000103H\u0002J\u0014\u00109\u001a\u00020\u0005*\u00020\u00072\u0006\u00108\u001a\u000207H\u0002J\u0010\u0010<\u001a\u00020\u00052\u0006\u0010;\u001a\u00020:H\u0016J\u0018\u0010?\u001a\u00020\u00052\u0006\u0010=\u001a\u0002072\u0006\u0010>\u001a\u000207H\u0016J\u0010\u0010A\u001a\u00020\u00052\u0006\u0010@\u001a\u000207H\u0016J\u0010\u0010B\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u000207H\u0016J\u0010\u0010D\u001a\u00020\u00052\u0006\u0010C\u001a\u000207H\u0016J2\u0010I\u001a\u00020\u00052\u0006\u0010=\u001a\u0002072\u0006\u0010E\u001a\u0002072\u0006\u0010>\u001a\u0002072\u0006\u0010F\u001a\u0002072\u0008\u0010H\u001a\u0004\u0018\u00010GH\u0016J\u0018\u0010J\u001a\u00020\u00052\u0006\u0010H\u001a\u00020G2\u0006\u0010\u000e\u001a\u000207H\u0016JV\u0010S\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u0002072\u0008\u0010K\u001a\u0004\u0018\u0001072\u0008\u0010M\u001a\u0004\u0018\u00010L2\u0008\u0010N\u001a\u0004\u0018\u0001072\u0008\u0010O\u001a\u0004\u0018\u0001072\u0008\u0010P\u001a\u0004\u0018\u0001072\u0008\u0010Q\u001a\u0004\u0018\u0001072\u0008\u0010R\u001a\u0004\u0018\u000107H\u0016J\u0018\u0010U\u001a\u00020\u00052\u0006\u0010T\u001a\u00020 2\u0006\u0010\u000e\u001a\u000207H\u0016J\u0010\u0010W\u001a\u00020\u00052\u0006\u0010V\u001a\u000207H\u0016J(\u0010[\u001a\u00020\u00052\u0006\u0010E\u001a\u0002072\u0006\u0010X\u001a\u0002072\u0006\u0010Y\u001a\u0002072\u0006\u0010Z\u001a\u000207H\u0016J(\u0010]\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u0002072\u0006\u0010\\\u001a\u0002072\u0006\u0010X\u001a\u0002072\u0006\u0010F\u001a\u000207H\u0016J\u0018\u0010_\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u0002072\u0006\u0010^\u001a\u000207H\u0016R\u0016\u0010`\u001a\u0002078\u0002@\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR$\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u0016\u0010;\u001a\u00020:8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008;\u0010gR\u0016\u0010i\u001a\u00020h8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008i\u0010j\u00a8\u0006m"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;",
        "Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;",
        "Lcom/shabakaty/downloader/xs3;",
        "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
        "response",
        "Lcom/shabakaty/downloader/qv4;",
        "onResponseLogin",
        "",
        "error",
        "onErrorLogin",
        "Lcom/shabakaty/usermanagement/data/model/response/DeviceLoginResponse;",
        "onDeviceVerified",
        "onResponseRefresh",
        "onErrorRefresh",
        "token",
        "fetchUserInfoByToken",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "onResponseUserInfo",
        "onErrorUserInfo",
        "Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;",
        "onResponseRegister",
        "onErrorRegister",
        "",
        "succeeded",
        "userInfo",
        "onResponseProfilePicture",
        "onErrorProfilePicture",
        "Lcom/shabakaty/usermanagement/data/model/response/UpdateAccountResponse;",
        "Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;",
        "userInfoResponse",
        "onResponseUpdateAccountInfo",
        "onErrorUpdateAccountInfo",
        "Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;",
        "callback",
        "onResponseGetUserInfo",
        "onErrorGetUserInfo",
        "Lcom/shabakaty/usermanagement/data/model/response/ForgotPasswordResponse;",
        "onResponseForgotPassword",
        "onErrorForgotPassword",
        "Lcom/shabakaty/usermanagement/data/model/response/ResetPasswordResponse;",
        "onResponseResetPassword",
        "onErrorResetPassword",
        "Lcom/shabakaty/usermanagement/data/model/response/ChangePasswordResponse;",
        "onResponseChangePassword",
        "onErrorChangePassword",
        "Lcom/shabakaty/downloader/mu0;",
        "disposable",
        "disposeOnExit",
        "T",
        "Lcom/shabakaty/downloader/f74;",
        "request",
        "Lkotlin/reflect/KFunction1;",
        "onSuccess",
        "onError",
        "dispose",
        "",
        "functionName",
        "log",
        "Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;",
        "userActionsCallbacks",
        "setUserActionsCallbacks",
        "username",
        "password",
        "login",
        "googleAccessToken",
        "loginUsingGoogle",
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
        "getUserInfoCallback",
        "getUserInfo",
        "userEmail",
        "forgotPassword",
        "newPassword",
        "confirmNewPassword",
        "code",
        "resetPassword",
        "oldPassword",
        "changePassword",
        "userCode",
        "verifyDevice",
        "LOG_TAG",
        "Ljava/lang/String;",
        "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
        "getToken",
        "()Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
        "setToken",
        "(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V",
        "Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;",
        "Lcom/shabakaty/usermanagement/data/IAccountRepository;",
        "accountRepository",
        "Lcom/shabakaty/usermanagement/data/IAccountRepository;",
        "<init>",
        "(Lcom/shabakaty/usermanagement/data/IAccountRepository;)V",
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
.field public final LOG_TAG:Ljava/lang/String;

.field public final accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

.field public final compositeDisposable:Lcom/shabakaty/downloader/c90;

.field public token:Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;

.field public userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/IAccountRepository;)V
    .locals 1

    const-string v0, "accountRepository"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    const-string p1, "USER_NETWORK_MANGER"

    .line 2
    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/c90;

    invoke-direct {p1}, Lcom/shabakaty/downloader/c90;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->compositeDisposable:Lcom/shabakaty/downloader/c90;

    return-void
.end method

.method public static final synthetic access$getAccountRepository$p(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)Lcom/shabakaty/usermanagement/data/IAccountRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    return-object p0
.end method

.method public static final synthetic access$getLOG_TAG$p(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUserActionsCallbacks$p(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "userActionsCallbacks"

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$onDeviceVerified(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onDeviceVerified(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method

.method public static final synthetic access$onErrorChangePassword(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorChangePassword(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onErrorForgotPassword(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorForgotPassword(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onErrorGetUserInfo(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorGetUserInfo(Ljava/lang/Throwable;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V

    return-void
.end method

.method public static final synthetic access$onErrorLogin(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorLogin(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onErrorProfilePicture(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorProfilePicture(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onErrorRefresh(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorRefresh(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onErrorRegister(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorRegister(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onErrorResetPassword(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorResetPassword(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onErrorUpdateAccountInfo(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorUpdateAccountInfo(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onErrorUserInfo(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onErrorUserInfo(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onResponseChangePassword(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseChangePassword(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method

.method public static final synthetic access$onResponseForgotPassword(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseForgotPassword(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method

.method public static final synthetic access$onResponseGetUserInfo(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseGetUserInfo(Lcom/shabakaty/downloader/xs3;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V

    return-void
.end method

.method public static final synthetic access$onResponseLogin(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseLogin(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method

.method public static final synthetic access$onResponseProfilePicture(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;ZLcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseProfilePicture(ZLcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)V

    return-void
.end method

.method public static final synthetic access$onResponseRefresh(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseRefresh(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method

.method public static final synthetic access$onResponseRegister(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseRegister(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method

.method public static final synthetic access$onResponseResetPassword(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseResetPassword(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method

.method public static final synthetic access$onResponseUpdateAccountInfo(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseUpdateAccountInfo(Lcom/shabakaty/downloader/xs3;Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;)V

    return-void
.end method

.method public static final synthetic access$onResponseUserInfo(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/xs3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->onResponseUserInfo(Lcom/shabakaty/downloader/xs3;)V

    return-void
.end method

.method public static synthetic dispose$default(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldPassword"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmPassword"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$changePassword$1;

    invoke-direct {p2, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$changePassword$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 3
    new-instance p3, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$changePassword$2;

    invoke-direct {p3, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$changePassword$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method

.method public final dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;",
            "Lcom/shabakaty/downloader/sc2<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Lcom/shabakaty/downloader/sc2<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/f74;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 4
    check-cast p2, Lcom/shabakaty/downloader/tm1;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p2}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lcom/shabakaty/downloader/tm1;)V

    move-object p2, v0

    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/xc0;

    check-cast p3, Lcom/shabakaty/downloader/tm1;

    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lcom/shabakaty/downloader/tm1;)V

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/f74;->k(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p2, Lcom/shabakaty/downloader/tm1;

    if-eqz p2, :cond_2

    new-instance p3, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lcom/shabakaty/downloader/tm1;)V

    move-object p2, p3

    :cond_2
    check-cast p2, Lcom/shabakaty/downloader/xc0;

    .line 6
    sget-object p3, Lcom/shabakaty/downloader/do1;->e:Lcom/shabakaty/downloader/xc0;

    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/f74;->k(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->disposeOnExit(Lcom/shabakaty/downloader/mu0;)V

    return-void
.end method

.method public final disposeOnExit(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->compositeDisposable:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/c90;->b(Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method

.method public final fetchUserInfoByToken(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    sget-object v1, Lcom/shabakaty/usermanagement/utils/AuthUtil;->INSTANCE:Lcom/shabakaty/usermanagement/utils/AuthUtil;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/shabakaty/usermanagement/utils/AuthUtil;->getBearerAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->getUserInfo(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$fetchUserInfoByToken$1;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$fetchUserInfoByToken$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 3
    new-instance v1, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$fetchUserInfoByToken$2;

    invoke-direct {v1, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$fetchUserInfoByToken$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method

.method public forgotPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "userEmail"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->forgotPassword(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$forgotPassword$1;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$forgotPassword$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 3
    new-instance v1, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$forgotPassword$2;

    invoke-direct {v1, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$forgotPassword$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method

.method public getNewToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->refresh(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getNewToken$1;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getNewToken$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 3
    new-instance v1, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getNewToken$2;

    invoke-direct {v1, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getNewToken$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method

.method public getToken()Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->token:Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;

    return-object v0
.end method

.method public getUserInfo(Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;Ljava/lang/String;)V
    .locals 2

    const-string v0, "getUserInfoCallback"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p2}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->getUserInfo(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 3
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/f74;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$1;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V

    .line 6
    new-instance v1, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$2;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$getUserInfo$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V

    .line 7
    invoke-virtual {p2, v0, v1}, Lcom/shabakaty/downloader/f74;->k(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->compositeDisposable:Lcom/shabakaty/downloader/c90;

    invoke-static {p1, p2}, Lcom/shabakaty/usermanagement/utils/ExtensionFunctionsKt;->addTo(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public final log(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->login(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$login$1;

    invoke-direct {p2, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$login$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 3
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$login$2;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$login$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method

.method public loginUsingFacebook(Ljava/lang/String;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->loginWithFacebook(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$loginUsingFacebook$1;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$loginUsingFacebook$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 3
    new-instance v1, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$loginUsingFacebook$2;

    invoke-direct {v1, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$loginUsingFacebook$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method

.method public loginUsingGoogle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "googleAccessToken"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->loginWithGoogle(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$loginUsingGoogle$1;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$loginUsingGoogle$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 3
    new-instance v1, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$loginUsingGoogle$2;

    invoke-direct {v1, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$loginUsingGoogle$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method

.method public final onDeviceVerified(Lcom/shabakaty/downloader/xs3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/DeviceLoginResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/DeviceLoginResponse;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/DeviceLoginResponse;->getSuccess()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->verifyDevice(Z)V

    return-void

    :cond_1
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onErrorChangePassword(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error(change password)"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->changePasswordResult(Z)V

    return-void

    :cond_0
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onErrorForgotPassword(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "error(forgot password)"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->updateAccountInfoResult(ZLcom/shabakaty/usermanagement/data/model/domain/UserInfo;)V

    return-void

    :cond_0
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final onErrorGetUserInfo(Ljava/lang/Throwable;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V
    .locals 1

    const-string v0, "onErrorGetUserInfo"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;->onUserInfoFail()V

    return-void
.end method

.method public final onErrorLogin(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error(get token)"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->loginResult(Z)V

    return-void

    :cond_0
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onErrorProfilePicture(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "error(profile picture) : "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->updateProfilePictureResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final onErrorRefresh(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error(refresh token)"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final onErrorRegister(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "error(register)"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->registerResult(ZLcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;)V

    return-void

    :cond_0
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final onErrorResetPassword(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error(reset password)"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->resetPasswordResult(Z)V

    return-void

    :cond_0
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onErrorUpdateAccountInfo(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "error(update account info)"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->updateAccountInfoResult(ZLcom/shabakaty/usermanagement/data/model/domain/UserInfo;)V

    return-void

    :cond_0
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final onErrorUserInfo(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error(get user info by authorization token)}"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->loginResult(Z)V

    return-void

    :cond_0
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onResponseChangePassword(Lcom/shabakaty/downloader/xs3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/ChangePasswordResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "response(change password): "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 3
    check-cast v2, Lcom/shabakaty/usermanagement/data/model/response/ChangePasswordResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/ChangePasswordResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/ChangePasswordResponse;->getSuccess()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "userActionsCallbacks"

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->changePasswordResult(Z)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->changePasswordResult(Z)V

    :goto_1
    return-void

    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final onResponseForgotPassword(Lcom/shabakaty/downloader/xs3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/ForgotPasswordResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "response(forgot password): "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 3
    check-cast v2, Lcom/shabakaty/usermanagement/data/model/response/ForgotPasswordResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/ForgotPasswordResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/ForgotPasswordResponse;->getSuccess()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "userActionsCallbacks"

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->forgotPasswordResult(Z)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->forgotPasswordResult(Z)V

    :goto_1
    return-void

    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final onResponseGetUserInfo(Lcom/shabakaty/downloader/xs3;Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
            ">;",
            "Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;->onUserInfoFail()V

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p2, p1}, Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;->onUserInfoSuccess(Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onResponseLogin(Lcom/shabakaty/downloader/xs3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shabakaty_token_response_received"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->setToken(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->getToken()Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->fetchUserInfoByToken(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V

    return-void
.end method

.method public final onResponseProfilePicture(ZLcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response(profile picture): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getPictureSmall()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getPictureLarge()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    invoke-interface {v0, p1, v2, v1}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->updateProfilePictureResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "userActionsCallbacks"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final onResponseRefresh(Lcom/shabakaty/downloader/xs3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shabakaty_refresh_response_received"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/xs3;->a:Lcom/shabakaty/downloader/ws3;

    .line 5
    iget v0, v0, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v1, 0x190

    const/4 v2, 0x0

    const-string v3, "userActionsCallbacks"

    if-lt v0, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->goZombie()V

    return-void

    :cond_0
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->setToken(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->getToken()Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->updateToken(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V

    return-void

    :cond_2
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final onResponseRegister(Lcom/shabakaty/downloader/xs3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->getSuccess()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "userActionsCallbacks"

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->registerResult(ZLcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;)V

    goto :goto_2

    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/lr1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lr1;-><init>()V

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->c:Lcom/shabakaty/downloader/ys3;

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    const-class v3, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;

    invoke-virtual {v0, p1, v3}, Lcom/shabakaty/downloader/lr1;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/shabakaty/usermanagement/utils/ExtensionFunctionsKt;->toRegisterErrors(Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;)Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;

    move-result-object v1

    :cond_4
    invoke-interface {v0, v2, v1}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->registerResult(ZLcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;)V

    :goto_2
    return-void

    :cond_5
    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final onResponseResetPassword(Lcom/shabakaty/downloader/xs3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/ResetPasswordResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "response(reset password): "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 3
    check-cast v2, Lcom/shabakaty/usermanagement/data/model/response/ResetPasswordResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/ResetPasswordResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/ResetPasswordResponse;->getSuccess()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "userActionsCallbacks"

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->resetPasswordResult(Z)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->resetPasswordResult(Z)V

    :goto_1
    return-void

    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final onResponseUpdateAccountInfo(Lcom/shabakaty/downloader/xs3;Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UpdateAccountResponse;",
            ">;",
            "Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "response(update account info): "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 3
    check-cast v2, Lcom/shabakaty/usermanagement/data/model/response/UpdateAccountResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/UpdateAccountResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UpdateAccountResponse;->getSuccess()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "userActionsCallbacks"

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->updateAccountInfoResult(ZLcom/shabakaty/usermanagement/data/model/domain/UserInfo;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->updateAccountInfoResult(ZLcom/shabakaty/usermanagement/data/model/domain/UserInfo;)V

    :goto_1
    return-void

    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final onResponseUserInfo(Lcom/shabakaty/downloader/xs3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "response(user info): "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    .line 3
    check-cast v2, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "userActionsCallbacks"

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->loginResult(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;->saveAccountToDevice(Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 9
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/q70;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$onResponseUserInfo$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$onResponseUserInfo$$inlined$let$lambda$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/zq;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/zq;-><init>(Lcom/shabakaty/downloader/j2;)V

    const-string v1, "observer is null"

    .line 13
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/z70$a;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/z70$a;-><init>(Lcom/shabakaty/downloader/a80;Lcom/shabakaty/downloader/wx3;)V

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/c80;->a(Lcom/shabakaty/downloader/a80;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 16
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    throw v0

    :catch_0
    move-exception p1

    .line 20
    throw p1

    :cond_2
    :goto_0
    return-void

    .line 21
    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmPassword"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->registerNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$register$1;

    invoke-direct {p2, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$register$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    new-instance p3, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$register$2;

    invoke-direct {p3, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$register$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmNewPassword"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$resetPassword$1;

    invoke-direct {p2, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$resetPassword$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 3
    new-instance p3, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$resetPassword$2;

    invoke-direct {p3, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$resetPassword$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;)V

    return-void
.end method

.method public setToken(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->token:Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;

    return-void
.end method

.method public setUserActionsCallbacks(Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;)V
    .locals 1

    const-string v0, "userActionsCallbacks"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->userActionsCallbacks:Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;

    return-void
.end method

.method public updateAccountInfo(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    const-string v1, "token"

    move-object v3, p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->updateAccountInfo(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 3
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f74;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateAccountInfo$1;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, p0, v3, v4}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateAccountInfo$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v3, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateAccountInfo$2;

    invoke-direct {v3, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateAccountInfo$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/f74;->k(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object v1

    .line 8
    iget-object v2, v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->compositeDisposable:Lcom/shabakaty/downloader/c90;

    invoke-static {v1, v2}, Lcom/shabakaty/usermanagement/utils/ExtensionFunctionsKt;->addTo(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public updateProfilePicture(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p2, p1}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->updateProfilePicture(Ljava/lang/String;Landroid/net/Uri;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/f74;->n()Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    const-string v1, "prefetch"

    .line 4
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/n43;->a(ILjava/lang/String;)I

    .line 5
    instance-of v1, p1, Lcom/shabakaty/downloader/hx3;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/hx3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/hx3;->call()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/bg1;->s:Lcom/shabakaty/downloader/qf1;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Lcom/shabakaty/downloader/tg1$a;

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/tg1$a;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/in1;)V

    move-object p1, p2

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/uf1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/shabakaty/downloader/uf1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;II)V

    move-object p1, v1

    .line 10
    :goto_0
    sget-object p2, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 11
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/qf1;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/qf1;->f(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$2;

    invoke-direct {p2, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$2;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 14
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$3;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$3;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    sget-object v2, Lcom/shabakaty/downloader/jg1;->r:Lcom/shabakaty/downloader/jg1;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/shabakaty/downloader/qf1;->g(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->compositeDisposable:Lcom/shabakaty/downloader/c90;

    invoke-static {p1, p2}, Lcom/shabakaty/usermanagement/utils/ExtensionFunctionsKt;->addTo(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public verifyDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCode"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->accountRepository:Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/usermanagement/data/IAccountRepository;->verifyDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 2
    new-instance v3, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$verifyDevice$1;

    invoke-direct {v3, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$verifyDevice$1;-><init>(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;->dispose$default(Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/sc2;Lcom/shabakaty/downloader/sc2;ILjava/lang/Object;)V

    return-void
.end method
