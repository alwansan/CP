.class public final Lcom/shabakaty/usermanagement/data/AccountRepository;
.super Ljava/lang/Object;
.source "AccountRepository.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/data/IAccountRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u0010;\u001a\u00020:\u00a2\u0006\u0004\u0008?\u0010@J$\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u001c\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u001c\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u001c\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u001e\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00060\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0016J>\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J$\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00060\u00052\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016Jd\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u00060\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00022\u0008\u0010 \u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u00060\u00052\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J4\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\u00060\u00052\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u0002H\u0016J6\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u00060\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010(\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u0002H\u0016J$\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0\u00060\u00052\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u0002H\u0016R\u001c\u00101\u001a\u0002008\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104R\u001c\u00106\u001a\u0002058\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u001c\u0010;\u001a\u00020:8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\u00a8\u0006A"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/AccountRepository;",
        "Lcom/shabakaty/usermanagement/data/IAccountRepository;",
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
        "Lcom/shabakaty/usermanagement/data/api/UserManagementApi;",
        "userManagementApi",
        "Lcom/shabakaty/usermanagement/data/api/UserManagementApi;",
        "getUserManagementApi",
        "()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;",
        "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "configuration",
        "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "getConfiguration",
        "()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "<init>",
        "(Lcom/shabakaty/usermanagement/data/api/UserManagementApi;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Landroid/content/Context;)V",
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
.field public final configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

.field public final context:Landroid/content/Context;

.field public final userManagementApi:Lcom/shabakaty/usermanagement/data/api/UserManagementApi;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/data/api/UserManagementApi;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Landroid/content/Context;)V
    .locals 1

    const-string v0, "userManagementApi"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/AccountRepository;->userManagementApi:Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    iput-object p2, p0, Lcom/shabakaty/usermanagement/data/AccountRepository;->configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    iput-object p3, p0, Lcom/shabakaty/usermanagement/data/AccountRepository;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 1
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

    const-string v0, "oldPassword"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmPassowrd"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/data/model/requestBody/ChangePasswordBody;

    invoke-direct {v0, p2, p3, p4}, Lcom/shabakaty/usermanagement/data/model/requestBody/ChangePasswordBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->changePassword(Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/requestBody/ChangePasswordBody;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public forgotPassword(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 1
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

    const-string v0, "email"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/data/model/requestBody/ForgotPasswordBody;

    invoke-direct {v0, p1}, Lcom/shabakaty/usermanagement/data/model/requestBody/ForgotPasswordBody;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->forgotPassword(Lcom/shabakaty/usermanagement/data/model/requestBody/ForgotPasswordBody;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public getConfiguration()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/AccountRepository;->configuration:Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/AccountRepository;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getUserInfo(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 1
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

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->getUserInfo(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/AccountRepository;->userManagementApi:Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 7
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

    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v1

    .line 2
    sget-object v0, Lcom/shabakaty/usermanagement/utils/AuthUtil;->INSTANCE:Lcom/shabakaty/usermanagement/utils/AuthUtil;

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getConfiguration()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/usermanagement/utils/AuthUtil;->getBasicAuth(Lcom/shabakaty/usermanagement/data/model/ClientInformation;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getConfiguration()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "password"

    move-object v3, p1

    move-object v4, p2

    .line 4
    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->getIdentityTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public loginWithFacebook(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 3
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

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getConfiguration()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getClientId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getConfiguration()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getScope()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v0, p1, v1, v2}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->getIdentityTokensUsingFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public loginWithGoogle(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 3
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

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getConfiguration()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getClientId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getConfiguration()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getScope()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v0, p1, v1, v2}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->getIdentityTokensUsingGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 4
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

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/usermanagement/utils/AuthUtil;->INSTANCE:Lcom/shabakaty/usermanagement/utils/AuthUtil;

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getConfiguration()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/usermanagement/utils/AuthUtil;->getBasicAuth(Lcom/shabakaty/usermanagement/data/model/ClientInformation;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getConfiguration()Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "refresh_token"

    .line 4
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->refreshIdentityTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public registerNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/shabakaty/downloader/f74;
    .locals 9
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

    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmPassword"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/utils/FileHelper;->INSTANCE:Lcom/shabakaty/usermanagement/utils/FileHelper;

    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "userpicture"

    invoke-virtual {v0, v2, v1, p5}, Lcom/shabakaty/usermanagement/utils/FileHelper;->getMultipartProfilePicture(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/shabakaty/downloader/sv2$c;

    move-result-object v4

    const-string p5, "multipart/form-data"

    .line 2
    invoke-static {p5}, Lcom/shabakaty/downloader/fr2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/yr3;->c(Lcom/shabakaty/downloader/fr2;Ljava/lang/String;)Lcom/shabakaty/downloader/yr3;

    move-result-object v5

    .line 3
    invoke-static {p5}, Lcom/shabakaty/downloader/fr2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/yr3;->c(Lcom/shabakaty/downloader/fr2;Ljava/lang/String;)Lcom/shabakaty/downloader/yr3;

    move-result-object v6

    .line 4
    invoke-static {p5}, Lcom/shabakaty/downloader/fr2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/yr3;->c(Lcom/shabakaty/downloader/fr2;Ljava/lang/String;)Lcom/shabakaty/downloader/yr3;

    move-result-object v7

    .line 5
    invoke-static {p5}, Lcom/shabakaty/downloader/fr2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/shabakaty/downloader/yr3;->c(Lcom/shabakaty/downloader/fr2;Ljava/lang/String;)Lcom/shabakaty/downloader/yr3;

    move-result-object v8

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v3

    invoke-interface/range {v3 .. v8}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->register(Lcom/shabakaty/downloader/sv2$c;Lcom/shabakaty/downloader/yr3;Lcom/shabakaty/downloader/yr3;Lcom/shabakaty/downloader/yr3;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 1
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

    const-string v0, "email"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmPassword"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->resetPassword(Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public updateAccountInfo(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 9
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

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 3
    invoke-interface/range {v0 .. v8}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->updateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    return-object v0
.end method

.method public updateProfilePicture(Ljava/lang/String;Landroid/net/Uri;)Lcom/shabakaty/downloader/f74;
    .locals 3
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

    const-string v0, "bearerToken"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUri"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/utils/FileHelper;->INSTANCE:Lcom/shabakaty/usermanagement/utils/FileHelper;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "picture"

    .line 3
    invoke-virtual {v0, v2, v1, p2}, Lcom/shabakaty/usermanagement/utils/FileHelper;->getMultipartProfilePicture(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/shabakaty/downloader/sv2$c;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->setUserPicture(Ljava/lang/String;Lcom/shabakaty/downloader/sv2$c;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public verifyDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 1
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

    const-string v0, "bearerToken"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCode"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository;->getUserManagementApi()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;->verifyDeviceWithUserCode(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method
