.class public Lcom/facebook/appevents/codeless/ViewIndexer$2;
.super Ljava/lang/Object;
.source "ViewIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/ViewIndexer;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Ljava/util/TimerTask;

.field public final synthetic s:Lcom/facebook/appevents/codeless/ViewIndexer;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/TimerTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->s:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->r:Ljava/util/TimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->s:Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 2
    iget-object v0, v0, Lcom/facebook/appevents/codeless/ViewIndexer;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->s:Lcom/facebook/appevents/codeless/ViewIndexer;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/facebook/appevents/codeless/ViewIndexer;->d:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 7
    iput-object v1, v0, Lcom/facebook/appevents/codeless/ViewIndexer;->c:Ljava/util/Timer;

    .line 8
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->s:Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 9
    iget-object v1, v0, Lcom/facebook/appevents/codeless/ViewIndexer;->c:Ljava/util/Timer;

    .line 10
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$2;->r:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "com.facebook.appevents.codeless.ViewIndexer"

    const-string v2, "Error scheduling indexing job"

    .line 11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
