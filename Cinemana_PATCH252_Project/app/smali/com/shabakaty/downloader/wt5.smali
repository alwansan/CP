.class public final Lcom/shabakaty/downloader/wt5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# static fields
.field public static volatile a:Lcom/shabakaty/downloader/od7;

.field public static final b:Ljava/lang/Object;

.field public static c:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wt5;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/shabakaty/downloader/kz5;ZZ)Lcom/shabakaty/downloader/c07;
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/wt5;->a:Lcom/shabakaty/downloader/od7;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/wt5;->c:Landroid/content/Context;

    const-string v2, "null reference"

    .line 3
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/wt5;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    sget-object v2, Lcom/shabakaty/downloader/wt5;->a:Lcom/shabakaty/downloader/od7;

    if-nez v2, :cond_2

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/wt5;->c:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->k:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v4, "com.google.android.gms.googlecertificates"

    .line 7
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2

    const-string v3, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 9
    sget v3, Lcom/shabakaty/downloader/pc7;->a:I

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    const-string v3, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    .line 10
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 11
    instance-of v4, v3, Lcom/shabakaty/downloader/od7;

    if-eqz v4, :cond_1

    .line 12
    check-cast v3, Lcom/shabakaty/downloader/od7;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v3, Lcom/shabakaty/downloader/zd7;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/zd7;-><init>(Landroid/os/IBinder;)V

    .line 14
    :goto_0
    sput-object v3, Lcom/shabakaty/downloader/wt5;->a:Lcom/shabakaty/downloader/od7;

    .line 15
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_2 .. :try_end_2} :catch_1

    .line 16
    :cond_3
    :goto_1
    sget-object v0, Lcom/shabakaty/downloader/wt5;->c:Landroid/content/Context;

    const-string v2, "null reference"

    .line 17
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/sr6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/sr6;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/kz5;ZZ)V

    .line 19
    :try_start_3
    sget-object p3, Lcom/shabakaty/downloader/wt5;->a:Lcom/shabakaty/downloader/od7;

    sget-object v2, Lcom/shabakaty/downloader/wt5;->c:Landroid/content/Context;

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 21
    new-instance v3, Lcom/shabakaty/downloader/p43;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 22
    invoke-interface {p3, v0, v3}, Lcom/shabakaty/downloader/od7;->A1(Lcom/shabakaty/downloader/sr6;Lcom/shabakaty/downloader/gx1;)Z

    move-result p3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p3, :cond_4

    .line 23
    sget-object p0, Lcom/shabakaty/downloader/c07;->d:Lcom/shabakaty/downloader/c07;

    return-object p0

    .line 24
    :cond_4
    new-instance p3, Lcom/shabakaty/downloader/o56;

    invoke-direct {p3, p2, p0, p1}, Lcom/shabakaty/downloader/o56;-><init>(ZLjava/lang/String;Lcom/shabakaty/downloader/kz5;)V

    .line 25
    new-instance p0, Lcom/shabakaty/downloader/u57;

    invoke-direct {p0, p3, v1}, Lcom/shabakaty/downloader/u57;-><init>(Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/fl3;)V

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    .line 27
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/c07;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/c07;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module init: "

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/c07;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/c07;

    move-result-object p0

    return-object p0
.end method
