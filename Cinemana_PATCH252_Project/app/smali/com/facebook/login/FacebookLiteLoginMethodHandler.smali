.class public Lcom/facebook/login/FacebookLiteLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "FacebookLiteLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/FacebookLiteLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/FacebookLiteLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/FacebookLiteLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/FacebookLiteLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "fb_lite_login"

    return-object v0
.end method

.method public j(Lcom/facebook/login/LoginClient$Request;)I
    .locals 11

    .line 1
    invoke-static {}, Lcom/facebook/login/LoginClient;->g()Ljava/lang/String;

    move-result-object v9

    .line 2
    iget-object v0, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    move-result-object v10

    .line 4
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Request;->u:Ljava/lang/String;

    .line 5
    iget-object v2, p1, Lcom/facebook/login/LoginClient$Request;->s:Ljava/util/Set;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Z

    move-result v4

    .line 7
    iget-object v5, p1, Lcom/facebook/login/LoginClient$Request;->t:Lcom/facebook/login/DefaultAudience;

    .line 8
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->v:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginMethodHandler;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v7, p1, Lcom/facebook/login/LoginClient$Request;->y:Ljava/lang/String;

    .line 11
    sget-object p1, Lcom/facebook/internal/NativeProtocol;->a:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;

    .line 13
    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;-><init>()V

    const/4 v8, 0x0

    move-object v3, v9

    .line 14
    invoke-static/range {v0 .. v8}, Lcom/facebook/internal/NativeProtocol;->b(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/facebook/internal/FacebookSignatureValidator;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    const/4 p1, 0x0

    :cond_2
    const-string v1, "e2e"

    .line 17
    invoke-virtual {p0, v1, v9}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/facebook/login/LoginClient;->j()I

    move-result v1

    if-nez p1, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 20
    iget-object v2, v2, Lcom/facebook/login/LoginClient;->t:Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    :goto_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->r:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->H(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
