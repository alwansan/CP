.class public Lcom/shabakaty/downloader/ri0$c;
.super Lcom/shabakaty/downloader/ri0$a;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/net/InetAddress;)V
    .locals 7

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/ti0;->t:Lcom/shabakaty/downloader/ti0;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/ri0$a;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZI[B)V
    .locals 7

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/ti0;->t:Lcom/shabakaty/downloader/ti0;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/ri0$a;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZI[B)V

    return-void
.end method


# virtual methods
.method public A(Lcom/shabakaty/downloader/pi0$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    new-array v3, v1, [B

    const/16 v4, 0xc

    .line 4
    invoke-static {v0, v4, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 5
    :goto_0
    array-length v1, v0

    .line 6
    invoke-virtual {p1, v0, v2, v1}, Lcom/shabakaty/downloader/pi0$a;->a([BII)V

    :cond_1
    return-void
.end method

.method public v(Z)Lcom/shabakaty/downloader/j14;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ri0$a;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/k14;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
