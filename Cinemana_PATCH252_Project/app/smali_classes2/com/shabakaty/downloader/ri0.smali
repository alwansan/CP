.class public abstract Lcom/shabakaty/downloader/ri0;
.super Lcom/shabakaty/downloader/li0;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ri0$b;,
        Lcom/shabakaty/downloader/ri0$f;,
        Lcom/shabakaty/downloader/ri0$g;,
        Lcom/shabakaty/downloader/ri0$e;,
        Lcom/shabakaty/downloader/ri0$a;,
        Lcom/shabakaty/downloader/ri0$d;,
        Lcom/shabakaty/downloader/ri0$c;
    }
.end annotation


# static fields
.field public static k:Ljava/util/logging/Logger;

.field public static final l:[B


# instance fields
.field public h:I

.field public i:J

.field public j:Ljava/net/InetAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ri0;->k:Ljava/util/logging/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/ri0;->l:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/li0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    .line 2
    iput p5, p0, Lcom/shabakaty/downloader/ri0;->h:I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ri0;->i:J

    return-void
.end method


# virtual methods
.method public abstract A(Lcom/shabakaty/downloader/pi0$a;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ri0;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/shabakaty/downloader/li0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ri0;->z(Lcom/shabakaty/downloader/ri0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(J)Z
    .locals 3

    const/16 v0, 0x64

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ri0;->s(I)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, " ttl: \'"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/ri0;->t(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/ri0;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public s(I)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/ri0;->i:J

    iget v2, p0, Lcom/shabakaty/downloader/ri0;->h:I

    mul-int p1, p1, v2

    int-to-long v2, p1

    const-wide/16 v4, 0xa

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public t(J)I
    .locals 2

    const/16 v0, 0x64

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ri0;->s(I)J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method public abstract u(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/h14;
.end method

.method public abstract v(Z)Lcom/shabakaty/downloader/j14;
.end method

.method public abstract w(Lcom/shabakaty/downloader/d92;J)Z
.end method

.method public abstract x(Lcom/shabakaty/downloader/d92;)Z
.end method

.method public abstract y()Z
.end method

.method public abstract z(Lcom/shabakaty/downloader/ri0;)Z
.end method
