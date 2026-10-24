.class public Lcom/facebook/internal/logging/monitor/MonitorManager;
.super Ljava/lang/Object;
.source "MonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;
    }
.end annotation


# static fields
.field public static a:Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/internal/logging/monitor/MonitorManager$1;

    invoke-direct {v0}, Lcom/facebook/internal/logging/monitor/MonitorManager$1;-><init>()V

    sput-object v0, Lcom/facebook/internal/logging/monitor/MonitorManager;->a:Lcom/facebook/internal/logging/monitor/MonitorManager$MonitorCreator;

    return-void
.end method
