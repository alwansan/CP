.class public final Lcom/shabakaty/downloader/mi0;
.super Lcom/shabakaty/downloader/oi0;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mi0$a;
    }
.end annotation


# static fields
.field public static l:Ljava/util/logging/Logger;

.field public static m:Z


# instance fields
.field public final h:Ljava/net/DatagramPacket;

.field public final i:J

.field public final j:Lcom/shabakaty/downloader/mi0$a;

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/mi0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mi0;->l:Ljava/util/logging/Logger;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/shabakaty/downloader/mi0;->m:Z

    return-void
.end method

.method public constructor <init>(IIZLjava/net/DatagramPacket;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/oi0;-><init>(IIZ)V

    .line 40
    iput-object p4, p0, Lcom/shabakaty/downloader/mi0;->h:Ljava/net/DatagramPacket;

    .line 41
    new-instance p1, Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p2

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/mi0$a;-><init>([BI)V

    iput-object p1, p0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    .line 42
    iput-wide p5, p0, Lcom/shabakaty/downloader/mi0;->i:J

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    sget v1, Lcom/shabakaty/downloader/ki0;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v3, v3, v0}, Lcom/shabakaty/downloader/oi0;-><init>(IIZ)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mi0;->h:Ljava/net/DatagramPacket;

    .line 3
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/shabakaty/downloader/mi0$a;-><init>([BI)V

    iput-object v1, p0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/shabakaty/downloader/mi0;->i:J

    const/16 v4, 0x5b4

    .line 6
    iput v4, p0, Lcom/shabakaty/downloader/mi0;->k:I

    .line 7
    :try_start_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v4

    .line 8
    iput v4, p0, Lcom/shabakaty/downloader/oi0;->a:I

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v4

    .line 10
    iput v4, p0, Lcom/shabakaty/downloader/oi0;->c:I

    and-int/lit16 v4, v4, 0x7800

    shr-int/lit8 v4, v4, 0xb

    if-gtz v4, :cond_b

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v4

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v5

    .line 13
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v6

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v1

    .line 15
    sget-object v7, Lcom/shabakaty/downloader/mi0;->l:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    mul-int/lit8 v7, v4, 0x5

    add-int v8, v5, v6

    add-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0xb

    add-int/2addr v8, v7

    .line 16
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    if-gt v8, p1, :cond_a

    if-lez v4, :cond_2

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v4, :cond_2

    .line 17
    iget-object v7, p0, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    .line 18
    iget-object v8, p0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/mi0$a;->b()Ljava/lang/String;

    move-result-object v8

    .line 19
    iget-object v9, p0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v9

    invoke-static {v9}, Lcom/shabakaty/downloader/ti0;->f(I)Lcom/shabakaty/downloader/ti0;

    move-result-object v9

    .line 20
    sget-object v10, Lcom/shabakaty/downloader/ti0;->s:Lcom/shabakaty/downloader/ti0;

    .line 21
    iget-object v10, p0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v10

    .line 22
    invoke-static {v10}, Lcom/shabakaty/downloader/si0;->f(I)Lcom/shabakaty/downloader/si0;

    move-result-object v11

    .line 23
    sget-object v12, Lcom/shabakaty/downloader/si0;->s:Lcom/shabakaty/downloader/si0;

    if-eq v11, v12, :cond_1

    const v12, 0x8000

    and-int/2addr v10, v12

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 24
    :goto_2
    invoke-static {v8, v9, v11, v10}, Lcom/shabakaty/downloader/qi0;->v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;

    move-result-object v8

    .line 25
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_4

    const/4 p1, 0x0

    :goto_3
    if-ge p1, v5, :cond_4

    .line 26
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mi0;->m(Ljava/net/InetAddress;)Lcom/shabakaty/downloader/ri0;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 27
    iget-object v4, p0, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    if-lez v6, :cond_6

    const/4 p1, 0x0

    :goto_4
    if-ge p1, v6, :cond_6

    .line 28
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mi0;->m(Ljava/net/InetAddress;)Lcom/shabakaty/downloader/ri0;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 29
    iget-object v4, p0, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    if-lez v1, :cond_8

    :goto_5
    if-ge v3, v1, :cond_8

    .line 30
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/mi0;->m(Ljava/net/InetAddress;)Lcom/shabakaty/downloader/ri0;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 31
    iget-object v2, p0, Lcom/shabakaty/downloader/oi0;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 32
    :cond_8
    iget-object p1, p0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-gtz p1, :cond_9

    return-void

    .line 33
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Received a message with the wrong length."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_a
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "questions:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " answers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " authorities:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " additionals:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Received a message with a non standard operation code. Currently unsupported in the specification."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DNSIncoming corrupted message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 38
    throw v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi0;->k()Lcom/shabakaty/downloader/mi0;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/shabakaty/downloader/mi0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    .line 6
    iget-object v1, p1, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    .line 9
    iget-object v1, p1, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/oi0;->g:Ljava/util/List;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/oi0;->g:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public k()Lcom/shabakaty/downloader/mi0;
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/mi0;

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->b()I

    move-result v2

    .line 4
    iget-boolean v3, p0, Lcom/shabakaty/downloader/oi0;->b:Z

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/mi0;->h:Ljava/net/DatagramPacket;

    iget-wide v5, p0, Lcom/shabakaty/downloader/mi0;->i:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/mi0;-><init>(IIZLjava/net/DatagramPacket;J)V

    .line 6
    iget v0, p0, Lcom/shabakaty/downloader/mi0;->k:I

    iput v0, v7, Lcom/shabakaty/downloader/mi0;->k:I

    .line 7
    iget-object v0, v7, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v0, v7, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, v7, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, v7, Lcom/shabakaty/downloader/oi0;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v7
.end method

.method public l(Z)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi0;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/qi0;

    const-string v5, "\tquestion:      "

    .line 6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ri0;

    const-string v5, "\tanswer:        "

    .line 10
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ri0;

    const-string v5, "\tauthoritative: "

    .line 14
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 17
    :cond_2
    iget-object v3, p0, Lcom/shabakaty/downloader/oi0;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ri0;

    const-string v5, "\tadditional:    "

    .line 18
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 21
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_10

    .line 23
    iget-object p1, p0, Lcom/shabakaty/downloader/mi0;->h:Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    new-array v1, p1, [B

    .line 24
    iget-object v3, p0, Lcom/shabakaty/downloader/mi0;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0xfa0

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :cond_4
    if-ge v5, p1, :cond_f

    sub-int v6, p1, v5

    const/16 v7, 0x20

    .line 26
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/16 v8, 0x10

    if-ge v5, v8, :cond_5

    .line 27
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v8, 0x100

    if-ge v5, v8, :cond_6

    .line 28
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v8, 0x1000

    if-ge v5, v8, :cond_7

    .line 29
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    .line 31
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_9

    .line 32
    rem-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_8

    .line 33
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    add-int v9, v5, v8

    .line 34
    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xf0

    shr-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    aget-byte v9, v1, v9

    and-int/lit8 v9, v9, 0xf

    shr-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    if-ge v8, v7, :cond_b

    :goto_5
    if-ge v8, v7, :cond_b

    .line 36
    rem-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_a

    .line 37
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const-string v9, "  "

    .line 38
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    const-string v8, "    "

    .line 39
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_e

    .line 40
    rem-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_c

    .line 41
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    add-int v9, v5, v8

    .line 42
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    if-le v9, v7, :cond_d

    const/16 v10, 0x7f

    if-ge v9, v10, :cond_d

    int-to-char v9, v9

    goto :goto_7

    :cond_d
    const/16 v9, 0x2e

    .line 43
    :goto_7
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 44
    :cond_e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x20

    const/16 v6, 0x800

    if-lt v5, v6, :cond_4

    const-string p1, "....\n"

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/net/InetAddress;)Lcom/shabakaty/downloader/ri0;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->b()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/ti0;->f(I)Lcom/shabakaty/downloader/ti0;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/ti0;->s:Lcom/shabakaty/downloader/ti0;

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v2

    .line 5
    sget-object v4, Lcom/shabakaty/downloader/ti0;->B:Lcom/shabakaty/downloader/ti0;

    if-ne v1, v4, :cond_0

    sget-object v4, Lcom/shabakaty/downloader/si0;->s:Lcom/shabakaty/downloader/si0;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/shabakaty/downloader/si0;->f(I)Lcom/shabakaty/downloader/si0;

    move-result-object v4

    .line 6
    :goto_0
    sget-object v5, Lcom/shabakaty/downloader/si0;->s:Lcom/shabakaty/downloader/si0;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_1

    const v5, 0x8000

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 7
    :goto_1
    iget-object v8, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    .line 8
    invoke-virtual {v8}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v9

    const/16 v10, 0x10

    shl-int/2addr v9, v10

    invoke-virtual {v8}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v8

    or-int/2addr v8, v9

    .line 9
    iget-object v9, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v9

    const/4 v11, 0x0

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v7, :cond_15

    const/4 v12, 0x5

    if-eq v1, v12, :cond_14

    if-eq v1, v10, :cond_13

    const/16 v13, 0x1c

    if-eq v1, v13, :cond_12

    const/16 v13, 0x21

    if-eq v1, v13, :cond_10

    const/16 v13, 0x29

    const/16 v14, 0xd

    const/16 v15, 0xc

    if-eq v1, v13, :cond_5

    if-eq v1, v15, :cond_14

    if-eq v1, v14, :cond_2

    .line 11
    sget-object v1, Lcom/shabakaty/downloader/mi0;->l:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 12
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    int-to-long v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    goto/16 :goto_a

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v2, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/mi0$a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 16
    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    if-lez v2, :cond_4

    add-int/2addr v2, v7

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, ""

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v11, Lcom/shabakaty/downloader/ri0$b;

    move-object v2, v11

    move v6, v8

    move-object v7, v9

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/ri0$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 19
    :cond_5
    iget v1, v0, Lcom/shabakaty/downloader/oi0;->c:I

    shr-int/lit8 v3, v8, 0x1c

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xf

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/su;->javax$jmdns$impl$constants$DNSResultCode$s$values()[I

    move-result-object v3

    array-length v5, v3

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_7

    aget v13, v3, v9

    .line 21
    invoke-static {v13}, Lcom/shabakaty/downloader/su;->r(I)I

    move-result v13

    if-ne v13, v1, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    const/high16 v1, 0xff0000

    and-int/2addr v1, v8

    shr-int/2addr v1, v10

    if-nez v1, :cond_16

    .line 22
    iput v2, v0, Lcom/shabakaty/downloader/mi0;->k:I

    .line 23
    :goto_6
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_16

    .line 24
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_16

    .line 25
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v1

    .line 26
    invoke-static {}, Lcom/shabakaty/downloader/su;->javax$jmdns$impl$constants$DNSOptionCode$s$values()[I

    move-result-object v3

    array-length v5, v3

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v5, :cond_9

    aget v9, v3, v8

    .line 27
    invoke-static {v9}, Lcom/shabakaty/downloader/su;->q(I)I

    move-result v13

    if-ne v13, v1, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x1

    .line 28
    :goto_8
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lt v1, v2, :cond_16

    .line 29
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v1

    new-array v3, v6, [B

    .line 30
    iget-object v5, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lt v5, v1, :cond_a

    .line 31
    iget-object v3, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/mi0$a;->a(I)[B

    move-result-object v3

    .line 32
    :cond_a
    invoke-static {v9}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v1

    if-eq v1, v7, :cond_f

    if-eq v1, v2, :cond_f

    const/4 v5, 0x3

    if-eq v1, v5, :cond_f

    const/4 v8, 0x4

    if-eq v1, v8, :cond_b

    goto :goto_6

    .line 33
    :cond_b
    :try_start_0
    aget-byte v1, v3, v6

    .line 34
    aget-byte v1, v3, v7

    .line 35
    aget-byte v1, v3, v2

    aget-byte v1, v3, v5

    aget-byte v1, v3, v8

    aget-byte v1, v3, v12

    const/4 v1, 0x6

    aget-byte v1, v3, v1

    const/4 v1, 0x7

    aget-byte v1, v3, v1

    .line 36
    array-length v1, v3

    const/16 v2, 0x8

    if-le v1, v2, :cond_c

    .line 37
    aget-byte v1, v3, v2

    const/16 v1, 0x9

    aget-byte v1, v3, v1

    const/16 v1, 0xa

    aget-byte v1, v3, v1

    const/16 v1, 0xb

    aget-byte v1, v3, v1

    aget-byte v1, v3, v15

    aget-byte v1, v3, v14

    .line 38
    :cond_c
    array-length v1, v3

    const/16 v2, 0x11

    const/16 v5, 0xe

    const/16 v8, 0x12

    if-ne v1, v8, :cond_d

    .line 39
    aget-byte v1, v3, v5

    aget-byte v1, v3, v4

    aget-byte v1, v3, v10

    aget-byte v1, v3, v2

    .line 40
    :cond_d
    array-length v1, v3

    const/16 v9, 0x16

    if-ne v1, v9, :cond_e

    .line 41
    aget-byte v1, v3, v5

    aget-byte v1, v3, v4

    aget-byte v1, v3, v10

    aget-byte v1, v3, v2

    aget-byte v1, v3, v8

    const/16 v1, 0x13

    aget-byte v1, v3, v1

    const/16 v1, 0x14

    aget-byte v1, v3, v1

    const/16 v1, 0x15

    aget-byte v1, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :cond_e
    sget-object v1, Lcom/shabakaty/downloader/mi0;->l:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    goto/16 :goto_6

    .line 43
    :cond_f
    sget-object v1, Lcom/shabakaty/downloader/mi0;->l:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    goto/16 :goto_6

    .line 44
    :cond_10
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v7

    .line 45
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v1

    .line 46
    iget-object v2, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/mi0$a;->e()I

    move-result v9

    .line 47
    sget-boolean v2, Lcom/shabakaty/downloader/mi0;->m:Z

    if-eqz v2, :cond_11

    .line 48
    iget-object v2, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/mi0$a;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 49
    :cond_11
    iget-object v2, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    .line 50
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mi0$a;->d()I

    move-result v6

    .line 51
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/mi0$a;->c(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object v10, v2

    .line 52
    new-instance v11, Lcom/shabakaty/downloader/ri0$f;

    move-object v2, v11

    move v6, v8

    move v8, v1

    invoke-direct/range {v2 .. v10}, Lcom/shabakaty/downloader/ri0$f;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZIIIILjava/lang/String;)V

    goto :goto_a

    .line 53
    :cond_12
    new-instance v11, Lcom/shabakaty/downloader/ri0$d;

    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1, v9}, Lcom/shabakaty/downloader/mi0$a;->a(I)[B

    move-result-object v7

    move-object v2, v11

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/ri0$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZI[B)V

    goto :goto_a

    .line 54
    :cond_13
    new-instance v11, Lcom/shabakaty/downloader/ri0$g;

    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1, v9}, Lcom/shabakaty/downloader/mi0$a;->a(I)[B

    move-result-object v7

    move-object v2, v11

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/ri0$g;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZI[B)V

    goto :goto_a

    .line 55
    :cond_14
    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi0$a;->b()Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 57
    new-instance v11, Lcom/shabakaty/downloader/ri0$e;

    move-object v2, v11

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/ri0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;)V

    goto :goto_a

    .line 58
    :cond_15
    new-instance v11, Lcom/shabakaty/downloader/ri0$c;

    iget-object v1, v0, Lcom/shabakaty/downloader/mi0;->j:Lcom/shabakaty/downloader/mi0$a;

    invoke-virtual {v1, v9}, Lcom/shabakaty/downloader/mi0$a;->a(I)[B

    move-result-object v7

    move-object v2, v11

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/ri0$c;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZI[B)V

    :cond_16
    :goto_a
    if-eqz v11, :cond_17

    move-object/from16 v1, p1

    .line 59
    iput-object v1, v11, Lcom/shabakaty/downloader/ri0;->j:Ljava/net/InetAddress;

    :cond_17
    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dns[query,"

    goto :goto_0

    :cond_0
    const-string v1, "dns[response,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/mi0;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/mi0;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x3a

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/mi0;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/mi0;->h:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id=0x"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    if-eqz v1, :cond_4

    const-string v1, ", flags=0x"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const-string v1, ":r"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    const-string v1, ":aa"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/oi0;->c:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4

    const-string v1, ":tc"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->f()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, ", questions="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->d()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, ", answers="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->e()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, ", authorities="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->c()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, ", additionals="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    :cond_8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->f()I

    move-result v1

    const-string v2, "\n\t"

    if-lez v1, :cond_9

    const-string v1, "\nquestions:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qi0;

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 38
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->d()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "\nanswers:"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ri0;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 43
    :cond_a
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->e()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "\nauthorities:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ri0;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 48
    :cond_b
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oi0;->c()I

    move-result v1

    if-lez v1, :cond_c

    const-string v1, "\nadditionals:"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/shabakaty/downloader/oi0;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ri0;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    const-string v1, "]"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
