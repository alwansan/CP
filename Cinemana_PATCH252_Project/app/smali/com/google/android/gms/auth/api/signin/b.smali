.class public Lcom/google/android/gms/auth/api/signin/b;
.super Lcom/google/android/gms/common/api/b;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/b<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static j:I = 0x1


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/ef;->a:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/shabakaty/downloader/h9;

    invoke-direct {v1}, Lcom/shabakaty/downloader/h9;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/shabakaty/downloader/h9;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ef;->a:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/shabakaty/downloader/h9;

    invoke-direct {v1}, Lcom/shabakaty/downloader/h9;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/google/android/gms/common/api/b$a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Lcom/google/android/gms/common/api/b$a;-><init>(Lcom/shabakaty/downloader/h9;Landroid/accounts/Account;Landroid/os/Looper;)V

    .line 4
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized e()I
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/google/android/gms/auth/api/signin/b;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/pq1;->c:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/pq1;->d:Lcom/shabakaty/downloader/pq1;

    const v2, 0xbdfcb8

    .line 4
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/pq1;->c(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x4

    .line 5
    sput v0, Lcom/google/android/gms/auth/api/signin/b;->j:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v0, v2, v3}, Lcom/shabakaty/downloader/pq1;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.auth.api.fallback"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 8
    sput v0, Lcom/google/android/gms/auth/api/signin/b;->j:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 9
    sput v0, Lcom/google/android/gms/auth/api/signin/b;->j:I

    .line 10
    :cond_2
    :goto_0
    sget v0, Lcom/google/android/gms/auth/api/signin/b;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
