.class public abstract Lcom/shabakaty/downloader/b01;
.super Ljava/lang/Object;
.source "Draft.java"


# instance fields
.field public a:I

.field public b:Lcom/shabakaty/downloader/rl1$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/b01;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/b01;->b:Lcom/shabakaty/downloader/rl1$a;

    return-void
.end method

.method public static l(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x30

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v5, 0xd

    if-ne v1, v5, :cond_0

    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v4

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sget-object v1, Lcom/shabakaty/downloader/gz;->a:Ljava/nio/charset/CodingErrorAction;

    .line 9
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-direct {v4, p0, v3, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v4

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abstract a(Lcom/shabakaty/downloader/q30;Lcom/shabakaty/downloader/e14;)I
.end method

.method public abstract b(Lcom/shabakaty/downloader/q30;)I
.end method

.method public c(I)I
    .locals 2

    if-ltz p1, :cond_0

    return p1

    .line 1
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/l32;

    const/16 v0, 0x3ea

    const-string v1, "Negative count"

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public abstract d()Lcom/shabakaty/downloader/b01;
.end method

.method public abstract e(Lcom/shabakaty/downloader/rl1;)Ljava/nio/ByteBuffer;
.end method

.method public abstract f(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/rl1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/rl1;",
            ">;"
        }
    .end annotation
.end method

.method public h(Lcom/shabakaty/downloader/ls1;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ls1;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/q30;

    if-eqz v0, :cond_0

    const-string v0, "GET "

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/q30;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q30;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " HTTP/1.1"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/e14;

    if-eqz v0, :cond_4

    const-string v0, "HTTP/1.1 101 "

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/e14;

    invoke-interface {v0}, Lcom/shabakaty/downloader/e14;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "\r\n"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/ls1;->b()Ljava/util/Iterator;

    move-result-object v1

    .line 10
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 14
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/shabakaty/downloader/gz;->a:Ljava/nio/charset/CodingErrorAction;

    :try_start_0
    const-string v0, "ASCII"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-interface {p1}, Lcom/shabakaty/downloader/ls1;->f()[B

    move-result-object p1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 21
    :cond_2
    array-length v0, p1

    :goto_2
    array-length v1, p2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 24
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 27
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown role"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract i()I
.end method

.method public abstract j(Lcom/shabakaty/downloader/js1;)Lcom/shabakaty/downloader/js1;
.end method

.method public abstract k(Lcom/shabakaty/downloader/x55;Lcom/shabakaty/downloader/rl1;)V
.end method

.method public abstract m()V
.end method

.method public abstract n(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/rl1;",
            ">;"
        }
    .end annotation
.end method

.method public o(Ljava/nio/ByteBuffer;)Lcom/shabakaty/downloader/ls1;
    .locals 10

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/b01;->a:I

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/b01;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v2, 0x3

    const-string v3, " "

    .line 3
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4
    array-length v4, v3

    if-ne v4, v2, :cond_a

    const-string v2, "Invalid status line received: "

    const-string v4, "HTTP/1.1"

    const-string v5, " Status line: "

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    .line 5
    aget-object v0, v3, v8

    const-string v9, "101"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    aget-object v0, v3, v7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ks1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ks1;-><init>()V

    .line 8
    aget-object v1, v3, v8

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 9
    aget-object v1, v3, v6

    .line 10
    iput-object v1, v0, Lcom/shabakaty/downloader/ks1;->u:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/n32;

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v3, v7

    invoke-static {v0, v2, v5, v1}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/n32;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/n32;

    const-string v0, "Invalid status code received: "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v3, v8

    invoke-static {v0, v2, v5, v1}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/n32;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    aget-object v0, v3, v7

    const-string v9, "GET"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14
    aget-object v0, v3, v6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/js1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/js1;-><init>()V

    .line 16
    aget-object v1, v3, v8

    if-eqz v1, :cond_7

    .line 17
    iput-object v1, v0, Lcom/shabakaty/downloader/js1;->u:Ljava/lang/String;

    .line 18
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/b01;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, ":"

    .line 20
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 21
    array-length v2, v1

    if-ne v2, v6, :cond_4

    .line 22
    aget-object v2, v1, v7

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ag6;->g(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "^ +"

    if-eqz v2, :cond_3

    .line 23
    aget-object v2, v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v7

    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/ag6;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v8

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/ag6;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_3
    aget-object v2, v1, v7

    aget-object v1, v1, v8

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/ag6;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_2
    invoke-static {p1}, Lcom/shabakaty/downloader/b01;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 26
    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/n32;

    const-string v0, "not an http header"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/n32;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz v1, :cond_6

    return-object v0

    .line 27
    :cond_6
    new-instance p1, Lcom/shabakaty/downloader/j02;

    invoke-direct {p1}, Lcom/shabakaty/downloader/j02;-><init>()V

    throw p1

    .line 28
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "http resource descriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_8
    new-instance p1, Lcom/shabakaty/downloader/n32;

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v3, v6

    invoke-static {v0, v2, v5, v1}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/n32;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_9
    new-instance p1, Lcom/shabakaty/downloader/n32;

    const-string v0, "Invalid request method received: "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v3, v7

    invoke-static {v0, v2, v5, v1}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/n32;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_a
    new-instance p1, Lcom/shabakaty/downloader/n32;

    invoke-direct {p1}, Lcom/shabakaty/downloader/n32;-><init>()V

    throw p1

    .line 32
    :cond_b
    new-instance v0, Lcom/shabakaty/downloader/j02;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    add-int/lit16 p1, p1, 0x80

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/j02;-><init>(I)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
