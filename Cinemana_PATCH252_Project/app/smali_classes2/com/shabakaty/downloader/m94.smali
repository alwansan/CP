.class public Lcom/shabakaty/downloader/m94;
.super Ljava/lang/Thread;
.source "SocketListener.java"


# static fields
.field public static s:Ljava/util/logging/Logger;


# instance fields
.field public final r:Lcom/shabakaty/downloader/d92;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/m94;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/m94;->s:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/d92;)V
    .locals 3

    const-string v0, "SocketListener("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    const-string v2, ")"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, ".run() exception "

    const/16 v1, 0x230c

    :try_start_0
    new-array v2, v1, [B

    .line 1
    new-instance v3, Ljava/net/DatagramPacket;

    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 2
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3
    invoke-virtual {v3, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    .line 6
    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->c0()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->s()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 8
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 10
    iget-object v4, v2, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 12
    iget-object v7, v2, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 13
    invoke-virtual {v7}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v7

    if-nez v7, :cond_2

    .line 14
    iget-object v7, v2, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 15
    invoke-virtual {v7}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 16
    :goto_1
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 18
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    goto :goto_0

    .line 19
    :cond_6
    new-instance v2, Lcom/shabakaty/downloader/mi0;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/mi0;-><init>(Ljava/net/DatagramPacket;)V

    .line 20
    iget v4, v2, Lcom/shabakaty/downloader/oi0;->c:I

    and-int/lit8 v4, v4, 0xf

    if-nez v4, :cond_7

    const/4 v5, 0x1

    :cond_7
    if-eqz v5, :cond_b

    .line 21
    sget-object v4, Lcom/shabakaty/downloader/m94;->s:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 22
    sget-object v4, Lcom/shabakaty/downloader/m94;->s:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".run() JmDNS in:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/mi0;->l(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 23
    :cond_8
    invoke-virtual {v2}, Lcom/shabakaty/downloader/oi0;->h()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 24
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    sget v5, Lcom/shabakaty/downloader/ki0;->a:I

    if-eq v4, v5, :cond_9

    .line 25
    iget-object v4, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Lcom/shabakaty/downloader/d92;->M(Lcom/shabakaty/downloader/mi0;I)V

    .line 26
    :cond_9
    iget-object v4, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Lcom/shabakaty/downloader/d92;->M(Lcom/shabakaty/downloader/mi0;I)V

    goto/16 :goto_0

    .line 27
    :cond_a
    iget-object v4, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/d92;->S(Lcom/shabakaty/downloader/mi0;)V

    goto/16 :goto_0

    .line 28
    :cond_b
    sget-object v4, Lcom/shabakaty/downloader/m94;->s:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    sget-object v4, Lcom/shabakaty/downloader/m94;->s:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".run() JmDNS in message with error code:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/mi0;->l(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 30
    :try_start_2
    sget-object v4, Lcom/shabakaty/downloader/m94;->s:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 31
    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->c0()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->s()Z

    move-result v2

    if-nez v2, :cond_c

    .line 32
    sget-object v2, Lcom/shabakaty/downloader/m94;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    iget-object v0, p0, Lcom/shabakaty/downloader/m94;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->o0()V

    .line 34
    :cond_c
    :goto_3
    sget-object v0, Lcom/shabakaty/downloader/m94;->s:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 35
    sget-object v0, Lcom/shabakaty/downloader/m94;->s:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".run() exiting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_d
    return-void
.end method
