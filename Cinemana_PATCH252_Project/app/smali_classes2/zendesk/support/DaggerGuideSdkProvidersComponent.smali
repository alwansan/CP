.class public final Lzendesk/support/DaggerGuideSdkProvidersComponent;
.super Ljava/lang/Object;
.source "DaggerGuideSdkProvidersComponent.java"

# interfaces
.implements Lzendesk/support/GuideSdkProvidersComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;
    }
.end annotation


# instance fields
.field public getBlipsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field public getRestServiceProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/RestServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public getSessionStorageProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SessionStorage;",
            ">;"
        }
    .end annotation
.end field

.field public getSettingsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field public provideArticleVoteStorageProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/ArticleVoteStorage;",
            ">;"
        }
    .end annotation
.end field

.field public provideCustomNetworkConfigProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterCachingNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field public provideDeviceLocaleProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public provideGuideModuleProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/GuideModule;",
            ">;"
        }
    .end annotation
.end field

.field public provideHelpCenterCachingInterceptorProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterCachingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public provideHelpCenterProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;"
        }
    .end annotation
.end field

.field public provideHelpCenterSessionCacheProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterSessionCache;",
            ">;"
        }
    .end annotation
.end field

.field public provideSettingsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field public provideZendeskHelpCenterServiceProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/ZendeskHelpCenterService;",
            ">;"
        }
    .end annotation
.end field

.field public provideZendeskLocaleConverterProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;"
        }
    .end annotation
.end field

.field public providesHelpCenterBlipsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field public providesHelpCenterServiceProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lzendesk/support/DaggerGuideSdkProvidersComponent;->initialize(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;)V

    return-void
.end method

.method public synthetic constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;Lzendesk/support/DaggerGuideSdkProvidersComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/DaggerGuideSdkProvidersComponent;-><init>(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;)V

    return-void
.end method

.method public static builder()Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;-><init>(Lzendesk/support/DaggerGuideSdkProvidersComponent$1;)V

    return-object v0
.end method


# virtual methods
.method public final initialize(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lzendesk/core/CoreModule_GetSettingsProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSettingsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->getSettingsProvider:Lcom/shabakaty/downloader/oj3;

    .line 2
    invoke-static {}, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;->create()Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideZendeskLocaleConverterProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    invoke-static {p2}, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->create(Lzendesk/support/GuideProviderModule;)Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideDeviceLocaleProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->getSettingsProvider:Lcom/shabakaty/downloader/oj3;

    iget-object v2, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideZendeskLocaleConverterProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {p2, v1, v2, v0}, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->create(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideSettingsProvider:Lcom/shabakaty/downloader/oj3;

    .line 5
    invoke-static {p1}, Lzendesk/core/CoreModule_GetBlipsProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetBlipsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->getBlipsProvider:Lcom/shabakaty/downloader/oj3;

    .line 6
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideDeviceLocaleProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {p2, v0, v1}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->create(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->providesHelpCenterBlipsProvider:Lcom/shabakaty/downloader/oj3;

    .line 7
    invoke-static {p1}, Lzendesk/core/CoreModule_GetRestServiceProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetRestServiceProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->getRestServiceProvider:Lcom/shabakaty/downloader/oj3;

    .line 8
    invoke-static {}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory;->create()Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/h74;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideHelpCenterCachingInterceptorProvider:Lcom/shabakaty/downloader/oj3;

    .line 9
    invoke-static {v0}, Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;->create(Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/h74;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideCustomNetworkConfigProvider:Lcom/shabakaty/downloader/oj3;

    .line 10
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->getRestServiceProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {v1, v0}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;->create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->providesHelpCenterServiceProvider:Lcom/shabakaty/downloader/oj3;

    .line 11
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideZendeskLocaleConverterProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {v0, v1}, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;->create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideZendeskHelpCenterServiceProvider:Lcom/shabakaty/downloader/oj3;

    .line 12
    invoke-static {}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;->create()Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideHelpCenterSessionCacheProvider:Lcom/shabakaty/downloader/oj3;

    .line 13
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideSettingsProvider:Lcom/shabakaty/downloader/oj3;

    iget-object v2, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->providesHelpCenterBlipsProvider:Lcom/shabakaty/downloader/oj3;

    iget-object v3, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideZendeskHelpCenterServiceProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {p2, v1, v2, v3, v0}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterProviderFactory;->create(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvideHelpCenterProviderFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideHelpCenterProvider:Lcom/shabakaty/downloader/oj3;

    .line 14
    invoke-static {p1}, Lzendesk/core/CoreModule_GetSessionStorageFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSessionStorageFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->getSessionStorageProvider:Lcom/shabakaty/downloader/oj3;

    .line 15
    invoke-static {p1}, Lzendesk/support/GuideProviderModule_ProvideArticleVoteStorageFactory;->create(Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvideArticleVoteStorageFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object v4

    iput-object v4, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideArticleVoteStorageProvider:Lcom/shabakaty/downloader/oj3;

    .line 16
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideHelpCenterProvider:Lcom/shabakaty/downloader/oj3;

    iget-object v2, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideSettingsProvider:Lcom/shabakaty/downloader/oj3;

    iget-object v3, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->providesHelpCenterBlipsProvider:Lcom/shabakaty/downloader/oj3;

    iget-object v5, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->getRestServiceProvider:Lcom/shabakaty/downloader/oj3;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->create(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideGuideModuleProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public inject(Lzendesk/support/Guide;)Lzendesk/support/Guide;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzendesk/support/DaggerGuideSdkProvidersComponent;->injectGuide(Lzendesk/support/Guide;)Lzendesk/support/Guide;

    move-result-object p1

    return-object p1
.end method

.method public final injectGuide(Lzendesk/support/Guide;)Lzendesk/support/Guide;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->provideGuideModuleProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/GuideModule;

    invoke-static {p1, v0}, Lzendesk/support/Guide_MembersInjector;->injectGuideModule(Lzendesk/support/Guide;Lzendesk/support/GuideModule;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent;->providesHelpCenterBlipsProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/HelpCenterBlipsProvider;

    invoke-static {p1, v0}, Lzendesk/support/Guide_MembersInjector;->injectBlipsProvider(Lzendesk/support/Guide;Lzendesk/support/HelpCenterBlipsProvider;)V

    return-object p1
.end method
