.class public Lcom/shabakaty/downloader/cw1$d;
.super Lcom/shabakaty/downloader/cw1$b;
.source "HttpConnection.java"

# interfaces
.implements Lcom/shabakaty/downloader/db0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/cw1$b<",
        "Lcom/shabakaty/downloader/db0;",
        ">;",
        "Lcom/shabakaty/downloader/db0;"
    }
.end annotation


# static fields
.field public static m:Ljavax/net/ssl/SSLSocketFactory;

.field public static final n:Ljava/util/regex/Pattern;


# instance fields
.field public e:Ljava/nio/ByteBuffer;

.field public f:Ljava/io/InputStream;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Lcom/shabakaty/downloader/cb0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(application|text)/\\w*\\+?xml.*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/cw1$d;->n:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/cw1$b;-><init>(Lcom/shabakaty/downloader/cw1$a;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cw1$d;->i:Z

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cw1$d;->j:Z

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/cw1$d;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/cw1$d;)V
    .locals 4

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/cw1$b;-><init>(Lcom/shabakaty/downloader/cw1$a;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cw1$d;->i:Z

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cw1$d;->j:Z

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/cw1$d;->k:I

    if-eqz p1, :cond_1

    .line 9
    iget v1, p1, Lcom/shabakaty/downloader/cw1$d;->k:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/cw1$d;->k:I

    const/16 v3, 0x14

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/cw1$b;->a:Ljava/net/URL;

    aput-object p1, v2, v0

    const-string p1, "Too many redirects occurred trying to load URL %s"

    .line 12
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Lcom/shabakaty/downloader/cb0;Lcom/shabakaty/downloader/cw1$d;)Lcom/shabakaty/downloader/cw1$d;
    .locals 14

    const-string v0, "Request must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/z02;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/cw1$b;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/cw1$b;->a:Ljava/net/URL;

    .line 4
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    const-string p1, "Only http & https protocols supported"

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/cw1$b;->b:Lcom/shabakaty/downloader/bb0;

    .line 8
    iget-boolean v1, v1, Lcom/shabakaty/downloader/bb0;->r:Z

    .line 9
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/cw1$c;

    .line 10
    iget-object v3, v2, Lcom/shabakaty/downloader/cw1$c;->i:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v1, :cond_3

    const-string v6, "Cannot set a request body for HTTP method "

    .line 11
    invoke-static {v6}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 12
    iget-object v7, v0, Lcom/shabakaty/downloader/cw1$b;->b:Lcom/shabakaty/downloader/bb0;

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/z02;->m(ZLjava/lang/String;)V

    .line 14
    :cond_3
    iget-object v6, v2, Lcom/shabakaty/downloader/cw1$c;->h:Ljava/util/Collection;

    .line 15
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    const/16 v7, 0x3d

    const/4 v8, 0x0

    if-lez v6, :cond_8

    if-eqz v1, :cond_4

    if-eqz v3, :cond_8

    .line 16
    :cond_4
    iget-object v1, v0, Lcom/shabakaty/downloader/cw1$b;->a:Ljava/net/URL;

    .line 17
    invoke-static {}, Lcom/shabakaty/downloader/de4;->g()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 18
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "://"

    .line 19
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    .line 22
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 24
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    .line 25
    :goto_2
    iget-object v6, v2, Lcom/shabakaty/downloader/cw1$c;->h:Ljava/util/Collection;

    .line 26
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ab0;

    .line 27
    invoke-interface {v9}, Lcom/shabakaty/downloader/ab0;->b()Z

    move-result v10

    const-string v11, "InputStream data not supported in URL query string."

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/z02;->m(ZLjava/lang/String;)V

    if-nez v1, :cond_6

    const/16 v10, 0x26

    .line 28
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 29
    :goto_4
    invoke-interface {v9}, Lcom/shabakaty/downloader/ab0;->key()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    invoke-interface {v9}, Lcom/shabakaty/downloader/ab0;->value()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 32
    :cond_7
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/cw1$b;->h(Ljava/net/URL;)Lcom/shabakaty/downloader/za0;

    .line 33
    iget-object v1, v2, Lcom/shabakaty/downloader/cw1$c;->h:Ljava/util/Collection;

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto/16 :goto_7

    :cond_8
    if-eqz v1, :cond_e

    const-string v1, "Content-Type"

    .line 35
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/cw1$b;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_7

    .line 36
    :cond_9
    iget-object v3, v2, Lcom/shabakaty/downloader/cw1$c;->h:Ljava/util/Collection;

    .line 37
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ab0;

    .line 38
    invoke-interface {v6}, Lcom/shabakaty/downloader/ab0;->b()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_d

    .line 39
    sget-object v3, Lcom/shabakaty/downloader/am0;->a:Ljava/util/regex/Pattern;

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_c

    .line 42
    sget-object v11, Lcom/shabakaty/downloader/am0;->b:[C

    array-length v12, v11

    invoke-virtual {v9, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    aget-char v11, v11, v12

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 43
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "multipart/form-data; boundary="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/shabakaty/downloader/cw1$b;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    goto :goto_8

    :cond_d
    const-string v3, "application/x-www-form-urlencoded; charset="

    .line 45
    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 46
    iget-object v6, v2, Lcom/shabakaty/downloader/cw1$c;->m:Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/cw1$b;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    :cond_e
    :goto_7
    move-object v3, v8

    .line 48
    :goto_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 49
    iget-object v1, v0, Lcom/shabakaty/downloader/cw1$b;->a:Ljava/net/URL;

    .line 50
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLConnection;

    .line 51
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 52
    iget-object v6, v0, Lcom/shabakaty/downloader/cw1$b;->b:Lcom/shabakaty/downloader/bb0;

    .line 53
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 55
    iget v6, v2, Lcom/shabakaty/downloader/cw1$c;->e:I

    .line 56
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 57
    iget v6, v2, Lcom/shabakaty/downloader/cw1$c;->e:I

    .line 58
    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 59
    instance-of v6, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_10

    .line 60
    iget-boolean v2, v2, Lcom/shabakaty/downloader/cw1$c;->l:Z

    if-nez v2, :cond_10

    .line 61
    const-class v2, Lcom/shabakaty/downloader/cw1$d;

    monitor-enter v2

    .line 62
    :try_start_0
    sget-object v6, Lcom/shabakaty/downloader/cw1$d;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v6, :cond_f

    new-array v6, v4, [Ljavax/net/ssl/TrustManager;

    .line 63
    new-instance v11, Lcom/shabakaty/downloader/ew1;

    invoke-direct {v11}, Lcom/shabakaty/downloader/ew1;-><init>()V

    aput-object v11, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "SSL"

    .line 64
    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 65
    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v8, v6, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 66
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    sput-object v5, Lcom/shabakaty/downloader/cw1$d;->m:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 67
    :catch_0
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can\'t create unsecure trust manager"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :cond_f
    :goto_9
    monitor-exit v2

    .line 69
    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v5, Lcom/shabakaty/downloader/cw1$d;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 70
    new-instance v5, Lcom/shabakaty/downloader/dw1;

    invoke-direct {v5}, Lcom/shabakaty/downloader/dw1;-><init>()V

    .line 71
    invoke-virtual {v2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_a

    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v2

    throw p0

    .line 73
    :cond_10
    :goto_a
    iget-object v2, v0, Lcom/shabakaty/downloader/cw1$b;->b:Lcom/shabakaty/downloader/bb0;

    .line 74
    iget-boolean v2, v2, Lcom/shabakaty/downloader/bb0;->r:Z

    if-eqz v2, :cond_11

    .line 75
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 76
    :cond_11
    iget-object v2, v0, Lcom/shabakaty/downloader/cw1$b;->d:Ljava/util/Map;

    .line 77
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_14

    const-string v2, "Cookie"

    .line 78
    invoke-static {}, Lcom/shabakaty/downloader/de4;->g()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    iget-object v6, v0, Lcom/shabakaty/downloader/cw1$b;->d:Ljava/util/Map;

    .line 80
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v11, 0x1

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    if-nez v11, :cond_12

    const-string v13, "; "

    .line 81
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    .line 82
    :goto_c
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 83
    :cond_13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_14
    iget-object v0, v0, Lcom/shabakaty/downloader/cw1$b;->c:Ljava/util/Map;

    .line 86
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 89
    :cond_16
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 90
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 91
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/shabakaty/downloader/cw1$d;->k(Lcom/shabakaty/downloader/cb0;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 92
    :cond_17
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 93
    new-instance v2, Lcom/shabakaty/downloader/cw1$d;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/cw1$d;-><init>(Lcom/shabakaty/downloader/cw1$d;)V

    .line 94
    invoke-virtual {v2, v1, p1}, Lcom/shabakaty/downloader/cw1$d;->j(Ljava/net/HttpURLConnection;Lcom/shabakaty/downloader/db0;)V

    .line 95
    iput-object p0, v2, Lcom/shabakaty/downloader/cw1$d;->l:Lcom/shabakaty/downloader/cb0;

    const-string p1, "Location"

    .line 96
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/cw1$b;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/cw1$c;

    .line 97
    iget-boolean p1, p1, Lcom/shabakaty/downloader/cw1$c;->g:Z

    if-eqz p1, :cond_1c

    const/16 p1, 0x133

    if-eq v0, p1, :cond_18

    .line 98
    sget-object p1, Lcom/shabakaty/downloader/bb0;->s:Lcom/shabakaty/downloader/bb0;

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/cw1$b;

    .line 99
    iput-object p1, v0, Lcom/shabakaty/downloader/cw1$b;->b:Lcom/shabakaty/downloader/bb0;

    .line 100
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/cw1$c;

    .line 101
    iget-object p1, p1, Lcom/shabakaty/downloader/cw1$c;->h:Ljava/util/Collection;

    .line 102
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 103
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/cw1$c;

    .line 104
    iput-object v8, p1, Lcom/shabakaty/downloader/cw1$c;->i:Ljava/lang/String;

    const-string p1, "Content-Type"

    .line 105
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/cw1$b;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cw1$b;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    :cond_18
    const-string p1, "Location"

    .line 106
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/cw1$b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    const-string v0, ", "

    .line 108
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/de4;->e(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_19
    if-eqz v8, :cond_1a

    const-string p1, "http:/"

    .line 109
    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x6

    invoke-virtual {v8, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_1a

    .line 110
    invoke-virtual {v8, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 111
    :cond_1a
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/cw1$b;

    .line 112
    iget-object p1, p1, Lcom/shabakaty/downloader/cw1$b;->a:Ljava/net/URL;

    .line 113
    invoke-static {p1, v8}, Lcom/shabakaty/downloader/de4;->f(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/shabakaty/downloader/cw1;->a(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/cw1$b;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cw1$b;->h(Ljava/net/URL;)Lcom/shabakaty/downloader/za0;

    .line 115
    iget-object p1, v2, Lcom/shabakaty/downloader/cw1$b;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lcom/shabakaty/downloader/cw1$b;

    invoke-virtual {v4, v3, v0}, Lcom/shabakaty/downloader/cw1$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    goto :goto_e

    .line 117
    :cond_1b
    invoke-static {p0, v2}, Lcom/shabakaty/downloader/cw1$d;->i(Lcom/shabakaty/downloader/cb0;Lcom/shabakaty/downloader/cw1$d;)Lcom/shabakaty/downloader/cw1$d;

    move-result-object p0

    return-object p0

    :cond_1c
    const/16 p1, 0xc8

    if-lt v0, p1, :cond_24

    const/16 p1, 0x190

    if-ge v0, p1, :cond_24

    .line 118
    iget-object p1, v2, Lcom/shabakaty/downloader/cw1$d;->h:Ljava/lang/String;

    if-eqz p1, :cond_1e

    const-string v0, "text/"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/shabakaty/downloader/cw1$d;->n:Ljava/util/regex/Pattern;

    .line 120
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_f

    .line 121
    :cond_1d
    new-instance v0, Lcom/shabakaty/downloader/pw4;

    const-string v2, "Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml"

    .line 122
    check-cast p0, Lcom/shabakaty/downloader/cw1$b;

    .line 123
    iget-object p0, p0, Lcom/shabakaty/downloader/cw1$b;->a:Ljava/net/URL;

    .line 124
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p1, p0}, Lcom/shabakaty/downloader/pw4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_f
    if-eqz p1, :cond_1f

    .line 125
    sget-object v0, Lcom/shabakaty/downloader/cw1$d;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 126
    instance-of p1, p0, Lcom/shabakaty/downloader/cw1$c;

    if-eqz p1, :cond_1f

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/cw1$c;

    .line 127
    iget-boolean p1, p1, Lcom/shabakaty/downloader/cw1$c;->k:Z

    if-nez p1, :cond_1f

    .line 128
    new-instance p1, Lcom/shabakaty/downloader/n56;

    new-instance v0, Lcom/shabakaty/downloader/g95;

    invoke-direct {v0}, Lcom/shabakaty/downloader/g95;-><init>()V

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/n56;-><init>(Lcom/shabakaty/downloader/cr4;)V

    .line 129
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/cw1$c;

    .line 130
    iput-object p1, v0, Lcom/shabakaty/downloader/cw1$c;->j:Lcom/shabakaty/downloader/n56;

    .line 131
    iput-boolean v4, v0, Lcom/shabakaty/downloader/cw1$c;->k:Z

    .line 132
    :cond_1f
    iget-object p1, v2, Lcom/shabakaty/downloader/cw1$d;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/shabakaty/downloader/am0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/shabakaty/downloader/cw1$d;->g:Ljava/lang/String;

    .line 133
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    if-eqz p1, :cond_23

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/cw1$b;

    .line 134
    iget-object p1, p1, Lcom/shabakaty/downloader/cw1$b;->b:Lcom/shabakaty/downloader/bb0;

    .line 135
    sget-object v0, Lcom/shabakaty/downloader/bb0;->t:Lcom/shabakaty/downloader/bb0;

    if-eq p1, v0, :cond_23

    .line 136
    iput-object v8, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    .line 137
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_10

    :cond_20
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_10
    iput-object p1, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    const-string p1, "Content-Encoding"

    const-string v0, "gzip"

    .line 138
    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/cw1$b;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 139
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    iget-object v0, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    goto :goto_11

    :cond_21
    const-string p1, "Content-Encoding"

    const-string v0, "deflate"

    .line 140
    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/cw1$b;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 141
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    iget-object v0, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v0, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object p1, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    .line 142
    :cond_22
    :goto_11
    iget-object p1, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    const v0, 0x8000

    .line 143
    move-object v3, p0

    check-cast v3, Lcom/shabakaty/downloader/cw1$c;

    .line 144
    iget v3, v3, Lcom/shabakaty/downloader/cw1$c;->f:I

    .line 145
    invoke-static {p1, v0, v3}, Lcom/shabakaty/downloader/ub0;->a(Ljava/io/InputStream;II)Lcom/shabakaty/downloader/ub0;

    move-result-object p1

    .line 146
    check-cast p0, Lcom/shabakaty/downloader/cw1$c;

    .line 147
    iget p0, p0, Lcom/shabakaty/downloader/cw1$c;->e:I

    int-to-long v5, p0

    .line 148
    iput-wide v9, p1, Lcom/shabakaty/downloader/ub0;->t:J

    const-wide/32 v7, 0xf4240

    mul-long v5, v5, v7

    .line 149
    iput-wide v5, p1, Lcom/shabakaty/downloader/ub0;->u:J

    .line 150
    iput-object p1, v2, Lcom/shabakaty/downloader/cw1$d;->f:Ljava/io/InputStream;

    goto :goto_12

    :cond_23
    const/4 p0, 0x0

    .line 151
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 152
    iput-object p0, v2, Lcom/shabakaty/downloader/cw1$d;->e:Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 153
    :goto_12
    iput-boolean v4, v2, Lcom/shabakaty/downloader/cw1$d;->i:Z

    return-object v2

    .line 154
    :cond_24
    :try_start_4
    new-instance p1, Lcom/shabakaty/downloader/pw1;

    const-string v2, "HTTP error fetching URL"

    check-cast p0, Lcom/shabakaty/downloader/cw1$b;

    .line 155
    iget-object p0, p0, Lcom/shabakaty/downloader/cw1$b;->a:Ljava/net/URL;

    .line 156
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, v0, p0}, Lcom/shabakaty/downloader/pw1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    .line 157
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 158
    throw p0
.end method

.method public static k(Lcom/shabakaty/downloader/cb0;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9

    .line 1
    check-cast p0, Lcom/shabakaty/downloader/cw1$c;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cw1$c;->h:Ljava/util/Collection;

    .line 3
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/cw1$c;->m:Ljava/lang/String;

    .line 5
    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, "--"

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ab0;

    .line 7
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "\r\n"

    .line 9
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, "Content-Disposition: form-data; name=\""

    .line 10
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 11
    invoke-interface {v0}, Lcom/shabakaty/downloader/ab0;->key()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "%22"

    const-string v7, "\""

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0}, Lcom/shabakaty/downloader/ab0;->b()Z

    move-result v4

    const-string v8, "\r\n\r\n"

    if-eqz v4, :cond_4

    const-string v4, "; filename=\""

    .line 16
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 17
    invoke-interface {v0}, Lcom/shabakaty/downloader/ab0;->value()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    :goto_2
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, "\"\r\nContent-Type: "

    .line 20
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0}, Lcom/shabakaty/downloader/ab0;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lcom/shabakaty/downloader/ab0;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    const-string v4, "application/octet-stream"

    :goto_3
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 24
    invoke-interface {v0}, Lcom/shabakaty/downloader/ab0;->y()Ljava/io/InputStream;

    move-result-object v0

    sget-object v4, Lcom/shabakaty/downloader/am0;->a:Ljava/util/regex/Pattern;

    const v4, 0x8000

    new-array v4, v4, [B

    .line 25
    :goto_4
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 26
    invoke-virtual {p1, v4, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 27
    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_5

    .line 28
    :cond_4
    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 29
    invoke-interface {v0}, Lcom/shabakaty/downloader/ab0;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 30
    :goto_5
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31
    :cond_5
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 34
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/cw1$c;->i:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 35
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const/4 p1, 0x1

    .line 36
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ab0;

    if-nez p1, :cond_8

    const/16 v3, 0x26

    .line 37
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->append(C)Ljava/io/Writer;

    goto :goto_7

    :cond_8
    const/4 p1, 0x0

    .line 38
    :goto_7
    invoke-interface {v0}, Lcom/shabakaty/downloader/ab0;->key()Ljava/lang/String;

    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/shabakaty/downloader/cw1$c;->m:Ljava/lang/String;

    .line 40
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v3, 0x3d

    .line 41
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 42
    invoke-interface {v0}, Lcom/shabakaty/downloader/ab0;->value()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v3, p0, Lcom/shabakaty/downloader/cw1$c;->m:Ljava/lang/String;

    .line 44
    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_6

    .line 45
    :cond_9
    :goto_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/net/HttpURLConnection;Lcom/shabakaty/downloader/db0;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/bb0;->valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/bb0;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/cw1$b;->b:Lcom/shabakaty/downloader/bb0;

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/cw1$b;->a:Ljava/net/URL;

    .line 3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/cw1$d;->h:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "Set-Cookie"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    new-instance v4, Lcom/shabakaty/downloader/k66;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/k66;-><init>(Ljava/lang/String;I)V

    const-string v3, "="

    .line 15
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/k66;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/k66;->h(Ljava/lang/String;)Z

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    .line 18
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/k66;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 20
    invoke-virtual {p0, v3, v4}, Lcom/shabakaty/downloader/cw1$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    goto :goto_2

    .line 21
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/cw1$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_8

    .line 23
    check-cast p2, Lcom/shabakaty/downloader/cw1$b;

    .line 24
    iget-object p1, p2, Lcom/shabakaty/downloader/cw1$b;->d:Ljava/util/Map;

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Cookie name must not be empty"

    .line 27
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/shabakaty/downloader/cw1$b;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 29
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/cw1$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    goto :goto_4

    :cond_8
    return-void

    :cond_9
    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_0

    if-nez v3, :cond_a

    goto/16 :goto_0

    .line 30
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 31
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 32
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
