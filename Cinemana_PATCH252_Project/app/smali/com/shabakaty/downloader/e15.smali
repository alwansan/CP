.class public final Lcom/shabakaty/downloader/e15;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoFragment.kt"

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
.field public final synthetic r:Lcom/shabakaty/downloader/d15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/e15;->r:Lcom/shabakaty/downloader/d15;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e15;->r:Lcom/shabakaty/downloader/d15;

    invoke-static {v0}, Lcom/shabakaty/downloader/d15;->i2(Lcom/shabakaty/downloader/d15;)Lcom/shabakaty/downloader/jl1;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    iget-object v0, v0, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/views/DownloadButton;->e()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
