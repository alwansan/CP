.class public Lcom/facebook/login/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginManager$LoginLoggerHolder;,
        Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile f:Lcom/facebook/login/LoginManager;


# instance fields
.field public a:Lcom/facebook/login/LoginBehavior;

.field public b:Lcom/facebook/login/DefaultAudience;

.field public final c:Landroid/content/SharedPreferences;

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/LoginManager$2;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager$2;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/facebook/login/LoginManager;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/facebook/login/LoginBehavior;->x:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->a:Lcom/facebook/login/LoginBehavior;

    .line 3
    sget-object v0, Lcom/facebook/login/DefaultAudience;->s:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->b:Lcom/facebook/login/DefaultAudience;

    const-string v0, "rerequest"

    .line 4
    iput-object v0, p0, Lcom/facebook/login/LoginManager;->d:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 6
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 7
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "com.facebook.loginManager"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->c:Landroid/content/SharedPreferences;

    .line 9
    sget-boolean v0, Lcom/facebook/FacebookSdk;->m:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lcom/facebook/login/CustomTabPrefetchHelper;

    invoke-direct {v0}, Lcom/facebook/login/CustomTabPrefetchHelper;-><init>()V

    .line 11
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 12
    sget-object v1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    const-string v2, "com.android.chrome"

    .line 13
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/eh0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/fh0;)Z

    .line 14
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 15
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 16
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 17
    sget-object v1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    new-instance v2, Lcom/shabakaty/downloader/dh0;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/dh0;-><init>(Landroid/content/Context;)V

    .line 21
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/eh0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/fh0;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static a()Lcom/facebook/login/LoginManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/login/LoginManager;->f:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/facebook/login/LoginManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/facebook/login/LoginManager;->f:Lcom/facebook/login/LoginManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/facebook/login/LoginManager;

    invoke-direct {v1}, Lcom/facebook/login/LoginManager;-><init>()V

    sput-object v1, Lcom/facebook/login/LoginManager;->f:Lcom/facebook/login/LoginManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/login/LoginManager;->f:Lcom/facebook/login/LoginManager;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "publish"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/LoginManager;->e:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->a(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "fb_mobile_login_complete"

    if-nez p6, :cond_1

    const-string p2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    const-string p3, ""

    .line 2
    invoke-virtual {p1, v0, p2, p3}, Lcom/facebook/login/LoginLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_2

    const-string p5, "1"

    goto :goto_0

    :cond_2
    const-string p5, "0"

    :goto_0
    const-string v2, "try_login_activity"

    .line 4
    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p5, p6, Lcom/facebook/login/LoginClient$Request;->v:Ljava/lang/String;

    .line 6
    invoke-static {p5}, Lcom/facebook/login/LoginLogger;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p5

    if-eqz p2, :cond_3

    .line 7
    iget-object p2, p2, Lcom/facebook/login/LoginClient$Result$Code;->r:Ljava/lang/String;

    const-string p6, "2_result"

    .line 8
    invoke-virtual {p5, p6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 9
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p4, "5_error_message"

    invoke-virtual {p5, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p2, 0x0

    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_5

    .line 12
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :cond_5
    if-eqz p3, :cond_7

    if-nez p2, :cond_6

    .line 13
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 14
    :cond_6
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_7
    if-eqz p2, :cond_8

    .line 16
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "6_extras"

    invoke-virtual {p5, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_8
    iget-object p1, p1, Lcom/facebook/login/LoginLogger;->a:Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-virtual {p1, v0, p5}, Lcom/facebook/appevents/InternalAppEventsLogger;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method public d(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/login/LoginClient$Result$Code;->u:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    const-string v4, "com.facebook.LoginFragment:Result"

    .line 2
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/LoginClient$Result;

    if-eqz p2, :cond_3

    .line 3
    iget-object v0, p2, Lcom/facebook/login/LoginClient$Result;->v:Lcom/facebook/login/LoginClient$Request;

    .line 4
    iget-object v4, p2, Lcom/facebook/login/LoginClient$Result;->r:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 5
    sget-object p1, Lcom/facebook/login/LoginClient$Result$Code;->s:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v4, p1, :cond_0

    .line 6
    iget-object p1, p2, Lcom/facebook/login/LoginClient$Result;->s:Lcom/facebook/AccessToken;

    move-object v3, p1

    move-object p1, v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/facebook/FacebookAuthorizationException;

    iget-object v5, p2, Lcom/facebook/login/LoginClient$Result;->t:Ljava/lang/String;

    invoke-direct {p1, v5}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move-object p1, v2

    move-object v3, p1

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v2

    move-object v3, p1

    :goto_0
    const/4 v5, 0x0

    .line 8
    :goto_1
    iget-object p2, p2, Lcom/facebook/login/LoginClient$Result;->w:Ljava/util/Map;

    move-object v11, v3

    move-object v3, v0

    move-object v0, v4

    move-object v4, v11

    goto :goto_2

    :cond_3
    move-object p1, v2

    move-object p2, p1

    move-object v3, p2

    move-object v4, v3

    const/4 v5, 0x0

    :goto_2
    move-object v6, p2

    move-object v10, v4

    move p2, v5

    move-object v5, v0

    move-object v0, v3

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    .line 9
    sget-object v0, Lcom/facebook/login/LoginClient$Result$Code;->t:Lcom/facebook/login/LoginClient$Result$Code;

    move-object v5, v0

    move-object p1, v2

    move-object v0, p1

    move-object v6, v0

    move-object v10, v6

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    move-object v5, v0

    move-object p1, v2

    move-object v0, p1

    move-object v6, v0

    move-object v10, v6

    const/4 p2, 0x0

    :goto_3
    if-nez p1, :cond_6

    if-nez v10, :cond_6

    if-nez p2, :cond_6

    .line 10
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v3, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {p1, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_6
    const/4 v8, 0x1

    const/4 v4, 0x0

    move-object v3, p0

    move-object v7, p1

    move-object v9, v0

    .line 11
    invoke-virtual/range {v3 .. v9}, Lcom/facebook/login/LoginManager;->c(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    if-eqz v10, :cond_7

    .line 12
    invoke-static {v10}, Lcom/facebook/AccessToken;->e(Lcom/facebook/AccessToken;)V

    .line 13
    invoke-static {}, Lcom/facebook/Profile;->a()V

    :cond_7
    if-eqz p3, :cond_d

    if-eqz v10, :cond_9

    .line 14
    iget-object v2, v0, Lcom/facebook/login/LoginClient$Request;->s:Ljava/util/Set;

    .line 15
    new-instance v3, Ljava/util/HashSet;

    .line 16
    iget-object v4, v10, Lcom/facebook/AccessToken;->s:Ljava/util/Set;

    .line 17
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    iget-boolean v0, v0, Lcom/facebook/login/LoginClient$Request;->w:Z

    if-eqz v0, :cond_8

    .line 19
    invoke-interface {v3, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 20
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 22
    new-instance v2, Lcom/facebook/login/LoginResult;

    invoke-direct {v2, v10, v3, v0}, Lcom/facebook/login/LoginResult;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    :cond_9
    if-nez p2, :cond_c

    if-eqz v2, :cond_a

    .line 23
    iget-object p2, v2, Lcom/facebook/login/LoginResult;->a:Ljava/util/Set;

    .line 24
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    if-eqz p1, :cond_b

    .line 25
    invoke-interface {p3, p1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_5

    :cond_b
    if-eqz v10, :cond_d

    .line 26
    iget-object p1, p0, Lcom/facebook/login/LoginManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "express_login_allowed"

    .line 27
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    invoke-interface {p3, v2}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_5

    .line 30
    :cond_c
    :goto_4
    invoke-interface {p3}, Lcom/facebook/FacebookCallback;->onCancel()V

    :cond_d
    :goto_5
    return v1
.end method
