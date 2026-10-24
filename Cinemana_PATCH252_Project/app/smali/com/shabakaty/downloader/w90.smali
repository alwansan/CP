.class public Lcom/shabakaty/downloader/w90;
.super Ljava/lang/Object;
.source "ConfigResolver.java"


# static fields
.field public static final d:Lcom/shabakaty/downloader/i7;

.field public static volatile e:Lcom/shabakaty/downloader/w90;


# instance fields
.field public final a:Lcom/google/firebase/perf/config/RemoteConfigManager;

.field public b:Lcom/shabakaty/downloader/xz1;

.field public c:Lcom/shabakaty/downloader/ms0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/i7;->d()Lcom/shabakaty/downloader/i7;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/w90;->d:Lcom/shabakaty/downloader/i7;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/shabakaty/downloader/xz1;Lcom/shabakaty/downloader/ms0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/xz1;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xz1;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/w90;->b:Lcom/shabakaty/downloader/xz1;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/ms0;->c:Lcom/shabakaty/downloader/i7;

    .line 5
    const-class p1, Lcom/shabakaty/downloader/ms0;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object p2, Lcom/shabakaty/downloader/ms0;->d:Lcom/shabakaty/downloader/ms0;

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/ms0;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/ms0;-><init>(Ljava/util/concurrent/ExecutorService;)V

    sput-object p2, Lcom/shabakaty/downloader/ms0;->d:Lcom/shabakaty/downloader/ms0;

    .line 8
    :cond_0
    sget-object p2, Lcom/shabakaty/downloader/ms0;->d:Lcom/shabakaty/downloader/ms0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    return-void

    :catchall_0
    move-exception p2

    .line 10
    monitor-exit p1

    throw p2
.end method

