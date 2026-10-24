.class public final Lcom/shabakaty/downloader/zz0;
.super Lcom/shabakaty/downloader/xk;
.source "DownloadsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/sz0;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/jw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jw0;)V
    .locals 1

    const-string v0, "downloadDao"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zz0;->f:Lcom/shabakaty/downloader/jw0;

    return-void
.end method
