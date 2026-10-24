.class public Lcom/facebook/appevents/AppEventsManager$1$1;
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
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/facebook/appevents/aam/MetadataIndexer;->a:Ljava/lang/Boolean;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/facebook/appevents/aam/MetadataIndexer$1;

    invoke-direct {v0}, Lcom/facebook/appevents/aam/MetadataIndexer$1;-><init>()V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object p1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    :cond_0
    :goto_0
    return-void
.end method
