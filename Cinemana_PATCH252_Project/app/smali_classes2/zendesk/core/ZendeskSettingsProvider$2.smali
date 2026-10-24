.class Lzendesk/core/ZendeskSettingsProvider$2;
.super Lcom/shabakaty/downloader/n95;
.source "ZendeskSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/core/ZendeskSettingsProvider;->getSettingsForSdk(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/n95;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/n95<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/shabakaty/downloader/z92;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/core/ZendeskSettingsProvider;

.field public final synthetic val$callback:Lcom/shabakaty/downloader/n95;

.field public final synthetic val$key:Ljava/lang/String;

.field public final synthetic val$sdkSettingsClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskSettingsProvider;Lcom/shabakaty/downloader/n95;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/core/ZendeskSettingsProvider$2;->this$0:Lzendesk/core/ZendeskSettingsProvider;

    iput-object p2, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$callback:Lcom/shabakaty/downloader/n95;

    iput-object p3, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$sdkSettingsClass:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/shabakaty/downloader/n95;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/shabakaty/downloader/z41;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$callback:Lcom/shabakaty/downloader/n95;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider$2;->this$0:Lzendesk/core/ZendeskSettingsProvider;

    invoke-static {v0}, Lzendesk/core/ZendeskSettingsProvider;->access$100(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/SettingsStorage;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/core/SettingsStorage;->hasStoredSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Lzendesk/core/SettingsPack;

    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider$2;->this$0:Lzendesk/core/ZendeskSettingsProvider;

    .line 4
    invoke-static {v0}, Lzendesk/core/ZendeskSettingsProvider;->access$200(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/CoreSettingsStorage;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/core/CoreSettingsStorage;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v0

    iget-object v1, p0, Lzendesk/core/ZendeskSettingsProvider$2;->this$0:Lzendesk/core/ZendeskSettingsProvider;

    .line 5
    invoke-static {v1}, Lzendesk/core/ZendeskSettingsProvider;->access$100(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/SettingsStorage;

    move-result-object v1

    iget-object v2, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$sdkSettingsClass:Ljava/lang/Class;

    invoke-interface {v1, v2, v3}, Lzendesk/core/SettingsStorage;->getSettings(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/Settings;

    invoke-direct {p1, v0, v1}, Lzendesk/core/SettingsPack;-><init>(Lzendesk/core/CoreSettings;Lzendesk/core/Settings;)V

    .line 6
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n95;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lzendesk/core/ZendeskSettingsProvider$2;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/z92;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider$2;->this$0:Lzendesk/core/ZendeskSettingsProvider;

    invoke-static {v0}, Lzendesk/core/ZendeskSettingsProvider;->access$000(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-interface {v0, p1}, Lzendesk/core/ActionHandlerRegistry;->updateSettings(Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider$2;->this$0:Lzendesk/core/ZendeskSettingsProvider;

    invoke-static {v0}, Lzendesk/core/ZendeskSettingsProvider;->access$100(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/SettingsStorage;

    move-result-object v0

    invoke-interface {v0, p1}, Lzendesk/core/SettingsStorage;->storeRawSettings(Ljava/util/Map;)V

    .line 4
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$callback:Lcom/shabakaty/downloader/n95;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lzendesk/core/SettingsPack;

    iget-object v1, p0, Lzendesk/core/ZendeskSettingsProvider$2;->this$0:Lzendesk/core/ZendeskSettingsProvider;

    .line 6
    invoke-virtual {v1, p1}, Lzendesk/core/ZendeskSettingsProvider;->extractCoreSettings(Ljava/util/Map;)Lzendesk/core/CoreSettings;

    move-result-object v1

    iget-object v2, p0, Lzendesk/core/ZendeskSettingsProvider$2;->this$0:Lzendesk/core/ZendeskSettingsProvider;

    .line 7
    invoke-static {v2}, Lzendesk/core/ZendeskSettingsProvider;->access$300(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/Serializer;

    move-result-object v2

    iget-object v3, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$key:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$sdkSettingsClass:Ljava/lang/Class;

    invoke-interface {v2, p1, v3}, Lzendesk/core/Serializer;->deserialize(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/core/Settings;

    invoke-direct {v0, v1, p1}, Lzendesk/core/SettingsPack;-><init>(Lzendesk/core/CoreSettings;Lzendesk/core/Settings;)V

    .line 8
    iget-object p1, p0, Lzendesk/core/ZendeskSettingsProvider$2;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/n95;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
