.class public final Lcom/facebook/appevents/ml/ModelManager$3;
.super Ljava/lang/Object;
.source "ModelManager.java"

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
    .locals 3

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/facebook/appevents/integrity/IntegrityManager;->a:Z

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 4
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FBSDKFeatureIntegritySample"

    .line 5
    invoke-static {v2, v0, v1}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/appevents/integrity/IntegrityManager;->b:Z

    return-void
.end method
