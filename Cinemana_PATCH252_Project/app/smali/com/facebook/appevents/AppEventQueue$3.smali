.class public final Lcom/facebook/appevents/AppEventQueue$3;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/facebook/appevents/FlushReason;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/FlushReason;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$3;->r:Lcom/facebook/appevents/FlushReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/AppEventQueue$3;->r:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->a(Lcom/facebook/appevents/FlushReason;)V

    return-void
.end method
