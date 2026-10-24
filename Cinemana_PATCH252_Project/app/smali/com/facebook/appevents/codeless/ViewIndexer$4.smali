.class public final Lcom/facebook/appevents/codeless/ViewIndexer$4;
.super Ljava/lang/Object;
.source "ViewIndexer.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/facebook/LoggingBehavior;->v:Lcom/facebook/LoggingBehavior;

    sget-object v0, Lcom/facebook/internal/Logger;->c:Ljava/util/HashMap;

    .line 2
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->g(Lcom/facebook/LoggingBehavior;)Z

    return-void
.end method
