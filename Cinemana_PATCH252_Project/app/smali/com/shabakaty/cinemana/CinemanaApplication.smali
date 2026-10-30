.class public final Lcom/shabakaty/cinemana/CinemanaApplication;
.super Lcom/shabakaty/downloader/vk0;
.source "CinemanaApplication.kt"

# interfaces
.implements Lcom/shabakaty/downloader/d43;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/CinemanaApplication;",
        "Lcom/shabakaty/downloader/vk0;",
        "Lcom/shabakaty/downloader/ms1;",
        "Lcom/shabakaty/downloader/d43;",
        "Lcom/shabakaty/downloader/e43;",
        "stateChanges",
        "Lcom/shabakaty/downloader/qv4;",
        "onOSSubscriptionChanged",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public A:Lcom/shabakaty/usermanagement/UserManagement;

.field public s:Landroid/content/Context;

.field public t:Lcom/shabakaty/downloader/uj2;

.field public u:Lcom/shabakaty/downloader/cb;

.field public v:Lcom/shabakaty/downloader/pc;

.field public w:Lcom/shabakaty/downloader/ff3;

.field public x:Lcom/shabakaty/downloader/jw0;

.field public y:Lcom/shabakaty/downloader/n24;

.field public z:Lcom/shabakaty/downloader/sx4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vk0;-><init>()V

    return-void
.end method

