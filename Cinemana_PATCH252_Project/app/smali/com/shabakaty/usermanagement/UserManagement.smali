.class public final Lcom/shabakaty/usermanagement/UserManagement;
.super Ljava/lang/Object;
.source "UserManagement.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;
.implements Lcom/facebook/FacebookCallback;
.implements Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/usermanagement/UserManagement$DeviceFlow;,
        Lcom/shabakaty/usermanagement/UserManagement$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;",
        "Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008f\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r*\u0001\u0008\u0008\u0007\u0018\u0000 \u009a\u00012\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004:\u0004\u009a\u0001\u009b\u0001B)\u0008\u0007\u0012\u0008\u0010\u0087\u0001\u001a\u00030\u0086\u0001\u0012\u0008\u0010\u008a\u0001\u001a\u00030\u0089\u0001\u0012\u0008\u0010\u008d\u0001\u001a\u00030\u008c\u0001\u00a2\u0006\u0006\u0008\u0098\u0001\u0010\u0099\u0001J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0016J\u0008\u0010\u0015\u001a\u00020\u0005H\u0016J\u0006\u0010\u0016\u001a\u00020\u0013J\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017J\u0006\u0010\u001a\u001a\u00020\u000cJ\u0006\u0010\u001b\u001a\u00020\u000cJ\u0006\u0010\u001c\u001a\u00020\u000cJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010\u001f\u001a\u00020\u000cJ\u0006\u0010 \u001a\u00020\u000cJ\u0006\u0010!\u001a\u00020\u000cJ\u0006\u0010\"\u001a\u00020\u000cJ\u0006\u0010#\u001a\u00020\u000cJ\u0006\u0010$\u001a\u00020\u000cJ\u000e\u0010\'\u001a\u00020\u00052\u0006\u0010&\u001a\u00020%J\u0016\u0010*\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000cJ\u0006\u0010+\u001a\u00020\u0005J\u0012\u0010.\u001a\u00020\u00052\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016J\u000e\u00102\u001a\u0002012\u0006\u00100\u001a\u00020/J\u0014\u00106\u001a\u00020\u00052\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020403J\u0010\u00108\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u000cH\u0016J\u0008\u00109\u001a\u00020\u0005H\u0016J\u0006\u0010;\u001a\u00020:J\u0012\u0010=\u001a\u00020\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010>\u001a\u00020\u0005H\u0016J\u0012\u0010A\u001a\u00020\u00052\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0016J\u000e\u0010B\u001a\u00020\u00052\u0006\u00100\u001a\u00020/J8\u0010I\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u000c2\u0006\u0010C\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000c2\u0006\u0010D\u001a\u00020\u000c2\u0008\u0010F\u001a\u0004\u0018\u00010E2\u0006\u0010H\u001a\u00020GJ\u0016\u0010L\u001a\u00020\u00052\u0006\u0010F\u001a\u00020E2\u0006\u0010K\u001a\u00020JJT\u0010W\u001a\u00020\u00052\u0006\u0010N\u001a\u00020M2\u0008\u0010O\u001a\u0004\u0018\u00010\u000c2\u0008\u0010Q\u001a\u0004\u0018\u00010P2\u0008\u0010R\u001a\u0004\u0018\u00010\u000c2\u0008\u0010S\u001a\u0004\u0018\u00010\u000c2\u0008\u0010T\u001a\u0004\u0018\u00010\u000c2\u0008\u0010U\u001a\u0004\u0018\u00010\u000c2\u0008\u0010V\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010Z\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020XJ\u0016\u0010^\u001a\u00020\u00052\u0006\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020\u000cJ.\u0010d\u001a\u00020\u00052\u0006\u0010`\u001a\u00020_2\u0006\u0010C\u001a\u00020\u000c2\u0006\u0010a\u001a\u00020\u000c2\u0006\u0010b\u001a\u00020\u000c2\u0006\u0010c\u001a\u00020\u000cJ&\u0010h\u001a\u00020\u00052\u0006\u0010f\u001a\u00020e2\u0006\u0010g\u001a\u00020\u000c2\u0006\u0010a\u001a\u00020\u000c2\u0006\u0010D\u001a\u00020\u000cJ\u0010\u0010j\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u0013H\u0016J\u0010\u0010k\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u0013H\u0016J\u0010\u0010l\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u0013H\u0016J\u0010\u0010m\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u0013H\u0016J\u001a\u0010o\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u00132\u0008\u0010@\u001a\u0004\u0018\u00010nH\u0016J\u0010\u0010p\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u0013H\u0016J\u001a\u0010r\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010qH\u0016J$\u0010u\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\u00132\u0008\u0010s\u001a\u0004\u0018\u00010\u000c2\u0008\u0010t\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010w\u001a\u00020\u00102\u0006\u0010v\u001a\u00020\u0018H\u0016R\u0016\u0010x\u001a\u00020\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0018\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010zR\u0018\u0010H\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010{R\u0018\u0010K\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010|R\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010}R\u0018\u0010\\\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010~R\u0018\u0010`\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010\u007fR\u0019\u0010f\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008f\u0010\u0080\u0001R\u001c\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u0019\u0010\u0084\u0001\u001a\u00020:8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001a\u0010\u0087\u0001\u001a\u00030\u0086\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001a\u0010\u008a\u0001\u001a\u00030\u0089\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001R\u001a\u0010\u008d\u0001\u001a\u00030\u008c\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0001\u0010\u008e\u0001R#\u0010\u0094\u0001\u001a\u00030\u008f\u00018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u008c\u00018B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u00a8\u0006\u009c\u0001"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/UserManagement;",
        "Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;",
        "Lcom/facebook/FacebookCallback;",
        "Lcom/facebook/login/LoginResult;",
        "Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;",
        "Lcom/shabakaty/downloader/qv4;",
        "checkMigrations",
        "refreshTokenIfExpired",
        "com/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1",
        "createFacebookAccessTokenTracker",
        "()Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;",
        "",
        "",
        "getReadPermissions",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "user",
        "Lcom/shabakaty/downloader/q70;",
        "saveAccountToDevice",
        "Lcom/shabakaty/downloader/f74;",
        "",
        "logout",
        "goZombie",
        "isLoggedIn",
        "Lcom/shabakaty/downloader/qf1;",
        "Lcom/shabakaty/usermanagement/utils/LoginState;",
        "observeLoginState",
        "getRefreshToken",
        "getUserId",
        "getUserEmail",
        "Lcom/shabakaty/usermanagement/data/model/UserScheme;",
        "getUserScheme",
        "getUserProfilePictureLink",
        "getSmallPicture",
        "getLargePicture",
        "getFirstName",
        "getLastName",
        "getBearerToken",
        "Lcom/shabakaty/usermanagement/callbacks/LoginCallback;",
        "loginCallback",
        "setLoginCallback",
        "username",
        "password",
        "login",
        "getNewToken",
        "Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;",
        "token",
        "updateToken",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/content/Intent;",
        "getGoogleSignInIntent",
        "Lcom/shabakaty/downloader/uk4;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        "task",
        "handleGoogleSignInResult",
        "googleAccessToken",
        "onGoogleLoginSuccess",
        "onGoogleLoginFail",
        "Lcom/facebook/CallbackManager;",
        "setupFacebookLogin",
        "result",
        "onSuccess",
        "onCancel",
        "Lcom/facebook/FacebookException;",
        "error",
        "onError",
        "loginUsingFacebook",
        "email",
        "confirmPassword",
        "Landroid/net/Uri;",
        "imageUri",
        "Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;",
        "registerCallback",
        "register",
        "Lcom/shabakaty/usermanagement/callbacks/UpdateProfilePictureCallback;",
        "updateProfilePictureCallback",
        "updateProfilePicture",
        "Lcom/shabakaty/usermanagement/callbacks/UpdateAccountInfoCallback;",
        "updateAccountInfoCallback",
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
        "Lcom/shabakaty/usermanagement/callbacks/ForgotPasswordCallback;",
        "forgotPasswordCallback",
        "userEmail",
        "forgotPassword",
        "Lcom/shabakaty/usermanagement/callbacks/ResetPasswordCallback;",
        "resetPasswordCallback",
        "newPassword",
        "confirmNewPassword",
        "code",
        "resetPassword",
        "Lcom/shabakaty/usermanagement/callbacks/ChangePasswordCallback;",
        "changePasswordCallback",
        "oldPassword",
        "changePassword",
        "success",
        "changePasswordResult",
        "forgotPasswordResult",
        "verifyDevice",
        "loginResult",
        "Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;",
        "registerResult",
        "resetPasswordResult",
        "Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;",
        "updateAccountInfoResult",
        "smallUrl",
        "largeUrl",
        "updateProfilePictureResult",
        "newState",
        "updateState",
        "baseProfilePictureLink",
        "Ljava/lang/String;",
        "Lcom/shabakaty/usermanagement/callbacks/LoginCallback;",
        "Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;",
        "Lcom/shabakaty/usermanagement/callbacks/UpdateProfilePictureCallback;",
        "Lcom/shabakaty/usermanagement/callbacks/UpdateAccountInfoCallback;",
        "Lcom/shabakaty/usermanagement/callbacks/ForgotPasswordCallback;",
        "Lcom/shabakaty/usermanagement/callbacks/ResetPasswordCallback;",
        "Lcom/shabakaty/usermanagement/callbacks/ChangePasswordCallback;",
        "Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;",
        "verifyDeviceCallback",
        "Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;",
        "facebookCallbackManager",
        "Lcom/facebook/CallbackManager;",
        "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "configuration",
        "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;",
        "userNetworkManager",
        "Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;",
        "Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;",
        "scheme",
        "Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;",
        "Lcom/facebook/AccessTokenTracker;",
        "accessTokenTracker$delegate",
        "Lcom/shabakaty/downloader/kf2;",
        "getAccessTokenTracker",
        "()Lcom/facebook/AccessTokenTracker;",
        "accessTokenTracker",
        "getSafeScheme",
        "()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;",
        "safeScheme",
        "<init>",
        "(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;)V",
        "Companion",
        "DeviceFlow",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/shabakaty/usermanagement/UserManagement$Companion;


