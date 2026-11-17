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
    .locals 0
    # Clear before scanning: events arriving during a pass can enqueue a second pass.
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StorageMaintenance152;->dlClearPending()V
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StorageMaintenance152;->scan()V
    return-void
.end method
