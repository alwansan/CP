.class public abstract Lcom/shabakaty/downloader/v55;
.super Ljava/lang/Object;
.source "WebSocketAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLocalSocketAddress(Lcom/shabakaty/downloader/u55;)Ljava/net/InetSocketAddress;
.end method

.method public abstract getRemoteSocketAddress(Lcom/shabakaty/downloader/u55;)Ljava/net/InetSocketAddress;
.end method

.method public abstract onWebsocketClose(Lcom/shabakaty/downloader/u55;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketCloseInitiated(Lcom/shabakaty/downloader/u55;ILjava/lang/String;)V
.end method

.method public abstract onWebsocketClosing(Lcom/shabakaty/downloader/u55;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V
.end method

.method public onWebsocketHandshakeReceivedAsClient(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/q30;Lcom/shabakaty/downloader/e14;)V
    .locals 0

    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/b01;Lcom/shabakaty/downloader/q30;)Lcom/shabakaty/downloader/f14;
    .locals 0

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/ks1;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ks1;-><init>()V

    return-object p1
.end method

.method public onWebsocketHandshakeSentAsClient(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/q30;)V
    .locals 0

    return-void
.end method

.method public abstract onWebsocketMessage(Lcom/shabakaty/downloader/u55;Ljava/lang/String;)V
.end method

.method public abstract onWebsocketMessage(Lcom/shabakaty/downloader/u55;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onWebsocketMessageFragment(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/rl1;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onWebsocketOpen(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/ls1;)V
.end method

.method public onWebsocketPing(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/rl1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yd3;

    check-cast p2, Lcom/shabakaty/downloader/jc3;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/yd3;-><init>(Lcom/shabakaty/downloader/jc3;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/u55;->sendFrame(Lcom/shabakaty/downloader/rl1;)V

    return-void
.end method

.method public onWebsocketPong(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/rl1;)V
    .locals 0

    return-void
.end method

.method public abstract onWriteDemand(Lcom/shabakaty/downloader/u55;)V
.end method
