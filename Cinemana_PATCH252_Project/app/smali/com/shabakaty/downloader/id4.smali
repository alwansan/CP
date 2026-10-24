.class public Lcom/shabakaty/downloader/id4;
.super Ljava/lang/Object;
.source "StillCaptureFlow.java"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/shabakaty/downloader/hd4;

    invoke-static {v0}, Lcom/shabakaty/downloader/ts0;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/zk3;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hd4;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/id4;->a:Z

    return-void
.end method
