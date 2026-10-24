.class public final Lcom/shabakaty/downloader/nb4;
.super Lcom/shabakaty/downloader/iq4;
.source "StaffInfoFragment.kt"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/iq4;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/iq4;->R(I)Lcom/shabakaty/downloader/iq4;

    const-wide/16 v0, 0x12c

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/iq4;->P(J)Lcom/shabakaty/downloader/iq4;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/y91;

    invoke-direct {v0}, Lcom/shabakaty/downloader/y91;-><init>()V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/iq4;->Q(Landroid/animation/TimeInterpolator;)Lcom/shabakaty/downloader/iq4;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ly;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ly;-><init>()V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ny;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ny;-><init>()V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    return-void
.end method
