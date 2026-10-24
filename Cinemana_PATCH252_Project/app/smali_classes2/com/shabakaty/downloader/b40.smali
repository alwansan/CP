.class public Lcom/shabakaty/downloader/b40;
.super Lcom/shabakaty/downloader/ce0;
.source "CloseFrame.java"


# instance fields
.field public h:I

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/rl1$a;->w:Lcom/shabakaty/downloader/rl1$a;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/ce0;-><init>(Lcom/shabakaty/downloader/rl1$a;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b40;->f()V

    const/16 v0, 0x3e8

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/b40;->h:I

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b40;->f()V

    return-void
.end method


# virtual methods
.method public c()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/b40;->h:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sl1;->c:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ce0;->d()V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/b40;->h:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/l32;

    const-string v2, "Received text is no valid utf8 string!"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v1, 0x3ea

    const/16 v2, 0x3ed

    if-ne v0, v2, :cond_3

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/l32;

    const-string v2, "A close frame must have a closecode if it has a reason"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    :goto_1
    iget v0, p0, Lcom/shabakaty/downloader/b40;->h:I

    const/16 v3, 0x3f3

    const/16 v4, 0x3f7

    if-le v0, v3, :cond_5

    const/16 v3, 0xbb8

    if-ge v0, v3, :cond_5

    if-ne v0, v4, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/l32;

    const-string v2, "Trying to send an illegal close code!"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_6

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_6

    const/16 v1, 0x1387

    if-gt v0, v1, :cond_6

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_6

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_6

    return-void

    .line 8
    :cond_6
    new-instance v0, Lcom/shabakaty/downloader/m32;

    const-string v1, "closecode must not be sent over the wire: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/b40;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/m32;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/16 v0, 0x3ed

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/b40;->h:I

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x3e8

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/b40;->h:I

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 p1, 0x3ea

    .line 7
    iput p1, p0, Lcom/shabakaty/downloader/b40;->h:I

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x4

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/b40;->h:I

    .line 14
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    const/16 v0, 0x3ef

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2
    :try_end_0
    .catch Lcom/shabakaty/downloader/l32; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    invoke-static {p1}, Lcom/shabakaty/downloader/gz;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catch Lcom/shabakaty/downloader/l32; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 19
    :catch_0
    :try_start_3
    new-instance v1, Lcom/shabakaty/downloader/l32;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/l32;-><init>(I)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :goto_0
    :try_start_4
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
    :try_end_4
    .catch Lcom/shabakaty/downloader/l32; {:try_start_4 .. :try_end_4} :catch_1

    .line 21
    :catch_1
    iput v0, p0, Lcom/shabakaty/downloader/b40;->h:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;

    sget-object v1, Lcom/shabakaty/downloader/gz;->a:Ljava/nio/charset/CodingErrorAction;

    :try_start_0
    const-string v1, "UTF8"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x4

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/b40;->h:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    array-length v3, v0

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 10
    iput-object v2, p0, Lcom/shabakaty/downloader/sl1;->c:Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/shabakaty/downloader/sl1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/b40;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
