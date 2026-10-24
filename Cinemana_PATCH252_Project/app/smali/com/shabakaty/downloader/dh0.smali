.class public final Lcom/shabakaty/downloader/dh0;
.super Lcom/shabakaty/downloader/fh0;
.source "CustomTabsClient.java"


# instance fields
.field public final synthetic r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dh0;->r:Landroid/content/Context;

    invoke-direct {p0}, Lcom/shabakaty/downloader/fh0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;Lcom/shabakaty/downloader/eh0;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p2, v0, v1}, Lcom/shabakaty/downloader/eh0;->c(J)Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/dh0;->r:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
