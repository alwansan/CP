.class public Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;
.super Ljava/lang/Object;
.source "MonitorLoggingQueue.java"

# interfaces
.implements Lcom/facebook/internal/logging/LoggingCache;


# static fields
.field public static b:Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;

.field public static final c:Ljava/lang/Integer;


# instance fields
.field public a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/logging/monitor/MonitorLoggingQueue;->a:Ljava/util/Queue;

    return-void
.end method
