.class public final Lcom/facebook/appevents/codeless/CodelessManager;
.super Ljava/lang/Object;
.source "CodelessManager.java"


# static fields
.field public static final a:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

.field public static b:Landroid/hardware/SensorManager;

.field public static c:Lcom/facebook/appevents/codeless/ViewIndexer;

.field public static d:Ljava/lang/String;

.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static f:Ljava/lang/Boolean;

.field public static volatile g:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;-><init>()V

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->a:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->f:Ljava/lang/Boolean;

    .line 4
    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->g:Ljava/lang/Boolean;

    return-void
.end method
