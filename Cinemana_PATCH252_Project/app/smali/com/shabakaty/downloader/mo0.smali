.class public Lcom/shabakaty/downloader/mo0;
.super Lcom/shabakaty/downloader/fj;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/fw1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mo0$b;
    }
.end annotation


# instance fields
.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lcom/shabakaty/downloader/fw1$f;

.field public final j:Lcom/shabakaty/downloader/fw1$f;

.field public final k:Z

.field public l:Lcom/shabakaty/downloader/ze3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ze3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/shabakaty/downloader/yl0;

.field public n:Ljava/net/HttpURLConnection;

.field public o:Ljava/io/InputStream;

.field public p:Z

.field public q:I

.field public r:J

.field public s:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLcom/shabakaty/downloader/fw1$f;Lcom/shabakaty/downloader/ze3;ZLcom/shabakaty/downloader/mo0$a;)V
    .locals 0

    const/4 p6, 0x1

    .line 1
    invoke-direct {p0, p6}, Lcom/shabakaty/downloader/fj;-><init>(Z)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mo0;->h:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/mo0;->f:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/mo0;->g:I

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/mo0;->e:Z

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/mo0;->i:Lcom/shabakaty/downloader/fw1$f;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/mo0;->l:Lcom/shabakaty/downloader/ze3;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/fw1$f;

    invoke-direct {p1}, Lcom/shabakaty/downloader/fw1$f;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mo0;->j:Lcom/shabakaty/downloader/fw1$f;

    .line 9
    iput-boolean p7, p0, Lcom/shabakaty/downloader/mo0;->k:Z

    return-void
.end method

.method public static B(Ljava/net/HttpURLConnection;J)V
    .locals 3

    if-eqz p0, :cond_4

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 9
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final A(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/mo0;->f:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/mo0;->g:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/mo0;->i:Lcom/shabakaty/downloader/fw1$f;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fw1$f;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/mo0;->j:Lcom/shabakaty/downloader/fw1$f;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fw1$f;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 8
    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p4, p5, p6, p7}, Lcom/shabakaty/downloader/rw1;->a(JJ)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    const-string p5, "Range"

    .line 12
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p4, p0, Lcom/shabakaty/downloader/mo0;->h:Ljava/lang/String;

    if-eqz p4, :cond_3

    const-string p5, "User-Agent"

    .line 14
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p8, :cond_4

    const-string p4, "gzip"

    goto :goto_1

    :cond_4
    const-string p4, "identity"

    :goto_1
    const-string p5, "Accept-Encoding"

    .line 15
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_5

    const/4 p4, 0x1

    goto :goto_2

    :cond_5
    const/4 p4, 0x0

    .line 17
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 18
    invoke-static {p2}, Lcom/shabakaty/downloader/yl0;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_6

    .line 19
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 21
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 23
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method public final C(JLcom/shabakaty/downloader/yl0;)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    int-to-long v4, v2

    .line 1
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 2
    iget-object v4, p0, Lcom/shabakaty/downloader/mo0;->o:Ljava/io/InputStream;

    sget v6, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 4
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/fj;->t(I)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/fw1$c;

    const/16 p2, 0x7d8

    invoke-direct {p1, p3, p2, v6}, Lcom/shabakaty/downloader/fw1$c;-><init>(Lcom/shabakaty/downloader/yl0;II)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/fw1$c;

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v0, 0x7d0

    invoke-direct {p1, p2, p3, v0, v6}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V

    throw p1

    :cond_3
    return-void
.end method

