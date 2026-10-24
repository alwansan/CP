.class public final Lcom/facebook/AccessTokenManager;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessTokenManager$RefreshResult;
    }
.end annotation


# static fields
.field public static volatile f:Lcom/facebook/AccessTokenManager;


# instance fields
.field public final a:Lcom/shabakaty/downloader/nj2;

.field public final b:Lcom/facebook/AccessTokenCache;

.field public c:Lcom/facebook/AccessToken;

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nj2;Lcom/facebook/AccessTokenCache;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/AccessTokenManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/AccessTokenManager;->e:Ljava/util/Date;

    const-string v0, "localBroadcastManager"

    .line 4
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/facebook/AccessTokenManager;->a:Lcom/shabakaty/downloader/nj2;

    .line 6
    iput-object p2, p0, Lcom/facebook/AccessTokenManager;->b:Lcom/facebook/AccessTokenCache;

    return-void
.end method

.method public static a()Lcom/facebook/AccessTokenManager;
    .locals 4

    .line 1
    sget-object v0, Lcom/facebook/AccessTokenManager;->f:Lcom/facebook/AccessTokenManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/facebook/AccessTokenManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/facebook/AccessTokenManager;->f:Lcom/facebook/AccessTokenManager;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 5
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 6
    sget-object v1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/nj2;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/nj2;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/facebook/AccessTokenCache;

    invoke-direct {v2}, Lcom/facebook/AccessTokenCache;-><init>()V

    .line 9
    new-instance v3, Lcom/facebook/AccessTokenManager;

    invoke-direct {v3, v1, v2}, Lcom/facebook/AccessTokenManager;-><init>(Lcom/shabakaty/downloader/nj2;Lcom/facebook/AccessTokenCache;)V

    sput-object v3, Lcom/facebook/AccessTokenManager;->f:Lcom/facebook/AccessTokenManager;

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/AccessTokenManager;->f:Lcom/facebook/AccessTokenManager;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v6, p1

    .line 1
    iget-object v7, v9, Lcom/facebook/AccessTokenManager;->c:Lcom/facebook/AccessToken;

    if-nez v7, :cond_1

    if-eqz v6, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "No current access token to refresh"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->a(Lcom/facebook/FacebookException;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, v9, Lcom/facebook/AccessTokenManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    .line 4
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Refresh already in progress"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->a(Lcom/facebook/FacebookException;)V

    :cond_2
    return-void

    .line 5
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v9, Lcom/facebook/AccessTokenManager;->e:Ljava/util/Date;

    .line 6
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 7
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 8
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 9
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v13, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    new-instance v14, Lcom/facebook/AccessTokenManager$RefreshResult;

    .line 11
    invoke-direct {v14}, Lcom/facebook/AccessTokenManager$RefreshResult;-><init>()V

    .line 12
    new-instance v15, Lcom/facebook/GraphRequestBatch;

    const/4 v0, 0x2

    new-array v5, v0, [Lcom/facebook/GraphRequest;

    new-instance v16, Lcom/facebook/AccessTokenManager$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v10

    move-object v4, v11

    move-object v8, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessTokenManager$2;-><init>(Lcom/facebook/AccessTokenManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 13
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    new-instance v17, Lcom/facebook/GraphRequest;

    sget-object v18, Lcom/facebook/HttpMethod;->r:Lcom/facebook/HttpMethod;

    const-string v2, "me/permissions"

    move-object/from16 v0, v17

    move-object v1, v7

    move-object/from16 v4, v18

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    const/4 v0, 0x0

    aput-object v17, v8, v0

    .line 15
    new-instance v5, Lcom/facebook/AccessTokenManager$3;

    invoke-direct {v5, v9, v14}, Lcom/facebook/AccessTokenManager$3;-><init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessTokenManager$RefreshResult;)V

    .line 16
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "grant_type"

    const-string v1, "fb_extend_sso_token"

    .line 17
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, v7, Lcom/facebook/AccessToken;->y:Ljava/lang/String;

    const-string v1, "client_id"

    .line 19
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v16, Lcom/facebook/GraphRequest;

    const-string v2, "oauth/access_token"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    const/4 v0, 0x1

    aput-object v16, v8, v0

    .line 21
    invoke-direct {v15, v8}, Lcom/facebook/GraphRequestBatch;-><init>([Lcom/facebook/GraphRequest;)V

    .line 22
    new-instance v8, Lcom/facebook/AccessTokenManager$4;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v10

    move-object v7, v11

    move-object v10, v8

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessTokenManager$4;-><init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/AccessTokenManager$RefreshResult;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 23
    iget-object v0, v15, Lcom/facebook/GraphRequestBatch;->u:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    iget-object v0, v15, Lcom/facebook/GraphRequestBatch;->u:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_4
    invoke-virtual {v15}, Lcom/facebook/GraphRequestBatch;->d()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public final c(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 4
    sget-object v1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 5
    const-class v2, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lcom/facebook/AccessTokenManager;->a:Lcom/shabakaty/downloader/nj2;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/nj2;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public final d(Lcom/facebook/AccessToken;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/AccessTokenManager;->c:Lcom/facebook/AccessToken;

    .line 2
    iput-object p1, p0, Lcom/facebook/AccessTokenManager;->c:Lcom/facebook/AccessToken;

    .line 3
    iget-object v1, p0, Lcom/facebook/AccessTokenManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance v1, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/facebook/AccessTokenManager;->e:Ljava/util/Date;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/facebook/AccessTokenManager;->b:Lcom/facebook/AccessTokenCache;

    invoke-virtual {p2, p1}, Lcom/facebook/AccessTokenCache;->a(Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/facebook/AccessTokenManager;->b:Lcom/facebook/AccessTokenCache;

    .line 7
    iget-object p2, p2, Lcom/facebook/AccessTokenCache;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    sget-object p2, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 9
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 10
    sget-object p2, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    const-string v1, "facebook.com"

    .line 11
    invoke-static {p2, v1}, Lcom/facebook/internal/Utility;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, ".facebook.com"

    .line 12
    invoke-static {p2, v1}, Lcom/facebook/internal/Utility;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "https://facebook.com"

    .line 13
    invoke-static {p2, v1}, Lcom/facebook/internal/Utility;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "https://.facebook.com"

    .line 14
    invoke-static {p2, v1}, Lcom/facebook/internal/Utility;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/facebook/AccessTokenManager;->c(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 17
    sget-object p1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 18
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 19
    sget-object p1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 20
    invoke-static {}, Lcom/facebook/AccessToken;->b()Lcom/facebook/AccessToken;

    move-result-object p2

    const-string v0, "alarm"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 22
    invoke-static {}, Lcom/facebook/AccessToken;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    iget-object v1, p2, Lcom/facebook/AccessToken;->r:Ljava/util/Date;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 25
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const/4 v1, 0x1

    .line 27
    :try_start_0
    iget-object p2, p2, Lcom/facebook/AccessToken;->r:Ljava/util/Date;

    .line 28
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method
