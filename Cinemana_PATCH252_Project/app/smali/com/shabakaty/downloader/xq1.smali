.class public Lcom/shabakaty/downloader/xq1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# static fields
.field public static c:Lcom/shabakaty/downloader/xq1;


# instance fields
.field public final a:Landroid/content/Context;

.field public volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xq1;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/shabakaty/downloader/xq1;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/shabakaty/downloader/xq1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/xq1;->c:Lcom/shabakaty/downloader/xq1;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/wt5;->a:Lcom/shabakaty/downloader/od7;

    .line 5
    const-class v1, Lcom/shabakaty/downloader/wt5;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    sget-object v2, Lcom/shabakaty/downloader/wt5;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/shabakaty/downloader/wt5;->c:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_3
    const-string v2, "GoogleCertificates"

    const-string v3, "GoogleCertificates has been initialized already"

    .line 8
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :try_start_4
    monitor-exit v1

    .line 10
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/xq1;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/xq1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/shabakaty/downloader/xq1;->c:Lcom/shabakaty/downloader/xq1;

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v1

    throw p0

    .line 12
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 13
    sget-object p0, Lcom/shabakaty/downloader/xq1;->c:Lcom/shabakaty/downloader/xq1;

    return-object p0

    :catchall_1
    move-exception p0

    .line 14
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public static varargs c(Landroid/content/pm/PackageInfo;[Lcom/shabakaty/downloader/kz5;)Lcom/shabakaty/downloader/kz5;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/fg6;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/fg6;-><init>([B)V

    .line 5
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 6
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/kz5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static d(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3
    .param p0    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Z
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/xo6;->a:[Lcom/shabakaty/downloader/kz5;

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/xq1;->c(Landroid/content/pm/PackageInfo;[Lcom/shabakaty/downloader/kz5;)Lcom/shabakaty/downloader/kz5;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Lcom/shabakaty/downloader/kz5;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/xo6;->a:[Lcom/shabakaty/downloader/kz5;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/xq1;->c(Landroid/content/pm/PackageInfo;[Lcom/shabakaty/downloader/kz5;)Lcom/shabakaty/downloader/kz5;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public b(I)Z
    .locals 10
    .param p1    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xq1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    aget-object v0, p1, v3

    const-string v4, "null pkg"

    if-nez v0, :cond_1

    .line 4
    invoke-static {v4}, Lcom/shabakaty/downloader/c07;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/c07;

    move-result-object v0

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v5, p0, Lcom/shabakaty/downloader/xq1;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/c07;->d:Lcom/shabakaty/downloader/c07;

    goto/16 :goto_4

    .line 7
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/shabakaty/downloader/xq1;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    .line 9
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object v6, p0, Lcom/shabakaty/downloader/xq1;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/shabakaty/downloader/uq1;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v5, :cond_3

    .line 11
    invoke-static {v4}, Lcom/shabakaty/downloader/c07;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/c07;

    move-result-object v4

    goto :goto_2

    .line 12
    :cond_3
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_6

    array-length v4, v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    new-instance v4, Lcom/shabakaty/downloader/fg6;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/shabakaty/downloader/fg6;-><init>([B)V

    .line 14
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 15
    sget-object v9, Lcom/shabakaty/downloader/wt5;->a:Lcom/shabakaty/downloader/od7;

    .line 16
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    .line 17
    :try_start_1
    invoke-static {v8, v4, v6, v2}, Lcom/shabakaty/downloader/wt5;->a(Ljava/lang/String;Lcom/shabakaty/downloader/kz5;ZZ)Lcom/shabakaty/downloader/c07;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 19
    iget-boolean v9, v6, Lcom/shabakaty/downloader/c07;->a:Z

    if-eqz v9, :cond_5

    .line 20
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 21
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 22
    :try_start_2
    invoke-static {v8, v4, v2, v7}, Lcom/shabakaty/downloader/wt5;->a(Ljava/lang/String;Lcom/shabakaty/downloader/kz5;ZZ)Lcom/shabakaty/downloader/c07;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 24
    iget-boolean v4, v4, Lcom/shabakaty/downloader/c07;->a:Z

    if-eqz v4, :cond_5

    const-string v4, "debuggable release cert app rejected"

    .line 25
    invoke-static {v4}, Lcom/shabakaty/downloader/c07;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/c07;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 26
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 27
    throw p1

    :cond_5
    move-object v4, v6

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 28
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 29
    throw p1

    :cond_6
    :goto_1
    const-string v4, "single cert required"

    .line 30
    invoke-static {v4}, Lcom/shabakaty/downloader/c07;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/c07;

    move-result-object v4

    .line 31
    :goto_2
    iget-boolean v5, v4, Lcom/shabakaty/downloader/c07;->a:Z

    if-eqz v5, :cond_7

    .line 32
    iput-object v0, p0, Lcom/shabakaty/downloader/xq1;->b:Ljava/lang/String;

    :cond_7
    move-object v0, v4

    goto :goto_4

    :catch_0
    move-exception v4

    const-string v5, "no pkg "

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/c07;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/c07;

    move-result-object v0

    .line 34
    :goto_4
    iget-boolean v4, v0, Lcom/shabakaty/downloader/c07;->a:Z

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    const-string p1, "null reference"

    .line 35
    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    :goto_5
    const-string p1, "no pkgs"

    .line 36
    invoke-static {p1}, Lcom/shabakaty/downloader/c07;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/c07;

    move-result-object v0

    .line 37
    :goto_6
    iget-boolean p1, v0, Lcom/shabakaty/downloader/c07;->a:Z

    if-nez p1, :cond_d

    const/4 p1, 0x3

    const-string v1, "GoogleCertificatesRslt"

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 38
    iget-object p1, v0, Lcom/shabakaty/downloader/c07;->c:Ljava/lang/Throwable;

    if-eqz p1, :cond_c

    .line 39
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c07;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v2, v0, Lcom/shabakaty/downloader/c07;->c:Ljava/lang/Throwable;

    invoke-static {v1, p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 40
    :cond_c
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c07;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_d
    :goto_7
    iget-boolean p1, v0, Lcom/shabakaty/downloader/c07;->a:Z

    return p1
.end method
