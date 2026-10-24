.class public final Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;
.super Ljava/lang/Object;
.source "AccountRepository_Factory.java"

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

.field public final contextProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final userManagementApiProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/api/UserManagementApi;",
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
            "Lcom/shabakaty/usermanagement/data/api/UserManagementApi;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;->userManagementApiProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;->configurationProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/api/UserManagementApi;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static newInstance(Lcom/shabakaty/usermanagement/data/api/UserManagementApi;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Landroid/content/Context;)Lcom/shabakaty/usermanagement/data/AccountRepository;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/data/AccountRepository;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/usermanagement/data/AccountRepository;-><init>(Lcom/shabakaty/usermanagement/data/api/UserManagementApi;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/shabakaty/usermanagement/data/AccountRepository;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;->userManagementApiProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;->configurationProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    iget-object v2, p0, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;->newInstance(Lcom/shabakaty/usermanagement/data/api/UserManagementApi;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;Landroid/content/Context;)Lcom/shabakaty/usermanagement/data/AccountRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/AccountRepository_Factory;->get()Lcom/shabakaty/usermanagement/data/AccountRepository;

    move-result-object v0

    return-object v0
.end method
