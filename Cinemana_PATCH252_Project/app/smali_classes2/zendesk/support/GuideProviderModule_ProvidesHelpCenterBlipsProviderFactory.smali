.class public final Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final blipsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final localeProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public final module:Lzendesk/support/GuideProviderModule;


# direct methods
.method public constructor <init>(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/GuideProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->module:Lzendesk/support/GuideProviderModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->blipsProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->localeProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/GuideProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/Locale;",
            ">;)",
            "Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;-><init>(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static providesHelpCenterBlipsProvider(Lzendesk/support/GuideProviderModule;Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/HelpCenterBlipsProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lzendesk/support/GuideProviderModule;->providesHelpCenterBlipsProvider(Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/HelpCenterBlipsProvider;

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
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->get()Lzendesk/support/HelpCenterBlipsProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterBlipsProvider;
    .locals 3

    .line 2
    iget-object v0, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->module:Lzendesk/support/GuideProviderModule;

    iget-object v1, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->blipsProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/BlipsProvider;

    iget-object v2, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->localeProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-static {v0, v1, v2}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->providesHelpCenterBlipsProvider(Lzendesk/support/GuideProviderModule;Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/HelpCenterBlipsProvider;

    move-result-object v0

    return-object v0
.end method
