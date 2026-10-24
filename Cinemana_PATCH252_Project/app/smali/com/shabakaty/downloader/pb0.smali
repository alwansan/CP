.class public final Lcom/shabakaty/downloader/pb0;
.super Lcom/shabakaty/downloader/ob0;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lcom/shabakaty/downloader/yz3;


# direct methods
.method public constructor <init>(JJLcom/shabakaty/downloader/hv2$a;)V
    .locals 7

    .line 1
    iget v5, p5, Lcom/shabakaty/downloader/hv2$a;->f:I

    iget v6, p5, Lcom/shabakaty/downloader/hv2$a;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/ob0;-><init>(JJII)V

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public d(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/ob0;->b:J

    iget v2, p0, Lcom/shabakaty/downloader/ob0;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/shabakaty/downloader/ob0;->b(JJI)J

    move-result-wide p1

    return-wide p1
.end method
