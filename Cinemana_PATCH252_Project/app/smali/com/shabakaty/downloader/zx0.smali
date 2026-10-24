.class public final Lcom/shabakaty/downloader/zx0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadItemsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/by0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/by0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/zx0;->r:Lcom/shabakaty/downloader/by0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/zx0;->r:Lcom/shabakaty/downloader/by0;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/by0;->g:Lcom/shabakaty/downloader/gz0;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/by0;->m()V

    .line 5
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
