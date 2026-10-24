.class public final Lcom/facebook/internal/FeatureManager$1;
.super Ljava/lang/Object;
.source "FeatureManager.java"

# interfaces
.implements Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/internal/FeatureManager$Callback;

.field public final synthetic b:Lcom/facebook/internal/FeatureManager$Feature;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/FeatureManager$Callback;Lcom/facebook/internal/FeatureManager$Feature;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/FeatureManager$1;->a:Lcom/facebook/internal/FeatureManager$Callback;

    iput-object p2, p0, Lcom/facebook/internal/FeatureManager$1;->b:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/FeatureManager$1;->a:Lcom/facebook/internal/FeatureManager$Callback;

    iget-object v1, p0, Lcom/facebook/internal/FeatureManager$1;->b:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v1}, Lcom/facebook/internal/FeatureManager;->c(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/FeatureManager$Callback;->a(Z)V

    return-void
.end method
