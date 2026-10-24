.class public Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;
.super Lcom/shabakaty/downloader/di1;
.source "RtspMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/di1;-><init>(Lcom/shabakaty/downloader/nn4;)V

    return-void
.end method


# virtual methods
.method public g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/di1;->g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Lcom/shabakaty/downloader/nn4$b;->f:Z

    return-object p2
.end method

.method public o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/di1;->o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Lcom/shabakaty/downloader/nn4$c;->l:Z

    return-object p2
.end method
