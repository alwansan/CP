.class public Lzendesk/support/ProviderModule;
.super Ljava/lang/Object;
.source "ProviderModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideProviderStore(Lzendesk/support/HelpCenterProvider;Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)Lzendesk/support/ProviderStore;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/ZendeskProviderStore;

    invoke-direct {v0, p1, p2, p3}, Lzendesk/support/ZendeskProviderStore;-><init>(Lzendesk/support/HelpCenterProvider;Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)V

    return-object v0
.end method

.method public provideRequestProvider(Lzendesk/support/SupportSettingsProvider;Lzendesk/core/AuthenticationProvider;Lzendesk/support/ZendeskRequestService;Lzendesk/support/RequestStorage;Lzendesk/support/RequestSessionCache;Lzendesk/support/ZendeskTracker;Lzendesk/support/SupportSdkMetadata;Lzendesk/support/SupportBlipsProvider;)Lzendesk/support/RequestProvider;
    .locals 10

    .line 1
    new-instance v9, Lzendesk/support/ZendeskRequestProvider;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lzendesk/support/ZendeskRequestProvider;-><init>(Lzendesk/support/SupportSettingsProvider;Lzendesk/support/ZendeskRequestService;Lzendesk/core/AuthenticationProvider;Lzendesk/support/RequestStorage;Lzendesk/support/RequestSessionCache;Lzendesk/support/ZendeskTracker;Lzendesk/support/SupportSdkMetadata;Lzendesk/support/SupportBlipsProvider;)V

    return-object v9
.end method

.method public provideSdkSettingsProvider(Lzendesk/core/SettingsProvider;Ljava/util/Locale;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/SupportSettingsProvider;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/ZendeskSupportSettingsProvider;

    invoke-direct {v0, p1, p3, p2}, Lzendesk/support/ZendeskSupportSettingsProvider;-><init>(Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;Ljava/util/Locale;)V

    return-object v0
.end method

.method public provideSupportBlipsProvider(Lzendesk/core/BlipsProvider;)Lzendesk/support/SupportBlipsProvider;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/ZendeskSupportBlipsProvider;

    invoke-direct {v0, p1}, Lzendesk/support/ZendeskSupportBlipsProvider;-><init>(Lzendesk/core/BlipsProvider;)V

    return-object v0
.end method

.method public provideSupportModule(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/HelpCenterProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/RestServiceProvider;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/ZendeskTracker;Lzendesk/support/ArticleVoteStorage;)Lzendesk/support/SupportModule;
    .locals 10

    .line 1
    new-instance v9, Lzendesk/support/SupportModule;

    .line 2
    invoke-interface {p5}, Lzendesk/core/RestServiceProvider;->getMediaOkHttpClient()Lcom/shabakaty/downloader/a63;

    move-result-object v6

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lzendesk/support/SupportModule;-><init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/HelpCenterProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/SupportBlipsProvider;Lcom/shabakaty/downloader/a63;Lzendesk/support/ZendeskTracker;Lzendesk/support/ArticleVoteStorage;)V

    return-object v9
.end method

.method public provideUploadProvider(Lzendesk/support/ZendeskUploadService;)Lzendesk/support/UploadProvider;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/ZendeskUploadProvider;

    invoke-direct {v0, p1}, Lzendesk/support/ZendeskUploadProvider;-><init>(Lzendesk/support/ZendeskUploadService;)V

    return-object v0
.end method

.method public provideZendeskLocaleConverter()Lzendesk/core/ZendeskLocaleConverter;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskLocaleConverter;

    invoke-direct {v0}, Lzendesk/core/ZendeskLocaleConverter;-><init>()V

    return-object v0
.end method
