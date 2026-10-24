.class public Lcom/onesignal/o;
.super Ljava/lang/Object;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/o$c;,
        Lcom/onesignal/o$e;,
        Lcom/onesignal/o$b;,
        Lcom/onesignal/o$d;,
        Lcom/onesignal/o$f;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/o$e;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/onesignal/o$f;",
            "Lcom/onesignal/o$b;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z

.field public static final d:Ljava/lang/Object;

.field public static e:Lcom/onesignal/o$c;

.field public static f:Ljava/lang/Thread;

.field public static g:Landroid/content/Context;

.field public static h:Landroid/location/Location;

.field public static i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/o;->a:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Lcom/onesignal/o$a;

    invoke-direct {v0}, Lcom/onesignal/o$a;-><init>()V

    sput-object v0, Lcom/onesignal/o;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/onesignal/o$d;)V
    .locals 5

    .line 1
    const-class v0, Lcom/onesignal/o;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v2, Lcom/onesignal/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4
    sget-object v2, Lcom/onesignal/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 5
    sget-object v2, Lcom/onesignal/o;->f:Ljava/lang/Thread;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/o$f;

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/o$b;

    invoke-interface {v4, p0}, Lcom/onesignal/o$b;->c(Lcom/onesignal/o$d;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 11
    :cond_1
    sget-object p0, Lcom/onesignal/o;->f:Ljava/lang/Thread;

    if-ne v2, p0, :cond_3

    .line 12
    monitor-enter v0

    .line 13
    :try_start_1
    sget-object p0, Lcom/onesignal/o;->f:Ljava/lang/Thread;

    if-ne v2, p0, :cond_2

    const/4 p0, 0x0

    .line 14
    sput-object p0, Lcom/onesignal/o;->f:Ljava/lang/Thread;

    .line 15
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 16
    :cond_3
    :goto_1
    sget-object p0, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 19
    sget-object p0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v2, "OS_LAST_LOCATION_TIME"

    invoke-static {p0, v2, v0, v1}, Lcom/shabakaty/downloader/s73;->j(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :catchall_1
    move-exception p0

    .line 20
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static b(Landroid/location/Location;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationController fireCompleteForLocation with location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Lcom/onesignal/o$d;

    invoke-direct {v0}, Lcom/onesignal/o$d;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/o$d;->c:Ljava/lang/Float;

    .line 5
    sget-boolean v1, Lcom/onesignal/q0;->p:Z

    xor-int/lit8 v1, v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/o$d;->e:Ljava/lang/Boolean;

    .line 7
    sget-boolean v1, Lcom/onesignal/o;->c:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/o$d;->d:Ljava/lang/Integer;

    .line 8
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/o$d;->f:Ljava/lang/Long;

    .line 9
    sget-boolean v1, Lcom/onesignal/o;->c:Z

    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/o$d;->a:Ljava/lang/Double;

    .line 11
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v3, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, v0, Lcom/onesignal/o$d;->b:Ljava/lang/Double;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/o$d;->a:Ljava/lang/Double;

    .line 13
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, v0, Lcom/onesignal/o$d;->b:Ljava/lang/Double;

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/onesignal/o;->a(Lcom/onesignal/o$d;)V

    .line 15
    sget-object p0, Lcom/onesignal/o;->g:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/o;->i(Landroid/content/Context;)Z

    return-void
.end method

.method public static c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->s:Z

    .line 2
    sget-object v0, Lcom/onesignal/o;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/onesignal/o;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/onesignal/g;->c()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/onesignal/o;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    sput-object v2, Lcom/onesignal/h;->j:Lcom/huawei/hms/location/FusedLocationProviderClient;

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    invoke-static {v2}, Lcom/onesignal/o;->a(Lcom/onesignal/o$d;)V

    return-void

    :catchall_1
    move-exception v1

    .line 11
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static d(Landroid/content/Context;ZZLcom/onesignal/o$b;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/onesignal/q0$x;->t:Lcom/onesignal/q0$x;

    sget-object v1, Lcom/onesignal/q0$x;->u:Lcom/onesignal/q0$x;

    sget-object v2, Lcom/onesignal/q0$x;->r:Lcom/onesignal/q0$x;

    instance-of v3, p3, Lcom/onesignal/o$e;

    if-eqz v3, :cond_0

    .line 2
    sget-object v3, Lcom/onesignal/o;->a:Ljava/util/List;

    monitor-enter v3

    .line 3
    :try_start_0
    move-object v4, p3

    check-cast v4, Lcom/onesignal/o$e;

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5
    :cond_0
    :goto_0
    sput-object p0, Lcom/onesignal/o;->g:Landroid/content/Context;

    .line 6
    sget-object v3, Lcom/onesignal/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p3}, Lcom/onesignal/o$b;->b()Lcom/onesignal/o$f;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/onesignal/q0;->H()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {p1, v1}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    .line 9
    invoke-static {}, Lcom/onesignal/o;->c()V

    return-void

    :cond_1
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 10
    invoke-static {p0, v3}, Lcom/shabakaty/downloader/q7;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    .line 11
    invoke-static {p0, v5}, Lcom/shabakaty/downloader/q7;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 12
    sput-boolean v6, Lcom/onesignal/o;->c:Z

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 13
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_3

    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 14
    invoke-static {p0, v4}, Lcom/shabakaty/downloader/q7;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    :cond_3
    const/16 v8, 0x17

    const/4 v9, 0x0

    if-ge v6, v8, :cond_5

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 15
    invoke-static {p1, v0}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    .line 16
    invoke-interface {p3, v9}, Lcom/onesignal/o$b;->c(Lcom/onesignal/o$d;)V

    return-void

    .line 17
    :cond_4
    invoke-static {p1, v2}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    .line 18
    invoke-static {}, Lcom/onesignal/o;->k()V

    goto/16 :goto_4

    :cond_5
    const/16 p3, 0x1000

    if-eqz v3, :cond_c

    .line 19
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 20
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 21
    sget-object p3, Lcom/onesignal/q0$x;->s:Lcom/onesignal/q0$x;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 22
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 23
    sput-object p0, Lcom/onesignal/o;->i:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 24
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v5, :cond_7

    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 25
    sput-object p0, Lcom/onesignal/o;->i:Ljava/lang/String;

    goto :goto_2

    :cond_7
    if-lt v6, v7, :cond_8

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 26
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 27
    sput-object p0, Lcom/onesignal/o;->i:Ljava/lang/String;

    :cond_8
    :goto_2
    move-object v0, p3

    goto :goto_3

    :cond_9
    const/4 p0, 0x5

    const-string p3, "Location permissions not added on AndroidManifest file"

    .line 28
    invoke-static {p0, p3, v9}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_3
    sget-object p0, Lcom/onesignal/o;->i:Ljava/lang/String;

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    .line 30
    invoke-static {p2}, Lcom/onesignal/PermissionsActivity;->b(Z)V

    goto :goto_4

    :cond_a
    if-nez v5, :cond_b

    .line 31
    invoke-static {p1, v2}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    .line 32
    invoke-static {}, Lcom/onesignal/o;->k()V

    goto :goto_4

    .line 33
    :cond_b
    invoke-static {p1, v0}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    .line 34
    invoke-static {}, Lcom/onesignal/o;->c()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 35
    invoke-static {p1, v1}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    .line 36
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    :cond_c
    if-lt v6, v7, :cond_f

    if-eqz v4, :cond_f

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 37
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 38
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 39
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 40
    sput-object v0, Lcom/onesignal/o;->i:Ljava/lang/String;

    .line 41
    :cond_d
    sget-object p0, Lcom/onesignal/o;->i:Ljava/lang/String;

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 42
    invoke-static {p2}, Lcom/onesignal/PermissionsActivity;->b(Z)V

    goto :goto_4

    .line 43
    :cond_e
    invoke-static {p1, v2}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    .line 44
    invoke-static {}, Lcom/onesignal/o;->k()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 45
    invoke-static {p1, v1}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    .line 46
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 47
    :cond_f
    invoke-static {p1, v2}, Lcom/onesignal/o;->j(ZLcom/onesignal/q0$x;)V

    .line 48
    invoke-static {}, Lcom/onesignal/o;->k()V

    :goto_4
    return-void
.end method

.method public static e()Lcom/onesignal/o$c;
    .locals 2

    .line 1
    sget-object v0, Lcom/onesignal/o;->e:Lcom/onesignal/o$c;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/onesignal/o;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/onesignal/o;->e:Lcom/onesignal/o$c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/onesignal/o$c;

    invoke-direct {v1}, Lcom/onesignal/o$c;-><init>()V

    sput-object v1, Lcom/onesignal/o;->e:Lcom/onesignal/o$c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/onesignal/o;->e:Lcom/onesignal/o$c;

    return-object v0
.end method

.method public static f()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/onesignal/o0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/o0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.amazon.device.messaging.ADM"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xd

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_6

    .line 2
    :cond_0
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_6

    .line 3
    :cond_2
    invoke-static {}, Lcom/onesignal/o0;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4
    invoke-static {}, Lcom/onesignal/o0;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/onesignal/o0;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    .line 5
    :cond_4
    invoke-static {}, Lcom/onesignal/o0;->p()Z

    move-result v2

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    :goto_5
    const/16 v2, 0xd

    goto :goto_6

    .line 6
    :cond_6
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const-string v2, "com.huawei.hwid"

    .line 7
    invoke-static {v2}, Lcom/onesignal/o0;->v(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_5

    :goto_6
    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_9

    .line 8
    invoke-static {}, Lcom/onesignal/o0;->k()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static h()V
    .locals 2

    .line 1
    sget-object v0, Lcom/onesignal/o;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/onesignal/o;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/onesignal/g;->h()V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/onesignal/o;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/onesignal/h;->h()V

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/q7;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/q7;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x6

    if-nez v0, :cond_2

    const-string p0, "LocationController scheduleUpdate not possible, location permission not enabled"

    .line 3
    invoke-static {v4, p0, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/onesignal/q0;->H()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "LocationController scheduleUpdate not possible, location shared not enabled"

    .line 5
    invoke-static {v4, p0, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 6
    :cond_3
    sget-object v0, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    sget-object v5, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-wide/32 v6, -0x927c0

    const-string v8, "OS_LAST_LOCATION_TIME"

    invoke-static {v5, v8, v6, v7}, Lcom/shabakaty/downloader/s73;->d(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    .line 10
    sget-boolean v7, Lcom/onesignal/q0;->p:Z

    if-eqz v7, :cond_4

    const-wide/16 v7, 0x12c

    goto :goto_2

    :cond_4
    const-wide/16 v7, 0x258

    :goto_2
    mul-long v7, v7, v5

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocationController scheduleUpdate lastTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " minTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v4, v5, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    sub-long/2addr v7, v0

    .line 13
    invoke-static {}, Lcom/onesignal/k0;->h()Lcom/onesignal/k0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OSSyncService scheduleLocationUpdateTask:delayMs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {v1, v4, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    invoke-virtual {v0, p0, v7, v8}, Lcom/onesignal/k0;->j(Landroid/content/Context;J)V

    return v2
.end method

.method public static j(ZLcom/onesignal/q0$x;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "LocationController sendAndClearPromptHandlers from non prompt flow"

    .line 1
    invoke-static {v0, p0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    sget-object p0, Lcom/onesignal/o;->a:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    const-string v2, "LocationController calling prompt handlers"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/o$e;

    .line 5
    invoke-virtual {v1, p1}, Lcom/onesignal/o$e;->a(Lcom/onesignal/q0$x;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/onesignal/o;->a:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static k()V
    .locals 3

    const-string v0, "LocationController startGetLocation with lastLocation: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/o;->h:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x4

    .line 3
    :try_start_0
    invoke-static {}, Lcom/onesignal/o;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/onesignal/g;->l()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/onesignal/o;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/onesignal/h;->l()V

    goto :goto_0

    :cond_1
    const-string v1, "LocationController startGetLocation not possible, no location dependency found"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {}, Lcom/onesignal/o;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Location permission exists but there was an error initializing: "

    .line 9
    invoke-static {v0, v2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {}, Lcom/onesignal/o;->c()V

    :goto_0
    return-void
.end method
