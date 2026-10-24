.class public final Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;
.super Ljava/lang/Object;
.source "ProviderModule_ProvideSdkSettingsProviderFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final helpCenterLocaleConverterProvider:Lcom/shabakaty/downloader/oj3;
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

.field public final module:Lzendesk/support/ProviderModule;

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
.method public constructor <init>(Lzendesk/support/ProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SettingsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/Locale;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->module:Lzendesk/support/ProviderModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->sdkSettingsProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->localeProvider:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->helpCenterLocaleConverterProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lzendesk/support/ProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/SettingsProvider;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/Locale;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;)",
            "Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;-><init>(Lzendesk/support/ProviderModule;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static provideSdkSettingsProvider(Lzendesk/support/ProviderModule;Lzendesk/core/SettingsProvider;Ljava/util/Locale;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/SupportSettingsProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lzendesk/support/ProviderModule;->provideSdkSettingsProvider(Lzendesk/core/SettingsProvider;Ljava/util/Locale;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/SupportSettingsProvider;

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
    invoke-virtual {p0}, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->get()Lzendesk/support/SupportSettingsProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportSettingsProvider;
    .locals 4

    .line 2
    iget-object v0, p0, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->module:Lzendesk/support/ProviderModule;

    iget-object v1, p0, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->sdkSettingsProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/SettingsProvider;

    iget-object v2, p0, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->localeProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    iget-object v3, p0, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->helpCenterLocaleConverterProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/core/ZendeskLocaleConverter;

    invoke-static {v0, v1, v2, v3}, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->provideSdkSettingsProvider(Lzendesk/support/ProviderModule;Lzendesk/core/SettingsProvider;Ljava/util/Locale;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/SupportSettingsProvider;

    move-result-object v0

    return-object v0
.end method
