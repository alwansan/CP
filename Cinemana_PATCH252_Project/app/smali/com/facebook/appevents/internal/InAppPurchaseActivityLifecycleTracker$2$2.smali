.class public Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2$2;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 2
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 3
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    .line 4
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->g:Ljava/lang/Object;

    const-string v2, "inapp"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->d(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 7
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->g:Ljava/lang/Object;

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "com.android.vending.billing.IInAppBillingService"

    .line 9
    invoke-static {v0, v5}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, "getPurchaseHistory"

    .line 10
    invoke-static {v6, v7}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-nez v6, :cond_2

    :goto_0
    move-object v1, v3

    goto/16 :goto_8

    .line 11
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->f(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x6

    .line 13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    sget-object v12, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->c:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aput-object v2, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    const/4 v8, 0x4

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    aput-object v12, v11, v8

    .line 14
    invoke-static {v0, v5, v7, v1, v11}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v14, 0x3e8

    div-long/2addr v11, v14

    .line 16
    check-cast v8, Landroid/os/Bundle;

    const-string v6, "RESPONSE_CODE"

    .line 17
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    .line 18
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_5

    .line 19
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/String;

    .line 20
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v14, "purchaseTime"

    .line 21
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v17, 0x3e8

    :try_start_2
    div-long v14, v14, v17

    sub-long v14, v11, v14

    const-wide/16 v19, 0x4b0

    cmp-long v4, v14, v19

    if-lez v4, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    .line 22
    :cond_4
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_0
    const-wide/16 v17, 0x3e8

    goto :goto_3

    :catch_1
    move-wide/from16 v17, v14

    :catch_2
    :goto_3
    move-wide/from16 v14, v17

    const/4 v4, 0x0

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    const-string v4, "INAPP_CONTINUATION_TOKEN"

    .line 23
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v8, 0x0

    :goto_6
    const/16 v4, 0x1e

    if-ge v9, v4, :cond_8

    if-eqz v8, :cond_8

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 24
    :cond_8
    :goto_7
    invoke-static {v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_9
    :goto_8
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method
