.class public Lcom/shabakaty/downloader/ae4;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final r:Ljava/io/InputStream;

.field public final s:Ljava/nio/charset/Charset;

.field public t:[B

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/qy4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ae4;->r:Ljava/io/InputStream;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ae4;->s:Ljava/nio/charset/Charset;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ae4;->t:[B

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ae4;->r:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/shabakaty/downloader/ae4;->t:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iput v3, p0, Lcom/shabakaty/downloader/ae4;->u:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/ae4;->v:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ae4;->r:Ljava/io/InputStream;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ae4;->t:[B

    if-eqz v1, :cond_7

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/ae4;->u:I

    iget v2, p0, Lcom/shabakaty/downloader/ae4;->v:I

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ae4;->a()V

    .line 5
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/ae4;->u:I

    :goto_0
    iget v2, p0, Lcom/shabakaty/downloader/ae4;->v:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/ae4;->t:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_2

    .line 7
    iget v3, p0, Lcom/shabakaty/downloader/ae4;->u:I

    if-eq v1, v3, :cond_1

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v2, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 8
    :goto_1
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v3

    iget-object v6, p0, Lcom/shabakaty/downloader/ae4;->s:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, p0, Lcom/shabakaty/downloader/ae4;->u:I

    .line 10
    monitor-exit v0

    return-object v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/ae4$a;

    iget v2, p0, Lcom/shabakaty/downloader/ae4;->v:I

    iget v4, p0, Lcom/shabakaty/downloader/ae4;->u:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/ae4$a;-><init>(Lcom/shabakaty/downloader/ae4;I)V

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/ae4;->t:[B

    iget v4, p0, Lcom/shabakaty/downloader/ae4;->u:I

    iget v5, p0, Lcom/shabakaty/downloader/ae4;->v:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lcom/shabakaty/downloader/ae4;->v:I

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ae4;->a()V

    .line 15
    iget v2, p0, Lcom/shabakaty/downloader/ae4;->u:I

    :goto_2
    iget v4, p0, Lcom/shabakaty/downloader/ae4;->v:I

    if-eq v2, v4, :cond_4

    .line 16
    iget-object v4, p0, Lcom/shabakaty/downloader/ae4;->t:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_6

    .line 17
    iget v3, p0, Lcom/shabakaty/downloader/ae4;->u:I

    if-eq v2, v3, :cond_5

    sub-int v5, v2, v3

    .line 18
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 19
    iput v2, p0, Lcom/shabakaty/downloader/ae4;->u:I

    .line 20
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ae4$a;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 21
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ae4;->r:Ljava/io/InputStream;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ae4;->t:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/ae4;->t:[B

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ae4;->r:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
