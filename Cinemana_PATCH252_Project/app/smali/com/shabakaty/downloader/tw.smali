.class public Lcom/shabakaty/downloader/tw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final k:Lcom/shabakaty/downloader/pk2;

.field public static l:Lcom/shabakaty/downloader/tw;

.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/so6;

.field public final c:Lcom/shabakaty/downloader/y14;

.field public final d:Lcom/shabakaty/downloader/vk6;

.field public final e:Lcom/shabakaty/downloader/vw;

.field public f:Lcom/shabakaty/downloader/tk5;

.field public g:Lcom/shabakaty/downloader/cg5;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/a24;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/shabakaty/downloader/u46;

.field public j:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "CastContext"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/tw;->k:Lcom/shabakaty/downloader/pk2;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tw;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/vw;Ljava/util/List;Lcom/shabakaty/downloader/tk5;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/shabakaty/downloader/vw;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/a24;",
            ">;",
            "Lcom/shabakaty/downloader/tk5;",
            ")V"
        }
    .end annotation

    const-string v0, "Unable to call %s on %s."

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tw;->e:Lcom/shabakaty/downloader/vw;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/tw;->f:Lcom/shabakaty/downloader/tk5;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/tw;->h:Ljava/util/List;

    .line 6
    iget-object v1, p2, Lcom/shabakaty/downloader/vw;->r:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/cg5;

    iget-object v3, p0, Lcom/shabakaty/downloader/tw;->f:Lcom/shabakaty/downloader/tk5;

    invoke-direct {v1, p1, p2, v3}, Lcom/shabakaty/downloader/cg5;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/tk5;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/tw;->g:Lcom/shabakaty/downloader/cg5;

    goto :goto_0

    .line 9
    :cond_0
    iput-object v2, p0, Lcom/shabakaty/downloader/tw;->g:Lcom/shabakaty/downloader/cg5;

    .line 10
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/tw;->g:Lcom/shabakaty/downloader/cg5;

    if-eqz v1, :cond_1

    .line 12
    iget-object v3, v1, Lcom/shabakaty/downloader/a24;->b:Ljava/lang/String;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/a24;->c:Lcom/shabakaty/downloader/a24$a;

    .line 14
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    .line 15
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/a24;

    const-string v5, "Additional SessionProvider must not be null."

    .line 16
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v5, v4, Lcom/shabakaty/downloader/a24;->b:Ljava/lang/String;

    const-string v6, "Category for SessionProvider must not be null or empty string."

    .line 18
    invoke-static {v5, v6}, Lcom/google/android/gms/common/internal/a;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v3

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v1

    const-string v8, "SessionProvider for category %s already added"

    .line 20
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 22
    iget-object v4, v4, Lcom/shabakaty/downloader/a24;->c:Lcom/shabakaty/downloader/a24$a;

    .line 23
    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_2
    iget-object p3, p0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    .line 25
    invoke-static {p3}, Lcom/shabakaty/downloader/lg5;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/zg5;

    move-result-object v4

    const/4 v5, 0x2

    .line 26
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 27
    new-instance v6, Lcom/shabakaty/downloader/p43;

    invoke-direct {v6, p3}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 28
    invoke-interface {v4, v6, p2, p4, p1}, Lcom/shabakaty/downloader/zg5;->y0(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/qh5;Ljava/util/Map;)Lcom/shabakaty/downloader/so6;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
    sget-object p2, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    new-array p3, v5, [Ljava/lang/Object;

    const-string p4, "newCastContextImpl"

    aput-object p4, p3, v1

    const-class p4, Lcom/shabakaty/downloader/zg5;

    .line 30
    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v3

    .line 31
    invoke-virtual {p2, p1, v0, p3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v2

    .line 32
    :goto_2
    iput-object p1, p0, Lcom/shabakaty/downloader/tw;->b:Lcom/shabakaty/downloader/so6;

    .line 33
    :try_start_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/so6;->j0()Lcom/shabakaty/downloader/j87;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 34
    sget-object p2, Lcom/shabakaty/downloader/tw;->k:Lcom/shabakaty/downloader/pk2;

    new-array p3, v5, [Ljava/lang/Object;

    const-string p4, "getDiscoveryManagerImpl"

    aput-object p4, p3, v1

    const-class p4, Lcom/shabakaty/downloader/so6;

    .line 35
    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v3

    .line 36
    invoke-virtual {p2, p1, v0, p3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v2

    :goto_3
    if-nez p1, :cond_3

    move-object p2, v2

    goto :goto_4

    .line 37
    :cond_3
    new-instance p2, Lcom/shabakaty/downloader/vk6;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/vk6;-><init>(Lcom/shabakaty/downloader/j87;)V

    :goto_4
    iput-object p2, p0, Lcom/shabakaty/downloader/tw;->d:Lcom/shabakaty/downloader/vk6;

    .line 38
    :try_start_2
    iget-object p1, p0, Lcom/shabakaty/downloader/tw;->b:Lcom/shabakaty/downloader/so6;

    invoke-interface {p1}, Lcom/shabakaty/downloader/so6;->R()Lcom/shabakaty/downloader/se7;

    move-result-object p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 39
    sget-object p2, Lcom/shabakaty/downloader/tw;->k:Lcom/shabakaty/downloader/pk2;

    new-array p3, v5, [Ljava/lang/Object;

    const-string p4, "getSessionManagerImpl"

    aput-object p4, p3, v1

    const-class p4, Lcom/shabakaty/downloader/so6;

    .line 40
    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v3

    .line 41
    invoke-virtual {p2, p1, v0, p3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v2

    :goto_5
    if-nez p1, :cond_4

    goto :goto_6

    .line 42
    :cond_4
    new-instance v2, Lcom/shabakaty/downloader/y14;

    iget-object p2, p0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    invoke-direct {v2, p1, p2}, Lcom/shabakaty/downloader/y14;-><init>(Lcom/shabakaty/downloader/se7;Landroid/content/Context;)V

    :goto_6
    iput-object v2, p0, Lcom/shabakaty/downloader/tw;->c:Lcom/shabakaty/downloader/y14;

    if-nez v2, :cond_5

    goto :goto_7

    .line 43
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    .line 44
    new-instance p2, Lcom/shabakaty/downloader/i06;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/i06;-><init>(Landroid/content/Context;)V

    const-string p1, "PrecacheManager"

    const-string p2, "The log tag cannot be null or empty."

    .line 45
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/a;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    :goto_7
    iget-object p1, p0, Lcom/shabakaty/downloader/tw;->a:Landroid/content/Context;

    .line 47
    new-instance p2, Lcom/shabakaty/downloader/i06;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/i06;-><init>(Landroid/content/Context;)V

    const-string p1, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    const-string p3, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    const-string p4, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 48
    filled-new-array {p1, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/shabakaty/downloader/yk4;->a()Lcom/shabakaty/downloader/yk4$a;

    move-result-object p3

    new-instance p4, Lcom/shabakaty/downloader/yh1;

    invoke-direct {p4, p2, p1}, Lcom/shabakaty/downloader/yh1;-><init>(Lcom/shabakaty/downloader/i06;[Ljava/lang/String;)V

    .line 50
    iput-object p4, p3, Lcom/shabakaty/downloader/yk4$a;->a:Lcom/shabakaty/downloader/tq3;

    new-array p1, v3, [Lcom/shabakaty/downloader/ia1;

    .line 51
    sget-object p4, Lcom/shabakaty/downloader/gh5;->b:Lcom/shabakaty/downloader/ia1;

    aput-object p4, p1, v1

    .line 52
    iput-object p1, p3, Lcom/shabakaty/downloader/yk4$a;->c:[Lcom/shabakaty/downloader/ia1;

    .line 53
    iput-boolean v1, p3, Lcom/shabakaty/downloader/yk4$a;->b:Z

    .line 54
    invoke-virtual {p3}, Lcom/shabakaty/downloader/yk4$a;->a()Lcom/shabakaty/downloader/yk4;

    move-result-object p1

    .line 55
    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/common/api/b;->c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/shabakaty/downloader/ae5;

    invoke-direct {p2, p0, v1}, Lcom/shabakaty/downloader/ae5;-><init>(Lcom/shabakaty/downloader/tw;I)V

    .line 57
    check-cast p1, Lcom/shabakaty/downloader/ye7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object p3, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, p2}, Lcom/shabakaty/downloader/ye7;->c(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;
    .locals 6

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/tw;->l:Lcom/shabakaty/downloader/tw;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/tw;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/tw;->l:Lcom/shabakaty/downloader/tw;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/tw;->f(Landroid/content/Context;)Lcom/shabakaty/downloader/l83;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    new-instance v2, Lcom/shabakaty/downloader/tw;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/l83;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/vw;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/l83;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/tk5;

    .line 9
    invoke-static {p0}, Landroidx/mediarouter/media/g;->d(Landroid/content/Context;)Landroidx/mediarouter/media/g;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/tk5;-><init>(Landroidx/mediarouter/media/g;)V

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/shabakaty/downloader/tw;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/vw;Ljava/util/List;Lcom/shabakaty/downloader/tk5;)V

    sput-object v2, Lcom/shabakaty/downloader/tw;->l:Lcom/shabakaty/downloader/tw;
    :try_end_1
    .catch Lcom/shabakaty/downloader/of5; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 11
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_1
    sget-object p0, Lcom/shabakaty/downloader/tw;->l:Lcom/shabakaty/downloader/tw;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/tw;->k:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 4
    iget-object p0, v0, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v2, "Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently."

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Lcom/shabakaty/downloader/l83;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/downloader/z85;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/q93;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lcom/shabakaty/downloader/q93;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/tw;->k:Lcom/shabakaty/downloader/pk2;

    const-string v2, "Bundle is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/pk2;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v1, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lcom/shabakaty/downloader/l83;

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Class;

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/l83;

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p0

    goto :goto_0

    :catch_6
    move-exception p0

    .line 11
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to initialize CastContext."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/vw;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/tw;->e:Lcom/shabakaty/downloader/vw;

    return-object v0
.end method

.method public b()Landroidx/mediarouter/media/f;
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tw;->b:Lcom/shabakaty/downloader/so6;

    invoke-interface {v0}, Lcom/shabakaty/downloader/so6;->U0()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/f;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/f;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/tw;->k:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getMergedSelectorAsBundle"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/shabakaty/downloader/so6;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 5
    invoke-virtual {v1, v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/y14;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/tw;->c:Lcom/shabakaty/downloader/y14;

    return-object v0
.end method
