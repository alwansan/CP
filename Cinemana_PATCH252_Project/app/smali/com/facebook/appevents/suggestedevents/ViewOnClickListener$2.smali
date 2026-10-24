.class public Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;
.super Ljava/lang/Object;
.source "ViewOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lorg/json/JSONObject;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->u:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    iput-object p2, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->r:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 2
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 3
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 5
    sget-object v1, Lcom/facebook/FacebookSdk;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 7
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v2, :cond_1

    .line 8
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v1, ""

    .line 11
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->r:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->a(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->u:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    .line 14
    iget-object v3, v3, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->u:Ljava/lang/String;

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_2

    return-void

    .line 16
    :cond_2
    sget-object v2, Lcom/facebook/appevents/ml/ModelManager$Task;->s:Lcom/facebook/appevents/ml/ModelManager$Task;

    const/4 v3, 0x1

    new-array v4, v3, [[F

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    .line 17
    invoke-static {v2, v4, v3}, Lcom/facebook/appevents/ml/ModelManager;->c(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 18
    :cond_3
    aget-object v0, v0, v5

    .line 19
    iget-object v2, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->t:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "other"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 21
    iget-object v2, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->s:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->a(Ljava/lang/String;Ljava/lang/String;[F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    return-void
.end method
