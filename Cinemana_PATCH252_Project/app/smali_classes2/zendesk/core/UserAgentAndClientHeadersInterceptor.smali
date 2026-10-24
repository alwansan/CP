.class Lzendesk/core/UserAgentAndClientHeadersInterceptor;
.super Ljava/lang/Object;
.source "UserAgentAndClientHeadersInterceptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# instance fields
.field private final userAgent:Ljava/lang/String;

.field private final version:Ljava/lang/String;

.field private final zendeskClient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object p2, v1, v3

    const-string v3, "Zendesk-SDK/%s Android/%d Variant/%s"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzendesk/core/UserAgentAndClientHeadersInterceptor;->userAgent:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "mobile/android/sdk/%s"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzendesk/core/UserAgentAndClientHeadersInterceptor;->zendeskClient:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lzendesk/core/UserAgentAndClientHeadersInterceptor;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/vr3$a;-><init>(Lcom/shabakaty/downloader/vr3;)V

    const-string v0, "User-Agent"

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/vr3$a;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 5
    iget-object v2, p0, Lzendesk/core/UserAgentAndClientHeadersInterceptor;->userAgent:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/vr3$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    const-string v0, "X-Zendesk-Client"

    .line 6
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/vr3$a;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 7
    iget-object v2, p0, Lzendesk/core/UserAgentAndClientHeadersInterceptor;->zendeskClient:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/vr3$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    const-string v0, "X-Zendesk-Client-Version"

    .line 8
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/vr3$a;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 9
    iget-object v2, p0, Lzendesk/core/UserAgentAndClientHeadersInterceptor;->version:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/vr3$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1
.end method
