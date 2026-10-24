.class public final Lcom/facebook/UserSettingsManager$1;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/UserSettingsManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/UserSettingsManager$1;->r:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/facebook/UserSettingsManager;->e:Lcom/facebook/UserSettingsManager$UserSetting;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/UserSettingsManager$UserSetting;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 4
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 5
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->f(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v0, v0, Lcom/facebook/internal/FetchedAppSettings;->h:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 9
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Lcom/facebook/internal/AttributionIdentifiers;->c(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 13
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "advertiser_id"

    .line 15
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fields"

    const-string v4, "auto_event_setup_enabled"

    .line 16
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 18
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 19
    invoke-static {v2, v0, v2}, Lcom/facebook/GraphRequest;->l(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, v0, Lcom/facebook/GraphRequest;->i:Z

    .line 21
    iput-object v3, v0, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 22
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->d()Lcom/facebook/GraphResponse;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/facebook/GraphResponse;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 24
    sget-object v2, Lcom/facebook/UserSettingsManager;->f:Lcom/facebook/UserSettingsManager$UserSetting;

    .line 25
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/UserSettingsManager$UserSetting;->b:Ljava/lang/Boolean;

    .line 26
    sget-object v0, Lcom/facebook/UserSettingsManager;->f:Lcom/facebook/UserSettingsManager$UserSetting;

    .line 27
    iget-wide v2, p0, Lcom/facebook/UserSettingsManager$1;->r:J

    iput-wide v2, v0, Lcom/facebook/UserSettingsManager$UserSetting;->d:J

    .line 28
    invoke-static {v0}, Lcom/facebook/UserSettingsManager;->f(Lcom/facebook/UserSettingsManager$UserSetting;)V

    .line 29
    :cond_1
    sget-object v0, Lcom/facebook/UserSettingsManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
