.class Lzendesk/core/ZendeskRestServiceProvider;
.super Ljava/lang/Object;
.source "ZendeskRestServiceProvider.java"

# interfaces
.implements Lzendesk/core/RestServiceProvider;


# instance fields
.field private final coreOkHttpClient:Lcom/shabakaty/downloader/a63;

.field private final mediaHttpClient:Lcom/shabakaty/downloader/a63;

.field public final retrofit:Lcom/shabakaty/downloader/lt3;

.field public final standardOkHttpClient:Lcom/shabakaty/downloader/a63;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lt3;Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/a63;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskRestServiceProvider;->retrofit:Lcom/shabakaty/downloader/lt3;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskRestServiceProvider;->mediaHttpClient:Lcom/shabakaty/downloader/a63;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskRestServiceProvider;->standardOkHttpClient:Lcom/shabakaty/downloader/a63;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskRestServiceProvider;->coreOkHttpClient:Lcom/shabakaty/downloader/a63;

    return-void
.end method

.method private createNonAuthenticatedOkHttpClient()Lcom/shabakaty/downloader/a63$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskRestServiceProvider;->standardOkHttpClient:Lcom/shabakaty/downloader/a63;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/a63;->b()Lcom/shabakaty/downloader/a63$a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/a63$a;->c:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/w22;

    .line 6
    instance-of v2, v2, Lzendesk/core/ZendeskAuthHeaderInterceptor;

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public createRestService(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskRestServiceProvider;->retrofit:Lcom/shabakaty/downloader/lt3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/lt3$b;-><init>(Lcom/shabakaty/downloader/lt3;)V

    .line 3
    iget-object v0, p0, Lzendesk/core/ZendeskRestServiceProvider;->standardOkHttpClient:Lcom/shabakaty/downloader/a63;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a63;->b()Lcom/shabakaty/downloader/a63$a;

    move-result-object v0

    new-instance v2, Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    invoke-direct {v2, p2, p3}, Lzendesk/core/UserAgentAndClientHeadersInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/a63;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    .line 7
    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/lt3;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createRestService(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lzendesk/core/CustomNetworkConfig;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzendesk/core/CustomNetworkConfig;",
            ")TE;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lzendesk/core/ZendeskRestServiceProvider;->standardOkHttpClient:Lcom/shabakaty/downloader/a63;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/a63;->b()Lcom/shabakaty/downloader/a63$a;

    move-result-object v0

    .line 11
    invoke-virtual {p4, v0}, Lzendesk/core/CustomNetworkConfig;->configureOkHttpClient(Lcom/shabakaty/downloader/a63$a;)V

    .line 12
    new-instance v1, Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    invoke-direct {v1, p2, p3}, Lzendesk/core/UserAgentAndClientHeadersInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 13
    iget-object p2, p0, Lzendesk/core/ZendeskRestServiceProvider;->retrofit:Lcom/shabakaty/downloader/lt3;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p3, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/lt3$b;-><init>(Lcom/shabakaty/downloader/lt3;)V

    .line 15
    invoke-virtual {p4, p3}, Lzendesk/core/CustomNetworkConfig;->configureRetrofit(Lcom/shabakaty/downloader/lt3$b;)V

    .line 16
    new-instance p2, Lcom/shabakaty/downloader/a63;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    .line 17
    invoke-virtual {p3, p2}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    .line 18
    invoke-virtual {p3}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object p2

    .line 19
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/lt3;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createUnauthenticatedRestService(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lzendesk/core/CustomNetworkConfig;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzendesk/core/CustomNetworkConfig;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lzendesk/core/ZendeskRestServiceProvider;->createNonAuthenticatedOkHttpClient()Lcom/shabakaty/downloader/a63$a;

    move-result-object v0

    .line 2
    invoke-virtual {p4, v0}, Lzendesk/core/CustomNetworkConfig;->configureOkHttpClient(Lcom/shabakaty/downloader/a63$a;)V

    .line 3
    new-instance v1, Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    invoke-direct {v1, p2, p3}, Lzendesk/core/UserAgentAndClientHeadersInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 4
    iget-object p2, p0, Lzendesk/core/ZendeskRestServiceProvider;->retrofit:Lcom/shabakaty/downloader/lt3;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p3, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/lt3$b;-><init>(Lcom/shabakaty/downloader/lt3;)V

    .line 6
    invoke-virtual {p4, p3}, Lzendesk/core/CustomNetworkConfig;->configureRetrofit(Lcom/shabakaty/downloader/lt3$b;)V

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/a63;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    .line 8
    invoke-virtual {p3, p2}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    .line 9
    invoke-virtual {p3}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/lt3;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCoreOkHttpClient()Lcom/shabakaty/downloader/a63;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskRestServiceProvider;->coreOkHttpClient:Lcom/shabakaty/downloader/a63;

    return-object v0
.end method

.method public getMediaOkHttpClient()Lcom/shabakaty/downloader/a63;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskRestServiceProvider;->mediaHttpClient:Lcom/shabakaty/downloader/a63;

    return-object v0
.end method