.method public static final d(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->register(Landroid/content/Context;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    return-object p1
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 7

    # PATCH303: logcat-only marker before app/component initialization (no filesystem work).
    const-string v0, "CinemanaStartupTrace"
    const-string v1, "PATCH303 attach_base_enter"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "base"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/uj2;->d:Lcom/shabakaty/downloader/tm1;

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/uj2$a;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/uj2$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/uj2;

    .line 5
    sput-object p1, Lcom/shabakaty/downloader/uj2;->e:Lcom/shabakaty/downloader/uj2;

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/uj2;->e:Lcom/shabakaty/downloader/uj2;

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    iput-object p1, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->t:Lcom/shabakaty/downloader/uj2;

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uj2;->a()Landroid/content/Context;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->s:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->g()Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    const-string v0, "APP_ATTACH_BASE_CONTEXT"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/jv2;->a:Ljava/util/Set;

    const-string p1, "MultiDex"

    const-string v0, "Installing application"

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-boolean v0, Lcom/shabakaty/downloader/jv2;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "VM has multidex support, MultiDex support library is disabled."

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching."

    .line 18
    invoke-static {p1, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled."

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 20
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "secondary-dexes"

    const-string v5, ""

    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/jv2;->c(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "install done"

    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :goto_2
    const-string v1, "MultiDex installation failure"

    .line 22
    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "MultiDex installation failed ("

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0

    throw p1
.end method

.method public b()Lcom/shabakaty/downloader/e7;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/e7<",
            "+",
            "Lcom/shabakaty/downloader/vk0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/pd0;

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/pd0;-><init>(Landroid/content/Context;)V

    .line 2
    const-class v0, Landroid/app/Application;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/iq6;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    const-class v0, Lcom/shabakaty/downloader/pd0;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/iq6;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v10, Lcom/shabakaty/downloader/uk0;

    new-instance v2, Lcom/shabakaty/downloader/zl2;

    const/16 v0, 0x15

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    new-instance v3, Lcom/shabakaty/downloader/xl2;

    const/16 v0, 0xe

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/xl2;-><init>(I)V

    new-instance v4, Lcom/shabakaty/downloader/wt2;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/wt2;-><init>(I)V

    new-instance v5, Lcom/shabakaty/downloader/lk2;

    const/4 v0, 0x6

    invoke-direct {v5, v0}, Lcom/shabakaty/downloader/lk2;-><init>(I)V

    new-instance v6, Lcom/shabakaty/downloader/c21;

    const/16 v0, 0xc

    invoke-direct {v6, v0}, Lcom/shabakaty/downloader/c21;-><init>(I)V

    new-instance v7, Lcom/shabakaty/downloader/ll3;

    const/16 v0, 0xf

    invoke-direct {v7, v0}, Lcom/shabakaty/downloader/ll3;-><init>(I)V

    const/4 v9, 0x0

    move-object v0, v10

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/shabakaty/downloader/uk0;-><init>(Lcom/shabakaty/downloader/pd0;Lcom/shabakaty/downloader/zl2;Lcom/shabakaty/downloader/xl2;Lcom/shabakaty/downloader/wt2;Lcom/shabakaty/downloader/lk2;Lcom/shabakaty/downloader/c21;Lcom/shabakaty/downloader/ll3;Landroid/app/Application;Lcom/shabakaty/downloader/kj0;)V

    .line 5
    iput-object v10, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->u:Lcom/shabakaty/downloader/cb;

    .line 6
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->u:Lcom/shabakaty/downloader/cb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appComponent"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    # Local account: no remote device registration.
    return-void
.end method

.method public final f()Lcom/shabakaty/downloader/pc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->v:Lcom/shabakaty/downloader/pc;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "applicationScope"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->s:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "context"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()Lcom/shabakaty/downloader/jw0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->x:Lcom/shabakaty/downloader/jw0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "downloadDao"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()Lcom/shabakaty/downloader/ff3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->w:Lcom/shabakaty/downloader/ff3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "prefsManager"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()Lcom/shabakaty/usermanagement/UserManagement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->A:Lcom/shabakaty/usermanagement/UserManagement;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "userManagement"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/cinemana/CinemanaApplication;->t:Lcom/shabakaty/downloader/uj2;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uj2;->a()Landroid/content/Context;

    return-void

    :cond_0
    const-string p1, "localeManager"

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate()V
    .locals 23

    # PATCH303: logcat-only startup checkpoints, also visible in :filedownloader.
    const-string v0, "CinemanaStartupTrace"
    const-string v2, "PATCH303 app_create_enter"
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcom/shabakaty/downloader/vk0;->onCreate()V

    const-string v0, "CinemanaStartupTrace"
    const-string v2, "PATCH303 app_super_completed"
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->install(Landroid/app/Application;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->init(Landroid/content/Context;)V

    const-string v0, "CinemanaStartupTrace"
    const-string v2, "PATCH303 local_init_returned"
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "APP_ONCREATE"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "productionBeta"

    const-string v2, "staging"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 2
    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/ny2$b;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-direct {v2, v5, v5, v6}, Lcom/shabakaty/downloader/ny2$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    new-instance v7, Lcom/shabakaty/downloader/ny2$a;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/shabakaty/downloader/ny2$a;-><init>(JI)V

    const-string v8, "https://aj2376.online/aaddf-api-v3?key=2c4c90085bfe3c9675e5a8b47e32854c&requestUrl=http://epom.com&format=json&tz=3"

    .line 5
    iput-object v8, v2, Lcom/shabakaty/downloader/ny2$b;->b:Ljava/lang/String;

    const-string v8, "https://aj2376.online/zTbD9M7Jn40oZ65zNs8nXUjpHBZhdsccGmjHkvUqXH8xuz7zoBFXJ04O34FcozNIa-e5tWe2Vhaot"

    .line 6
    iput-object v8, v2, Lcom/shabakaty/downloader/ny2$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide/16 v8, 0x2

    .line 7
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v12, "timeUnit"

    .line 8
    invoke-static {v11, v12}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v11, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 10
    iput-wide v8, v7, Lcom/shabakaty/downloader/ny2$a;->a:J

    .line 11
    :cond_0
    new-instance v8, Lcom/shabakaty/downloader/k41;

    invoke-direct {v8, v2, v7, v0}, Lcom/shabakaty/downloader/k41;-><init>(Lcom/shabakaty/downloader/ny2$b;Lcom/shabakaty/downloader/ny2$a;Z)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->g()Landroid/content/Context;

    move-result-object v0

    .line 13
    iget-object v2, v8, Lcom/shabakaty/downloader/k41;->a:Lcom/shabakaty/downloader/ny2$b;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/ny2$b;->b:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 16
    iget-object v2, v8, Lcom/shabakaty/downloader/k41;->a:Lcom/shabakaty/downloader/ny2$b;

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/ny2$b;->a:Ljava/lang/String;

    .line 18
    invoke-static {v2}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 19
    new-instance v2, Lcom/shabakaty/downloader/gq0;

    invoke-direct {v2, v0, v8}, Lcom/shabakaty/downloader/gq0;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/k41;)V

    sput-object v2, Lcom/shabakaty/downloader/e41;->a:Lcom/shabakaty/downloader/gq0;

    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->g()Landroid/content/Context;

    move-result-object v2

    const-class v7, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    invoke-direct {v0, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "DownloadsKey"

    .line 21
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->g()Landroid/content/Context;

    move-result-object v2

    const v7, 0xd691c4

    const/high16 v8, 0x8000000

    invoke-static {v2, v7, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "context.applicationContext"

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v7, Lcom/shabakaty/downloader/wk0;

    new-instance v12, Lcom/shabakaty/downloader/ow4;

    const/4 v8, 0x5

    invoke-direct {v12, v8}, Lcom/shabakaty/downloader/ow4;-><init>(I)V

    new-instance v13, Lcom/shabakaty/downloader/cp6;

    const/4 v8, 0x7

    invoke-direct {v13, v8}, Lcom/shabakaty/downloader/cp6;-><init>(I)V

    new-instance v14, Lcom/shabakaty/downloader/zl2;

    const/16 v9, 0x16

    invoke-direct {v14, v9}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    new-instance v15, Lcom/shabakaty/downloader/xl2;

    const/16 v9, 0xf

    invoke-direct {v15, v9}, Lcom/shabakaty/downloader/xl2;-><init>(I)V

    const/16 v17, 0x0

    move-object v11, v7

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v17}, Lcom/shabakaty/downloader/wk0;-><init>(Lcom/shabakaty/downloader/ow4;Lcom/shabakaty/downloader/cp6;Lcom/shabakaty/downloader/zl2;Lcom/shabakaty/downloader/xl2;Landroid/content/Context;Lcom/shabakaty/downloader/wk0$a;)V

    .line 25
    sput-object v7, Lcom/shabakaty/downloader/xk0;->a:Lcom/shabakaty/downloader/uy0;

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v0, v7, :cond_3

    .line 27
    const-class v0, Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/ld0;->e(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Landroid/app/NotificationManager;

    const-string v7, "com.shabakaty.downloader.CHANNEL_ID"

    if-nez v0, :cond_1

    move-object v9, v5

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v9

    :goto_0
    if-nez v9, :cond_3

    .line 30
    new-instance v9, Landroid/app/NotificationChannel;

    const-string v11, "Shabakaty Downloader"

    invoke-direct {v9, v7, v11, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-nez v0, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 32
    :cond_3
    :goto_1
    :try_start_0
    new-instance v0, Lcom/shabakaty/downloader/y90$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/y90$a;-><init>()V

    .line 33
    iput v4, v0, Lcom/shabakaty/downloader/y90$a;->a:I

    .line 34
    new-instance v4, Lcom/shabakaty/downloader/y90;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/y90;-><init>(Lcom/shabakaty/downloader/y90$a;)V

    .line 35
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/r75;->c(Landroid/content/Context;Lcom/shabakaty/downloader/y90;)V

    .line 36
    new-instance v0, Lcom/shabakaty/downloader/gc0$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gc0$a;-><init>()V

    .line 37
    sget-object v4, Landroidx/work/c;->u:Landroidx/work/c;

    .line 38
    iput-object v4, v0, Lcom/shabakaty/downloader/gc0$a;->a:Landroidx/work/c;

    .line 39
    iput-boolean v10, v0, Lcom/shabakaty/downloader/gc0$a;->b:Z

    .line 40
    iput-boolean v10, v0, Lcom/shabakaty/downloader/gc0$a;->c:Z

    .line 41
    new-instance v4, Lcom/shabakaty/downloader/gc0;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/gc0;-><init>(Lcom/shabakaty/downloader/gc0$a;)V

    const-wide/16 v11, 0xf

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 43
    new-instance v7, Lcom/shabakaty/downloader/wb3$a;

    const-class v9, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-direct {v7, v9, v11, v12, v0}, Lcom/shabakaty/downloader/wb3$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 44
    iget-object v0, v7, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    iput-object v4, v0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 45
    iget-object v0, v7, Lcom/shabakaty/downloader/a85$a;->c:Ljava/util/Set;

    const-string v4, "CheckDownloadPeriodic"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v11, 0x14

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v11, v12, v0}, Lcom/shabakaty/downloader/a85$a;->d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a85$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wb3$a;

    .line 47
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a85$a;->a()Lcom/shabakaty/downloader/a85;

    move-result-object v0

    const-string v4, "PeriodicWorkRequestBuild\u2026nit.SECONDS)\n\t\t\t\t.build()"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/wb3;

    .line 48
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/r75;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/r75;

    move-result-object v12

    const-string v4, "getInstance(context)"

    .line 49
    invoke-static {v12, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x1

    .line 50
    new-instance v4, Lcom/shabakaty/downloader/l75;

    .line 51
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const-string v13, "CheckDownloadPeriodic"

    move-object v11, v4

    .line 52
    invoke-direct/range {v11 .. v16}, Lcom/shabakaty/downloader/l75;-><init>(Lcom/shabakaty/downloader/r75;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 53
    invoke-virtual {v4}, Lcom/shabakaty/downloader/l75;->d()Lcom/shabakaty/downloader/x73;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 54
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 55
    :goto_2
    new-instance v0, Lcom/shabakaty/downloader/l91;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/l91;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/shabakaty/downloader/z24;->b:Lcom/shabakaty/downloader/wa3;

    .line 56
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sput-boolean v3, Lcom/shabakaty/downloader/lw0;->b:Z

    .line 58
    new-instance v0, Lcom/shabakaty/downloader/cu;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V

    .line 59
    sput-object v0, Lcom/shabakaty/downloader/z24;->b:Lcom/shabakaty/downloader/wa3;

    .line 60
    sput v6, Lcom/shabakaty/downloader/z24;->a:I

    const v0, 0x7f08014e

    .line 61
    sput v0, Lcom/shabakaty/downloader/z24;->c:I

    const-string v0, "downloadsIntent"

    .line 62
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sput-object v2, Lcom/shabakaty/downloader/z24;->d:Landroid/app/PendingIntent;

    .line 64
    new-instance v0, Lcom/shabakaty/downloader/lc;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/lc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V

    .line 65
    sget-object v2, Lcom/shabakaty/downloader/nz0;->a:Lcom/shabakaty/downloader/mz0;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/lc;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sput v8, Lcom/onesignal/q0;->g:I

    sput v10, Lcom/onesignal/q0;->f:I

    .line 67
    invoke-static/range {p0 .. p0}, Lcom/onesignal/q0;->F(Landroid/content/Context;)V

    const-string v0, "4d0d7dc4-cd72-4057-8c55-2376a4e9011f"

    .line 68
    invoke-static {v0}, Lcom/onesignal/q0;->V(Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/shabakaty/downloader/y03;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->g()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/y03;-><init>(Landroid/content/Context;)V

    .line 70
    sput-object v0, Lcom/onesignal/q0;->n:Lcom/onesignal/q0$t;

    .line 71
    sget-boolean v0, Lcom/onesignal/q0;->o:Z

    if-eqz v0, :cond_4

    .line 72
    invoke-static {}, Lcom/onesignal/q0;->j()V

    .line 73
    :cond_4
    invoke-static {}, Lcom/onesignal/q0;->q()Lcom/shabakaty/downloader/e23;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 74
    :cond_5
    iget-object v0, v0, Lcom/shabakaty/downloader/e23;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    :goto_3
    move-object v0, v5

    goto :goto_4

    :cond_6
    const-string v2, "userId: "

    .line 75
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CinemanaOneSignal"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/vd5;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/shabakaty/cinemana/CinemanaApplication;->e(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_4
    if-nez v0, :cond_7

    .line 78
    invoke-static/range {p0 .. p0}, Lcom/onesignal/q0;->d(Lcom/shabakaty/downloader/d43;)V

    .line 79
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->j()Lcom/shabakaty/usermanagement/UserManagement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->observeLoginState()Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qf1;->b()Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    .line 80
    sget-object v2, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 81
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/qf1;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/qf1;->f(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    .line 83
    new-instance v2, Lcom/shabakaty/downloader/f00;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/f00;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V

    sget-object v4, Lcom/shabakaty/downloader/h00;->s:Lcom/shabakaty/downloader/h00;

    .line 84
    sget-object v6, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    sget-object v7, Lcom/shabakaty/downloader/jg1;->r:Lcom/shabakaty/downloader/jg1;

    invoke-virtual {v0, v2, v4, v6, v7}, Lcom/shabakaty/downloader/qf1;->g(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object v0

    .line 85
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    .line 86
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 87
    sget-boolean v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->b:Z

    if-eqz v0, :cond_8

    .line 88
    const-class v0, Lcom/facebook/drawee/backends/pipeline/Fresco;

    const-string v2, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"

    invoke-static {v0, v2}, Lcom/facebook/common/logging/FLog;->l(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_5

    .line 89
    :cond_8
    sput-boolean v10, Lcom/facebook/drawee/backends/pipeline/Fresco;->b:Z

    .line 90
    :goto_5
    sput-boolean v10, Lcom/facebook/imagepipeline/core/NativeCodeSetup;->a:Z

    .line 91
    invoke-static {}, Lcom/facebook/soloader/nativeloader/NativeLoader;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 92
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 93
    :try_start_1
    const-class v0, Lcom/facebook/imagepipeline/nativecode/NativeCodeInitializer;

    const-string v2, "init"

    new-array v4, v10, [Ljava/lang/Class;

    .line 94
    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 95
    :catch_0
    :try_start_2
    new-instance v0, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {v0}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->a(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    goto :goto_6

    .line 96
    :catch_1
    new-instance v0, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {v0}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->a(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    goto :goto_6

    .line 97
    :catch_2
    new-instance v0, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {v0}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->a(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    goto :goto_6

    .line 98
    :catch_3
    new-instance v0, Lcom/facebook/soloader/nativeloader/SystemDelegate;

    invoke-direct {v0}, Lcom/facebook/soloader/nativeloader/SystemDelegate;-><init>()V

    invoke-static {v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->a(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :goto_6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    goto :goto_8

    :goto_7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 100
    throw v0

    .line 101
    :cond_9
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    const-class v2, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    monitor-enter v2

    .line 103
    :try_start_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 104
    sget-object v4, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->w:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    .line 105
    new-instance v4, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    invoke-direct {v4, v0, v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    .line 106
    new-instance v6, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-direct {v6, v4, v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    .line 107
    invoke-static {v6}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->j(Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 108
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 109
    monitor-exit v2

    .line 110
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 111
    new-instance v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    invoke-direct {v2, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/facebook/drawee/backends/pipeline/Fresco;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    .line 112
    sput-object v2, Lcom/facebook/drawee/view/SimpleDraweeView;->y:Lcom/facebook/common/internal/Supplier;

    .line 113
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 114
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "once"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "context.applicationConte\u2026e\", Context.MODE_PRIVATE)"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sput-object v0, Lcom/shabakaty/downloader/e73;->b:Landroid/content/SharedPreferences;

    .line 117
    iget-object v0, v1, Lcom/shabakaty/cinemana/CinemanaApplication;->y:Lcom/shabakaty/downloader/n24;

    if-eqz v0, :cond_a

    .line 118
    iget-object v11, v0, Lcom/shabakaty/downloader/n24;->d:Lcom/shabakaty/downloader/pc;

    new-instance v14, Lcom/shabakaty/downloader/o24;

    invoke-direct {v14, v0, v5}, Lcom/shabakaty/downloader/o24;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/CinemanaApplication;->f()Lcom/shabakaty/downloader/pc;

    move-result-object v17

    sget-object v0, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 120
    sget-object v18, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 121
    new-instance v0, Lcom/shabakaty/downloader/m00;

    invoke-direct {v0, v1, v5}, Lcom/shabakaty/downloader/m00;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/ud0;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v22}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 122
    sget-object v0, Lcom/shabakaty/downloader/g00;->s:Lcom/shabakaty/downloader/g00;

    .line 123
    sput-object v0, Lcom/shabakaty/downloader/xv3;->a:Lcom/shabakaty/downloader/xc0;

    .line 124
    sget-object v11, Lcom/shabakaty/downloader/iq1;->r:Lcom/shabakaty/downloader/iq1;

    .line 125
    sget-object v12, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 126
    new-instance v14, Lcom/shabakaty/downloader/n00;

    invoke-direct {v14, v1, v5}, Lcom/shabakaty/downloader/n00;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/ud0;)V

    const/4 v15, 0x2

    invoke-static/range {v11 .. v16}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 127
    sput-boolean v10, Lcom/shabakaty/downloader/tk2;->d:Z

    .line 128
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "https://shabakaty.zendesk.com"

    const-string v4, "37916c3f8277e860da297f4a0428d6812e8332995dc26c0e"

    const-string v5, "mobile_sdk_client_92fdf306b287f4895024"

    .line 130
    invoke-virtual {v0, v2, v3, v4, v5}, Lzendesk/core/Zendesk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v2, Lzendesk/core/AnonymousIdentity;

    invoke-direct {v2}, Lzendesk/core/AnonymousIdentity;-><init>()V

    .line 132
    invoke-virtual {v0, v2}, Lzendesk/core/Zendesk;->setIdentity(Lzendesk/core/Identity;)V

    .line 133
    sget-object v2, Lzendesk/support/Support;->INSTANCE:Lzendesk/support/Support;

    invoke-virtual {v2, v0}, Lzendesk/support/Support;->init(Lzendesk/core/Zendesk;)V

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->bootstrap(Ljava/lang/Object;)V

    const-string v0, "CinemanaStartupTrace"
    const-string v2, "PATCH303 repair_startup_begin"
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->startup(Landroid/content/Context;)V

    const-string v0, "CinemanaStartupTrace"
    const-string v2, "PATCH303 app_create_finished"
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string v0, "settings"

    .line 134
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v5

    :catchall_2
    move-exception v0

    .line 135
    monitor-exit v2

    throw v0

    .line 136
    :cond_b
    sget-object v0, Lcom/shabakaty/downloader/v25;->r:Lcom/shabakaty/downloader/v25;

    throw v0

    .line 137
    :cond_c
    sget-object v0, Lcom/shabakaty/downloader/sz1;->r:Lcom/shabakaty/downloader/sz1;

    throw v0
.end method

.method public onOSSubscriptionChanged(Lcom/shabakaty/downloader/e43;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/e43;->b:Lcom/onesignal/OSSubscriptionState;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p1, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_6

    const-string v1, "userId: "

    .line 4
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CinemanaOneSignal"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/vd5;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/CinemanaApplication;->e(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/onesignal/q0;->b:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 7
    sget-object p1, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    check-cast p1, Lcom/shabakaty/downloader/a33;

    const-string v0, "OneSignal.initWithContext has not been called. Could not modify subscription observer"

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/a33;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 8
    :cond_4
    invoke-static {}, Lcom/onesignal/q0;->x()Lcom/shabakaty/downloader/l33;

    move-result-object v0

    .line 9
    :goto_3
    iget-object v1, v0, Lcom/shabakaty/downloader/l33;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/l33;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/l33;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method
