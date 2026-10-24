.class public final Lcom/google/android/gms/auth/api/signin/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# direct methods
.method public static a(Landroid/content/Intent;)Lcom/shabakaty/downloader/uk4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/shabakaty/downloader/uk4<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qo6;->a:Lcom/shabakaty/downloader/qk2;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/shabakaty/downloader/wq1;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->y:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/wq1;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    const-string v1, "googleSignInStatus"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "googleSignInAccount"

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p0, :cond_2

    .line 5
    new-instance p0, Lcom/shabakaty/downloader/wq1;

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/google/android/gms/common/api/Status;->y:Lcom/google/android/gms/common/api/Status;

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/wq1;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/wq1;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->w:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/wq1;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    move-object p0, v0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wq1;->s:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/wq1;->r:Lcom/google/android/gms/common/api/Status;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v0}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/shabakaty/downloader/wq1;->r:Lcom/google/android/gms/common/api/Status;

    .line 13
    invoke-static {p0}, Lcom/shabakaty/downloader/i9;->a(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/g9;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/kl4;->d(Ljava/lang/Exception;)Lcom/shabakaty/downloader/uk4;

    move-result-object p0

    return-object p0
.end method
