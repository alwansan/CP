.class public Lcom/shabakaty/downloader/eh0$a;
.super Lcom/shabakaty/downloader/ww1$a;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/eh0;->b(Lcom/shabakaty/downloader/ml3;)Lcom/shabakaty/downloader/np4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/eh0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ww1$a;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
