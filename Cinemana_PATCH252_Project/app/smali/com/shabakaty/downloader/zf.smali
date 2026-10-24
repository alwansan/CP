.class public Lcom/shabakaty/downloader/zf;
.super Lcom/shabakaty/downloader/iq4;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/iq4;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/iq4;->R(I)Lcom/shabakaty/downloader/iq4;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/t91;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/t91;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    new-instance v1, Lcom/shabakaty/downloader/ly;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ly;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    new-instance v1, Lcom/shabakaty/downloader/t91;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/t91;-><init>(I)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    return-void
.end method
