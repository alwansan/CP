.class public final Lcom/shabakaty/downloader/ph5;
.super Lcom/shabakaty/downloader/jq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/jq1<",
        "Lcom/shabakaty/downloader/oi5;",
        ">;"
    }
.end annotation


# instance fields
.field public final X:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Lcom/shabakaty/downloader/gf;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)V
    .locals 7

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/jq1;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/shabakaty/downloader/t30;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)V

    if-nez p4, :cond_0

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ph5;->X:Landroid/os/Bundle;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method


# virtual methods
.method public final A()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final E()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jq1;->U:Lcom/shabakaty/downloader/t30;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/t30;->a:Landroid/accounts/Account;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/shabakaty/downloader/ff;->a:Lcom/google/android/gms/common/api/a;

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/t30;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/t30$b;

    if-nez v1, :cond_1

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/t30;->b:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 7
    :cond_1
    throw v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic f(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/oi5;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/oi5;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/vi5;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/vi5;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final i()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ph5;->X:Landroid/os/Bundle;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method
