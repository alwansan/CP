.class public final Lcom/shabakaty/usermanagement/di/UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;
.super Ljava/lang/Object;
.source "UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory.java"

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


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/usermanagement/di/UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;->configurationProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/usermanagement/di/UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
            ">;)",
            "Lcom/shabakaty/usermanagement/di/UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/di/UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;

    invoke-direct {v0, p0}, Lcom/shabakaty/usermanagement/di/UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;-><init>(Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static provideApiService$usermanagement_debug(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)Lcom/shabakaty/usermanagement/data/api/UserManagementApi;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/di/UserManagementModule;->Companion:Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;

    invoke-virtual {v0, p0}, Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;->provideApiService$usermanagement_debug(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/usermanagement/di/UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;->configurationProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;

    invoke-static {v0}, Lcom/shabakaty/usermanagement/di/UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;->provideApiService$usermanagement_debug(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/di/UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;->get()Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    move-result-object v0

    return-object v0
.end method
