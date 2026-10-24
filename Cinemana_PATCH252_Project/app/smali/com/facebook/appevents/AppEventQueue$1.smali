.class public final Lcom/facebook/appevents/AppEventQueue$1;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventQueue;
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
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl;->a()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 3
    sget-object v0, Lcom/facebook/appevents/FlushReason;->s:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->a(Lcom/facebook/appevents/FlushReason;)V

    return-void
.end method
