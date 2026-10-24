.class public Lcom/shabakaty/downloader/v4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/v4$a;,
        Lcom/shabakaty/downloader/v4$b;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/qm;

.field public b:Lcom/shabakaty/downloader/t46;

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public e:Lcom/shabakaty/downloader/v4$b;

.field public final f:Landroid/content/Context;

.field public final g:Z

.field public final h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/v4;->d:Ljava/lang/Object;

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p4

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/v4;->f:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/shabakaty/downloader/v4;->c:Z

    iput-wide p2, p0, Lcom/shabakaty/downloader/v4;->h:J

    iput-boolean p5, p0, Lcom/shabakaty/downloader/v4;->g:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/shabakaty/downloader/v4$a;
    .locals 13

    const-string v0, "Error while reading from SharedPreferences "

    const-string v1, "GmscoreFlag"

    new-instance v2, Lcom/shabakaty/downloader/fq1;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/shabakaty/downloader/fq1;-><init>(Landroid/content/Context;I)V

    const-string v3, "gads:ad_id_app_context:enabled"

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/fq1;->S0(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "gads:ad_id_app_context:ping_ratio"

    const/4 v5, 0x0

    .line 1
    :try_start_0
    iget-object v6, v2, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroid/content/SharedPreferences;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    check-cast v6, Landroid/content/SharedPreferences;

    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, v4

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v12, 0x0

    :goto_1
    const-string v4, "gads:ad_id_use_shared_preference:experiment_id"

    const-string v5, ""

    .line 2
    :try_start_1
    iget-object v6, v2, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroid/content/SharedPreferences;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    check-cast v6, Landroid/content/SharedPreferences;

    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v0, v5

    :goto_3
    const-string v1, "gads:ad_id_use_persistent_service:enabled"

    .line 3
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/fq1;->S0(Ljava/lang/String;)Z

    move-result v9

    new-instance v1, Lcom/shabakaty/downloader/v4;

    const-wide/16 v6, -0x1

    move-object v4, v1

    move-object v5, p0

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/v4;-><init>(Landroid/content/Context;JZZ)V

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/v4;->g(Z)V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v4;->c()Lcom/shabakaty/downloader/v4$a;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v4

    const/4 v11, 0x0

    move-object v4, v1

    move-object v5, p0

    move v6, v3

    move v7, v12

    move-object v10, v0

    invoke-virtual/range {v4 .. v11}, Lcom/shabakaty/downloader/v4;->h(Lcom/shabakaty/downloader/v4$a;ZFJLjava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v4;->a()V

    return-object p0

    :catchall_2
    move-exception p0

    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    move-object v4, v1

    move v6, v3

    move v7, v12

    move-object v10, v0

    move-object v11, p0

    :try_start_3
    invoke-virtual/range {v4 .. v11}, Lcom/shabakaty/downloader/v4;->h(Lcom/shabakaty/downloader/v4$a;ZFJLjava/lang/String;Ljava/lang/Throwable;)Z

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v4;->a()V

    throw p0
.end method

.method public static d(Landroid/content/Context;Z)Lcom/shabakaty/downloader/qm;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qq1;->b:Lcom/shabakaty/downloader/qq1;

    const v1, 0xbdfcb8

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/shabakaty/downloader/qq1;->c(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Google Play services not available"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string p1, "com.google.android.gms.ads.identifier.service.PERSISTENT_START"

    goto :goto_1

    :cond_2
    const-string p1, "com.google.android.gms.ads.identifier.service.START"

    :goto_1
    new-instance v0, Lcom/shabakaty/downloader/qm;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qm;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.google.android.gms"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-static {}, Lcom/shabakaty/downloader/kb0;->b()Lcom/shabakaty/downloader/kb0;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/shabakaty/downloader/kb0;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Connection failure"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    new-instance p0, Lcom/shabakaty/downloader/rq1;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/rq1;-><init>(I)V

    throw p0
.end method

.method public static e(Lcom/shabakaty/downloader/qm;)Lcom/shabakaty/downloader/t46;
    .locals 3

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2, v0}, Lcom/shabakaty/downloader/qm;->a(JLjava/util/concurrent/TimeUnit;)Landroid/os/IBinder;

    move-result-object p0

    sget v0, Lcom/shabakaty/downloader/ta6;->a:I

    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/t46;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/t46;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/hg6;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/hg6;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Interrupted exception"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->h(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v4;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/v4;->a:Lcom/shabakaty/downloader/qm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/v4;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/shabakaty/downloader/kb0;->b()Lcom/shabakaty/downloader/kb0;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/v4;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/downloader/v4;->a:Lcom/shabakaty/downloader/qm;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/kb0;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "AdvertisingIdClient"

    const-string v2, "AdvertisingIdClient unbindService failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/v4;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shabakaty/downloader/v4;->b:Lcom/shabakaty/downloader/t46;

    iput-object v0, p0, Lcom/shabakaty/downloader/v4;->a:Lcom/shabakaty/downloader/qm;

    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public c()Lcom/shabakaty/downloader/v4$a;
    .locals 4

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->h(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/v4;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/v4;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/v4;->e:Lcom/shabakaty/downloader/v4$b;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/shabakaty/downloader/v4$b;->u:Z

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/v4;->g(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/v4;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient is not connected."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v4;->a:Lcom/shabakaty/downloader/qm;

    const-string v1, "null reference"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/v4;->b:Lcom/shabakaty/downloader/t46;

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4
    :try_start_6
    new-instance v0, Lcom/shabakaty/downloader/v4$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/v4;->b:Lcom/shabakaty/downloader/t46;

    invoke-interface {v1}, Lcom/shabakaty/downloader/t46;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/v4;->b:Lcom/shabakaty/downloader/t46;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/t46;->C0(Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/v4$a;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/v4;->f()V

    return-object v0

    :catch_1
    move-exception v0

    :try_start_8
    const-string v1, "AdvertisingIdClient"

    const-string v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/v4;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/v4;->e:Lcom/shabakaty/downloader/v4$b;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/shabakaty/downloader/v4$b;->t:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/v4;->e:Lcom/shabakaty/downloader/v4$b;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    iget-wide v1, p0, Lcom/shabakaty/downloader/v4;->h:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    new-instance v1, Lcom/shabakaty/downloader/v4$b;

    iget-wide v2, p0, Lcom/shabakaty/downloader/v4;->h:J

    invoke-direct {v1, p0, v2, v3}, Lcom/shabakaty/downloader/v4$b;-><init>(Lcom/shabakaty/downloader/v4;J)V

    iput-object v1, p0, Lcom/shabakaty/downloader/v4;->e:Lcom/shabakaty/downloader/v4$b;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/v4;->a()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g(Z)V
    .locals 2

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->h(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/v4;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/v4;->a()V

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v4;->f:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/v4;->g:Z

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/v4;->d(Landroid/content/Context;Z)Lcom/shabakaty/downloader/qm;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/v4;->a:Lcom/shabakaty/downloader/qm;

    invoke-static {v0}, Lcom/shabakaty/downloader/v4;->e(Lcom/shabakaty/downloader/qm;)Lcom/shabakaty/downloader/t46;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/v4;->b:Lcom/shabakaty/downloader/t46;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/v4;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/v4;->f()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final h(Lcom/shabakaty/downloader/v4$a;ZFJLjava/lang/String;Ljava/lang/Throwable;)Z
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p3

    cmpl-double p3, v0, v2

    if-lez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    const-string v2, "app_context"

    invoke-virtual {p3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 1
    iget-boolean p2, p1, Lcom/shabakaty/downloader/v4$a;->b:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const-string p2, "limit_ad_tracking"

    .line 2
    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/v4$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ad_id_size"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p6, :cond_6

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "experiment_id"

    invoke-virtual {p3, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string p1, "tag"

    const-string p2, "AdvertisingIdClient"

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "time_spent"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/shabakaty/downloader/ge5;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/ge5;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method
