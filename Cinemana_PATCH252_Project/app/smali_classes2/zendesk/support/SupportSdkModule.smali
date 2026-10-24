.class public Lzendesk/support/SupportSdkModule;
.super Ljava/lang/Object;
.source "SupportSdkModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configurationHelper()Lcom/shabakaty/downloader/ua0;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ua0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ua0;-><init>()V

    return-object v0
.end method

.method public mainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/SupportSdkModule$1;

    invoke-direct {v0, p0}, Lzendesk/support/SupportSdkModule$1;-><init>(Lzendesk/support/SupportSdkModule;)V

    return-object v0
.end method

.method public okHttp3Downloader(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/y53;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/y53;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/y53;-><init>(Lcom/shabakaty/downloader/a63;)V

    return-object v0
.end method

.method public provides()Lcom/shabakaty/downloader/lr1;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lr1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lr1;-><init>()V

    return-object v0
.end method

.method public providesActionHandlers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/core/ActionHandler;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lzendesk/support/DeepLinkToRequestActionHandler;

    invoke-direct {v1}, Lzendesk/support/DeepLinkToRequestActionHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public providesPicasso(Landroid/content/Context;Lcom/shabakaty/downloader/y53;Ljava/util/concurrent/ExecutorService;)Lcom/squareup/picasso/k;
    .locals 16

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 2
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eqz v8, :cond_0

    .line 3
    new-instance v9, Lcom/shabakaty/downloader/pl2;

    invoke-direct {v9, v7}, Lcom/shabakaty/downloader/pl2;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v10, Lcom/squareup/picasso/k$e;->a:Lcom/squareup/picasso/k$e;

    .line 5
    new-instance v11, Lcom/shabakaty/downloader/tc4;

    invoke-direct {v11, v9}, Lcom/shabakaty/downloader/tc4;-><init>(Lcom/shabakaty/downloader/pp;)V

    .line 6
    new-instance v12, Lcom/squareup/picasso/f;

    sget-object v3, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    move-object v0, v12

    move-object v1, v7

    move-object/from16 v2, p3

    move-object/from16 v4, p2

    move-object v5, v9

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/f;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/shabakaty/downloader/ty0;Lcom/shabakaty/downloader/pp;Lcom/shabakaty/downloader/tc4;)V

    .line 7
    new-instance v13, Lcom/squareup/picasso/k;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v0, v13

    move-object v2, v12

    move-object v3, v9

    move-object v5, v10

    move-object v7, v11

    move v9, v14

    move v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/squareup/picasso/k;-><init>(Landroid/content/Context;Lcom/squareup/picasso/f;Lcom/shabakaty/downloader/pp;Lcom/squareup/picasso/k$c;Lcom/squareup/picasso/k$e;Ljava/util/List;Lcom/shabakaty/downloader/tc4;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v13

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor service must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Downloader must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public providesRequestDiskLruCache(Lzendesk/core/SessionStorage;)Lcom/shabakaty/downloader/vt0;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lzendesk/core/SessionStorage;->getZendeskDataDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "request"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v1, 0x1400000

    const/4 p1, 0x1

    .line 2
    invoke-static {v0, p1, p1, v1, v2}, Lcom/shabakaty/downloader/vt0;->g(Ljava/io/File;IIJ)Lcom/shabakaty/downloader/vt0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public requestInfoDataSource(Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

    new-instance v1, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;

    const-string v2, "local_request_infos"

    invoke-direct {v1, p2, p3, p1, v2}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzendesk/support/SupportUiStorage;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;)V

    return-object v0
.end method

.method public supportUiStorage(Lcom/shabakaty/downloader/vt0;Lcom/shabakaty/downloader/lr1;)Lzendesk/support/SupportUiStorage;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/SupportUiStorage;

    invoke-direct {v0, p1, p2}, Lzendesk/support/SupportUiStorage;-><init>(Lcom/shabakaty/downloader/vt0;Lcom/shabakaty/downloader/lr1;)V

    return-object v0
.end method
