.class Lcom/shabakaty/cinemana/ca1/StorageMaintenance152$1;
.super Ljava/lang/Object;
.source "StorageMaintenance152.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/StorageMaintenance152;->scanSoon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 30
    const-wide/16 v0, 0x7d00

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 31
    :goto_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StorageMaintenance152;->scan()V

    .line 32
    return-void
.end method
