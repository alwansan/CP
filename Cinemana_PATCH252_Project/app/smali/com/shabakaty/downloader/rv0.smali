.class public final Lcom/shabakaty/downloader/rv0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/se0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/rv0;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rv0;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/views/DownloadButton;->s:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/se0;

    :goto_0
    return-object v0
.end method
