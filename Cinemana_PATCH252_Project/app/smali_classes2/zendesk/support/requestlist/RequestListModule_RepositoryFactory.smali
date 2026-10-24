.class public final Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;
.super Ljava/lang/Object;
.source "RequestListModule_RepositoryFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field private final backgroundThreadExecutorProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final localDataSourceProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadExecutorProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final requestProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/RequestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final supportUiStorageProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/SupportUiStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/SupportUiStorage;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->localDataSourceProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->supportUiStorageProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->requestProvider:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->mainThreadExecutorProvider:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p5, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->backgroundThreadExecutorProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/SupportUiStorage;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;"
        }
    .end annotation

    .line 1
    new-instance v6, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v6
.end method

.method public static repository(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;Lzendesk/support/SupportUiStorage;Lzendesk/support/RequestProvider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/requestlist/RequestInfoDataSource$Repository;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lzendesk/support/requestlist/RequestListModule;->repository(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;Lzendesk/support/SupportUiStorage;Lzendesk/support/RequestProvider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->get()Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/requestlist/RequestInfoDataSource$Repository;
    .locals 5

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->localDataSourceProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->supportUiStorageProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/SupportUiStorage;

    iget-object v2, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->requestProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/RequestProvider;

    iget-object v3, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->mainThreadExecutorProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->backgroundThreadExecutorProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v4}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->repository(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;Lzendesk/support/SupportUiStorage;Lzendesk/support/RequestProvider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    move-result-object v0

    return-object v0
.end method
