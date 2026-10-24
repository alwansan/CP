.class Lzendesk/core/ZendeskNetworkModule;
.super Ljava/lang/Object;
.source "ZendeskNetworkModule.java"


# static fields
.field private static final BASE_OK_HTTP:Ljava/lang/String; = "BaseOkHttp"

.field private static final CORE_OK_HTTP:Ljava/lang/String; = "CoreOkHttp"

.field public static final CORE_RETROFIT:Ljava/lang/String; = "CoreRetrofit"

.field private static final MEDIA_OK_HTTP:Ljava/lang/String; = "MediaOkHttp"

.field public static final PUSH_PROVIDER_RETROFIT:Ljava/lang/String; = "PushProviderRetrofit"

.field private static final STANDARD_OK_HTTP:Ljava/lang/String; = "StandardOkHttp"

.field public static final STANDARD_RETROFIT:Ljava/lang/String; = "Retrofit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideAcceptLanguageHeaderInterceptor(Landroid/content/Context;)Lzendesk/core/AcceptLanguageHeaderInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/AcceptLanguageHeaderInterceptor;

    invoke-direct {v0, p0}, Lzendesk/core/AcceptLanguageHeaderInterceptor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static provideAccessInterceptor(Lzendesk/core/IdentityManager;Lzendesk/core/AccessProvider;Lzendesk/core/Storage;Lzendesk/core/CoreSettingsStorage;)Lzendesk/core/ZendeskAccessInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskAccessInterceptor;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/core/ZendeskAccessInterceptor;-><init>(Lzendesk/core/IdentityManager;Lzendesk/core/AccessProvider;Lzendesk/core/Storage;Lzendesk/core/CoreSettingsStorage;)V

    return-object v0
.end method

.method public static provideAuthHeaderInterceptor(Lzendesk/core/IdentityManager;)Lzendesk/core/ZendeskAuthHeaderInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskAuthHeaderInterceptor;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskAuthHeaderInterceptor;-><init>(Lzendesk/core/IdentityManager;)V

    return-object v0
.end method

.method public static provideCachingInterceptor(Lzendesk/core/BaseStorage;)Lzendesk/core/CachingInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/CachingInterceptor;

    invoke-direct {v0, p0}, Lzendesk/core/CachingInterceptor;-><init>(Lzendesk/core/BaseStorage;)V

    return-object v0
.end method

