.class public final Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;
.super Ljava/lang/Object;
.source "ZendeskProvidersModule_ProvidePushRegistrationProviderFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field private final blipsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsCoreProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManagerProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pushDeviceIdStorageProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final pushRegistrationServiceProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/PushRegistrationService;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SettingsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/PushRegistrationService;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/IdentityManager;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SettingsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsCoreProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->pushRegistrationServiceProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->identityManagerProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->settingsProvider:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->blipsProvider:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p5, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->pushDeviceIdStorageProvider:Lcom/shabakaty/downloader/oj3;

    .line 7
    iput-object p6, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/PushRegistrationService;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/IdentityManager;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SettingsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsCoreProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;)",
            "Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v7, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v7
.end method

.method public static providePushRegistrationProvider(Ljava/lang/Object;Ljava/lang/Object;Lzendesk/core/SettingsProvider;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)Lzendesk/core/PushRegistrationProvider;
    .locals 6

    .line 1
    move-object v0, p0

    check-cast v0, Lzendesk/core/PushRegistrationService;

    move-object v1, p1

    check-cast v1, Lzendesk/core/IdentityManager;

    move-object v3, p3

    check-cast v3, Lzendesk/core/BlipsCoreProvider;

    move-object v4, p4

    check-cast v4, Lzendesk/core/PushDeviceIdStorage;

    move-object v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lzendesk/core/ZendeskProvidersModule;->providePushRegistrationProvider(Lzendesk/core/PushRegistrationService;Lzendesk/core/IdentityManager;Lzendesk/core/SettingsProvider;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushDeviceIdStorage;Landroid/content/Context;)Lzendesk/core/PushRegistrationProvider;

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
    invoke-virtual {p0}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->get()Lzendesk/core/PushRegistrationProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/PushRegistrationProvider;
    .locals 7

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->pushRegistrationServiceProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->identityManagerProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->settingsProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lzendesk/core/SettingsProvider;

    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->blipsProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->pushDeviceIdStorageProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v5

    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->contextProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    invoke-static/range {v1 .. v6}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->providePushRegistrationProvider(Ljava/lang/Object;Ljava/lang/Object;Lzendesk/core/SettingsProvider;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)Lzendesk/core/PushRegistrationProvider;

    move-result-object v0

    return-object v0
.end method
