.class public final Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;
.super Ljava/lang/Object;
.source "ShabakatyAccountManager_Factory.java"

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


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;->configurationProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
            ">;)",
            "Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;-><init>(Landroid/content/Context;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;->configurationProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    invoke-static {v0, v1}, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;->newInstance(Landroid/content/Context;Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager_Factory;->get()Lcom/shabakaty/usermanagement/utils/account/ShabakatyAccountManager;

    move-result-object v0

    return-object v0
.end method