.method public static provideCoreRetrofit(Lzendesk/core/ApplicationConfiguration;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lt3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/lt3$b;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/lt3$b;

    const-string p0, "gson == null"

    .line 3
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance p0, Lcom/shabakaty/downloader/nr1;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/nr1;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 5
    iget-object p1, v0, Lcom/shabakaty/downloader/lt3$b;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object p0

    return-object p0
.end method

.method public static providePushInterceptor(Lzendesk/core/PushRegistrationProviderInternal;Lzendesk/core/PushDeviceIdStorage;Lzendesk/core/IdentityStorage;)Lzendesk/core/ZendeskPushInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskPushInterceptor;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/core/ZendeskPushInterceptor;-><init>(Lzendesk/core/PushRegistrationProviderInternal;Lzendesk/core/PushDeviceIdStorage;Lzendesk/core/IdentityStorage;)V

    return-object v0
.end method

.method public static providePushProviderRetrofit(Lzendesk/core/ApplicationConfiguration;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/a63;Lzendesk/core/ZendeskAuthHeaderInterceptor;)Lcom/shabakaty/downloader/lt3;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lt3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/lt3$b;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/lt3$b;

    const-string p0, "gson == null"

    .line 3
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance p0, Lcom/shabakaty/downloader/nr1;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/nr1;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 5
    iget-object p1, v0, Lcom/shabakaty/downloader/lt3$b;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/a63;->b()Lcom/shabakaty/downloader/a63$a;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/a63;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object p0

    return-object p0
.end method

.method public static provideRetrofit(Lzendesk/core/ApplicationConfiguration;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lt3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/lt3$b;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/lt3$b;

    const-string p0, "gson == null"

    .line 3
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance p0, Lcom/shabakaty/downloader/nr1;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/nr1;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 5
    iget-object p1, v0, Lcom/shabakaty/downloader/lt3$b;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object p0

    return-object p0
.end method

.method public static provideSettingsInterceptor(Lzendesk/core/SdkSettingsProviderInternal;Lzendesk/core/SettingsStorage;)Lzendesk/core/ZendeskSettingsInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskSettingsInterceptor;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskSettingsInterceptor;-><init>(Lzendesk/core/SdkSettingsProviderInternal;Lzendesk/core/SettingsStorage;)V

    return-object v0
.end method

.method public static provideZendeskUnauthorizedInterceptor(Lzendesk/core/SessionStorage;)Lzendesk/core/ZendeskUnauthorizedInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskUnauthorizedInterceptor;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskUnauthorizedInterceptor;-><init>(Lzendesk/core/SessionStorage;)V

    return-object v0
.end method

.method public static providesAcceptHeaderInterceptor()Lzendesk/core/AcceptHeaderInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/AcceptHeaderInterceptor;

    invoke-direct {v0}, Lzendesk/core/AcceptHeaderInterceptor;-><init>()V

    return-object v0
.end method


# virtual methods
.method public provideBaseOkHttpClient(Lcom/shabakaty/downloader/kw1;Lzendesk/core/ZendeskOauthIdHeaderInterceptor;Lzendesk/core/UserAgentAndClientHeadersInterceptor;Ljava/util/concurrent/ExecutorService;)Lcom/shabakaty/downloader/a63;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a63$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a63$a;-><init>()V

    invoke-static {v0}, Lzendesk/core/Tls12SocketFactory;->enableTls12OnPreLollipop(Lcom/shabakaty/downloader/a63$a;)Lcom/shabakaty/downloader/a63$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 4
    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1e

    .line 5
    invoke-virtual {v0, p2, p3, p1}, Lcom/shabakaty/downloader/a63$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;

    .line 6
    invoke-virtual {v0, p2, p3, p1}, Lcom/shabakaty/downloader/a63$a;->d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;

    .line 7
    invoke-virtual {v0, p2, p3, p1}, Lcom/shabakaty/downloader/a63$a;->e(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;

    new-instance p1, Lcom/shabakaty/downloader/fu0;

    const-string p2, "executorService"

    .line 8
    invoke-static {p4, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p1}, Lcom/shabakaty/downloader/fu0;-><init>()V

    .line 10
    iput-object p4, p1, Lcom/shabakaty/downloader/fu0;->b:Ljava/util/concurrent/ExecutorService;

    const-string p2, "dispatcher"

    .line 11
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, v0, Lcom/shabakaty/downloader/a63$a;->a:Lcom/shabakaty/downloader/fu0;

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/a63;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    return-object p1
.end method

.method public provideCoreOkHttpClient(Lcom/shabakaty/downloader/a63;Lzendesk/core/AcceptLanguageHeaderInterceptor;Lzendesk/core/AcceptHeaderInterceptor;)Lcom/shabakaty/downloader/a63;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/a63;->b()Lcom/shabakaty/downloader/a63$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 3
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/a63;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    return-object p2
.end method

.method public provideMediaOkHttpClient(Lcom/shabakaty/downloader/a63;Lzendesk/core/ZendeskAccessInterceptor;Lzendesk/core/ZendeskAuthHeaderInterceptor;Lzendesk/core/ZendeskSettingsInterceptor;Lzendesk/core/CachingInterceptor;Lzendesk/core/ZendeskUnauthorizedInterceptor;)Lcom/shabakaty/downloader/a63;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/a63;->b()Lcom/shabakaty/downloader/a63$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p4}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 3
    invoke-virtual {p1, p5}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 4
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 5
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 6
    invoke-virtual {p1, p6}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/a63;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    return-object p2
.end method

.method public provideOkHttpClient(Lcom/shabakaty/downloader/a63;Lzendesk/core/ZendeskAccessInterceptor;Lzendesk/core/ZendeskUnauthorizedInterceptor;Lzendesk/core/ZendeskAuthHeaderInterceptor;Lzendesk/core/ZendeskSettingsInterceptor;Lzendesk/core/AcceptHeaderInterceptor;Lzendesk/core/ZendeskPushInterceptor;Lcom/shabakaty/downloader/op;)Lcom/shabakaty/downloader/a63;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/a63;->b()Lcom/shabakaty/downloader/a63$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p5}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 3
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 4
    invoke-virtual {p1, p4}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 5
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 6
    invoke-virtual {p1, p6}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 7
    invoke-virtual {p1, p7}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 8
    iput-object p8, p1, Lcom/shabakaty/downloader/a63$a;->k:Lcom/shabakaty/downloader/op;

    .line 9
    new-instance p2, Lcom/shabakaty/downloader/a63;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    return-object p2
.end method

.method public provideRestServiceProvider(Lcom/shabakaty/downloader/lt3;Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/a63;)Lzendesk/core/RestServiceProvider;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskRestServiceProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lzendesk/core/ZendeskRestServiceProvider;-><init>(Lcom/shabakaty/downloader/lt3;Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/a63;)V

    return-object v0
.end method

.method public provideZendeskBasicHeadersInterceptor(Lzendesk/core/ApplicationConfiguration;)Lzendesk/core/ZendeskOauthIdHeaderInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskOauthIdHeaderInterceptor;

    invoke-virtual {p1}, Lzendesk/core/ApplicationConfiguration;->getOauthClientId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lzendesk/core/ZendeskOauthIdHeaderInterceptor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public providesUserAgentHeaderInterceptor()Lzendesk/core/UserAgentAndClientHeadersInterceptor;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    const-string v1, "4.0.2"

    const-string v2, "Core"

    invoke-direct {v0, v1, v2}, Lzendesk/core/UserAgentAndClientHeadersInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
