.class public final Lcom/shabakaty/downloader/qj;
.super Ljava/lang/Object;
.source "BaseMediaChunkOutput.java"

# interfaces
.implements Lcom/shabakaty/downloader/a00$b;


# instance fields
.field public final a:[I

.field public final b:[Lcom/shabakaty/downloader/bx3;


# direct methods
.method public constructor <init>([I[Lcom/shabakaty/downloader/bx3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qj;->a:[I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/qj;->b:[Lcom/shabakaty/downloader/bx3;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qj;->b:[Lcom/shabakaty/downloader/bx3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-wide v4, v3, Lcom/shabakaty/downloader/bx3;->G:J

    cmp-long v6, v4, p1

    if-eqz v6, :cond_0

    .line 3
    iput-wide p1, v3, Lcom/shabakaty/downloader/bx3;->G:J

    const/4 v4, 0x1

    .line 4
    iput-boolean v4, v3, Lcom/shabakaty/downloader/bx3;->A:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(II)Lcom/shabakaty/downloader/fp4;
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qj;->a:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 2
    aget v0, v0, p1

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/qj;->b:[Lcom/shabakaty/downloader/bx3;

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x24

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unmatched track of type: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMediaChunkOutput"

    .line 5
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/o11;

    invoke-direct {p1}, Lcom/shabakaty/downloader/o11;-><init>()V

    return-object p1
.end method
