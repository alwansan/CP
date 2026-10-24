.class public Lzendesk/support/ZendeskHelpCenterSettingsProvider;
.super Ljava/lang/Object;
.source "ZendeskHelpCenterSettingsProvider.java"

# interfaces
.implements Lzendesk/support/HelpCenterSettingsProvider;


# instance fields
.field public final deviceLocale:Ljava/util/Locale;

.field public final localeConverter:Lzendesk/core/ZendeskLocaleConverter;

.field public final sdkSettingsProvider:Lzendesk/core/SettingsProvider;


# direct methods
.method public constructor <init>(Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterSettingsProvider;->sdkSettingsProvider:Lzendesk/core/SettingsProvider;

    .line 3
    iput-object p2, p0, Lzendesk/support/ZendeskHelpCenterSettingsProvider;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    .line 4
    iput-object p3, p0, Lzendesk/support/ZendeskHelpCenterSettingsProvider;->deviceLocale:Ljava/util/Locale;

    return-void
.end method

.method public static synthetic access$000(Lzendesk/support/ZendeskHelpCenterSettingsProvider;Lzendesk/support/HelpCenterSettings;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterSettingsProvider;->logIfLocaleNotAvailable(Lzendesk/support/HelpCenterSettings;)V

    return-void
.end method


# virtual methods
.method public getSettings(Lcom/shabakaty/downloader/n95;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n95<",
            "Lzendesk/support/HelpCenterSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterSettingsProvider;->sdkSettingsProvider:Lzendesk/core/SettingsProvider;

    const-class v1, Lzendesk/support/HelpCenterSettings;

    new-instance v2, Lzendesk/support/ZendeskHelpCenterSettingsProvider$1;

    invoke-direct {v2, p0, p1}, Lzendesk/support/ZendeskHelpCenterSettingsProvider$1;-><init>(Lzendesk/support/ZendeskHelpCenterSettingsProvider;Lcom/shabakaty/downloader/n95;)V

    const-string p1, "help_center"

    invoke-interface {v0, p1, v1, v2}, Lzendesk/core/SettingsProvider;->getSettingsForSdk(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/n95;)V

    return-void
.end method

.method public final logIfLocaleNotAvailable(Lzendesk/support/HelpCenterSettings;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lzendesk/support/HelpCenterSettings;->getLocale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lzendesk/support/HelpCenterSettings;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterSettingsProvider;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    iget-object v2, p0, Lzendesk/support/ZendeskHelpCenterSettingsProvider;->deviceLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 5
    invoke-virtual {p1}, Lzendesk/support/HelpCenterSettings;->isEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "HelpCenterSettingsProvider"

    const-string v1, "No support for %s, Help Center is %s in your application settings"

    .line 6
    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
