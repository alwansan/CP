.class public Lcom/facebook/login/LoginClient;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginClient$Result;,
        Lcom/facebook/login/LoginClient$Request;,
        Lcom/facebook/login/LoginClient$BackgroundProcessingListener;,
        Lcom/facebook/login/LoginClient$OnCompletedListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lcom/facebook/login/LoginLogger;

.field public B:I

.field public C:I

.field public r:[Lcom/facebook/login/LoginMethodHandler;

.field public s:I

.field public t:Landroidx/fragment/app/Fragment;

.field public u:Lcom/facebook/login/LoginClient$OnCompletedListener;

.field public v:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

.field public w:Z

.field public x:Lcom/facebook/login/LoginClient$Request;

.field public y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/LoginClient$1;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$1;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/facebook/login/LoginClient;->s:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/facebook/login/LoginClient;->B:I

    .line 9
    iput v0, p0, Lcom/facebook/login/LoginClient;->C:I

    .line 10
    const-class v1, Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 11
    array-length v2, v1

    new-array v2, v2, [Lcom/facebook/login/LoginMethodHandler;

    iput-object v2, p0, Lcom/facebook/login/LoginClient;->r:[Lcom/facebook/login/LoginMethodHandler;

    .line 12
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->r:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v3, v1, v0

    check-cast v3, Lcom/facebook/login/LoginMethodHandler;

    aput-object v3, v2, v0

    .line 14
    aget-object v2, v2, v0

    .line 15
    iget-object v3, v2, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    if-nez v3, :cond_0

    .line 16
    iput-object p0, v2, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t set LoginClient if it is already set."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/login/LoginClient;->s:I

    .line 19
    const-class v0, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 20
    invoke-static {p1}, Lcom/facebook/internal/Utility;->D(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->y:Ljava/util/Map;

    .line 21
    invoke-static {p1}, Lcom/facebook/internal/Utility;->D(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/LoginClient;->z:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/facebook/login/LoginClient;->s:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/facebook/login/LoginClient;->B:I

    .line 4
    iput v0, p0, Lcom/facebook/login/LoginClient;->C:I

    .line 5
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->t:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "init"

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()I
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->s:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->f()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->y:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->y:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-static {p3, v0, v1, p2}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/facebook/login/LoginClient;->y:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    const v1, 0x7f120093

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120092

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    invoke-static {v2, v1, v0}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    const/4 v0, 0x0

    return v0

    .line 7
    :cond_1
    iput-boolean v1, p0, Lcom/facebook/login/LoginClient;->w:Z

    return v1
.end method

.method public c(Lcom/facebook/login/LoginClient$Result;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lcom/facebook/login/LoginMethodHandler;->r:Ljava/util/Map;

    .line 3
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->r:Lcom/facebook/login/LoginClient$Result$Code;

    .line 4
    iget-object v3, v0, Lcom/facebook/login/LoginClient$Result$Code;->r:Ljava/lang/String;

    .line 5
    iget-object v4, p1, Lcom/facebook/login/LoginClient$Result;->t:Ljava/lang/String;

    iget-object v5, p1, Lcom/facebook/login/LoginClient$Result;->u:Ljava/lang/String;

    move-object v1, p0

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->y:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 8
    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->w:Ljava/util/Map;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->z:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 10
    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->x:Ljava/util/Map;

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->r:[Lcom/facebook/login/LoginMethodHandler;

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/facebook/login/LoginClient;->s:I

    .line 13
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 14
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->y:Ljava/util/Map;

    const/4 v2, 0x0

    .line 15
    iput v2, p0, Lcom/facebook/login/LoginClient;->B:I

    .line 16
    iput v2, p0, Lcom/facebook/login/LoginClient;->C:I

    .line 17
    iget-object v3, p0, Lcom/facebook/login/LoginClient;->u:Lcom/facebook/login/LoginClient$OnCompletedListener;

    if-eqz v3, :cond_4

    .line 18
    check-cast v3, Lcom/facebook/login/LoginFragment$1;

    .line 19
    iget-object v3, v3, Lcom/facebook/login/LoginFragment$1;->a:Lcom/facebook/login/LoginFragment;

    .line 20
    iput-object v0, v3, Lcom/facebook/login/LoginFragment;->t:Lcom/facebook/login/LoginClient$Request;

    .line 21
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->r:Lcom/facebook/login/LoginClient$Result$Code;

    sget-object v4, Lcom/facebook/login/LoginClient$Result$Code;->t:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v0, v4, :cond_3

    const/4 v1, 0x0

    .line 22
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.facebook.LoginFragment:Result"

    .line 23
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 28
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method public d(Lcom/facebook/login/LoginClient$Result;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->s:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/facebook/AccessToken;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->s:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/facebook/AccessToken;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->s:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/facebook/AccessToken;->z:Ljava/lang/String;

    iget-object v1, v1, Lcom/facebook/AccessToken;->z:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    iget-object p1, p1, Lcom/facebook/login/LoginClient$Result;->s:Lcom/facebook/AccessToken;

    invoke-static {v0, p1}, Lcom/facebook/login/LoginClient$Result;->d(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    const-string v0, "User logged in as different Facebook user."

    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v0, v1}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Caught exception"

    invoke-static {v0, v1, p1}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t validate without a token"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    :goto_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/shabakaty/downloader/ji1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->t:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/facebook/login/LoginMethodHandler;
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/login/LoginClient;->s:I

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->r:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lcom/facebook/login/LoginLogger;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->A:Lcom/facebook/login/LoginLogger;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/facebook/login/LoginLogger;->b:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 4
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Request;->u:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    :cond_0
    new-instance v0, Lcom/facebook/login/LoginLogger;

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 7
    iget-object v2, v2, Lcom/facebook/login/LoginClient$Request;->u:Ljava/lang/String;

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->A:Lcom/facebook/login/LoginLogger;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->A:Lcom/facebook/login/LoginLogger;

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    const-string v1, "fb_mobile_login_method_complete"

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->i()Lcom/facebook/login/LoginLogger;

    move-result-object p2

    const-string p3, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    .line 3
    invoke-virtual {p2, v1, p3, p1}, Lcom/facebook/login/LoginLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->i()Lcom/facebook/login/LoginLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 5
    iget-object v2, v2, Lcom/facebook/login/LoginClient$Request;->v:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Lcom/facebook/login/LoginLogger;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v3, "2_result"

    .line 8
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "5_error_message"

    .line 9
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string p2, "4_error_code"

    .line 10
    invoke-virtual {v2, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p5, :cond_4

    .line 11
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 12
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 13
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "6_extras"

    invoke-virtual {v2, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p2, "3_method"

    .line 14
    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, v0, Lcom/facebook/login/LoginLogger;->a:Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-virtual {p1, v1, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public l()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/facebook/login/LoginClient;->s:I

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iget-object v6, v0, Lcom/facebook/login/LoginMethodHandler;->r:Ljava/util/Map;

    const-string v3, "skipped"

    move-object v1, p0

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->r:[Lcom/facebook/login/LoginMethodHandler;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/facebook/login/LoginClient;->s:I

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lcom/facebook/login/LoginClient;->s:I

    .line 7
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    instance-of v1, v0, Lcom/facebook/login/WebViewLoginMethodHandler;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "no_internet_permission"

    const-string v1, "1"

    .line 11
    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginMethodHandler;->j(Lcom/facebook/login/LoginClient$Request;)I

    move-result v1

    .line 13
    iput v3, p0, Lcom/facebook/login/LoginClient;->B:I

    const-string v4, "3_method"

    if-lez v1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->i()Lcom/facebook/login/LoginLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 15
    iget-object v6, v6, Lcom/facebook/login/LoginClient$Request;->v:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v6}, Lcom/facebook/login/LoginLogger;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 18
    invoke-virtual {v6, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, v5, Lcom/facebook/login/LoginLogger;->a:Lcom/facebook/appevents/InternalAppEventsLogger;

    const-string v4, "fb_mobile_login_method_start"

    invoke-virtual {v0, v4, v6}, Lcom/facebook/appevents/InternalAppEventsLogger;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    iput v1, p0, Lcom/facebook/login/LoginClient;->C:I

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->i()Lcom/facebook/login/LoginLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 22
    iget-object v6, v6, Lcom/facebook/login/LoginClient$Request;->v:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v6}, Lcom/facebook/login/LoginLogger;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 25
    invoke-virtual {v6, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v4, v5, Lcom/facebook/login/LoginLogger;->a:Lcom/facebook/appevents/InternalAppEventsLogger;

    const-string v5, "fb_mobile_login_method_not_tried"

    invoke-virtual {v4, v5, v6}, Lcom/facebook/appevents/InternalAppEventsLogger;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->e()Ljava/lang/String;

    move-result-object v0

    const-string v4, "not_tried"

    invoke-virtual {p0, v4, v0, v2}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    :goto_2
    if-eqz v3, :cond_0

    return-void

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const-string v2, "Login attempt failed."

    .line 29
    invoke-static {v0, v2, v1}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    :cond_5
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->r:[Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2
    iget v0, p0, Lcom/facebook/login/LoginClient;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object p2, p0, Lcom/facebook/login/LoginClient;->y:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->H(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 5
    iget-object p2, p0, Lcom/facebook/login/LoginClient;->z:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->H(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