.method public a(Lcom/shabakaty/downloader/yl0;)J
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 1
    iput-object v7, v1, Lcom/shabakaty/downloader/mo0;->m:Lcom/shabakaty/downloader/yl0;

    const-wide/16 v2, 0x0

    .line 2
    iput-wide v2, v1, Lcom/shabakaty/downloader/mo0;->s:J

    .line 3
    iput-wide v2, v1, Lcom/shabakaty/downloader/mo0;->r:J

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/fj;->v(Lcom/shabakaty/downloader/yl0;)V

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/mo0;->z(Lcom/shabakaty/downloader/yl0;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, v1, Lcom/shabakaty/downloader/mo0;->n:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v1, Lcom/shabakaty/downloader/mo0;->q:I

    .line 7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 8
    iget v6, v1, Lcom/shabakaty/downloader/mo0;->q:I

    const-string v8, "Content-Range"

    const/16 v9, 0xc8

    const-wide/16 v10, -0x1

    if-lt v6, v9, :cond_c

    const/16 v12, 0x12b

    if-le v6, v12, :cond_0

    goto/16 :goto_5

    .line 9
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, v1, Lcom/shabakaty/downloader/mo0;->l:Lcom/shabakaty/downloader/ze3;

    if-eqz v6, :cond_2

    invoke-interface {v6, v5}, Lcom/shabakaty/downloader/ze3;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/mo0;->x()V

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/fw1$d;

    invoke-direct {v0, v5, v7}, Lcom/shabakaty/downloader/fw1$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/yl0;)V

    throw v0

    .line 13
    :cond_2
    :goto_0
    iget v5, v1, Lcom/shabakaty/downloader/mo0;->q:I

    if-ne v5, v9, :cond_3

    iget-wide v5, v7, Lcom/shabakaty/downloader/yl0;->f:J

    cmp-long v9, v5, v2

    if-eqz v9, :cond_3

    move-wide v2, v5

    :cond_3
    const-string v5, "Content-Encoding"

    .line 14
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    .line 15
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 16
    iget-wide v12, v7, Lcom/shabakaty/downloader/yl0;->g:J

    cmp-long v6, v12, v10

    if-eqz v6, :cond_4

    .line 17
    iput-wide v12, v1, Lcom/shabakaty/downloader/mo0;->r:J

    goto/16 :goto_4

    :cond_4
    const-string v6, "Content-Length"

    .line 18
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 20
    sget-object v9, Lcom/shabakaty/downloader/rw1;->a:Ljava/util/regex/Pattern;

    .line 21
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "]"

    const-string v11, "HttpUtil"

    if-nez v9, :cond_5

    .line 22
    :try_start_1
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/16 v9, 0x1c

    .line 23
    invoke-static {v6, v9}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Unexpected Content-Length ["

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v12, -0x1

    .line 25
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 26
    sget-object v9, Lcom/shabakaty/downloader/rw1;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 27
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x2

    .line 28
    :try_start_2
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 29
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 31
    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    if-gez v0, :cond_6

    move-wide v12, v14

    goto :goto_2

    :cond_6
    cmp-long v0, v12, v14

    if-eqz v0, :cond_7

    .line 34
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v0, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Inconsistent headers ["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const/16 v0, 0x1b

    .line 37
    invoke-static {v8, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    const-wide/16 v8, -0x1

    cmp-long v0, v12, v8

    if-eqz v0, :cond_8

    sub-long/2addr v12, v2

    goto :goto_3

    :cond_8
    const-wide/16 v12, -0x1

    .line 39
    :goto_3
    iput-wide v12, v1, Lcom/shabakaty/downloader/mo0;->r:J

    goto :goto_4

    .line 40
    :cond_9
    iget-wide v8, v7, Lcom/shabakaty/downloader/yl0;->g:J

    iput-wide v8, v1, Lcom/shabakaty/downloader/mo0;->r:J

    :goto_4
    const/16 v6, 0x7d0

    .line 41
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/mo0;->o:Ljava/io/InputStream;

    if-eqz v5, :cond_a

    .line 42
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v4, v1, Lcom/shabakaty/downloader/mo0;->o:Ljava/io/InputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Lcom/shabakaty/downloader/mo0;->o:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_a
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, v1, Lcom/shabakaty/downloader/mo0;->p:Z

    .line 44
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/fj;->w(Lcom/shabakaty/downloader/yl0;)V

    .line 45
    :try_start_4
    invoke-virtual {v1, v2, v3, v7}, Lcom/shabakaty/downloader/mo0;->C(JLcom/shabakaty/downloader/yl0;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 46
    iget-wide v2, v1, Lcom/shabakaty/downloader/mo0;->r:J

    return-wide v2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/mo0;->x()V

    .line 48
    instance-of v0, v2, Lcom/shabakaty/downloader/fw1$c;

    if-eqz v0, :cond_b

    .line 49
    move-object v0, v2

    check-cast v0, Lcom/shabakaty/downloader/fw1$c;

    throw v0

    .line 50
    :cond_b
    new-instance v0, Lcom/shabakaty/downloader/fw1$c;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v7, v6, v3}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V

    throw v0

    :catch_3
    move-exception v0

    const/4 v2, 0x1

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/mo0;->x()V

    .line 52
    new-instance v3, Lcom/shabakaty/downloader/fw1$c;

    invoke-direct {v3, v0, v7, v6, v2}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V

    throw v3

    .line 53
    :cond_c
    :goto_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    .line 54
    iget v0, v1, Lcom/shabakaty/downloader/mo0;->q:I

    const/16 v9, 0x1a0

    if-ne v0, v9, :cond_e

    .line 55
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/rw1;->b(Ljava/lang/String;)J

    move-result-wide v10

    .line 56
    iget-wide v12, v7, Lcom/shabakaty/downloader/yl0;->f:J

    cmp-long v0, v12, v10

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, v1, Lcom/shabakaty/downloader/mo0;->p:Z

    .line 58
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/fj;->w(Lcom/shabakaty/downloader/yl0;)V

    .line 59
    iget-wide v4, v7, Lcom/shabakaty/downloader/yl0;->g:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_d

    move-wide v2, v4

    :cond_d
    return-wide v2

    .line 60
    :cond_e
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 61
    :try_start_5
    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->T(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_6

    :cond_f
    sget-object v0, Lcom/shabakaty/downloader/sy4;->f:[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    move-object v8, v0

    goto :goto_7

    .line 62
    :catch_4
    sget-object v0, Lcom/shabakaty/downloader/sy4;->f:[B

    goto :goto_6

    .line 63
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/mo0;->x()V

    .line 64
    iget v0, v1, Lcom/shabakaty/downloader/mo0;->q:I

    if-ne v0, v9, :cond_10

    .line 65
    new-instance v0, Lcom/shabakaty/downloader/wl0;

    const/16 v2, 0x7d8

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/wl0;-><init>(I)V

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    .line 66
    :goto_8
    new-instance v9, Lcom/shabakaty/downloader/fw1$e;

    iget v3, v1, Lcom/shabakaty/downloader/mo0;->q:I

    move-object v2, v9

    move-object v4, v5

    move-object v5, v0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/fw1$e;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/shabakaty/downloader/yl0;[B)V

    throw v9

    :catch_5
    move-exception v0

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/mo0;->x()V

    const/4 v2, 0x1

    .line 68
    invoke-static {v0, v7, v2}, Lcom/shabakaty/downloader/fw1$c;->b(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;I)Lcom/shabakaty/downloader/fw1$c;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/mo0;->o:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 2
    iget-wide v3, p0, Lcom/shabakaty/downloader/mo0;->r:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/shabakaty/downloader/mo0;->s:J

    sub-long v5, v3, v5

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/mo0;->n:Ljava/net/HttpURLConnection;

    invoke-static {v3, v5, v6}, Lcom/shabakaty/downloader/mo0;->B(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    :try_start_2
    new-instance v3, Lcom/shabakaty/downloader/fw1$c;

    iget-object v4, p0, Lcom/shabakaty/downloader/mo0;->m:Lcom/shabakaty/downloader/yl0;

    .line 6
    sget v5, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/shabakaty/downloader/mo0;->o:Ljava/io/InputStream;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mo0;->x()V

    .line 9
    iget-boolean v1, p0, Lcom/shabakaty/downloader/mo0;->p:Z

    if-eqz v1, :cond_2

    .line 10
    iput-boolean v0, p0, Lcom/shabakaty/downloader/mo0;->p:Z

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj;->u()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    .line 12
    iput-object v1, p0, Lcom/shabakaty/downloader/mo0;->o:Ljava/io/InputStream;

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mo0;->x()V

    .line 14
    iget-boolean v1, p0, Lcom/shabakaty/downloader/mo0;->p:Z

    if-eqz v1, :cond_3

    .line 15
    iput-boolean v0, p0, Lcom/shabakaty/downloader/mo0;->p:Z

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj;->u()V

    .line 17
    :cond_3
    throw v2
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mo0;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mo0;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 1
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/mo0;->r:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/mo0;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v2, p3

    .line 3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mo0;->o:Ljava/io/InputStream;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_3

    :goto_1
    const/4 p1, -0x1

    goto :goto_2

    .line 5
    :cond_3
    iget-wide p2, p0, Lcom/shabakaty/downloader/mo0;->s:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/shabakaty/downloader/mo0;->s:J

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fj;->t(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return p1

    .line 7
    :goto_3
    iget-object p2, p0, Lcom/shabakaty/downloader/mo0;->m:Lcom/shabakaty/downloader/yl0;

    .line 8
    sget p3, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 p3, 0x2

    .line 9
    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/fw1$c;->b(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;I)Lcom/shabakaty/downloader/fw1$c;

    move-result-object p1

    throw p1
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mo0;->n:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/mo0;->n:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public final y(Ljava/net/URL;Ljava/lang/String;Lcom/shabakaty/downloader/yl0;)Ljava/net/URL;
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_4

    .line 1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v3, "https"

    .line 3
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/fw1$c;

    const-string v2, "Unsupported protocol redirect: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2, p3, v1, v0}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/yl0;II)V

    throw p1

    .line 5
    :cond_1
    iget-boolean v3, p0, Lcom/shabakaty/downloader/mo0;->e:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v2, Lcom/shabakaty/downloader/fw1$c;

    .line 7
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x29

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    const-string v3, "Disallowed cross-protocol redirect ("

    const-string v5, " to "

    invoke-static {v4, v3, p1, v5, p2}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p3, v1, v0}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/yl0;II)V

    throw v2

    :cond_3
    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/shabakaty/downloader/fw1$c;

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V

    throw p2

    .line 9
    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/fw1$c;

    const-string p2, "Null location redirect"

    invoke-direct {p1, p2, p3, v1, v0}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/yl0;II)V

    throw p1
.end method

.method public final z(Lcom/shabakaty/downloader/yl0;)Ljava/net/HttpURLConnection;
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    new-instance v1, Ljava/net/URL;

    iget-object v0, v12, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    iget v2, v12, Lcom/shabakaty/downloader/yl0;->c:I

    .line 3
    iget-object v3, v12, Lcom/shabakaty/downloader/yl0;->d:[B

    .line 4
    iget-wide v13, v12, Lcom/shabakaty/downloader/yl0;->f:J

    .line 5
    iget-wide v9, v12, Lcom/shabakaty/downloader/yl0;->g:J

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v12, v0}, Lcom/shabakaty/downloader/yl0;->c(I)Z

    move-result v15

    .line 7
    iget-boolean v0, v11, Lcom/shabakaty/downloader/mo0;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, v11, Lcom/shabakaty/downloader/mo0;->k:Z

    if-nez v0, :cond_0

    const/16 v16, 0x1

    .line 8
    iget-object v12, v12, Lcom/shabakaty/downloader/yl0;->e:Ljava/util/Map;

    move-object/from16 v0, p0

    move-wide v4, v13

    move-wide v6, v9

    move v8, v15

    move/from16 v9, v16

    move-object v10, v12

    invoke-virtual/range {v0 .. v10}, Lcom/shabakaty/downloader/mo0;->A(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v8, v1

    move v6, v2

    move-object/from16 v16, v3

    :goto_0
    add-int/lit8 v7, v0, 0x1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_8

    const/16 v17, 0x0

    .line 9
    iget-object v4, v12, Lcom/shabakaty/downloader/yl0;->e:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v6

    move-object/from16 v3, v16

    move-object/from16 v18, v4

    move-wide v4, v13

    move-wide/from16 v19, v13

    move v13, v6

    move v14, v7

    move-wide v6, v9

    move/from16 v21, v14

    move-object v14, v8

    move v8, v15

    move-wide/from16 v22, v9

    move/from16 v9, v17

    move-object/from16 v10, v18

    .line 10
    invoke-virtual/range {v0 .. v10}, Lcom/shabakaty/downloader/mo0;->A(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v2, "Location"

    .line 12
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12f

    const/16 v4, 0x12d

    const/16 v5, 0x12c

    const/16 v6, 0x12e

    const/4 v7, 0x1

    if-eq v13, v7, :cond_1

    const/4 v7, 0x3

    if-ne v13, v7, :cond_2

    :cond_1
    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v3, :cond_7

    const/16 v7, 0x133

    if-eq v1, v7, :cond_7

    const/16 v7, 0x134

    if-ne v1, v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x2

    if-ne v13, v7, :cond_6

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v6, :cond_3

    if-ne v1, v3, :cond_6

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 14
    iget-boolean v0, v11, Lcom/shabakaty/downloader/mo0;->k:Z

    if-eqz v0, :cond_4

    if-ne v1, v6, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    const/16 v16, 0x0

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    move v6, v13

    .line 15
    :goto_2
    invoke-virtual {v11, v14, v2, v12}, Lcom/shabakaty/downloader/mo0;->y(Ljava/net/URL;Ljava/lang/String;Lcom/shabakaty/downloader/yl0;)Ljava/net/URL;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :cond_6
    return-object v0

    .line 16
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 17
    invoke-virtual {v11, v14, v2, v12}, Lcom/shabakaty/downloader/mo0;->y(Ljava/net/URL;Ljava/lang/String;Lcom/shabakaty/downloader/yl0;)Ljava/net/URL;

    move-result-object v0

    move-object v8, v0

    move v6, v13

    :goto_4
    move-wide/from16 v13, v19

    move/from16 v0, v21

    move-wide/from16 v9, v22

    goto/16 :goto_0

    :cond_8
    move/from16 v21, v7

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/fw1$c;

    new-instance v1, Ljava/net/NoRouteToHostException;

    const/16 v2, 0x1f

    const-string v3, "Too many redirects: "

    move/from16 v4, v21

    invoke-static {v2, v3, v4}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V

    throw v0
.end method
