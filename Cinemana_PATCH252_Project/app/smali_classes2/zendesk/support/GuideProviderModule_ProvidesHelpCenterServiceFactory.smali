.class public final Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvidesHelpCenterServiceFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final helpCenterCachingNetworkConfigProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterCachingNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final restServiceProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/RestServiceProvider;",
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
            "Lzendesk/core/RestServiceProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterCachingNetworkConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;->restServiceProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;->helpCenterCachingNetworkConfigProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/RestServiceProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterCachingNetworkConfig;",
            ">;)",
            "Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static providesHelpCenterService(Lzendesk/core/RestServiceProvider;Ljava/lang/Object;)Lzendesk/support/HelpCenterService;
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/HelpCenterCachingNetworkConfig;

    invoke-static {p0, p1}, Lzendesk/support/GuideProviderModule;->providesHelpCenterService(Lzendesk/core/RestServiceProvider;Lzendesk/support/HelpCenterCachingNetworkConfig;)Lzendesk/support/HelpCenterService;

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
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;->get()Lzendesk/support/HelpCenterService;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterService;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;->restServiceProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/RestServiceProvider;

    iget-object v1, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;->helpCenterCachingNetworkConfigProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;->providesHelpCenterService(Lzendesk/core/RestServiceProvider;Ljava/lang/Object;)Lzendesk/support/HelpCenterService;

    move-result-object v0

    return-object v0
.end method
