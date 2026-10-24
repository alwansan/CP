.class public final Lcom/shabakaty/downloader/o12;
.super Ljava/lang/Object;
.source "JvmOkio.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r94;


# instance fields
.field public final r:Ljava/io/InputStream;

.field public final s:Lcom/shabakaty/downloader/on4;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/shabakaty/downloader/on4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o12;->r:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/shabakaty/downloader/o12;->s:Lcom/shabakaty/downloader/on4;

    return-void
.end method


# virtual methods
.method public C1(Lcom/shabakaty/downloader/zn;J)J
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ltz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/o12;->s:Lcom/shabakaty/downloader/on4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/on4;->f()V

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zn;->x(I)Lcom/shabakaty/downloader/a04;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/shabakaty/downloader/a04;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    .line 4
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/o12;->r:Ljava/io/InputStream;

    iget-object v1, v0, Lcom/shabakaty/downloader/a04;->a:[B

    iget v2, v0, Lcom/shabakaty/downloader/a04;->c:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    .line 6
    iget p2, v0, Lcom/shabakaty/downloader/a04;->b:I

    iget p3, v0, Lcom/shabakaty/downloader/a04;->c:I

    if-ne p2, p3, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/a04;->a()Lcom/shabakaty/downloader/a04;

    move-result-object p2

    iput-object p2, p1, Lcom/shabakaty/downloader/zn;->r:Lcom/shabakaty/downloader/a04;

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/c04;->b(Lcom/shabakaty/downloader/a04;)V

    :cond_2
    const-wide/16 p1, -0x1

    return-wide p1

    .line 9
    :cond_3
    iget p3, v0, Lcom/shabakaty/downloader/a04;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Lcom/shabakaty/downloader/a04;->c:I

    .line 10
    iget-wide v0, p1, Lcom/shabakaty/downloader/zn;->s:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 11
    iput-wide v0, p1, Lcom/shabakaty/downloader/zn;->s:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p2

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->A(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_4
    throw p1

    :cond_5
    const-string p1, "byteCount < 0: "

    .line 14
    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/kp0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o12;->r:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o12;->s:Lcom/shabakaty/downloader/on4;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "source("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/o12;->r:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
