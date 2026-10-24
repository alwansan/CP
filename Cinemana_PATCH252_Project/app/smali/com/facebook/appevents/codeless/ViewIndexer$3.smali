.class public Lcom/facebook/appevents/codeless/ViewIndexer$3;
.super Ljava/lang/Object;
.source "ViewIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lcom/facebook/appevents/codeless/ViewIndexer;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->s:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->r:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "is_app_indexing_enabled"

    const-string v1, "com.facebook.appevents.codeless.ViewIndexer"

    .line 1
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->r:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "MD5"

    invoke-static {v3, v2}, Lcom/facebook/internal/Utility;->r(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/facebook/AccessToken;->b()Lcom/facebook/AccessToken;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 4
    iget-object v4, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->s:Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 5
    iget-object v4, v4, Lcom/facebook/appevents/codeless/ViewIndexer;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->r:Ljava/lang/String;

    .line 8
    sget-object v5, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 9
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 10
    sget-object v5, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v4, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const-string v5, "%s/app_indexing"

    .line 12
    invoke-static {v7, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v3, v5, v6, v6}, Lcom/facebook/GraphRequest;->m(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v6

    .line 14
    iget-object v3, v6, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    if-nez v3, :cond_2

    .line 15
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_2
    const-string v5, "tree"

    .line 16
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 18
    sget-object v4, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 19
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 20
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, ""

    :goto_0
    const-string v5, "app_version"

    .line 21
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "platform"

    const-string v5, "android"

    .line 22
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "request_type"

    const-string v5, "app_indexing"

    .line 23
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v4, Lcom/facebook/appevents/codeless/CodelessManager;->d:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/facebook/appevents/codeless/CodelessManager;->d:Ljava/lang/String;

    .line 26
    :cond_3
    sget-object v4, Lcom/facebook/appevents/codeless/CodelessManager;->d:Ljava/lang/String;

    const-string v5, "device_session_id"

    .line 27
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object v3, v6, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 29
    new-instance v3, Lcom/facebook/appevents/codeless/ViewIndexer$4;

    invoke-direct {v3}, Lcom/facebook/appevents/codeless/ViewIndexer$4;-><init>()V

    invoke-virtual {v6, v3}, Lcom/facebook/GraphRequest;->u(Lcom/facebook/GraphRequest$Callback;)V

    :goto_1
    if-eqz v6, :cond_6

    .line 30
    invoke-virtual {v6}, Lcom/facebook/GraphRequest;->d()Lcom/facebook/GraphResponse;

    move-result-object v3

    .line 31
    :try_start_1
    iget-object v4, v3, Lcom/facebook/GraphResponse;->b:Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    const-string v3, "true"

    const-string v5, "success"

    .line 32
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 33
    sget-object v3, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object v5, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 34
    invoke-static {v3}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    .line 35
    iget-object v3, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->s:Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 36
    iput-object v2, v3, Lcom/facebook/appevents/codeless/ViewIndexer;->d:Ljava/lang/String;

    .line 37
    :cond_4
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->f:Ljava/lang/Boolean;

    goto :goto_2

    .line 40
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending UI component tree to Facebook: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v2, v3, Lcom/facebook/GraphResponse;->c:Lcom/facebook/FacebookRequestError;

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "Error decoding server response."

    .line 43
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-void
.end method
