.class public final Lcom/shabakaty/downloader/o11;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lcom/shabakaty/downloader/fp4;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/o11;->a:[B

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/shabakaty/downloader/ka3;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/ep4;->b(Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/ka3;I)V

    return-void
.end method

.method public b(JIIILcom/shabakaty/downloader/fp4$a;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/ka3;II)V
    .locals 0

    .line 1
    iget p3, p1, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    return-void
.end method

.method public synthetic d(Lcom/shabakaty/downloader/rl0;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ep4;->a(Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/rl0;IZ)I

    move-result p1

    return p1
.end method

.method public e(Lcom/shabakaty/downloader/rl0;IZI)I
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/shabakaty/downloader/o11;->a:[B

    array-length p4, p4

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2
    iget-object p4, p0, Lcom/shabakaty/downloader/o11;->a:[B

    const/4 v0, 0x0

    invoke-interface {p1, p4, v0, p2}, Lcom/shabakaty/downloader/rl0;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method

.method public f(Lcom/shabakaty/downloader/wh1;)V
    .locals 0

    return-void
.end method
