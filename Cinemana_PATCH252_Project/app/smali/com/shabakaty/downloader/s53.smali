.class public final Lcom/shabakaty/downloader/s53;
.super Lcom/shabakaty/downloader/c21;
.source "OffsetEdgeTreatment.java"


# instance fields
.field public final r:Lcom/shabakaty/downloader/c21;

.field public final s:F


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c21;F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/c21;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s53;->r:Lcom/shabakaty/downloader/c21;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/s53;->s:F

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s53;->r:Lcom/shabakaty/downloader/c21;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/c21;->c()Z

    move-result v0

    return v0
.end method

.method public h(FFFLcom/shabakaty/downloader/w44;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s53;->r:Lcom/shabakaty/downloader/c21;

    iget v1, p0, Lcom/shabakaty/downloader/s53;->s:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/c21;->h(FFFLcom/shabakaty/downloader/w44;)V

    return-void
.end method
