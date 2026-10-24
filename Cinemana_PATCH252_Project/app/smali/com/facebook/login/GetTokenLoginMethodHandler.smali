.class public Lcom/facebook/login/GetTokenLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "GetTokenLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/GetTokenLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public t:Lcom/facebook/login/GetTokenClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler$3;

    invoke-direct {v0}, Lcom/facebook/login/GetTokenLoginMethodHandler$3;-><init>()V

    sput-object v0, Lcom/facebook/login/GetTokenLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

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
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->t:Lcom/facebook/login/GetTokenClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/facebook/internal/PlatformServiceClient;->u:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/facebook/internal/PlatformServiceClient;->t:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    .line 4
    iput-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->t:Lcom/facebook/login/GetTokenClient;

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "get_token"

    return-object v0
.end method

.method public j(Lcom/facebook/login/LoginClient$Request;)I
    .locals 12

    .line 1
    new-instance v0, Lcom/facebook/login/GetTokenClient;

    iget-object v1, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    move-result-object v1

    .line 2
    iget-object v2, p1, Lcom/facebook/login/LoginClient$Request;->u:Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/facebook/login/GetTokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->t:Lcom/facebook/login/GetTokenClient;

    .line 4
    iget-boolean v1, v0, Lcom/facebook/internal/PlatformServiceClient;->u:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    iget v1, v0, Lcom/facebook/internal/PlatformServiceClient;->z:I

    .line 6
    sget-object v4, Lcom/facebook/internal/NativeProtocol;->a:Ljava/util/List;

    new-array v5, v2, [I

    aput v1, v5, v3

    .line 7
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->f()V

    const/4 v1, -0x1

    if-nez v4, :cond_1

    .line 8
    new-instance v4, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    invoke-direct {v4}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;-><init>()V

    .line 9
    iput v1, v4, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->a:I

    goto/16 :goto_3

    .line 10
    :cond_1
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 11
    iget-object v7, v6, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->a:Ljava/util/TreeSet;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 12
    :cond_3
    invoke-virtual {v6, v3}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->a(Z)V

    .line 13
    :cond_4
    iget-object v6, v6, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->a:Ljava/util/TreeSet;

    .line 14
    sget-object v7, Lcom/facebook/internal/NativeProtocol;->d:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 15
    invoke-virtual {v6}, Ljava/util/TreeSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 16
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 17
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 18
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_0
    if-ltz v9, :cond_6

    .line 19
    aget v11, v5, v9

    if-le v11, v10, :cond_6

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_6
    if-gez v9, :cond_7

    goto :goto_1

    .line 20
    :cond_7
    aget v11, v5, v9

    if-ne v11, v10, :cond_5

    .line 21
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_8

    .line 22
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v6, -0x1

    :goto_2
    if-eq v6, v1, :cond_2

    .line 23
    new-instance v4, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    invoke-direct {v4}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;-><init>()V

    .line 24
    iput v6, v4, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->a:I

    goto :goto_3

    .line 25
    :cond_9
    new-instance v4, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    invoke-direct {v4}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;-><init>()V

    .line 26
    iput v1, v4, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->a:I

    .line 27
    :goto_3
    iget v4, v4, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->a:I

    if-ne v4, v1, :cond_a

    goto :goto_5

    .line 28
    :cond_a
    iget-object v1, v0, Lcom/facebook/internal/PlatformServiceClient;->r:Landroid/content/Context;

    .line 29
    sget-object v4, Lcom/facebook/internal/NativeProtocol;->a:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 30
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v5}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v7, "android.intent.category.DEFAULT"

    .line 32
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_4

    .line 33
    :cond_c
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-nez v7, :cond_d

    goto :goto_4

    .line 34
    :cond_d
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/facebook/internal/FacebookSignatureValidator;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_4

    :cond_e
    move-object v6, v5

    :goto_4
    if-eqz v6, :cond_b

    :cond_f
    if-nez v6, :cond_10

    :goto_5
    const/4 v0, 0x0

    goto :goto_6

    .line 35
    :cond_10
    iput-boolean v2, v0, Lcom/facebook/internal/PlatformServiceClient;->u:Z

    .line 36
    iget-object v1, v0, Lcom/facebook/internal/PlatformServiceClient;->r:Landroid/content/Context;

    invoke-virtual {v1, v6, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_11

    return v3

    .line 37
    :cond_11
    iget-object v0, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 38
    iget-object v0, v0, Lcom/facebook/login/LoginClient;->v:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    if-eqz v0, :cond_12

    .line 39
    check-cast v0, Lcom/facebook/login/LoginFragment$2;

    .line 40
    iget-object v0, v0, Lcom/facebook/login/LoginFragment$2;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :cond_12
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler$1;-><init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 42
    iget-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->t:Lcom/facebook/login/GetTokenClient;

    .line 43
    iput-object v0, p1, Lcom/facebook/internal/PlatformServiceClient;->t:Lcom/facebook/internal/PlatformServiceClient$CompletedListener;

    return v2
.end method

.method public k(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    sget-object v7, Lcom/facebook/AccessTokenSource;->t:Lcom/facebook/AccessTokenSource;

    .line 2
    iget-object v2, p1, Lcom/facebook/login/LoginClient$Request;->u:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v3, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    .line 4
    invoke-static {p2, v3, p1}, Lcom/facebook/internal/Utility;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    const-string p1, "com.facebook.platform.extra.PERMISSIONS"

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string p1, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v0, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME"

    .line 8
    invoke-static {p2, v0, v3}, Lcom/facebook/internal/Utility;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v10

    .line 9
    invoke-static {p1}, Lcom/facebook/internal/Utility;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.facebook.platform.extra.USER_ID"

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "graph_domain"

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12
    new-instance p2, Lcom/facebook/AccessToken;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    move-object p1, p2

    .line 13
    :goto_0
    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 14
    iget-object p2, p2, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 15
    invoke-static {p2, p1}, Lcom/facebook/login/LoginClient$Result;->d(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {p2, p1}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->r:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->H(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
