.class public final Lcom/shabakaty/downloader/sh6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/shabakaty/downloader/uy6;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/Object;

.field public final t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/sh6;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/vision/common/internal/MobileVisionBase;Lcom/shabakaty/downloader/k12;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/sh6;->r:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/sh6;->r:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/uw6;Lcom/shabakaty/downloader/ma7;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/sh6;->r:I

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lcom/shabakaty/downloader/sh6;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    sget-object v4, Lcom/shabakaty/downloader/ga1;->c:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/p14;->a()Lcom/shabakaty/downloader/p14;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "FirebaseMessaging"

    const/4 v6, 0x3

    .line 3
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "FirebaseMessaging"

    const-string v7, "Starting service"

    .line 4
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, v4, Lcom/shabakaty/downloader/p14;->d:Ljava/util/Queue;

    .line 5
    invoke-interface {v5, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.google.firebase.MESSAGING_EVENT"

    .line 6
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lcom/shabakaty/downloader/p14;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    monitor-exit v4

    move-object v2, v5

    goto/16 :goto_4

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 10
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "."

    .line 12
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v1, v4, Lcom/shabakaty/downloader/p14;->a:Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_5
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-object v1, v4, Lcom/shabakaty/downloader/p14;->a:Ljava/lang/String;

    .line 15
    :goto_1
    iget-object v2, v4, Lcom/shabakaty/downloader/p14;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    goto :goto_4

    .line 16
    :cond_6
    :goto_2
    :try_start_2
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x5e

    add-int/2addr v7, v8

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FirebaseMessaging"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    goto :goto_4

    :cond_7
    :goto_3
    :try_start_3
    const-string v1, "FirebaseMessaging"

    const-string v5, "Failed to resolve target intent service, skipping classname enforcement"

    .line 17
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    :goto_4
    if-eqz v2, :cond_a

    const-string v1, "FirebaseMessaging"

    .line 18
    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Restricting intent to a specific service: "

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 20
    :cond_8
    new-instance v5, Ljava/lang/String;

    .line 21
    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    :goto_5
    const-string v5, "FirebaseMessaging"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    :cond_a
    :try_start_4
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/p14;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 24
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/g55;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_6

    .line 25
    :cond_b
    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    const-string v2, "Missing wake lock permission, service start may be delayed"

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    if-nez v0, :cond_c

    const-string v0, "FirebaseMessaging"

    const-string v1, "Error while delivering the message: ServiceIntent not found."

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v0, 0x194

    goto :goto_7

    :cond_c
    const/4 v0, -0x1

    goto :goto_7

    :catch_0
    move-exception v0

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2d

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to start service while in background: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FirebaseMessaging"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x192

    goto :goto_7

    :catch_1
    move-exception v0

    const-string v1, "FirebaseMessaging"

    const-string v2, "Error while delivering the message to the serviceIntent"

    .line 29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x191

    .line 30
    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 31
    monitor-exit v4

    throw v0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/uw6;

    iget-object v1, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ma7;

    .line 33
    iget-object v1, v1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v3, "null reference"

    .line 34
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ma7;

    iget-object v0, v0, Lcom/shabakaty/downloader/ma7;->M:Ljava/lang/String;

    .line 37
    invoke-static {v0}, Lcom/shabakaty/downloader/qg5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    .line 39
    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/uw6;

    iget-object v1, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ma7;

    .line 40
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xf6;->N()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 42
    :cond_e
    :goto_8
    iget-object v0, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/uw6;

    .line 43
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "Analytics storage consent denied. Returning null app instance id"

    .line 45
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    :goto_9
    return-object v2

    .line 46
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/di6;

    .line 47
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 48
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/di6;

    .line 49
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 50
    iget-object v0, v0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 51
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 52
    iget-object v1, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/mh5;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 53
    :goto_a
    iget-object v0, p0, Lcom/shabakaty/downloader/sh6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;

    iget-object v2, p0, Lcom/shabakaty/downloader/sh6;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/k12;

    .line 54
    iget-object v0, v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->s:Lcom/shabakaty/downloader/tl2;

    check-cast v0, Lcom/shabakaty/downloader/uk6;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-enter v0

    .line 56
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v3, v0, Lcom/shabakaty/downloader/uk6;->g:Lcom/shabakaty/downloader/km;

    .line 57
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/km;->a(Lcom/shabakaty/downloader/k12;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v3, v0, Lcom/shabakaty/downloader/uk6;->e:Lcom/shabakaty/downloader/po6;

    .line 58
    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/po6;->b(Lcom/shabakaty/downloader/k12;)Ljava/util/List;

    move-result-object v11

    .line 59
    sget-object v4, Lcom/shabakaty/downloader/fr6;->s:Lcom/shabakaty/downloader/fr6;

    move-object v3, v0

    move-wide v5, v9

    move-object v7, v2

    move-object v8, v11

    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/uk6;->b(Lcom/shabakaty/downloader/fr6;JLcom/shabakaty/downloader/k12;Ljava/util/List;)V

    sput-boolean v1, Lcom/shabakaty/downloader/uk6;->j:Z
    :try_end_6
    .catch Lcom/shabakaty/downloader/au2; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object v11

    :catch_2
    move-exception v1

    .line 60
    :try_start_7
    iget v3, v1, Lcom/shabakaty/downloader/au2;->r:I

    const/16 v4, 0xe

    if-ne v3, v4, :cond_f

    .line 61
    sget-object v3, Lcom/shabakaty/downloader/fr6;->t:Lcom/shabakaty/downloader/fr6;

    goto :goto_b

    .line 62
    :cond_f
    sget-object v3, Lcom/shabakaty/downloader/fr6;->u:Lcom/shabakaty/downloader/fr6;

    :goto_b
    move-object v4, v3

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v5, v9

    move-object v7, v2

    .line 63
    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/uk6;->b(Lcom/shabakaty/downloader/fr6;JLcom/shabakaty/downloader/k12;Ljava/util/List;)V

    .line 64
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
