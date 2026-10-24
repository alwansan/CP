.class public final Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 2
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 3
    sget-object p1, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 4
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"

    const-string v2, "asInterface"

    .line 5
    invoke-static {p1, v1, v2, p2, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    sput-object p1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->g:Ljava/lang/Object;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
