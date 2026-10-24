.class Lzendesk/core/ZendeskPushInterceptor;
.super Ljava/lang/Object;
.source "ZendeskPushInterceptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskPushInterceptor"


# instance fields
.field private final identityStorage:Lzendesk/core/IdentityStorage;

.field private final pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

.field private final pushProvider:Lzendesk/core/PushRegistrationProviderInternal;


# direct methods
.method public constructor <init>(Lzendesk/core/PushRegistrationProviderInternal;Lzendesk/core/PushDeviceIdStorage;Lzendesk/core/IdentityStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskPushInterceptor;->pushProvider:Lzendesk/core/PushRegistrationProviderInternal;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskPushInterceptor;->pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskPushInterceptor;->identityStorage:Lzendesk/core/IdentityStorage;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskPushInterceptor;->pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

    invoke-interface {v0}, Lzendesk/core/PushDeviceIdStorage;->getPushRegistrationRequest()Lzendesk/core/PushRegistrationRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lzendesk/core/ZendeskPushInterceptor;->identityStorage:Lzendesk/core/IdentityStorage;

    invoke-interface {v1}, Lzendesk/core/IdentityStorage;->getStoredAccessToken()Lzendesk/core/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ZendeskPushInterceptor"

    const-string v3, "Sending stored push registration request"

    .line 3
    invoke-static {v2, v3, v1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lzendesk/core/ZendeskPushInterceptor;->pushProvider:Lzendesk/core/PushRegistrationProviderInternal;

    invoke-interface {v1, v0}, Lzendesk/core/PushRegistrationProviderInternal;->sendPushRegistrationRequest(Lzendesk/core/PushRegistrationRequest;)Ljava/lang/String;

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1
.end method
