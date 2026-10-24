.class public final Lcom/shabakaty/downloader/v46;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/shabakaty/downloader/vm5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/b<",
        "Lcom/google/android/gms/common/api/a$d$c;",
        ">;",
        "Lcom/shabakaty/downloader/vm5;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/o30;->m:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/shabakaty/downloader/h9;

    invoke-direct {v1}, Lcom/shabakaty/downloader/h9;-><init>()V

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 2
    new-instance v3, Lcom/google/android/gms/common/api/b$a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Lcom/google/android/gms/common/api/b$a;-><init>(Lcom/shabakaty/downloader/h9;Landroid/accounts/Account;Landroid/os/Looper;)V

    .line 3
    invoke-direct {p0, p1, v0, v4, v3}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V

    return-void
.end method
