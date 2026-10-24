.class public Lcom/shabakaty/downloader/ow0;
.super Ljava/util/concurrent/FutureTask;
.source "DownloadFutureTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/shabakaty/downloader/ry0;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/downloader/ow0;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ry0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ry0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ow0;->r:Lcom/shabakaty/downloader/ry0;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ow0;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ow0;->r:Lcom/shabakaty/downloader/ry0;

    iget v1, v0, Lcom/shabakaty/downloader/ry0;->r:I

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ow0;->r:Lcom/shabakaty/downloader/ry0;

    iget v2, p1, Lcom/shabakaty/downloader/ry0;->r:I

    if-ne v1, v2, :cond_0

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/ry0;->s:I

    iget p1, p1, Lcom/shabakaty/downloader/ry0;->s:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result p1

    invoke-static {v1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method
