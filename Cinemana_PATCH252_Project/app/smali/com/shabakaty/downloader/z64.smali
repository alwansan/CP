.class public abstract Lcom/shabakaty/downloader/z64;
.super Lcom/shabakaty/downloader/r64;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lcom/shabakaty/downloader/cg4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/r64<",
        "Lcom/shabakaty/downloader/lg4;",
        "Lcom/shabakaty/downloader/mg4;",
        "Lcom/shabakaty/downloader/dg4;",
        ">;",
        "Lcom/shabakaty/downloader/cg4;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 p1, 0x2

    new-array v0, p1, [Lcom/shabakaty/downloader/lg4;

    new-array p1, p1, [Lcom/shabakaty/downloader/mg4;

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/r64;-><init>([Lcom/shabakaty/downloader/bn0;[Lcom/shabakaty/downloader/q83;)V

    .line 2
    iget p1, p0, Lcom/shabakaty/downloader/r64;->g:I

    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->e:[Lcom/shabakaty/downloader/bn0;

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/r64;->e:[Lcom/shabakaty/downloader/bn0;

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const/16 v3, 0x400

    .line 4
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/bn0;->J(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 0

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/bn0;Lcom/shabakaty/downloader/q83;Z)Lcom/shabakaty/downloader/an0;
    .locals 6

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/lg4;

    check-cast p2, Lcom/shabakaty/downloader/mg4;

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/shabakaty/downloader/z64;->k([BIZ)Lcom/shabakaty/downloader/bg4;

    move-result-object v3

    .line 5
    iget-wide v1, p1, Lcom/shabakaty/downloader/bn0;->v:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/lg4;->z:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/mg4;->J(JLcom/shabakaty/downloader/bg4;J)V

    .line 6
    iget p1, p2, Lcom/shabakaty/downloader/ao;->r:I

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    iput p1, p2, Lcom/shabakaty/downloader/ao;->r:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/dg4; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-object p1
.end method

.method public abstract k([BIZ)Lcom/shabakaty/downloader/bg4;
.end method