# instance fields
.field public final accessTokenTracker$delegate:Lcom/shabakaty/downloader/kf2;

.field public final baseProfilePictureLink:Ljava/lang/String;

.field public changePasswordCallback:Lcom/shabakaty/usermanagement/callbacks/ChangePasswordCallback;

.field public final configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

.field public facebookCallbackManager:Lcom/facebook/CallbackManager;

.field public forgotPasswordCallback:Lcom/shabakaty/usermanagement/callbacks/ForgotPasswordCallback;

.field public loginCallback:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

.field public registerCallback:Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;

.field public resetPasswordCallback:Lcom/shabakaty/usermanagement/callbacks/ResetPasswordCallback;

.field public final scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

.field public updateAccountInfoCallback:Lcom/shabakaty/usermanagement/callbacks/UpdateAccountInfoCallback;

.field public updateProfilePictureCallback:Lcom/shabakaty/usermanagement/callbacks/UpdateProfilePictureCallback;

.field public final userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

.field public verifyDeviceCallback:Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/usermanagement/UserManagement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/usermanagement/UserManagement$Companion;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/usermanagement/UserManagement;->Companion:Lcom/shabakaty/usermanagement/UserManagement$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userNetworkManager"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheme"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    iput-object p2, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    iput-object p3, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    .line 2
    new-instance p3, Lcom/shabakaty/usermanagement/UserManagement$accessTokenTracker$2;

    invoke-direct {p3, p0}, Lcom/shabakaty/usermanagement/UserManagement$accessTokenTracker$2;-><init>(Lcom/shabakaty/usermanagement/UserManagement;)V

    invoke-static {p3}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/usermanagement/UserManagement;->accessTokenTracker$delegate:Lcom/shabakaty/downloader/kf2;

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "core/cabinet/picture?userId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->baseProfilePictureLink:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->checkMigrations()V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->refreshTokenIfExpired()V

    .line 6
    invoke-interface {p2, p0}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->setUserActionsCallbacks(Lcom/shabakaty/usermanagement/callbacks/UserActionsCallbacks;)V

    return-void
