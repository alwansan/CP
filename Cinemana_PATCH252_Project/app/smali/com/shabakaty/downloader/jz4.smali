.class public Lcom/shabakaty/downloader/jz4;
.super Ljava/lang/Object;
.source "UtilsLibrary.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_0

    .line 3
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cw1$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cw1$c;-><init>()V

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/cw1$d;

    invoke-direct {v2}, Lcom/shabakaty/downloader/cw1$d;-><init>()V

    const-string v2, "Must supply a valid URL"

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/z02;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance v2, Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 5
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v3}, Lcom/shabakaty/downloader/cw1;->a(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    .line 7
    :goto_0
    :try_start_2
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/cw1$b;->h(Ljava/net/URL;)Lcom/shabakaty/downloader/za0;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v1, 0x7530

    .line 8
    iput v1, v0, Lcom/shabakaty/downloader/cw1$c;->e:I

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Windows; U; WindowsNT 5.1; en-US; rv1.8.1.6) Gecko/20070725 Firefox/2.0.0.6"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/cw1$b;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/bb0;->s:Lcom/shabakaty/downloader/bb0;

    .line 11
    iput-object v1, v0, Lcom/shabakaty/downloader/cw1$b;->b:Lcom/shabakaty/downloader/bb0;

    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/cw1$d;->i(Lcom/shabakaty/downloader/cb0;Lcom/shabakaty/downloader/cw1$d;)Lcom/shabakaty/downloader/cw1$d;

    move-result-object v2

    .line 13
    iget-boolean v0, v2, Lcom/shabakaty/downloader/cw1$d;->i:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->p(ZLjava/lang/String;)V

    .line 14
    iget-object v0, v2, Lcom/shabakaty/downloader/cw1$d;->e:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, v2, Lcom/shabakaty/downloader/cw1$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    .line 16
    iput-boolean v3, v2, Lcom/shabakaty/downloader/cw1$d;->j:Z

    .line 17
    :cond_0
    iget-boolean v0, v2, Lcom/shabakaty/downloader/cw1$d;->j:Z

    const-string v1, "Input stream already read and parsed, cannot re-read."

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->m(ZLjava/lang/String;)V

    .line 18
    iget-object v0, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    iget-object v4, v2, Lcom/shabakaty/downloader/cw1$d;->g:Ljava/lang/String;

    iget-object v1, v2, Lcom/shabakaty/downloader/cw1$b;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v2, Lcom/shabakaty/downloader/cw1$d;->l:Lcom/shabakaty/downloader/cb0;

    check-cast v1, Lcom/shabakaty/downloader/cw1$c;

    .line 19
    iget-object v6, v1, Lcom/shabakaty/downloader/cw1$c;->j:Lcom/shabakaty/downloader/n56;

    .line 20
    sget-object v1, Lcom/shabakaty/downloader/am0;->a:Ljava/util/regex/Pattern;

    const/4 v7, 0x1

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/wu0;

    invoke-direct {v0, v5}, Lcom/shabakaty/downloader/wu0;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1
    const v1, 0x8000

    .line 22
    invoke-static {v0, v1, v3}, Lcom/shabakaty/downloader/ub0;->a(Ljava/io/InputStream;II)Lcom/shabakaty/downloader/ub0;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    const/16 v8, 0x13ff

    .line 24
    invoke-static {v0, v1, v8}, Lcom/shabakaty/downloader/ub0;->a(Ljava/io/InputStream;II)Lcom/shabakaty/downloader/ub0;

    move-result-object v9

    .line 25
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v10, v8, [B

    .line 26
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 27
    :goto_1
    invoke-virtual {v9, v10}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v12, -0x1

    if-ne v1, v12, :cond_2

    goto :goto_2

    :cond_2
    if-lt v1, v8, :cond_1b

    .line 28
    invoke-virtual {v11, v10, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 29
    :goto_2
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v12, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 31
    :goto_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ub0;->reset()V

    .line 32
    invoke-virtual {v1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    const/4 v9, 0x4

    new-array v10, v9, [B

    .line 33
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-lt v11, v9, :cond_4

    .line 34
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 36
    :cond_4
    aget-byte v9, v10, v3

    const/4 v11, 0x3

    const/4 v13, 0x2

    const/4 v14, -0x2

    const-string v15, "UTF-8"

    if-nez v9, :cond_5

    aget-byte v9, v10, v7

    if-nez v9, :cond_5

    aget-byte v9, v10, v13

    if-ne v9, v14, :cond_5

    aget-byte v9, v10, v11

    if-eq v9, v12, :cond_6

    :cond_5
    aget-byte v9, v10, v3

    if-ne v9, v12, :cond_7

    aget-byte v9, v10, v7

    if-ne v9, v14, :cond_7

    aget-byte v9, v10, v13

    if-nez v9, :cond_7

    aget-byte v9, v10, v11

    if-nez v9, :cond_7

    .line 37
    :cond_6
    new-instance v9, Lcom/shabakaty/downloader/am0$a;

    const-string v10, "UTF-32"

    invoke-direct {v9, v10, v3}, Lcom/shabakaty/downloader/am0$a;-><init>(Ljava/lang/String;Z)V

    goto :goto_4

    .line 38
    :cond_7
    aget-byte v9, v10, v3

    if-ne v9, v14, :cond_8

    aget-byte v9, v10, v7

    if-eq v9, v12, :cond_9

    :cond_8
    aget-byte v9, v10, v3

    if-ne v9, v12, :cond_a

    aget-byte v9, v10, v7

    if-ne v9, v14, :cond_a

    .line 39
    :cond_9
    new-instance v9, Lcom/shabakaty/downloader/am0$a;

    const-string v10, "UTF-16"

    invoke-direct {v9, v10, v3}, Lcom/shabakaty/downloader/am0$a;-><init>(Ljava/lang/String;Z)V

    goto :goto_4

    .line 40
    :cond_a
    aget-byte v9, v10, v3

    const/16 v11, -0x11

    if-ne v9, v11, :cond_b

    aget-byte v9, v10, v7

    const/16 v11, -0x45

    if-ne v9, v11, :cond_b

    aget-byte v9, v10, v13

    const/16 v10, -0x41

    if-ne v9, v10, :cond_b

    .line 41
    new-instance v9, Lcom/shabakaty/downloader/am0$a;

    invoke-direct {v9, v15, v7}, Lcom/shabakaty/downloader/am0$a;-><init>(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_c

    .line 42
    iget-object v4, v9, Lcom/shabakaty/downloader/am0$a;->a:Ljava/lang/String;

    :cond_c
    if-nez v4, :cond_13

    .line 43
    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v6, v1, v5}, Lcom/shabakaty/downloader/n56;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/wu0;

    move-result-object v1

    const-string v10, "meta[http-equiv=content-type], meta[charset]"

    .line 45
    invoke-virtual {v1, v10}, Lcom/shabakaty/downloader/k21;->K(Ljava/lang/String;)Lcom/shabakaty/downloader/m21;

    move-result-object v10

    .line 46
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/k21;

    const-string v13, "http-equiv"

    .line 47
    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/sz2;->n(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v11, "content"

    .line 48
    invoke-virtual {v12, v11}, Lcom/shabakaty/downloader/sz2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/downloader/am0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_e
    if-nez v11, :cond_f

    const-string v13, "charset"

    .line 49
    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/sz2;->n(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 50
    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/sz2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_f
    if-eqz v11, :cond_d

    :cond_10
    if-nez v11, :cond_11

    .line 51
    invoke-virtual {v1}, Lcom/shabakaty/downloader/k21;->h()I

    move-result v10

    if-lez v10, :cond_11

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/sz2;->g(I)Lcom/shabakaty/downloader/sz2;

    move-result-object v10

    instance-of v10, v10, Lcom/shabakaty/downloader/f95;

    if-eqz v10, :cond_11

    .line 52
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/sz2;->g(I)Lcom/shabakaty/downloader/sz2;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/f95;

    .line 53
    invoke-virtual {v10}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object v12

    const-string v13, "xml"

    .line 54
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string v11, "encoding"

    .line 55
    invoke-virtual {v10, v11}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 56
    :cond_11
    invoke-static {v11}, Lcom/shabakaty/downloader/am0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 57
    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 58
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "[\"\']"

    const-string v8, ""

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_5

    :cond_12
    if-nez v8, :cond_14

    goto :goto_5

    :cond_13
    const-string v1, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    .line 59
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/z02;->u(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v1, 0x0

    :cond_14
    if-nez v1, :cond_19

    if-nez v4, :cond_15

    goto :goto_6

    :cond_15
    move-object v15, v4

    .line 60
    :goto_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const v8, 0x8000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    if-eqz v9, :cond_16

    .line 61
    iget-boolean v4, v9, Lcom/shabakaty/downloader/am0$a;->b:Z

    if-eqz v4, :cond_16

    const-wide/16 v8, 0x1

    .line 62
    invoke-virtual {v1, v8, v9}, Ljava/io/BufferedReader;->skip(J)J

    .line 63
    :cond_16
    :try_start_3
    iget v4, v6, Lcom/shabakaty/downloader/n56;->d:I

    if-lez v4, :cond_17

    const/4 v8, 0x1

    goto :goto_7

    :cond_17
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_18

    .line 64
    new-instance v3, Lcom/shabakaty/downloader/la3;

    const/16 v8, 0x10

    invoke-direct {v3, v8, v4}, Lcom/shabakaty/downloader/la3;-><init>(II)V

    goto :goto_8

    .line 65
    :cond_18
    new-instance v4, Lcom/shabakaty/downloader/la3;

    invoke-direct {v4, v3, v3}, Lcom/shabakaty/downloader/la3;-><init>(II)V

    move-object v3, v4

    .line 66
    :goto_8
    iput-object v3, v6, Lcom/shabakaty/downloader/n56;->b:Ljava/lang/Object;

    .line 67
    iget-object v4, v6, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/cr4;

    iget-object v6, v6, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/ma3;

    invoke-virtual {v4, v1, v5, v3, v6}, Lcom/shabakaty/downloader/cr4;->d(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)Lcom/shabakaty/downloader/wu0;

    move-result-object v1
    :try_end_3
    .catch Lcom/shabakaty/downloader/iv4; {:try_start_3 .. :try_end_3} :catch_1

    .line 68
    iget-object v3, v1, Lcom/shabakaty/downloader/wu0;->z:Lcom/shabakaty/downloader/wu0$a;

    .line 69
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 71
    iput-object v4, v3, Lcom/shabakaty/downloader/wu0$a;->s:Ljava/nio/charset/Charset;

    goto :goto_9

    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 73
    throw v0

    .line 74
    :cond_19
    :goto_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    .line 75
    :goto_a
    iget-object v1, v0, Lcom/shabakaty/downloader/wu0;->z:Lcom/shabakaty/downloader/wu0$a;

    .line 76
    iget-object v1, v1, Lcom/shabakaty/downloader/wu0$a;->s:Ljava/nio/charset/Charset;

    .line 77
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/shabakaty/downloader/cw1$d;->g:Ljava/lang/String;

    .line 78
    iput-boolean v7, v2, Lcom/shabakaty/downloader/cw1$d;->j:Z

    .line 79
    iget-object v1, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_1a

    .line 80
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    .line 81
    iput-object v0, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    throw v1

    :catch_2
    :goto_b
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    :cond_1a
    move-object/from16 v12, p1

    .line 82
    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/k21;->K(Ljava/lang/String;)Lcom/shabakaty/downloader/m21;

    move-result-object v0

    move/from16 v13, p2

    .line 83
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    .line 84
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k21;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    move-object/from16 v12, p1

    move/from16 v13, p2

    sub-int/2addr v8, v1

    .line 85
    invoke-virtual {v11, v10, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed URL: "

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static c(Landroid/content/Context;I)Lcom/shabakaty/downloader/rw4;
    .locals 22

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v0

    const-string v2, "Cannot retrieve latest version. Is it configured properly?"

    const-string v3, ""

    const-string v4, "App wasn\'t found in the provided source. Is it published?"

    const-string v5, "0.0.0.0"

    const-string v6, "AppUpdater"

    if-eqz v0, :cond_e

    const-string v0, "<b>Version"

    const-string v7, "<strong>Version:</strong>"

    const-string v8, "/tree/"

    .line 2
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    new-instance v10, Lcom/shabakaty/downloader/a63;

    invoke-direct {v10}, Lcom/shabakaty/downloader/a63;-><init>()V

    .line 4
    invoke-static/range {p0 .. p1}, Lcom/shabakaty/downloader/jz4;->d(Landroid/content/Context;I)Ljava/net/URL;

    move-result-object v11

    .line 5
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0x14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, "url.toString()"

    invoke-static {v11, v14}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v14, Lcom/shabakaty/downloader/qw1$a;

    invoke-direct {v14}, Lcom/shabakaty/downloader/qw1$a;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v11}, Lcom/shabakaty/downloader/qw1$a;->d(Lcom/shabakaty/downloader/qw1;Ljava/lang/String;)Lcom/shabakaty/downloader/qw1$a;

    invoke-virtual {v14}, Lcom/shabakaty/downloader/qw1$a;->a()Lcom/shabakaty/downloader/qw1;

    move-result-object v17

    .line 9
    new-instance v11, Lcom/shabakaty/downloader/ts1;

    const/4 v14, 0x0

    new-array v1, v14, [Ljava/lang/String;

    .line 10
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v13, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 11
    invoke-direct {v11, v1, v15}, Lcom/shabakaty/downloader/ts1;-><init>([Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 13
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v12}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v12, "Collections.unmodifiableMap(LinkedHashMap(this))"

    invoke-static {v1, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object/from16 v21, v1

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/vr3;

    const/16 v20, 0x0

    const-string v18, "GET"

    move-object/from16 v16, v1

    move-object/from16 v19, v11

    invoke-direct/range {v16 .. v21}, Lcom/shabakaty/downloader/vr3;-><init>(Lcom/shabakaty/downloader/qw1;Ljava/lang/String;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/yr3;Ljava/util/Map;)V

    const/4 v12, 0x2

    .line 17
    :try_start_0
    invoke-virtual {v10, v1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lcom/shabakaty/downloader/mq;)Lcom/shabakaty/downloader/ws3;

    move-result-object v1

    .line 18
    iget-object v15, v1, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 19
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v15}, Lcom/shabakaty/downloader/ys3;->a()Ljava/io/InputStream;

    move-result-object v14

    const-string v11, "UTF-8"

    invoke-direct {v13, v14, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 20
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v14
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v5

    const/4 v5, 0x1

    if-eq v14, v5, :cond_3

    if-eq v14, v12, :cond_2

    const/4 v5, 0x3

    if-eq v14, v5, :cond_1

    goto :goto_2

    .line 23
    :cond_1
    :try_start_1
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 24
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    nop

    goto :goto_4

    .line 26
    :cond_2
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 27
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 30
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_4
    :goto_2
    move-object/from16 v5, v18

    goto :goto_1

    :catch_1
    move-object/from16 v18, v5

    goto :goto_4

    :cond_5
    move-object/from16 v18, v5

    .line 32
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 33
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_6
    iget-object v1, v1, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 35
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 36
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_3
    invoke-virtual {v15}, Lcom/shabakaty/downloader/ys3;->close()V

    goto :goto_6

    :catch_2
    move-object/from16 v18, v5

    goto :goto_5

    :goto_4
    if-eqz v15, :cond_7

    goto :goto_3

    .line 38
    :catch_3
    :goto_5
    :try_start_2
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_7

    goto :goto_3

    .line 39
    :cond_7
    :goto_6
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const-string v4, "(<)"

    if-eq v1, v12, :cond_9

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    goto :goto_7

    .line 41
    :cond_8
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 42
    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    array-length v3, v0

    if-le v3, v2, :cond_b

    .line 49
    aget-object v0, v0, v2

    const-string v3, "(\")"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v0, "v"

    .line 51
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "(v)"

    .line 52
    invoke-virtual {v5, v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 53
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v5, v18

    .line 54
    :cond_c
    :goto_8
    invoke-static/range {p0 .. p1}, Lcom/shabakaty/downloader/jz4;->d(Landroid/content/Context;I)Ljava/net/URL;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/shabakaty/downloader/rw4;

    invoke-direct {v1, v5, v0}, Lcom/shabakaty/downloader/rw4;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    return-object v1

    :goto_9
    if-eqz v15, :cond_d

    .line 56
    invoke-virtual {v15}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 57
    :cond_d
    throw v0

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v18, v5

    const/4 v1, 0x1

    .line 58
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jz4;->d(Landroid/content/Context;I)Ljava/net/URL;

    move-result-object v0

    .line 59
    :try_start_3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".hAyfc .htlgb"

    const/4 v7, 0x7

    invoke-static {v1, v5, v7}, Lcom/shabakaty/downloader/jz4;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 60
    :try_start_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 61
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_4
    move-object/from16 v5, v18

    .line 62
    :catch_5
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_a
    const-string v1, "Update"

    .line 63
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Lcom/shabakaty/downloader/rw4;

    invoke-direct {v1, v5, v3, v0}, Lcom/shabakaty/downloader/rw4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    return-object v1
.end method

.method public static d(Landroid/content/Context;I)Ljava/net/URL;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "https://play.google.com/store/apps/details?id=%s&hl=%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "https://f-droid.org/repository/browse/?fdid="

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p1, "http://www.amazon.com/gp/mas/dl/android?p="

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    :goto_0
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public static e(Landroid/content/Context;ILjava/net/URL;Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/jz4;->f(Landroid/content/Context;ILjava/net/URL;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/su;->j(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 4
    :catch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x6

    .line 6
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/su;->j(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0058

    .line 9
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/b$a;->i(I)Landroidx/appcompat/app/b$a;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 11
    iget-object v2, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean p3, v2, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object p3

    .line 13
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    .line 14
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/py0;

    const-string v2, "application.apk"

    invoke-direct {v0, p2, p1, v2}, Lcom/shabakaty/downloader/py0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p2, Lcom/shabakaty/downloader/my0;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/my0;-><init>(Lcom/shabakaty/downloader/py0;)V

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/jz4$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jz4$d;-><init>()V

    .line 18
    iput-object v0, p2, Lcom/shabakaty/downloader/my0;->m:Lcom/shabakaty/downloader/z63;

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/jz4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jz4$c;-><init>()V

    .line 20
    iput-object v0, p2, Lcom/shabakaty/downloader/my0;->n:Lcom/shabakaty/downloader/q63;

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/jz4$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jz4$b;-><init>()V

    .line 22
    iput-object v0, p2, Lcom/shabakaty/downloader/my0;->k:Lcom/shabakaty/downloader/r63;

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/jz4$a;

    invoke-direct {v0, p3, p1, p0}, Lcom/shabakaty/downloader/jz4$a;-><init>(Landroidx/appcompat/app/b;Ljava/lang/String;Landroid/content/Context;)V

    .line 24
    iput-object v0, p2, Lcom/shabakaty/downloader/my0;->l:Lcom/shabakaty/downloader/n63;

    .line 25
    iget-object p0, p2, Lcom/shabakaty/downloader/my0;->a:Ljava/lang/String;

    iget-object p1, p2, Lcom/shabakaty/downloader/my0;->b:Ljava/lang/String;

    iget-object p3, p2, Lcom/shabakaty/downloader/my0;->c:Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_1
    const-string p1, "MD5"

    .line 27
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const-string p3, "UTF-8"

    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    array-length p3, p0

    mul-int/lit8 p3, p3, 0x2

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    array-length p3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    const-string v3, "0"

    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    .line 33
    iput p0, p2, Lcom/shabakaty/downloader/my0;->o:I

    .line 34
    invoke-static {}, Lcom/shabakaty/downloader/qy0;->a()Lcom/shabakaty/downloader/qy0;

    move-result-object p0

    .line 35
    iget-object p1, p0, Lcom/shabakaty/downloader/qy0;->a:Ljava/util/Map;

    .line 36
    iget p3, p2, Lcom/shabakaty/downloader/my0;->o:I

    .line 37
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput v1, p2, Lcom/shabakaty/downloader/my0;->p:I

    .line 39
    iget-object p0, p0, Lcom/shabakaty/downloader/qy0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    .line 40
    iput p0, p2, Lcom/shabakaty/downloader/my0;->d:I

    .line 41
    invoke-static {}, Lcom/shabakaty/downloader/ke0;->a()Lcom/shabakaty/downloader/ke0;

    move-result-object p0

    .line 42
    iget-object p0, p0, Lcom/shabakaty/downloader/ke0;->a:Lcom/shabakaty/downloader/y61;

    .line 43
    check-cast p0, Lcom/shabakaty/downloader/ao0;

    .line 44
    iget-object p0, p0, Lcom/shabakaty/downloader/ao0;->a:Lcom/shabakaty/downloader/nw0;

    .line 45
    new-instance p1, Lcom/shabakaty/downloader/ry0;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ry0;-><init>(Lcom/shabakaty/downloader/my0;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/nw0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 47
    iput-object p0, p2, Lcom/shabakaty/downloader/my0;->e:Ljava/util/concurrent/Future;

    goto :goto_1

    :catch_1
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UnsupportedEncodingException"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NoSuchAlgorithmException"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 50
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public static f(Landroid/content/Context;ILjava/net/URL;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/su;->j(II)Z

    move-result p1

    const-string v0, "android.intent.action.VIEW"

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "market://details?id="

    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-object p1
.end method
