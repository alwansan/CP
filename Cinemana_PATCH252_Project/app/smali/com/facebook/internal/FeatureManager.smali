.class public final Lcom/facebook/internal/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FeatureManager$Callback;,
        Lcom/facebook/internal/FeatureManager$Feature;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/FeatureManager$Feature;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FeatureManager;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/internal/FeatureManager$1;

    invoke-direct {v0, p1, p0}, Lcom/facebook/internal/FeatureManager$1;-><init>(Lcom/facebook/internal/FeatureManager$Callback;Lcom/facebook/internal/FeatureManager$Feature;)V

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->c(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V

    return-void
.end method

.method public static b(Lcom/facebook/internal/FeatureManager$Feature;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->h()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 4
    sget-object v1, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 5
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Lcom/facebook/internal/FeatureManager$Feature;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->s:Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->t:Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    return v2

    .line 3
    :cond_1
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 4
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 5
    sget-object v0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    const-string v3, "com.facebook.internal.FEATURE_MANAGER"

    .line 6
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "8.1.0"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 9
    :cond_2
    iget v0, p0, Lcom/facebook/internal/FeatureManager$Feature;->r:I

    and-int/lit16 v3, v0, 0xff

    if-lez v3, :cond_3

    and-int/lit16 v0, v0, -0x100

    .line 10
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->f(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v3, 0xff00

    and-int/2addr v3, v0

    if-lez v3, :cond_4

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    .line 11
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->f(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/high16 v3, 0xff0000

    and-int/2addr v3, v0

    if-lez v3, :cond_5

    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    .line 12
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->f(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {v1}, Lcom/facebook/internal/FeatureManager$Feature;->f(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    :goto_0
    if-ne v0, p0, :cond_6

    .line 14
    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->b(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result p0

    return p0

    .line 15
    :cond_6
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager;->c(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->b(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method