.method public static declared-synchronized e()Lcom/shabakaty/downloader/w90;
    .locals 3

    const-class v0, Lcom/shabakaty/downloader/w90;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/w90;->e:Lcom/shabakaty/downloader/w90;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/w90;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/shabakaty/downloader/w90;-><init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/shabakaty/downloader/xz1;Lcom/shabakaty/downloader/ms0;)V

    sput-object v1, Lcom/shabakaty/downloader/w90;->e:Lcom/shabakaty/downloader/w90;

    .line 3
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/w90;->e:Lcom/shabakaty/downloader/w90;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ta0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/shabakaty/downloader/d83<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/ms0;->c:Lcom/shabakaty/downloader/i7;

    .line 3
    iget-boolean v0, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FirebasePerformance"

    const-string v0, "Key is null when getting boolean value on device cache."

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ms0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ms0;->b(Landroid/content/Context;)V

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/d83;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/d83;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    sget-object v2, Lcom/shabakaty/downloader/ms0;->c:Lcom/shabakaty/downloader/i7;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "Key %s from sharedPreferences has type other than long: %s"

    .line 17
    invoke-virtual {v2, p1, v3}, Lcom/shabakaty/downloader/i7;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final b(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ta0<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/shabakaty/downloader/d83<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/ms0;->c:Lcom/shabakaty/downloader/i7;

    .line 3
    iget-boolean v0, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FirebasePerformance"

    const-string v0, "Key is null when getting float value on device cache."

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ms0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ms0;->b(Landroid/content/Context;)V

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 13
    :cond_3
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/d83;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/d83;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/ms0;->c:Lcom/shabakaty/downloader/i7;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Key %s from sharedPreferences has type other than float: %s"

    .line 17
    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/i7;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final c(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ta0<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/shabakaty/downloader/d83<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/ms0;->c:Lcom/shabakaty/downloader/i7;

    .line 3
    iget-boolean v0, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FirebasePerformance"

    const-string v0, "Key is null when getting long value on device cache."

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ms0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ms0;->b(Landroid/content/Context;)V

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 13
    :cond_3
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/d83;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/d83;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/ms0;->c:Lcom/shabakaty/downloader/i7;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Key %s from sharedPreferences has type other than long: %s"

    .line 17
    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/i7;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final d(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ta0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shabakaty/downloader/d83<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/ms0;->c:Lcom/shabakaty/downloader/i7;

    .line 3
    iget-boolean v0, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FirebasePerformance"

    const-string v0, "Key is null when getting String value on device cache."

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ms0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ms0;->b(Landroid/content/Context;)V

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 13
    :cond_3
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/d83;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/d83;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/ms0;->c:Lcom/shabakaty/downloader/i7;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Key %s from sharedPreferences has type other than String: %s"

    .line 17
    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/i7;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    :goto_0
    return-object p1
.end method

.method public f()Ljava/lang/Boolean;
    .locals 3

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ba0;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ba0;->a:Lcom/shabakaty/downloader/ba0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ba0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ba0;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/ba0;->a:Lcom/shabakaty/downloader/ba0;

    .line 4
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/ba0;->a:Lcom/shabakaty/downloader/ba0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 5
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/w90;->g(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 11
    :cond_2
    const-class v0, Lcom/shabakaty/downloader/ca0;

    monitor-enter v0

    .line 12
    :try_start_1
    sget-object v1, Lcom/shabakaty/downloader/ca0;->a:Lcom/shabakaty/downloader/ca0;

    if-nez v1, :cond_3

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/ca0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ca0;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/ca0;->a:Lcom/shabakaty/downloader/ca0;

    .line 14
    :cond_3
    sget-object v1, Lcom/shabakaty/downloader/ca0;->a:Lcom/shabakaty/downloader/ca0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 15
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/w90;->a(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 18
    :cond_4
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/w90;->g(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method

.method public final g(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ta0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/shabakaty/downloader/d83<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->b:Lcom/shabakaty/downloader/xz1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta0;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xz1;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/xz1;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/shabakaty/downloader/d83;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/d83;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/xz1;->b:Lcom/shabakaty/downloader/i7;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Metadata key %s contains type other than boolean: %s"

    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/i7;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final h(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ta0<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/shabakaty/downloader/d83<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->b:Lcom/shabakaty/downloader/xz1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta0;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xz1;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/xz1;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/shabakaty/downloader/d83;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/d83;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/xz1;->b:Lcom/shabakaty/downloader/i7;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Metadata key %s contains type other than int: %s"

    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/i7;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/d83;

    invoke-direct {p1}, Lcom/shabakaty/downloader/d83;-><init>()V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/d83;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/d83;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/d83;

    invoke-direct {v0}, Lcom/shabakaty/downloader/d83;-><init>()V

    :goto_1
    return-object v0
.end method

.method public i()J
    .locals 8

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ha0;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ha0;->a:Lcom/shabakaty/downloader/ha0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ha0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ha0;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/ha0;->a:Lcom/shabakaty/downloader/ha0;

    .line 4
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/ha0;->a:Lcom/shabakaty/downloader/ha0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 5
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/w90;->k(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v2, "com.google.firebase.perf.TimeLimitSec"

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, v1, v2, v0}, Lcom/shabakaty/downloader/v90;->a(Ljava/lang/Long;Lcom/shabakaty/downloader/ms0;Ljava/lang/String;Lcom/shabakaty/downloader/d83;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_2
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/w90;->c(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v6, v1, v3

    if-lez v6, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_4
    const-wide/16 v0, 0x258

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1
.end method

.method public final j(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ta0<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/shabakaty/downloader/d83<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getFloat(Ljava/lang/String;)Lcom/shabakaty/downloader/d83;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ta0<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/shabakaty/downloader/d83<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/shabakaty/downloader/d83;

    move-result-object p1

    return-object p1
.end method

.method public final l(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/shabakaty/downloader/fo;->a:I

    const-string v4, "20.0.2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final n(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/w90;->f()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_a

    .line 3
    :cond_0
    const-class v0, Lcom/shabakaty/downloader/ja0;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v3, Lcom/shabakaty/downloader/ja0;->a:Lcom/shabakaty/downloader/ja0;

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/ja0;

    invoke-direct {v3}, Lcom/shabakaty/downloader/ja0;-><init>()V

    sput-object v3, Lcom/shabakaty/downloader/ja0;->a:Lcom/shabakaty/downloader/ja0;

    .line 6
    :cond_1
    sget-object v3, Lcom/shabakaty/downloader/ja0;->a:Lcom/shabakaty/downloader/ja0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fpr_enabled"

    invoke-virtual {v0, v4}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getBoolean(Ljava/lang/String;)Lcom/shabakaty/downloader/d83;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v3}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v4, "com.google.firebase.perf.SdkEnabled"

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v6, v3, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v6, :cond_3

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ms0;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ms0;->b(Landroid/content/Context;)V

    .line 13
    iget-object v6, v3, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    if-nez v6, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    iget-object v3, v3, Lcom/shabakaty/downloader/ms0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/w90;->a(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_9

    .line 19
    const-class v0, Lcom/shabakaty/downloader/ia0;

    monitor-enter v0

    .line 20
    :try_start_1
    sget-object v3, Lcom/shabakaty/downloader/ia0;->a:Lcom/shabakaty/downloader/ia0;

    if-nez v3, :cond_6

    .line 21
    new-instance v3, Lcom/shabakaty/downloader/ia0;

    invoke-direct {v3}, Lcom/shabakaty/downloader/ia0;-><init>()V

    sput-object v3, Lcom/shabakaty/downloader/ia0;->a:Lcom/shabakaty/downloader/ia0;

    .line 22
    :cond_6
    sget-object v3, Lcom/shabakaty/downloader/ia0;->a:Lcom/shabakaty/downloader/ia0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fpr_disabled_android_versions"

    invoke-virtual {v0, v4}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getString(Ljava/lang/String;)Lcom/shabakaty/downloader/d83;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    iget-object v3, p0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v4, "com.google.firebase.perf.SdkDisabledVersions"

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/ms0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/w90;->m(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 27
    :cond_7
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/w90;->d(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 29
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/w90;->m(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_8
    const-string v0, ""

    .line 30
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/w90;->m(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    throw v1

    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    :catchall_1
    move-exception v1

    .line 32
    monitor-exit v0

    throw v1
.end method

.method public final p(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
