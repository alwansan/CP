.class public final Lcom/shabakaty/usermanagement/data/api/UserNetworkManager_Factory;
.super Ljava/lang/Object;
.source "UserNetworkManager_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final accountRepositoryProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/IAccountRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/IAccountRepository;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager_Factory;->accountRepositoryProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/usermanagement/data/api/UserNetworkManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/IAccountRepository;",
            ">;)",
            "Lcom/shabakaty/usermanagement/data/api/UserNetworkManager_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager_Factory;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager_Factory;-><init>(Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static newInstance(Lcom/shabakaty/usermanagement/data/IAccountRepository;)Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;-><init>(Lcom/shabakaty/usermanagement/data/IAccountRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager_Factory;->accountRepositoryProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/usermanagement/data/IAccountRepository;

    invoke-static {v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager_Factory;->newInstance(Lcom/shabakaty/usermanagement/data/IAccountRepository;)Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager_Factory;->get()Lcom/shabakaty/usermanagement/data/api/UserNetworkManager;

    move-result-object v0

    return-object v0
.end method
