.class public final Lcom/facebook/FacebookSdk$3;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->j(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->E:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/internal/instrument/InstrumentManager$1;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/InstrumentManager$1;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 3
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->H:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/internal/instrument/InstrumentManager$2;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/InstrumentManager$2;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method
