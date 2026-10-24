.class public final Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideSettingsProviderFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final localeConverterProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/ZendeskLocaleConverter;",
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

.field public final sdkSettingsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SettingsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/GuideProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SettingsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->module:Lzendesk/support/GuideProviderModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->sdkSettingsProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->localeConverterProvider:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->localeProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/GuideProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SettingsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/Locale;",
            ">;)",
            "Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;-><init>(Lzendesk/support/GuideProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static provideSettingsProvider(Lzendesk/support/GuideProviderModule;Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;Ljava/util/Locale;)Lzendesk/support/HelpCenterSettingsProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lzendesk/support/GuideProviderModule;->provideSettingsProvider(Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;Ljava/util/Locale;)Lzendesk/support/HelpCenterSettingsProvider;

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
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->get()Lzendesk/support/HelpCenterSettingsProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterSettingsProvider;
    .locals 4

    .line 2
    iget-object v0, p0, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->module:Lzendesk/support/GuideProviderModule;

    iget-object v1, p0, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->sdkSettingsProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/SettingsProvider;

    iget-object v2, p0, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->localeConverterProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/core/ZendeskLocaleConverter;

    iget-object v3, p0, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->localeProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->provideSettingsProvider(Lzendesk/support/GuideProviderModule;Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;Ljava/util/Locale;)Lzendesk/support/HelpCenterSettingsProvider;

    move-result-object v0

    return-object v0
.end method
