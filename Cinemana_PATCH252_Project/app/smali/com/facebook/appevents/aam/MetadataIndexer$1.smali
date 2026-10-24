.class public final Lcom/facebook/appevents/aam/MetadataIndexer$1;
.super Ljava/lang/Object;
.source "MetadataIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 2
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 3
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/facebook/internal/AttributionIdentifiers;->c(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, v0, Lcom/facebook/internal/AttributionIdentifiers;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 6
    sget-object v0, Lcom/facebook/appevents/aam/MetadataIndexer;->a:Ljava/lang/Boolean;

    .line 7
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 8
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->f(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, v0, Lcom/facebook/internal/FetchedAppSettings;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    sget-object v1, Lcom/facebook/appevents/aam/MetadataRule;->d:Ljava/util/Set;

    .line 12
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/aam/MetadataRule;->d:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v1}, Lcom/facebook/appevents/aam/MetadataRule;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    sput-object v0, Lcom/facebook/appevents/aam/MetadataIndexer;->a:Ljava/lang/Boolean;

    :cond_3
    return-void
.end method
