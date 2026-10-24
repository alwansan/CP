.class public abstract Lcom/facebook/login/WebLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "WebLoginMethodHandler.java"


# instance fields
.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method public k(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Request;->s:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 4
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Request;->s:Ljava/util/Set;

    const-string v3, ","

    .line 5
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "scope"

    .line 6
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v3, v1}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :cond_2
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Request;->t:Lcom/facebook/login/DefaultAudience;

    .line 9
    iget-object v1, v1, Lcom/facebook/login/DefaultAudience;->r:Ljava/lang/String;

    const-string v3, "default_audience"

    .line 10
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Lcom/facebook/login/LoginClient$Request;->v:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginMethodHandler;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/facebook/AccessToken;->b()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p1, Lcom/facebook/AccessToken;->v:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    const-string v1, "1"

    const-string v3, "0"

    const-string v4, "access_token"

    if-eqz p1, :cond_4

    .line 15
    iget-object v5, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {v5}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    move-result-object v5

    const-string v6, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    .line 16
    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "TOKEN"

    const-string v6, ""

    .line 17
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v4, v1}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    move-result-object p1

    const-string v2, "facebook.com"

    .line 22
    invoke-static {p1, v2}, Lcom/facebook/internal/Utility;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, ".facebook.com"

    .line 23
    invoke-static {p1, v2}, Lcom/facebook/internal/Utility;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "https://facebook.com"

    .line 24
    invoke-static {p1, v2}, Lcom/facebook/internal/Utility;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "https://.facebook.com"

    .line 25
    invoke-static {p1, v2}, Lcom/facebook/internal/Utility;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v4, v3}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "cbt"

    .line 28
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v3

    :goto_4
    const-string p1, "ies"

    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    const-string v0, "fb"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 2
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 3
    sget-object v1, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    const-string v2, "://authorize"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract m()Lcom/facebook/AccessTokenSource;
.end method

.method public o(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->t:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string p3, "e2e"

    .line 2
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/login/WebLoginMethodHandler;->t:Ljava/lang/String;

    .line 4
    :cond_0
    :try_start_0
    iget-object p3, p1, Lcom/facebook/login/LoginClient$Request;->s:Ljava/util/Set;

    .line 5
    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->m()Lcom/facebook/AccessTokenSource;

    move-result-object v2

    .line 6
    iget-object p1, p1, Lcom/facebook/login/LoginClient$Request;->u:Ljava/lang/String;

    .line 7
    invoke-static {p3, p2, v2, p1}, Lcom/facebook/login/LoginMethodHandler;->c(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 9
    iget-object p2, p2, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 10
    invoke-static {p2, p1}, Lcom/facebook/login/LoginClient$Result;->d(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p2

    .line 11
    iget-object p3, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {p3}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    move-result-object p3

    invoke-static {p3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p3

    .line 12
    invoke-virtual {p3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 13
    iget-object p1, p1, Lcom/facebook/AccessToken;->v:Ljava/lang/String;

    .line 14
    iget-object p3, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {p3}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    move-result-object p3

    const-string v2, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    .line 15
    invoke-virtual {p3, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 16
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v1, "TOKEN"

    .line 17
    invoke-interface {p3, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 20
    iget-object p2, p2, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 21
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p2, v0, p1}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p2

    goto :goto_1

    .line 23
    :cond_1
    instance-of p1, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 25
    iget-object p1, p1, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    const-string p2, "User canceled log in."

    .line 26
    invoke-static {p1, p2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p2

    goto :goto_1

    .line 27
    :cond_2
    iput-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->t:Ljava/lang/String;

    .line 28
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 29
    instance-of p2, p3, Lcom/facebook/FacebookServiceException;

    if-eqz p2, :cond_3

    .line 30
    check-cast p3, Lcom/facebook/FacebookServiceException;

    .line 31
    iget-object p1, p3, Lcom/facebook/FacebookServiceException;->r:Lcom/facebook/FacebookRequestError;

    .line 32
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .line 33
    iget v2, p1, Lcom/facebook/FacebookRequestError;->s:I

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v1

    const-string v1, "%d"

    invoke-static {p2, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p2, v0

    .line 36
    :goto_0
    iget-object p3, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 37
    iget-object p3, p3, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 38
    invoke-static {p3, v0, p1, p2}, Lcom/facebook/login/LoginClient$Result;->c(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p2

    .line 39
    :goto_1
    iget-object p1, p0, Lcom/facebook/login/WebLoginMethodHandler;->t:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/internal/Utility;->w(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 40
    iget-object p1, p0, Lcom/facebook/login/WebLoginMethodHandler;->t:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginMethodHandler;->f(Ljava/lang/String;)V

    .line 41
    :cond_4
    iget-object p1, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1, p2}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method