.end method

.method public static final synthetic access$createFacebookAccessTokenTracker(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->createFacebookAccessTokenTracker()Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLoginCallback$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/callbacks/LoginCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/usermanagement/UserManagement;->loginCallback:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

    return-object p0
.end method

.method public static final synthetic access$getScheme$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    return-object p0
.end method

.method public static final synthetic access$getUserNetworkManager$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    return-object p0
.end method

.method public static final synthetic access$setVerifyDeviceCallback$p(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->verifyDeviceCallback:Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;

    return-void
.end method


# virtual methods
.method public final changePassword(Lcom/shabakaty/usermanagement/callbacks/ChangePasswordCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "changePasswordCallback"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldPassword"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmPassword"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->changePasswordCallback:Lcom/shabakaty/usermanagement/callbacks/ChangePasswordCallback;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getBearerToken()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0, p2, p3, p4}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changePasswordResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->changePasswordCallback:Lcom/shabakaty/usermanagement/callbacks/ChangePasswordCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/callbacks/ChangePasswordCallback;->onChangePasswordRequestResult(Z)V

    :cond_0
    return-void
.end method

.method public final checkMigrations()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;->containsAccessToken()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureLarge()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;-><init>(Lcom/shabakaty/usermanagement/UserManagement;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getNewToken()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getBearerToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->getUserInfo(Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final createFacebookAccessTokenTracker()Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/UserManagement$createFacebookAccessTokenTracker$1;-><init>(Lcom/shabakaty/usermanagement/UserManagement;)V

    return-object v0
.end method

.method public final forgotPassword(Lcom/shabakaty/usermanagement/callbacks/ForgotPasswordCallback;Ljava/lang/String;)V
    .locals 1

    const-string v0, "forgotPasswordCallback"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userEmail"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->forgotPasswordCallback:Lcom/shabakaty/usermanagement/callbacks/ForgotPasswordCallback;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    invoke-interface {p1, p2}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->forgotPassword(Ljava/lang/String;)V

    return-void
.end method

.method public forgotPasswordResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->forgotPasswordCallback:Lcom/shabakaty/usermanagement/callbacks/ForgotPasswordCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/callbacks/ForgotPasswordCallback;->onForgotPasswordRequestResult(Z)V

    :cond_0
    return-void
.end method

.method public final getAccessTokenTracker()Lcom/facebook/AccessTokenTracker;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->accessTokenTracker$delegate:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessTokenTracker;

    return-object v0
.end method

.method public final getBearerToken()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/usermanagement/utils/AuthUtil;->INSTANCE:Lcom/shabakaty/usermanagement/utils/AuthUtil;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/utils/AuthUtil;->getBearerAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getSafeScheme()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getFirstName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final getGoogleSignInIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->INSTANCE:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement;->configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getGoogleClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->getSigninIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final getLargePicture()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getSafeScheme()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureLarge()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 2
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getUserProfilePictureLink()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getSafeScheme()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLastName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final getNewToken()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->getNewToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getReadPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "email"

    const-string v1, "user_birthday"

    const-string v2, "public_profile"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getSafeScheme()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;->safeAccess()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    return-object v0
.end method

.method public final getSmallPicture()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getSafeScheme()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getPictureSmall()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 2
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getUserProfilePictureLink()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final getUserEmail()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getSafeScheme()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public final getUserInfo(Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V
    .locals 2

    const-string v0, "getUserInfoCallback"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getBearerToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->getUserInfo(Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;Ljava/lang/String;)V

    return-void
.end method

.method public final getUserProfilePictureLink()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement;->baseProfilePictureLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserScheme()Lcom/shabakaty/usermanagement/data/model/UserScheme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    return-object v0
.end method

.method public goZombie()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/utils/LoginState;->ZOMBIE:Lcom/shabakaty/usermanagement/utils/LoginState;

    invoke-virtual {p0, v0}, Lcom/shabakaty/usermanagement/UserManagement;->updateState(Lcom/shabakaty/usermanagement/utils/LoginState;)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q70;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/q21;

    invoke-direct {v2}, Lcom/shabakaty/downloader/q21;-><init>()V

    const-string v3, "observer is null"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    :try_start_0
    new-instance v3, Lcom/shabakaty/downloader/z70$a;

    invoke-direct {v3, v2, v1}, Lcom/shabakaty/downloader/z70$a;-><init>(Lcom/shabakaty/downloader/a80;Lcom/shabakaty/downloader/wx3;)V

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/c80;->a(Lcom/shabakaty/downloader/a80;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 10
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 12
    throw v1

    .line 13
    :goto_1
    throw v0
.end method

.method public final handleGoogleSignInResult(Lcom/shabakaty/downloader/uk4;)V
    .locals 2

    const-string v0, "google_activity_result_received"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uk4<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->INSTANCE:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;

    invoke-virtual {v0, p0}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->setGoogleLoginCallbacks(Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement;->configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->handleGoogleSigninResult(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/usermanagement/data/model/ClientInformation;)V

    return-void
.end method

.method public final isLoggedIn()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getSafeScheme()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v2, Lcom/shabakaty/usermanagement/utils/LoginState;->Companion:Lcom/shabakaty/usermanagement/utils/LoginState$Companion;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getLoginStateId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/shabakaty/usermanagement/utils/LoginState$Companion;->fromId(I)Lcom/shabakaty/usermanagement/utils/LoginState;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_IN:Lcom/shabakaty/usermanagement/utils/LoginState;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "password_login_begin"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->login(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loginResult(Z)V
    .locals 3

    if-eqz p1, :auth_failed
    const-string v0, "login_result_success"
    goto :auth_record
    :auth_failed
    const-string v0, "login_result_failed"
    :auth_record
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_IN:Lcom/shabakaty/usermanagement/utils/LoginState;

    invoke-virtual {p0, v0}, Lcom/shabakaty/usermanagement/UserManagement;->updateState(Lcom/shabakaty/usermanagement/utils/LoginState;)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q70;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q70;->e(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/shabakaty/usermanagement/UserManagement$loginResult$1;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/usermanagement/UserManagement$loginResult$1;-><init>(Lcom/shabakaty/usermanagement/UserManagement;Z)V

    .line 6
    sget-object p1, Lcom/shabakaty/usermanagement/UserManagement$loginResult$2;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$loginResult$2;

    const-string v2, "onError is null"

    .line 7
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/zq;

    invoke-direct {v2, p1, v1}, Lcom/shabakaty/downloader/zq;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/q70;->a(Lcom/shabakaty/downloader/a80;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->loginCallback:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/callbacks/LoginCallback;->onLoginResult(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final loginUsingFacebook(Landroid/app/Activity;)V
    .locals 13

    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/facebook/login/LoginManager;->a()Lcom/facebook/login/LoginManager;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getReadPermissions()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5
    invoke-static {v5}, Lcom/facebook/login/LoginManager;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v5, v0, v2

    const-string v1, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    :goto_1
    new-instance v11, Lcom/facebook/login/LoginClient$Request;

    iget-object v12, v1, Lcom/facebook/login/LoginManager;->a:Lcom/facebook/login/LoginBehavior;

    new-instance v4, Ljava/util/HashSet;

    if-eqz v0, :cond_3

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_3
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 9
    :goto_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/login/LoginManager;->b:Lcom/facebook/login/DefaultAudience;

    iget-object v8, v1, Lcom/facebook/login/LoginManager;->d:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 11
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 12
    sget-object v9, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v11

    move-object v5, v12

    invoke-direct/range {v4 .. v10}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/facebook/AccessToken;->c()Z

    move-result v0

    .line 15
    iput-boolean v0, v11, Lcom/facebook/login/LoginClient$Request;->w:Z

    .line 16
    new-instance v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 17
    iget-object p1, v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;->a:Landroid/app/Activity;

    .line 18
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->a(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    iget-object v4, v11, Lcom/facebook/login/LoginClient$Request;->v:Ljava/lang/String;

    .line 20
    invoke-static {v4}, Lcom/facebook/login/LoginLogger;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 21
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "login_behavior"

    .line 22
    invoke-virtual {v12}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "request_code"

    .line 23
    invoke-static {}, Lcom/facebook/login/LoginClient;->j()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "permissions"

    const-string v7, ","

    .line 24
    iget-object v8, v11, Lcom/facebook/login/LoginClient$Request;->s:Ljava/util/Set;

    .line 25
    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "default_audience"

    .line 27
    iget-object v7, v11, Lcom/facebook/login/LoginClient$Request;->t:Lcom/facebook/login/DefaultAudience;

    .line 28
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "isReauthorize"

    .line 30
    iget-boolean v7, v11, Lcom/facebook/login/LoginClient$Request;->w:Z

    .line 31
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    iget-object v6, p1, Lcom/facebook/login/LoginLogger;->c:Ljava/lang/String;

    if-eqz v6, :cond_4

    const-string v7, "facebookVersion"

    .line 33
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v6, "6_extras"

    .line 34
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 35
    :goto_3
    iget-object p1, p1, Lcom/facebook/login/LoginLogger;->a:Lcom/facebook/appevents/InternalAppEventsLogger;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 37
    iget-object p1, p1, Lcom/facebook/appevents/InternalAppEventsLogger;->a:Lcom/facebook/appevents/AppEventsLoggerImpl;

    const-string v6, "fb_mobile_login_start"

    invoke-virtual {p1, v6, v5, v4}, Lcom/facebook/appevents/AppEventsLoggerImpl;->f(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 38
    :cond_5
    sget-object p1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->s:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 39
    invoke-virtual {p1}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->f()I

    move-result p1

    new-instance v4, Lcom/facebook/login/LoginManager$3;

    invoke-direct {v4, v1}, Lcom/facebook/login/LoginManager$3;-><init>(Lcom/facebook/login/LoginManager;)V

    .line 40
    sget-object v5, Lcom/facebook/internal/CallbackManagerImpl;->b:Ljava/util/Map;

    .line 41
    const-class v5, Lcom/facebook/internal/CallbackManagerImpl;

    monitor-enter v5

    :try_start_1
    const-string v6, "callback"

    .line 42
    invoke-static {v4, v6}, Lcom/facebook/internal/Validate;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v6, Lcom/facebook/internal/CallbackManagerImpl;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_6

    .line 44
    monitor-exit v5

    goto :goto_4

    .line 45
    :cond_6
    :try_start_2
    sget-object v6, Lcom/facebook/internal/CallbackManagerImpl;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    monitor-exit v5

    .line 47
    :goto_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 48
    sget-object v4, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 49
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 50
    sget-object v4, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 51
    const-class v5, Lcom/facebook/FacebookActivity;

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    iget-object v4, v11, Lcom/facebook/login/LoginClient$Request;->r:Lcom/facebook/login/LoginBehavior;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "request"

    .line 55
    invoke-virtual {v4, v5, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "com.facebook.LoginFragment:Request"

    .line 56
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 57
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 58
    sget-object v4, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 59
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_8

    goto :goto_6

    .line 60
    :cond_8
    :try_start_3
    invoke-static {}, Lcom/facebook/login/LoginClient;->j()I

    move-result v4

    .line 61
    iget-object v5, v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;->a:Landroid/app/Activity;

    invoke-virtual {v5, p1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v2, 0x1

    goto :goto_6

    :catch_1
    nop

    :goto_6
    if-eqz v2, :cond_9

    return-void

    .line 62
    :cond_9
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v2, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {p1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 63
    iget-object v2, v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;->a:Landroid/app/Activity;

    .line 64
    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->u:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v4, 0x0

    move-object v5, p1

    move-object v7, v11

    .line 65
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/login/LoginManager;->c(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 66
    throw p1

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit v5

    throw p1
.end method

.method public logout()Lcom/shabakaty/downloader/f74;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_OUT:Lcom/shabakaty/usermanagement/utils/LoginState;

    invoke-virtual {p0, v0}, Lcom/shabakaty/usermanagement/UserManagement;->updateState(Lcom/shabakaty/usermanagement/utils/LoginState;)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->removeAccount()Lcom/shabakaty/downloader/q70;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q70;->b(Lcom/shabakaty/downloader/c80;)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/usermanagement/UserManagement$logout$1;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$logout$1;

    const-string v2, "completionValueSupplier is null"

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/f80;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/shabakaty/downloader/f80;-><init>(Lcom/shabakaty/downloader/c80;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/shabakaty/usermanagement/UserManagement$logout$2;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$logout$2;

    const-string v1, "resumeFunction is null"

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/z74;

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/z74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;Ljava/lang/Object;)V

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 10
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    return-object v0
.end method

.method public final observeLoginState()Lcom/shabakaty/downloader/qf1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/qf1<",
            "Lcom/shabakaty/usermanagement/utils/LoginState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->observeRxLoginStateId()Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$1;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$1;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->e(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_OUT:Lcom/shabakaty/usermanagement/utils/LoginState;

    const-string v2, "defaultItem is null"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/kg1;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/kg1;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/xg1;

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/xg1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/wj3;)V

    .line 8
    sget-object v0, Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$2;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$2;

    const-string v2, "valueSupplier is null"

    .line 9
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/rg1;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/rg1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;)V

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qf1;->b()Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 13
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->loginCallback:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/callbacks/LoginCallback;->onLoginResult(Z)V

    :cond_0
    return-void
.end method

.method public onGoogleLoginFail()V
    .locals 2

    const-string v0, "google_login_failed"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->loginCallback:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/shabakaty/usermanagement/callbacks/LoginCallback;->onLoginResult(Z)V

    :cond_0
    return-void
.end method

.method public onGoogleLoginSuccess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "shabakaty_google_login_begin"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V

    const-string v0, "googleAccessToken"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->loginUsingGoogle(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/UserManagement;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method public final refreshTokenIfExpired()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getSafeScheme()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->getRefreshTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/downloader/me4;->A(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getNewToken()V

    :cond_1
    return-void
.end method

.method public final register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;)V
    .locals 7

    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmPassword"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registerCallback"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p6, p0, Lcom/shabakaty/usermanagement/UserManagement;->registerCallback:Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public registerResult(ZLcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->registerCallback:Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;->onRegisterResult(ZLcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;)V

    :cond_0
    return-void
.end method

.method public final resetPassword(Lcom/shabakaty/usermanagement/callbacks/ResetPasswordCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "resetPasswordCallback"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmNewPassword"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->resetPasswordCallback:Lcom/shabakaty/usermanagement/callbacks/ResetPasswordCallback;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetPasswordResult(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->resetPasswordCallback:Lcom/shabakaty/usermanagement/callbacks/ResetPasswordCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/callbacks/ResetPasswordCallback;->onResetPasswordRequestResult(Z)V

    :cond_0
    return-void
.end method

.method public saveAccountToDevice(Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)Lcom/shabakaty/downloader/q70;
    .locals 7

    const-string v0, "user"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    invoke-interface {v0}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->getToken()Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveAccount(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/shabakaty/downloader/c80;

    const/4 v3, 0x0

    .line 3
    iget-object v4, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getSub()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxId(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 4
    iget-object v4, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxUserName(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 5
    iget-object v4, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxFirstName(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 6
    iget-object v4, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxLastName(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 7
    iget-object v4, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxEmail(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 8
    iget-object v4, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getPictureSmall()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxPictureSmall(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 9
    iget-object v4, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getPictureLarge()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxPictureLarge(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x7

    .line 10
    iget-object v3, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;->getToken_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxTokenType(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v3

    aput-object v3, v2, p1

    const/16 p1, 0x8

    .line 11
    iget-object v3, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxAccessToken(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v3

    aput-object v3, v2, p1

    const/16 p1, 0x9

    .line 12
    iget-object v3, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    .line 13
    sget-object v4, Lcom/shabakaty/usermanagement/utils/AuthUtil;->INSTANCE:Lcom/shabakaty/usermanagement/utils/AuthUtil;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;->getExpireIn()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/usermanagement/utils/AuthUtil;->getTokenExpireDate(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v3, v4}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxRefreshTime(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v3

    aput-object v3, v2, p1

    const/16 p1, 0xa

    .line 15
    iget-object v3, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;->getRefresh_token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxRefreshToken(Ljava/lang/String;)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    aput-object v0, v2, p1

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/y70;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/y70;-><init>([Lcom/shabakaty/downloader/c80;)V

    .line 17
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/q70;->b(Lcom/shabakaty/downloader/c80;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    sget-object v1, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_IN:Lcom/shabakaty/usermanagement/utils/LoginState;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/utils/LoginState;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxLoginStateId(I)Lcom/shabakaty/downloader/q70;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/q70;->b(Lcom/shabakaty/downloader/c80;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    const-wide/16 v0, 0xa

    .line 19
    instance-of v2, p1, Lcom/shabakaty/downloader/fo1;

    if-eqz v2, :cond_0

    .line 20
    check-cast p1, Lcom/shabakaty/downloader/fo1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/fo1;->b()Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/e80;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/e80;-><init>(Lcom/shabakaty/downloader/c80;)V

    move-object p1, v2

    .line 22
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v2, Lcom/shabakaty/downloader/do1;->g:Lcom/shabakaty/downloader/ye3;

    .line 24
    new-instance v3, Lcom/shabakaty/downloader/sg1;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/shabakaty/downloader/sg1;-><init>(Lcom/shabakaty/downloader/qf1;JLcom/shabakaty/downloader/ye3;)V

    .line 25
    new-instance p1, Lcom/shabakaty/downloader/v70;

    invoke-direct {p1, v3}, Lcom/shabakaty/downloader/v70;-><init>(Lcom/shabakaty/downloader/wj3;)V

    .line 26
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 27
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/q70;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    .line 28
    sget-object v0, Lcom/shabakaty/usermanagement/UserManagement$saveAccountToDevice$1$1;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$saveAccountToDevice$1$1;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/q70;->c(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setLoginCallback(Lcom/shabakaty/usermanagement/callbacks/LoginCallback;)V
    .locals 1

    const-string v0, "loginCallback"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement;->loginCallback:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

    return-void
.end method

.method public final setupFacebookLogin()Lcom/facebook/CallbackManager;
    .locals 6

    .line 1
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl;

    invoke-direct {v0}, Lcom/facebook/internal/CallbackManagerImpl;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->facebookCallbackManager:Lcom/facebook/CallbackManager;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getAccessTokenTracker()Lcom/facebook/AccessTokenTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->startTracking()V

    .line 4
    invoke-static {}, Lcom/facebook/login/LoginManager;->a()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement;->facebookCallbackManager:Lcom/facebook/CallbackManager;

    const/4 v2, 0x0

    const-string v3, "facebookCallbackManager"

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of v4, v1, Lcom/facebook/internal/CallbackManagerImpl;

    if-eqz v4, :cond_1

    .line 6
    check-cast v1, Lcom/facebook/internal/CallbackManagerImpl;

    sget-object v4, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->s:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 7
    invoke-virtual {v4}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->f()I

    move-result v4

    new-instance v5, Lcom/facebook/login/LoginManager$1;

    invoke-direct {v5, v0, p0}, Lcom/facebook/login/LoginManager$1;-><init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback"

    .line 9
    invoke-static {v5, v0}, Lcom/facebook/internal/Validate;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, v1, Lcom/facebook/internal/CallbackManagerImpl;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->facebookCallbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final updateAccountInfo(Lcom/shabakaty/usermanagement/callbacks/UpdateAccountInfoCallback;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    const-string v2, "updateAccountInfoCallback"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object v1, v0, Lcom/shabakaty/usermanagement/UserManagement;->updateAccountInfoCallback:Lcom/shabakaty/usermanagement/callbacks/UpdateAccountInfoCallback;

    .line 2
    iget-object v3, v0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getBearerToken()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 4
    invoke-interface/range {v3 .. v11}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->updateAccountInfo(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAccountInfoResult(ZLcom/shabakaty/usermanagement/data/model/domain/UserInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->updateAccountInfoCallback:Lcom/shabakaty/usermanagement/callbacks/UpdateAccountInfoCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/callbacks/UpdateAccountInfoCallback;->onUpdateAccountInfoResult(Z)V

    :cond_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;->getFirstName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;->getFirstName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveFirstName(Ljava/lang/String;)V

    .line 4
    :cond_2
    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;->getLastName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/data/model/domain/UserInfo;->getLastName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    move-object v1, p2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveLastName(Ljava/lang/String;)V

    :cond_4
    const/4 p2, 0x0

    new-array p2, p2, [Lcom/shabakaty/downloader/c80;

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lcom/shabakaty/downloader/c80;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/shabakaty/downloader/c80;

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/q70;->d([Lcom/shabakaty/downloader/c80;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    .line 7
    sget-object p2, Lcom/shabakaty/usermanagement/UserManagement$updateAccountInfoResult$1$1;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$updateAccountInfoResult$1$1;

    const-string v0, "onComplete is null"

    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/zq;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/zq;-><init>(Lcom/shabakaty/downloader/j2;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/q70;->a(Lcom/shabakaty/downloader/a80;)V

    :cond_5
    return-void
.end method

.method public final updateProfilePicture(Landroid/net/Uri;Lcom/shabakaty/usermanagement/callbacks/UpdateProfilePictureCallback;)V
    .locals 1

    const-string v0, "imageUri"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateProfilePictureCallback"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcom/shabakaty/usermanagement/UserManagement;->updateProfilePictureCallback:Lcom/shabakaty/usermanagement/callbacks/UpdateProfilePictureCallback;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/usermanagement/UserManagement;->userNetworkManager:Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement;->getBearerToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;->updateProfilePicture(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public updateProfilePictureResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {v0, p2}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->savePictureSmall(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p2, p3}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->savePictureLarge(Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/usermanagement/UserManagement;->updateProfilePictureCallback:Lcom/shabakaty/usermanagement/callbacks/UpdateProfilePictureCallback;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/shabakaty/usermanagement/callbacks/UpdateProfilePictureCallback;->onUpdateProfilePictureResult(Z)V

    :cond_2
    return-void
.end method

.method public updateState(Lcom/shabakaty/usermanagement/utils/LoginState;)Lcom/shabakaty/downloader/q70;
    .locals 1

    const-string v0, "newState"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/utils/LoginState;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRxLoginStateId(I)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/shabakaty/usermanagement/UserManagement$updateState$1;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$updateState$1;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/q70;->c(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/q70;

    move-result-object p1

    return-object p1
.end method

.method public updateToken(Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;->getToken_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveTokenType(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveAccessToken(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    sget-object v1, Lcom/shabakaty/usermanagement/utils/AuthUtil;->INSTANCE:Lcom/shabakaty/usermanagement/utils/AuthUtil;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;->getExpireIn()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/usermanagement/utils/AuthUtil;->getTokenExpireDate(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRefreshTime(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->scheme:Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/TokenResponse;->getRefresh_token()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/usermanagement/data/model/UserScheme;->saveRefreshToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public verifyDevice(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement;->verifyDeviceCallback:Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;->onVerifyResult(Z)V

    :cond_0
    return-void
.end method
