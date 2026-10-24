.class public Lcom/shabakaty/downloader/zc1;
.super Ljava/lang/Object;
.source "FirebasePerformance.java"


# static fields
.field public static final f:Lcom/shabakaty/downloader/i7;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Boolean;

.field public final c:Lcom/shabakaty/downloader/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/xq3;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/mc1;

.field public final e:Lcom/shabakaty/downloader/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/pq4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/i7;->d()Lcom/shabakaty/downloader/i7;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/zc1;->f:Lcom/shabakaty/downloader/i7;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ec1;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/mc1;Lcom/shabakaty/downloader/pj3;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/shabakaty/downloader/w90;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ec1;",
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/xq3;",
            ">;",
            "Lcom/shabakaty/downloader/mc1;",
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/pq4;",
            ">;",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            "Lcom/shabakaty/downloader/w90;",
            "Lcom/google/firebase/perf/session/gauges/GaugeManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zc1;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/zc1;->b:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/zc1;->c:Lcom/shabakaty/downloader/pj3;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/zc1;->d:Lcom/shabakaty/downloader/mc1;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/zc1;->e:Lcom/shabakaty/downloader/pj3;

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/shabakaty/downloader/zc1;->b:Ljava/lang/Boolean;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/xz1;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/xz1;-><init>(Landroid/os/Bundle;)V

    return-void

    .line 9
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/wq4;->J:Lcom/shabakaty/downloader/wq4;

    .line 10
    iput-object p1, v1, Lcom/shabakaty/downloader/wq4;->u:Lcom/shabakaty/downloader/ec1;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 12
    iget-object v2, p1, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 13
    iget-object v2, v2, Lcom/shabakaty/downloader/tc1;->g:Ljava/lang/String;

    .line 14
    iput-object v2, v1, Lcom/shabakaty/downloader/wq4;->G:Ljava/lang/String;

    .line 15
    iput-object p3, v1, Lcom/shabakaty/downloader/wq4;->w:Lcom/shabakaty/downloader/mc1;

    .line 16
    iput-object p4, v1, Lcom/shabakaty/downloader/wq4;->x:Lcom/shabakaty/downloader/pj3;

    .line 17
    iget-object p3, v1, Lcom/shabakaty/downloader/wq4;->z:Ljava/util/concurrent/ExecutorService;

    new-instance p4, Lcom/shabakaty/downloader/vq4;

    const/4 v2, 0x1

    invoke-direct {p4, v1, v2}, Lcom/shabakaty/downloader/vq4;-><init>(Lcom/shabakaty/downloader/wq4;I)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 19
    iget-object p3, p1, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 20
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    .line 21
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {p4, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 22
    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    goto :goto_0

    :catch_1
    move-exception p4

    :goto_0
    const-string v1, "No perf enable meta data found "

    .line 23
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "isEnabled"

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_1
    new-instance p4, Lcom/shabakaty/downloader/xz1;

    if-eqz v0, :cond_1

    invoke-direct {p4, v0}, Lcom/shabakaty/downloader/xz1;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_1
    invoke-direct {p4}, Lcom/shabakaty/downloader/xz1;-><init>()V

    .line 25
    :goto_2
    invoke-virtual {p5, p2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->setFirebaseRemoteConfigProvider(Lcom/shabakaty/downloader/pj3;)V

    .line 26
    iput-object p4, p6, Lcom/shabakaty/downloader/w90;->b:Lcom/shabakaty/downloader/xz1;

    .line 27
    sget-object p2, Lcom/shabakaty/downloader/w90;->d:Lcom/shabakaty/downloader/i7;

    invoke-static {p3}, Lcom/shabakaty/downloader/zy4;->a(Landroid/content/Context;)Z

    move-result p4

    .line 28
    iput-boolean p4, p2, Lcom/shabakaty/downloader/i7;->b:Z

    .line 29
    iget-object p2, p6, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/ms0;->b(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p7, p3}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->setApplicationContext(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p6}, Lcom/shabakaty/downloader/w90;->f()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/zc1;->b:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_3

    .line 33
    :cond_2
    invoke-static {}, Lcom/shabakaty/downloader/ec1;->b()Lcom/shabakaty/downloader/ec1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ec1;->f()Z

    move-result p2

    :goto_3
    if-eqz p2, :cond_3

    .line 34
    sget-object p2, Lcom/shabakaty/downloader/zc1;->f:Lcom/shabakaty/downloader/i7;

    new-array p4, v2, [Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 36
    iget-object p1, p1, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 37
    iget-object p1, p1, Lcom/shabakaty/downloader/tc1;->g:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/kf5;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p1, p3, p5

    const-string p1, "perf-android-sdk"

    aput-object p1, p3, v2

    const/4 p1, 0x2

    const-string p6, "android-ide"

    aput-object p6, p3, p1

    const-string p1, "%s/trends?utm_source=%s&utm_medium=%s"

    .line 40
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p5

    const-string p1, "Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s"

    .line 41
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-boolean p3, p2, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz p3, :cond_3

    .line 43
    iget-object p2, p2, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "FirebasePerformance"

    .line 44
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
