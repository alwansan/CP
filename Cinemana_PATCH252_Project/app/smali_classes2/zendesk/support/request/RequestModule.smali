.class public Lzendesk/support/request/RequestModule;
.super Ljava/lang/Object;
.source "RequestModule.java"


# instance fields
.field private final configuration:Lcom/shabakaty/downloader/z90;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z90;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestModule;->configuration:Lcom/shabakaty/downloader/z90;

    return-void
.end method

.method public static providesActionFactory(Lzendesk/support/RequestProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/UploadProvider;Lcom/shabakaty/downloader/ul;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lzendesk/core/AuthenticationProvider;Lzendesk/support/SupportBlipsProvider;)Lzendesk/support/request/ActionFactory;
    .locals 13

    .line 1
    new-instance v12, Lzendesk/support/request/ActionFactory;

    sget-object v9, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    const-string v7, "5.0.2"

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lzendesk/support/request/ActionFactory;-><init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/SupportSettingsProvider;Lcom/shabakaty/downloader/ul;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/Executor;Ljava/lang/String;Lzendesk/core/AuthenticationProvider;Lzendesk/core/Zendesk;Lzendesk/support/SupportBlipsProvider;Ljava/util/concurrent/Executor;)V

    return-object v12
.end method

.method public static providesAsyncMiddleware()Lzendesk/support/request/AsyncMiddleware;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/AsyncMiddleware$Queue;

    invoke-direct {v0}, Lzendesk/support/request/AsyncMiddleware$Queue;-><init>()V

    .line 2
    new-instance v1, Lzendesk/support/request/AsyncMiddleware;

    invoke-direct {v1, v0}, Lzendesk/support/request/AsyncMiddleware;-><init>(Lzendesk/support/request/AsyncMiddleware$Queue;)V

    return-object v1
.end method

.method public static providesAttachmentDownloader(Lcom/shabakaty/downloader/ul;Lzendesk/support/request/AttachmentDownloadService;)Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;-><init>(Lcom/shabakaty/downloader/ul;Lzendesk/support/request/AttachmentDownloadService;)V

    return-object v0
.end method

.method public static providesAttachmentDownloaderComponent(Lcom/shabakaty/downloader/eu0;Lzendesk/support/request/ActionFactory;Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)Lzendesk/support/request/AttachmentDownloaderComponent;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentDownloaderComponent;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/AttachmentDownloaderComponent;-><init>(Lcom/shabakaty/downloader/eu0;Lzendesk/support/request/ActionFactory;Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)V

    return-object v0
.end method

.method public static providesAttachmentToDiskService(Lcom/shabakaty/downloader/a63;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/AttachmentDownloadService;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentDownloadService;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/AttachmentDownloadService;-><init>(Lcom/shabakaty/downloader/a63;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static providesBelvedere(Landroid/content/Context;)Lcom/shabakaty/downloader/ul;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/ul;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/ul;

    move-result-object p0

    return-object p0
.end method

.method public static providesComponentListener(Lzendesk/support/request/ComponentPersistence;Lzendesk/support/request/AttachmentDownloaderComponent;Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/support/request/HeadlessComponentListener;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/HeadlessComponentListener;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/HeadlessComponentListener;-><init>(Lzendesk/support/request/ComponentPersistence;Lzendesk/support/request/AttachmentDownloaderComponent;Lzendesk/support/request/ComponentUpdateActionHandlers;)V

    return-object v0
.end method

.method public static providesConUpdatesComponent(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;)Lzendesk/support/request/ComponentUpdateActionHandlers;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/ComponentUpdateActionHandlers;-><init>(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;)V

    return-object v0
.end method

.method public static providesDiskQueue(Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/ComponentPersistence$PersistenceQueue;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-direct {v0, p0}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static providesDispatcher(Lcom/shabakaty/downloader/td4;)Lcom/shabakaty/downloader/eu0;
    .locals 0

    return-object p0
.end method

.method public static providesPersistenceComponent(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/ComponentPersistence$PersistenceQueue;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/ComponentPersistence;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentPersistence;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/ComponentPersistence;-><init>(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/ComponentPersistence$PersistenceQueue;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static providesReducer()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/go3;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/shabakaty/downloader/go3;

    .line 1
    new-instance v1, Lzendesk/support/request/ReducerProgress;

    invoke-direct {v1}, Lzendesk/support/request/ReducerProgress;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerConfiguration;

    invoke-direct {v1}, Lzendesk/support/request/ReducerConfiguration;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerConversation;

    invoke-direct {v1}, Lzendesk/support/request/ReducerConversation;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerAttachments;

    invoke-direct {v1}, Lzendesk/support/request/ReducerAttachments;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerAndroidLifecycle;

    invoke-direct {v1}, Lzendesk/support/request/ReducerAndroidLifecycle;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerUiState;

    invoke-direct {v1}, Lzendesk/support/request/ReducerUiState;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/support/request/ReducerError;

    invoke-direct {v1}, Lzendesk/support/request/ReducerError;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static providesStore(Ljava/util/List;Lzendesk/support/request/AsyncMiddleware;)Lcom/shabakaty/downloader/td4;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/go3;",
            ">;",
            "Lzendesk/support/request/AsyncMiddleware;",
            ")",
            "Lcom/shabakaty/downloader/td4;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/shabakaty/downloader/we4;->a:Z

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/gt2;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    sget-object v4, Lcom/shabakaty/downloader/qb1;->b:Lcom/shabakaty/downloader/db1;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/l60;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/l60;-><init>(Ljava/util/Collection;)V

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/k60;

    invoke-direct {v3, p1}, Lcom/shabakaty/downloader/k60;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v2}, Lcom/shabakaty/downloader/l60;->a()Lcom/shabakaty/downloader/ec4;

    move-result-object v1

    .line 9
    sget-boolean p0, Lcom/shabakaty/downloader/we4;->a:Z

    if-eqz p0, :cond_0

    .line 10
    new-instance p0, Lcom/shabakaty/downloader/c71;

    invoke-direct {p0}, Lcom/shabakaty/downloader/c71;-><init>()V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/d71;

    invoke-direct {p0}, Lcom/shabakaty/downloader/d71;-><init>()V

    :goto_0
    move-object v5, p0

    .line 12
    new-instance p0, Lcom/shabakaty/downloader/xe4;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/xe4;-><init>(Lcom/shabakaty/downloader/ec4;Lcom/shabakaty/downloader/l60;Lcom/shabakaty/downloader/k60;Lcom/shabakaty/downloader/db1;Ljava/util/concurrent/Executor;)V

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Reducer must not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public providesMessageFactory(Landroid/content/Context;Lcom/squareup/picasso/k;Lzendesk/support/request/ActionFactory;Lcom/shabakaty/downloader/eu0;Lzendesk/core/ActionHandlerRegistry;Lcom/shabakaty/downloader/ua0;)Lzendesk/support/request/CellFactory;
    .locals 9

    .line 1
    new-instance v8, Lzendesk/support/request/CellFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lzendesk/support/request/RequestModule;->configuration:Lcom/shabakaty/downloader/z90;

    move-object v0, v8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellFactory;-><init>(Landroid/content/Context;Lcom/squareup/picasso/k;Lzendesk/support/request/ActionFactory;Lcom/shabakaty/downloader/eu0;Lzendesk/core/ActionHandlerRegistry;Lcom/shabakaty/downloader/ua0;Lcom/shabakaty/downloader/z90;)V

    return-object v8
.end method
