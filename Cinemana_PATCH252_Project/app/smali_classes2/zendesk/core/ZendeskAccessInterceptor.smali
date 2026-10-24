.class Lzendesk/core/ZendeskAccessInterceptor;
.super Ljava/lang/Object;
.source "ZendeskAccessInterceptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# static fields
.field private static final EMPTY_JSON:Ljava/lang/String; = "{}"

.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskAccessIntercepto"

.field private static final RETRY_LIMIT:I = 0x3


# instance fields
.field private accessProvider:Lzendesk/core/AccessProvider;

.field private coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

.field private identityManager:Lzendesk/core/IdentityManager;

.field private retryCounter:I

.field private storage:Lzendesk/core/Storage;


# direct methods
.method public constructor <init>(Lzendesk/core/IdentityManager;Lzendesk/core/AccessProvider;Lzendesk/core/Storage;Lzendesk/core/CoreSettingsStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskAccessInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskAccessInterceptor;->accessProvider:Lzendesk/core/AccessProvider;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskAccessInterceptor;->storage:Lzendesk/core/Storage;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskAccessInterceptor;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    return-void
.end method

.method private errorResponse(Lcom/shabakaty/downloader/w22$a;Ljava/lang/String;)Lcom/shabakaty/downloader/ws3;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ws3$a;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    sget-object p1, Lcom/shabakaty/downloader/mj3;->v:Lcom/shabakaty/downloader/mj3;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ws3$a;->g(Lcom/shabakaty/downloader/mj3;)Lcom/shabakaty/downloader/ws3$a;

    const/16 p1, 0x190

    .line 4
    iput p1, v0, Lcom/shabakaty/downloader/ws3$a;->c:I

    .line 5
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/ws3$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    const-string p1, "txt/json"

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/fr2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p1

    const-string p2, "{}"

    const-string v1, "content"

    .line 7
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$toResponseBody"

    .line 8
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/shabakaty/downloader/hz;->b:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1

    .line 10
    sget-object v2, Lcom/shabakaty/downloader/fr2;->e:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/fr2;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_0

    .line 12
    sget-object v2, Lcom/shabakaty/downloader/fr2;->g:Lcom/shabakaty/downloader/fr2$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; charset=utf-8"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/fr2$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 13
    :cond_1
    :goto_0
    new-instance v2, Lcom/shabakaty/downloader/zn;

    invoke-direct {v2}, Lcom/shabakaty/downloader/zn;-><init>()V

    const-string v3, "string"

    .line 14
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "charset"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v2, p2, v4, v3, v1}, Lcom/shabakaty/downloader/zn;->V(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/shabakaty/downloader/zn;

    .line 16
    iget-wide v3, v2, Lcom/shabakaty/downloader/zn;->s:J

    const-string p2, "$this$asResponseBody"

    .line 17
    invoke-static {v2, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p2, Lcom/shabakaty/downloader/zs3;

    invoke-direct {p2, v2, p1, v3, v4}, Lcom/shabakaty/downloader/zs3;-><init>(Lcom/shabakaty/downloader/eo;Lcom/shabakaty/downloader/fr2;J)V

    .line 19
    iput-object p2, v0, Lcom/shabakaty/downloader/ws3$a;->g:Lcom/shabakaty/downloader/ys3;

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1
.end method

.method public static getErrorLogMessage(Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0xa0

    const-string v1, "The expected type of authentication is "

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ei;->a(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jwt."

    const-string v2, "anonymous."

    if-nez p0, :cond_0

    const-string p0, "null. Check that settings have been downloaded."

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v3, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    if-ne p0, v3, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v3, Lzendesk/core/AuthenticationType;->JWT:Lzendesk/core/AuthenticationType;

    if-ne p0, v3, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const/16 p0, 0xa

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "The local identity is"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string p0, " not"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, " present.\n"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    const-string p0, "The local identity is "

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    instance-of p0, p1, Lzendesk/core/AnonymousIdentity;

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_4
    instance-of p0, p1, Lzendesk/core/JwtIdentity;

    if-eqz p0, :cond_5

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string p0, "unknown."

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskAccessInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v0}, Lzendesk/core/IdentityManager;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/core/ZendeskAccessInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v1}, Lzendesk/core/IdentityManager;->getStoredAccessTokenAsBearerToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZendeskAccessIntercepto"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Access token present, no need to intercept."

    .line 3
    invoke-static {v2, v1, v0}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Access token is required, intercepting."

    .line 5
    invoke-static {v2, v4, v1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lzendesk/core/ZendeskAccessInterceptor;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    invoke-interface {v1}, Lzendesk/core/CoreSettingsStorage;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/core/CoreSettings;->getAuthentication()Lzendesk/core/AuthenticationType;

    move-result-object v1

    .line 7
    sget-object v4, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    if-ne v4, v1, :cond_1

    instance-of v4, v0, Lzendesk/core/AnonymousIdentity;

    if-eqz v4, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Anonymous Identity found. Requesting and storing auth token."

    .line 8
    invoke-static {v2, v4, v1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lzendesk/core/ZendeskAccessInterceptor;->accessProvider:Lzendesk/core/AccessProvider;

    check-cast v0, Lzendesk/core/AnonymousIdentity;

    invoke-interface {v1, v0}, Lzendesk/core/AccessProvider;->getAuthTokenViaAnonymous(Lzendesk/core/AnonymousIdentity;)Lcom/shabakaty/downloader/xs3;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    sget-object v4, Lzendesk/core/AuthenticationType;->JWT:Lzendesk/core/AuthenticationType;

    if-ne v4, v1, :cond_7

    instance-of v4, v0, Lzendesk/core/JwtIdentity;

    if-eqz v4, :cond_7

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "JWT Identity found. Requesting and storing auth token."

    .line 11
    invoke-static {v2, v4, v1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lzendesk/core/ZendeskAccessInterceptor;->accessProvider:Lzendesk/core/AccessProvider;

    check-cast v0, Lzendesk/core/JwtIdentity;

    invoke-interface {v1, v0}, Lzendesk/core/AccessProvider;->getAuthTokenViaJwt(Lzendesk/core/JwtIdentity;)Lcom/shabakaty/downloader/xs3;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Response was null, failed to auth user."

    .line 13
    invoke-direct {p0, p1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->errorResponse(Lcom/shabakaty/downloader/w22$a;Ljava/lang/String;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1

    .line 14
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/xs3;->a:Lcom/shabakaty/downloader/ws3;

    .line 15
    iget v1, v1, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v2, 0x199

    if-ne v1, v2, :cond_4

    .line 16
    iget v0, p0, Lzendesk/core/ZendeskAccessInterceptor;->retryCounter:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 17
    iput v0, p0, Lzendesk/core/ZendeskAccessInterceptor;->retryCounter:I

    .line 18
    invoke-virtual {p0, p1}, Lzendesk/core/ZendeskAccessInterceptor;->intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "Response was 409, failed to auth user."

    .line 19
    invoke-direct {p0, p1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->errorResponse(Lcom/shabakaty/downloader/w22$a;Ljava/lang/String;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1

    .line 20
    :cond_4
    iget-object v0, v0, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 21
    check-cast v0, Lzendesk/core/AuthenticationResponse;

    invoke-virtual {v0}, Lzendesk/core/AuthenticationResponse;->getAuthentication()Lzendesk/core/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v1, p0, Lzendesk/core/ZendeskAccessInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v1, v0}, Lzendesk/core/IdentityManager;->storeAccessToken(Lzendesk/core/AccessToken;)V

    .line 23
    :cond_5
    iput v3, p0, Lzendesk/core/ZendeskAccessInterceptor;->retryCounter:I

    .line 24
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "Response body was null, failed to auth user."

    .line 25
    invoke-direct {p0, p1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->errorResponse(Lcom/shabakaty/downloader/w22$a;Ljava/lang/String;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1

    .line 26
    :cond_7
    iget-object v4, p0, Lzendesk/core/ZendeskAccessInterceptor;->storage:Lzendesk/core/Storage;

    invoke-interface {v4}, Lzendesk/core/Storage;->clear()V

    .line 27
    invoke-static {v1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->getErrorLogMessage(Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v2, v0, v1}, Lcom/shabakaty/downloader/tk2;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-direct {p0, p1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->errorResponse(Lcom/shabakaty/downloader/w22$a;Ljava/lang/String;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1
.end method
