.class public abstract Lcom/shabakaty/downloader/w55;
.super Lcom/shabakaty/downloader/r1;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/shabakaty/downloader/u55;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/w55$b;
    }
.end annotation


# instance fields
.field private closeLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectTimeout:I

.field private draft:Lcom/shabakaty/downloader/b01;

.field private engine:Lcom/shabakaty/downloader/x55;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ostream:Ljava/io/OutputStream;

.field private proxy:Ljava/net/Proxy;

.field private socket:Ljava/net/Socket;

.field public uri:Ljava/net/URI;

.field private writeThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c01;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/lj3;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/lj3;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/c01;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/w55;-><init>(Ljava/net/URI;Lcom/shabakaty/downloader/b01;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/shabakaty/downloader/b01;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/shabakaty/downloader/w55;-><init>(Ljava/net/URI;Lcom/shabakaty/downloader/b01;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/shabakaty/downloader/b01;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/shabakaty/downloader/b01;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/r1;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    .line 10
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/shabakaty/downloader/w55;->proxy:Ljava/net/Proxy;

    .line 11
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/w55;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 12
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/w55;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/shabakaty/downloader/w55;->connectTimeout:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    .line 15
    iput-object p2, p0, Lcom/shabakaty/downloader/w55;->draft:Lcom/shabakaty/downloader/b01;

    .line 16
    iput-object p3, p0, Lcom/shabakaty/downloader/w55;->headers:Ljava/util/Map;

    .line 17
    iput p4, p0, Lcom/shabakaty/downloader/w55;->connectTimeout:I

    .line 18
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r1;->setTcpNoDelay(Z)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r1;->setReuseAddr(Z)V

    .line 20
    new-instance p1, Lcom/shabakaty/downloader/x55;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/x55;-><init>(Lcom/shabakaty/downloader/v55;Lcom/shabakaty/downloader/b01;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static synthetic access$100(Lcom/shabakaty/downloader/w55;)Lcom/shabakaty/downloader/x55;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/shabakaty/downloader/w55;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/w55;->ostream:Ljava/io/OutputStream;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/shabakaty/downloader/w55;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/w55;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/shabakaty/downloader/w55;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/w55;->closeSocket()V

    return-void
.end method

.method private closeSocket()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {p0, p0, v0}, Lcom/shabakaty/downloader/w55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getPort()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wss"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    :cond_0
    const-string v1, "ws"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    return v0

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown scheme: "

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v0
.end method

.method private handleIOException(Ljava/io/IOException;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w55;->onError(Ljava/lang/Exception;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/x55;->e()V

    return-void
.end method

.method private sendHandshake()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "/"

    :cond_1
    if-eqz v1, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/shabakaty/downloader/w55;->getPort()I

    move-result v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    if-eq v1, v3, :cond_3

    const-string v3, ":"

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/js1;

    invoke-direct {v2}, Lcom/shabakaty/downloader/js1;-><init>()V

    if-eqz v0, :cond_5

    .line 8
    iput-object v0, v2, Lcom/shabakaty/downloader/js1;->u:Ljava/lang/String;

    .line 9
    iget-object v0, v2, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    const-string v3, "Host"

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->headers:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/ag6;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 14
    iget-object v1, v0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/b01;->j(Lcom/shabakaty/downloader/js1;)Lcom/shabakaty/downloader/js1;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/x55;->y:Lcom/shabakaty/downloader/q30;

    .line 15
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/v55;->onWebsocketHandshakeSentAsClient(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/q30;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/l32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v1, v0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    iget-object v2, v0, Lcom/shabakaty/downloader/x55;->y:Lcom/shabakaty/downloader/q30;

    iget v3, v0, Lcom/shabakaty/downloader/x55;->w:I

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/b01;->h(Lcom/shabakaty/downloader/ls1;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/x55;->m(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v1

    .line 17
    iget-object v2, v0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/n32;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected because of"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n32;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :catch_1
    new-instance v0, Lcom/shabakaty/downloader/n32;

    const-string v1, "Handshake data rejected by client."

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n32;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "http resource descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const-string v3, ""

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Lcom/shabakaty/downloader/x55;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public close(I)V
    .locals 3

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const-string v2, ""

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Lcom/shabakaty/downloader/x55;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lcom/shabakaty/downloader/x55;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public closeBlocking()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/w55;->close()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    return-void
.end method

.method public connect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->writeThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/w55;->writeThread:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectBlocking()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/w55;->connect()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x55;->h()Z

    move-result v0

    return v0
.end method

.method public connections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/u55;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/x55;->E:Ljava/lang/Object;

    return-object v0
.end method

.method public getConnection()Lcom/shabakaty/downloader/u55;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    return-object v0
.end method

.method public getDraft()Lcom/shabakaty/downloader/b01;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->draft:Lcom/shabakaty/downloader/b01;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/v55;->getLocalSocketAddress(Lcom/shabakaty/downloader/u55;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lcom/shabakaty/downloader/u55;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReadyState()Lcom/shabakaty/downloader/u55$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/v55;->getRemoteSocketAddress(Lcom/shabakaty/downloader/u55;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lcom/shabakaty/downloader/u55;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/x55;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/u55$a;->v:Lcom/shabakaty/downloader/u55$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x55;->g()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/u55$a;->s:Lcom/shabakaty/downloader/u55$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/x55;->t:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x55;->h()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public onFragment(Lcom/shabakaty/downloader/rl1;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public abstract onOpen(Lcom/shabakaty/downloader/e14;)V
.end method

.method public final onWebsocketClose(Lcom/shabakaty/downloader/u55;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r1;->stopConnectionLostTimer()V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/w55;->writeThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/shabakaty/downloader/w55;->onClose(ILjava/lang/String;Z)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/w55;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/w55;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onWebsocketCloseInitiated(Lcom/shabakaty/downloader/u55;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/w55;->onCloseInitiated(ILjava/lang/String;)V

    return-void
.end method

.method public onWebsocketClosing(Lcom/shabakaty/downloader/u55;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Lcom/shabakaty/downloader/w55;->onClosing(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w55;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/shabakaty/downloader/u55;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w55;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/shabakaty/downloader/u55;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w55;->onMessage(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/rl1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w55;->onFragment(Lcom/shabakaty/downloader/rl1;)V

    return-void
.end method

.method public final onWebsocketOpen(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/ls1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r1;->startConnectionLostTimer()V

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/e14;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/w55;->onOpen(Lcom/shabakaty/downloader/e14;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/w55;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onWriteDemand(Lcom/shabakaty/downloader/u55;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Ljava/net/Socket;

    iget-object v4, p0, Lcom/shabakaty/downloader/w55;->proxy:Ljava/net/Proxy;

    invoke-direct {v2, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    const/4 v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/r1;->isTcpNoDelay()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/r1;->isReuseAddr()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/shabakaty/downloader/w55;->getPort()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v6, p0, Lcom/shabakaty/downloader/w55;->connectTimeout:I

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string v2, "wss"

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "TLS"

    .line 9
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v4, v4, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 11
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 12
    iget-object v5, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    iget-object v6, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/shabakaty/downloader/w55;->getPort()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/w55;->ostream:Ljava/io/OutputStream;

    .line 15
    invoke-direct {p0}, Lcom/shabakaty/downloader/w55;->sendHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/shabakaty/downloader/w55$b;

    invoke-direct {v5, p0, v4}, Lcom/shabakaty/downloader/w55$b;-><init>(Lcom/shabakaty/downloader/w55;Lcom/shabakaty/downloader/w55$a;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/shabakaty/downloader/w55;->writeThread:Ljava/lang/Thread;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 18
    sget-object v3, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 19
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/w55;->isClosing()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/w55;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v0, :cond_3

    .line 20
    iget-object v5, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-static {v3, v1, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/x55;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x55;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/w55;->onError(Ljava/lang/Exception;)V

    .line 23
    iget-object v2, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    const/16 v3, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v2, v3, v0, v1}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 25
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/w55;->handleIOException(Ljava/io/IOException;)V

    :goto_2
    return-void

    .line 26
    :cond_4
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v2

    .line 27
    iget-object v3, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-virtual {p0, v3, v2}, Lcom/shabakaty/downloader/w55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    .line 28
    iget-object v3, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v3, v0, v2, v1}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    iget v2, v0, Lcom/shabakaty/downloader/x55;->w:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, p1, v3}, Lcom/shabakaty/downloader/b01;->f(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x55;->k(Ljava/util/Collection;)V

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x55;->j(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send([B)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x55;->j(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public sendFragmentedFrame(Lcom/shabakaty/downloader/rl1$a;Ljava/nio/ByteBuffer;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/x55;->v:Lcom/shabakaty/downloader/b01;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/rl1$a;->s:Lcom/shabakaty/downloader/rl1$a;

    sget-object v3, Lcom/shabakaty/downloader/rl1$a;->t:Lcom/shabakaty/downloader/rl1$a;

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v4, v1, Lcom/shabakaty/downloader/b01;->b:Lcom/shabakaty/downloader/rl1$a;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/zd0;

    invoke-direct {v2}, Lcom/shabakaty/downloader/zd0;-><init>()V

    goto :goto_1

    .line 7
    :cond_2
    iput-object p1, v1, Lcom/shabakaty/downloader/b01;->b:Lcom/shabakaty/downloader/rl1$a;

    if-ne p1, v3, :cond_3

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/cm;

    invoke-direct {v2}, Lcom/shabakaty/downloader/cm;-><init>()V

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    .line 9
    new-instance v2, Lcom/shabakaty/downloader/xl4;

    invoke-direct {v2}, Lcom/shabakaty/downloader/xl4;-><init>()V

    goto :goto_1

    :cond_4
    move-object v2, v5

    .line 10
    :goto_1
    iput-object p2, v2, Lcom/shabakaty/downloader/sl1;->c:Ljava/nio/ByteBuffer;

    .line 11
    iput-boolean p3, v2, Lcom/shabakaty/downloader/sl1;->a:Z

    .line 12
    :try_start_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/nl0;->d()V
    :try_end_0
    .catch Lcom/shabakaty/downloader/l32; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_5

    .line 13
    iput-object v5, v1, Lcom/shabakaty/downloader/b01;->b:Lcom/shabakaty/downloader/rl1$a;

    goto :goto_2

    .line 14
    :cond_5
    iput-object p1, v1, Lcom/shabakaty/downloader/b01;->b:Lcom/shabakaty/downloader/rl1$a;

    .line 15
    :goto_2
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x55;->k(Ljava/util/Collection;)V

    return-void

    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public sendFrame(Lcom/shabakaty/downloader/rl1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x55;->sendFrame(Lcom/shabakaty/downloader/rl1;)V

    return-void
.end method

.method public sendFrame(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/rl1;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x55;->k(Ljava/util/Collection;)V

    return-void
.end method

.method public sendPing()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/x55;->D:Lcom/shabakaty/downloader/jc3;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/jc3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/jc3;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/x55;->D:Lcom/shabakaty/downloader/jc3;

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/x55;->D:Lcom/shabakaty/downloader/jc3;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/x55;->sendFrame(Lcom/shabakaty/downloader/rl1;)V

    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->engine:Lcom/shabakaty/downloader/x55;

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/x55;->E:Ljava/lang/Object;

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/w55;->proxy:Ljava/net/Proxy;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/w55;->socket:Ljava/net/Socket;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "socket has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
