.class public final Lcom/shabakaty/usermanagement/UserManagement_Factory;
.super Ljava/lang/Object;
.source "UserManagement_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final configurationProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final schemeProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;",
            ">;"
        }
    .end annotation
.end field

.field public final userNetworkManagerProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement_Factory;->configurationProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/usermanagement/UserManagement_Factory;->userNetworkManagerProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/usermanagement/UserManagement_Factory;->schemeProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/usermanagement/UserManagement_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;",
            ">;)",
            "Lcom/shabakaty/usermanagement/UserManagement_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/UserManagement_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/usermanagement/UserManagement_Factory;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static newInstance(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;)Lcom/shabakaty/usermanagement/UserManagement;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/UserManagement;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/usermanagement/UserManagement;-><init>(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/shabakaty/usermanagement/UserManagement;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement_Factory;->configurationProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/UserManagement_Factory;->userNetworkManagerProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;

    iget-object v2, p0, Lcom/shabakaty/usermanagement/UserManagement_Factory;->schemeProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/usermanagement/UserManagement_Factory;->newInstance(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Lcom/shabakaty/usermanagement/data/api/IUserNetworkManager;Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;)Lcom/shabakaty/usermanagement/UserManagement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/UserManagement_Factory;->get()Lcom/shabakaty/usermanagement/UserManagement;

    move-result-object v0

    return-object v0
.end method
