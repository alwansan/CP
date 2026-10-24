.class public final Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideGuideModuleFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final articleVoteStorageProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/ArticleVoteStorage;",
            ">;"
        }
    .end annotation
.end field

.field public final blipsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final helpCenterProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final module:Lzendesk/support/GuideProviderModule;

.field public final restServiceProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/RestServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final settingsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterSettingsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/GuideProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterSettingsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterBlipsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/ArticleVoteStorage;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/RestServiceProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->module:Lzendesk/support/GuideProviderModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->helpCenterProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->settingsProvider:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->blipsProvider:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p5, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->articleVoteStorageProvider:Lcom/shabakaty/downloader/oj3;

    .line 7
    iput-object p6, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->restServiceProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/GuideProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterSettingsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/HelpCenterBlipsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/ArticleVoteStorage;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/RestServiceProvider;",
            ">;)",
            "Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;"
        }
    .end annotation

    .line 1
    new-instance v7, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;-><init>(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v7
.end method

.method public static provideGuideModule(Lzendesk/support/GuideProviderModule;Lzendesk/support/HelpCenterProvider;Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/ArticleVoteStorage;Lzendesk/core/RestServiceProvider;)Lzendesk/support/GuideModule;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lzendesk/support/GuideProviderModule;->provideGuideModule(Lzendesk/support/HelpCenterProvider;Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/ArticleVoteStorage;Lzendesk/core/RestServiceProvider;)Lzendesk/support/GuideModule;

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
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->get()Lzendesk/support/GuideModule;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/GuideModule;
    .locals 6

    .line 2
    iget-object v0, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->module:Lzendesk/support/GuideProviderModule;

    iget-object v1, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->helpCenterProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/HelpCenterProvider;

    iget-object v2, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->settingsProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/HelpCenterSettingsProvider;

    iget-object v3, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->blipsProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/HelpCenterBlipsProvider;

    iget-object v4, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->articleVoteStorageProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v4}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/ArticleVoteStorage;

    iget-object v5, p0, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->restServiceProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v5}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/core/RestServiceProvider;

    invoke-static/range {v0 .. v5}, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->provideGuideModule(Lzendesk/support/GuideProviderModule;Lzendesk/support/HelpCenterProvider;Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/ArticleVoteStorage;Lzendesk/core/RestServiceProvider;)Lzendesk/support/GuideModule;

    move-result-object v0

    return-object v0
.end method
