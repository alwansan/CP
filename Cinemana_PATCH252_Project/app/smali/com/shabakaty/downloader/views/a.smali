.class public final Lcom/shabakaty/downloader/views/a;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/views/a;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/views/a;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    sget v1, Lcom/shabakaty/downloader/views/DownloadButton;->I:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    const-string v2, "injecting download button"

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/xk0;->a:Lcom/shabakaty/downloader/uy0;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    check-cast v1, Lcom/shabakaty/downloader/wk0;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/wk0;->f:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/uz0;

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/views/DownloadButton;->setDownloadsRepo$shabakaty_downloader_release(Lcom/shabakaty/downloader/uz0;)V

    .line 8
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
