.class public Lcom/facebook/appevents/AppEventsManager$1$3;
.super Ljava/lang/Object;
.source "AppEventsManager.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsManager$1;->b(Lcom/facebook/internal/FetchedAppSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/AppEventsManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/facebook/appevents/ml/ModelManager;->a:Ljava/util/Map;

    .line 2
    new-instance p1, Lcom/facebook/appevents/ml/ModelManager$1;

    invoke-direct {p1}, Lcom/facebook/appevents/ml/ModelManager$1;-><init>()V

    invoke-static {p1}, Lcom/facebook/internal/Utility;->E(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
