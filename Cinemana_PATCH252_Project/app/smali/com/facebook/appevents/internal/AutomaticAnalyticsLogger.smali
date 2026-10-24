.class public Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/InternalAppEventsLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/appevents/InternalAppEventsLogger;

    .line 2
    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 4
    sget-object v1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->a:Lcom/facebook/appevents/InternalAppEventsLogger;

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 2
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 3
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->b(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-boolean v0, v0, Lcom/facebook/internal/FetchedAppSettings;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
