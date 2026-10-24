.class Lzendesk/core/ZendeskSettingsInterceptor;
.super Ljava/lang/Object;
.source "ZendeskSettingsInterceptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SettingsInterceptor"


# instance fields
.field private final provider:Lzendesk/core/SdkSettingsProviderInternal;

.field private settingsStorage:Lzendesk/core/SettingsStorage;


# direct methods
.method public constructor <init>(Lzendesk/core/SdkSettingsProviderInternal;Lzendesk/core/SettingsStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskSettingsInterceptor;->provider:Lzendesk/core/SdkSettingsProviderInternal;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskSettingsInterceptor;->settingsStorage:Lzendesk/core/SettingsStorage;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsInterceptor;->settingsStorage:Lzendesk/core/SettingsStorage;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Lzendesk/core/SettingsStorage;->areSettingsUpToDate(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SettingsInterceptor"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "Requesting SDK settings."

    .line 2
    invoke-static {v2, v3, v0}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsInterceptor;->provider:Lzendesk/core/SdkSettingsProviderInternal;

    invoke-interface {v0}, Lzendesk/core/SdkSettingsProviderInternal;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Retrieved settings are null. Returning 404."

    .line 4
    invoke-static {v2, v1, v0}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ws3$a;-><init>()V

    sget-object v1, Lcom/shabakaty/downloader/mj3;->v:Lcom/shabakaty/downloader/mj3;

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ws3$a;->g(Lcom/shabakaty/downloader/mj3;)Lcom/shabakaty/downloader/ws3$a;

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ws3$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    const/16 p1, 0x194

    .line 11
    iput p1, v0, Lcom/shabakaty/downloader/ws3$a;->c:I

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Proceeding with chain."

    .line 13
    invoke-static {v2, v1, v0}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1
.end method
