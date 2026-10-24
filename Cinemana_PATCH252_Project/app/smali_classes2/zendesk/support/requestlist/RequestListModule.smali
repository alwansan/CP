.class public Lzendesk/support/requestlist/RequestListModule;
.super Ljava/lang/Object;
.source "RequestListModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static refreshHandler(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListSyncHandler;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListSyncHandler;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListSyncHandler;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    return-object v0
.end method

.method public static repository(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;Lzendesk/support/SupportUiStorage;Lzendesk/support/RequestProvider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/requestlist/RequestInfoDataSource$Repository;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestInfoDataSource$Network;

    invoke-direct {v0, p2}, Lzendesk/support/requestlist/RequestInfoDataSource$Network;-><init>(Lzendesk/support/RequestProvider;)V

    .line 2
    new-instance p2, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;

    const-string v1, "remote_request_infos"

    invoke-direct {p2, p3, p4, p1, v1}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzendesk/support/SupportUiStorage;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lzendesk/support/requestlist/RequestInfoDataSource$RemoteDataSource;

    invoke-direct {p1, v0, p2}, Lzendesk/support/requestlist/RequestInfoDataSource$RemoteDataSource;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Network;Lzendesk/support/requestlist/RequestInfoDataSource$Disk;)V

    .line 4
    new-instance p2, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    new-instance p3, Lzendesk/support/requestlist/RequestInfoMerger;

    invoke-direct {p3}, Lzendesk/support/requestlist/RequestInfoMerger;-><init>()V

    invoke-direct {p2, p0, p1, p3}, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource;Lzendesk/support/requestlist/RequestInfoDataSource;Lzendesk/support/requestlist/RequestInfoMerger;)V

    return-object p2
.end method


# virtual methods
.method public model(Lzendesk/support/requestlist/RequestInfoDataSource$Repository;Lzendesk/core/MemoryCache;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/SupportSettingsProvider;)Lzendesk/support/requestlist/RequestListModel;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lzendesk/support/requestlist/RequestListModel;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource;Lzendesk/core/MemoryCache;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/SupportSettingsProvider;)V

    return-object v0
.end method

.method public presenter(Lzendesk/support/requestlist/RequestListModel;)Lzendesk/support/requestlist/RequestListPresenter;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter;

    invoke-direct {v0, p1}, Lzendesk/support/requestlist/RequestListPresenter;-><init>(Lzendesk/support/requestlist/RequestListModel;)V

    return-object v0
.end method
