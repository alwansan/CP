.class public Lcom/shabakaty/downloader/ri0$g;
.super Lcom/shabakaty/downloader/ri0;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final m:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZI[B)V
    .locals 6

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/ti0;->x:Lcom/shabakaty/downloader/ti0;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/ri0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZI)V

    if-eqz p5, :cond_0

    .line 2
    array-length p1, p5

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p5, Lcom/shabakaty/downloader/ri0;->l:[B

    :goto_0
    iput-object p5, p0, Lcom/shabakaty/downloader/ri0$g;->m:[B

    return-void
.end method


# virtual methods
.method public A(Lcom/shabakaty/downloader/pi0$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$g;->m:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/shabakaty/downloader/pi0$a;->a([BII)V

    return-void
.end method

.method public r(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ri0;->r(Ljava/lang/StringBuilder;)V

    const-string v0, " text: \'"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$g;->m:[B

    array-length v2, v1

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/ri0$g;->m:[B

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    const-string v3, "..."

    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public u(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/h14;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ri0$g;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/k14;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 4
    iput-object p1, v1, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/i14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/j14;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/j14;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/shabakaty/downloader/i14;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j14;)V

    return-object v1
.end method

.method public v(Z)Lcom/shabakaty/downloader/j14;
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/k14;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->d()Ljava/util/Map;

    move-result-object v1

    iget-object v6, p0, Lcom/shabakaty/downloader/ri0$g;->m:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v7
.end method

.method public w(Lcom/shabakaty/downloader/d92;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public x(Lcom/shabakaty/downloader/d92;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z(Lcom/shabakaty/downloader/ri0;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ri0$g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/ri0$g;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$g;->m:[B

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/shabakaty/downloader/ri0$g;->m:[B

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v2, p1, Lcom/shabakaty/downloader/ri0$g;->m:[B

    array-length v2, v2

    array-length v3, v0

    if-eq v2, v3, :cond_2

    return v1

    .line 5
    :cond_2
    array-length v0, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/ri0$g;->m:[B

    aget-byte v0, v0, v2

    iget-object v3, p0, Lcom/shabakaty/downloader/ri0$g;->m:[B

    aget-byte v3, v3, v2

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
