.class public final Lcom/shabakaty/downloader/v51;
.super Lcom/shabakaty/downloader/w64;
.source "EventMessageDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/w64;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/ys2;Ljava/nio/ByteBuffer;)Lcom/shabakaty/downloader/ps2;
    .locals 3

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/ps2;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/ps2$b;

    new-instance v1, Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-direct {v1, v2, p2}, Lcom/shabakaty/downloader/ka3;-><init>([BI)V

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/v51;->c(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/u51;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/u51;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->n()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->n()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v3

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v5

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 8
    iget v7, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 9
    iget p1, p1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 10
    invoke-static {v0, v7, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/u51;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/u51;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object p1
.end method
