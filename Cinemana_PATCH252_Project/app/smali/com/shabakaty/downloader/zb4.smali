.class public final Lcom/shabakaty/downloader/zb4;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/shabakaty/downloader/p91;


# instance fields
.field public final r:J

.field public final s:Lcom/shabakaty/downloader/p91;


# direct methods
.method public constructor <init>(JLcom/shabakaty/downloader/p91;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/zb4;->r:J

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/zb4;->s:Lcom/shabakaty/downloader/p91;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zb4;->s:Lcom/shabakaty/downloader/p91;

    invoke-interface {v0}, Lcom/shabakaty/downloader/p91;->b()V

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/vz3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zb4;->s:Lcom/shabakaty/downloader/p91;

    new-instance v1, Lcom/shabakaty/downloader/zb4$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/zb4$a;-><init>(Lcom/shabakaty/downloader/zb4;Lcom/shabakaty/downloader/vz3;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    return-void
.end method

.method public h(II)Lcom/shabakaty/downloader/fp4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zb4;->s:Lcom/shabakaty/downloader/p91;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    return-object p1
.end method
