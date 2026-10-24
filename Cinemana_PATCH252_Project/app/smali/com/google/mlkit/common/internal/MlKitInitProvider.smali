.class public Lcom/google/mlkit/common/internal/MlKitInitProvider;
.super Landroid/content/ContentProvider;
.source "com.google.mlkit:common@@17.1.1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/ProviderInfo;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, "com.google.mlkit.common.mlkitinitprovider"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application\'s build.gradle."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MlKitInitProvider"

    const-string v2, "No context available. Manually call MlKit.initialize(), otherwise ML Kit will not be functional."

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/zt2;

    invoke-direct {v2}, Lcom/shabakaty/downloader/zt2;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    :cond_1
    const-class v3, Lcom/google/mlkit/common/internal/MlKitComponentDiscoveryService;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/s80$b;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/s80$b;-><init>(Ljava/lang/Class;Lcom/shabakaty/downloader/s80$a;)V

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/s80$b;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    :try_start_0
    invoke-static {v5}, Lcom/shabakaty/downloader/s80;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/w80;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/shabakaty/downloader/t32; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "ComponentDiscovery"

    const-string v7, "Invalid component registrar."

    .line 10
    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 11
    :cond_3
    new-instance v4, Lcom/shabakaty/downloader/z80;

    sget-object v5, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/shabakaty/downloader/o80;

    const-class v7, Landroid/content/Context;

    new-array v8, v1, [Ljava/lang/Class;

    .line 12
    invoke-static {v0, v7, v8}, Lcom/shabakaty/downloader/o80;->d(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/shabakaty/downloader/o80;

    move-result-object v0

    aput-object v0, v6, v1

    const-class v0, Lcom/shabakaty/downloader/zt2;

    new-array v7, v1, [Ljava/lang/Class;

    .line 13
    invoke-static {v2, v0, v7}, Lcom/shabakaty/downloader/o80;->d(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/shabakaty/downloader/o80;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v6, v7

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/w80;

    .line 16
    new-instance v9, Lcom/shabakaty/downloader/x80;

    invoke-direct {v9, v8, v1}, Lcom/shabakaty/downloader/x80;-><init>(Lcom/shabakaty/downloader/w80;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v5, v0, v3}, Lcom/shabakaty/downloader/z80;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18
    iput-object v4, v2, Lcom/shabakaty/downloader/zt2;->a:Lcom/shabakaty/downloader/z80;

    .line 19
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/z80;->g(Z)V

    sget-object v0, Lcom/shabakaty/downloader/zt2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zt2;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    const-string v0, "MlKitContext is already initialized"

    .line 21
    invoke-static {v7, v0}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    return v1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
