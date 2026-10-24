.class public Lcom/shabakaty/downloader/oy0;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/my0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/my0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/oy0;->r:Lcom/shabakaty/downloader/my0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oy0;->r:Lcom/shabakaty/downloader/my0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/my0;->n:Lcom/shabakaty/downloader/q63;

    return-void
.end method
