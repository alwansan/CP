.class public Lcom/shabakaty/downloader/i9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;)Lcom/shabakaty/downloader/g9;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->u:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ms3;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ms3;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/g9;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/g9;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
