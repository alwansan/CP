.class public final Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin$handleGoogleSigninResult$accessTokenCallback$1;
.super Ljava/lang/Object;
.source "GoogleLogin.kt"

# interfaces
.implements Lcom/shabakaty/downloader/wq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->handleGoogleSigninResult(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/usermanagement/data/model/ClientInformation;)V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/shabakaty/usermanagement/utils/externalLogin/GoogleLogin$handleGoogleSigninResult$accessTokenCallback$1",
        "Lcom/shabakaty/downloader/wq;",
        "Lcom/shabakaty/downloader/mq;",
        "call",
        "Ljava/io/IOException;",
        "e",
        "Lcom/shabakaty/downloader/qv4;",
        "onFailure",
        "Lcom/shabakaty/downloader/ws3;",
        "response",
        "onResponse",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 2
    sget-object p1, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->INSTANCE:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;

    invoke-static {p1}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->access$getGoogleLoginCallback$p(Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;)Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;->onGoogleLoginFail()V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p1, p2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "access_token"

    .line 4
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->INSTANCE:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;

    invoke-static {p2}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->access$getGoogleLoginCallback$p(Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;)Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;->onGoogleLoginSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    sget-object p1, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->INSTANCE:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;

    invoke-static {p1}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->access$getGoogleLoginCallback$p(Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;)Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;->onGoogleLoginFail()V

    :cond_1
    :goto_2
    return-void
.end method
