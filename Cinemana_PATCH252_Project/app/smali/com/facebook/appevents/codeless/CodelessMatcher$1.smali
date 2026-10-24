.class public Lcom/facebook/appevents/codeless/CodelessMatcher$1;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/facebook/appevents/codeless/CodelessMatcher;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/codeless/CodelessMatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$1;->r:Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$1;->r:Lcom/facebook/appevents/codeless/CodelessMatcher;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->c()V

    return-void
.end method
