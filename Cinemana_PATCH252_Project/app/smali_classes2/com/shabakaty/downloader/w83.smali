.class public final Lcom/shabakaty/downloader/w83;
.super Ljava/lang/Object;
.source "JvmOkio.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l84;


# instance fields
.field public final r:Ljava/io/OutputStream;

.field public final s:Lcom/shabakaty/downloader/on4;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/shabakaty/downloader/on4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/w83;->r:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/shabakaty/downloader/w83;->s:Lcom/shabakaty/downloader/on4;

    return-void
.end method


# virtual methods
.method public b0(Lcom/shabakaty/downloader/zn;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p1, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/zy;->d(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/w83;->s:Lcom/shabakaty/downloader/on4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/on4;->f()V

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/zn;->r:Lcom/shabakaty/downloader/a04;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    iget v1, v0, Lcom/shabakaty/downloader/a04;->c:I

    iget v2, v0, Lcom/shabakaty/downloader/a04;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 6
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/w83;->r:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/shabakaty/downloader/a04;->a:[B

    iget v4, v0, Lcom/shabakaty/downloader/a04;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    iget v1, v0, Lcom/shabakaty/downloader/a04;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/a04;->b:I

    int-to-long v2, v2

    sub-long/2addr p2, v2

    .line 9
    iget-wide v4, p1, Lcom/shabakaty/downloader/zn;->s:J

    sub-long/2addr v4, v2

    .line 10
    iput-wide v4, p1, Lcom/shabakaty/downloader/zn;->s:J

    .line 11
    iget v2, v0, Lcom/shabakaty/downloader/a04;->c:I

    if-ne v1, v2, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a04;->a()Lcom/shabakaty/downloader/a04;

    move-result-object v1

    iput-object v1, p1, Lcom/shabakaty/downloader/zn;->r:Lcom/shabakaty/downloader/a04;

    .line 13
    invoke-static {v0}, Lcom/shabakaty/downloader/c04;->b(Lcom/shabakaty/downloader/a04;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w83;->r:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w83;->r:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w83;->s:Lcom/shabakaty/downloader/on4;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "sink("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/w83;->r:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
