.class public final Lcom/shabakaty/downloader/s66;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b;IZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/shabakaty/downloader/s66;->a:I

    iput-boolean p3, p0, Lcom/shabakaty/downloader/s66;->b:Z

    iput-boolean p4, p0, Lcom/shabakaty/downloader/s66;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "connectionSpecs"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Lcom/shabakaty/downloader/ib0;
    .locals 12

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/s66;->a:I

    iget-object v1, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ib0;

    .line 3
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/ib0;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/s66;->a:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_a

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s66;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/s66;->b:Z

    .line 6
    iget-boolean v0, p0, Lcom/shabakaty/downloader/s66;->c:Z

    .line 7
    iget-object v1, v2, Lcom/shabakaty/downloader/ib0;->c:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    const-string v3, "sslSocket.enabledCipherSuites"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/shabakaty/downloader/ib0;->c:[Ljava/lang/String;

    sget-object v4, Lcom/shabakaty/downloader/a20;->t:Lcom/shabakaty/downloader/a20$b;

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/a20;->b:Ljava/util/Comparator;

    sget-object v4, Lcom/shabakaty/downloader/a20;->b:Ljava/util/Comparator;

    .line 10
    invoke-static {v1, v3, v4}, Lcom/shabakaty/downloader/ry4;->p([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_2
    iget-object v3, v2, Lcom/shabakaty/downloader/ib0;->d:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "sslSocket.enabledProtocols"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/shabakaty/downloader/ib0;->d:[Ljava/lang/String;

    sget-object v5, Lcom/shabakaty/downloader/qw2;->r:Lcom/shabakaty/downloader/qw2;

    invoke-static {v3, v4, v5}, Lcom/shabakaty/downloader/ry4;->p([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 15
    :goto_3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "supportedCipherSuites"

    .line 16
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v5, Lcom/shabakaty/downloader/a20;->t:Lcom/shabakaty/downloader/a20$b;

    .line 18
    sget-object v5, Lcom/shabakaty/downloader/a20;->b:Ljava/util/Comparator;

    sget-object v5, Lcom/shabakaty/downloader/a20;->b:Ljava/util/Comparator;

    .line 19
    sget-object v6, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 20
    array-length v6, v4

    const/4 v7, 0x0

    :goto_4
    const/4 v8, -0x1

    if-ge v7, v6, :cond_6

    .line 21
    aget-object v9, v4, v7

    .line 22
    move-object v10, v5

    check-cast v10, Lcom/shabakaty/downloader/a20$a;

    const-string v11, "TLS_FALLBACK_SCSV"

    invoke-virtual {v10, v9, v11}, Lcom/shabakaty/downloader/a20$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, -0x1

    :goto_6
    const-string v5, "cipherSuitesIntersection"

    if-eqz v0, :cond_7

    if-eq v7, v8, :cond_7

    .line 23
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    aget-object v0, v4, v7

    const-string v4, "supportedCipherSuites[indexOfFallbackScsv]"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/String;

    .line 26
    invoke-static {v1}, Lcom/shabakaty/downloader/id;->S([Ljava/lang/Object;)I

    move-result v4

    aput-object v0, v1, v4

    .line 27
    :cond_7
    new-instance v0, Lcom/shabakaty/downloader/ib0$a;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ib0$a;-><init>(Lcom/shabakaty/downloader/ib0;)V

    .line 28
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ib0$a;->c([Ljava/lang/String;)Lcom/shabakaty/downloader/ib0$a;

    const-string v1, "tlsVersionsIntersection"

    .line 29
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ib0$a;->f([Ljava/lang/String;)Lcom/shabakaty/downloader/ib0$a;

    .line 30
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ib0$a;->a()Lcom/shabakaty/downloader/ib0;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ib0;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 32
    iget-object v1, v0, Lcom/shabakaty/downloader/ib0;->d:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 33
    :cond_8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ib0;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 34
    iget-object v0, v0, Lcom/shabakaty/downloader/ib0;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_9
    return-object v2

    .line 35
    :cond_a
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Unable to find acceptable protocols. isFallback="

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/downloader/s66;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " modes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v3, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " supported protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.util.Arrays.toString(this)"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/s66;->a:I

    iget-object v1, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ib0;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/ib0;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/b;

    iget v2, p0, Lcom/shabakaty/downloader/s66;->a:I

    iget-boolean v3, p0, Lcom/shabakaty/downloader/s66;->b:Z

    iget-boolean v4, p0, Lcom/shabakaty/downloader/s66;->c:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    .line 1
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/b;->x(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/b;

    iget v2, p0, Lcom/shabakaty/downloader/s66;->a:I

    iget-boolean v3, p0, Lcom/shabakaty/downloader/s66;->b:Z

    iget-boolean v4, p0, Lcom/shabakaty/downloader/s66;->c:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    .line 1
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/b;->x(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/b;

    iget v2, p0, Lcom/shabakaty/downloader/s66;->a:I

    iget-boolean v3, p0, Lcom/shabakaty/downloader/s66;->b:Z

    iget-boolean v4, p0, Lcom/shabakaty/downloader/s66;->c:Z

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 1
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/b;->x(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/shabakaty/downloader/s66;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/b;

    iget v2, p0, Lcom/shabakaty/downloader/s66;->a:I

    iget-boolean v3, p0, Lcom/shabakaty/downloader/s66;->b:Z

    iget-boolean v4, p0, Lcom/shabakaty/downloader/s66;->c:Z

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 1
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/b;->x(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
