.class public Lcom/shabakaty/downloader/ri0$e;
.super Lcom/shabakaty/downloader/ri0;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;)V
    .locals 6

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/ti0;->v:Lcom/shabakaty/downloader/ti0;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/ri0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZI)V

    .line 2
    iput-object p5, p0, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Lcom/shabakaty/downloader/pi0$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pi0$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public k(Lcom/shabakaty/downloader/li0;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/li0;->k(Lcom/shabakaty/downloader/li0;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/shabakaty/downloader/ri0$e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/ri0$e;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ri0$e;->z(Lcom/shabakaty/downloader/ri0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ri0;->r(Ljava/lang/StringBuilder;)V

    const-string v0, " alias: \'"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "null"

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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ri0$e;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/k14;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 4
    iput-object p1, v1, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/j14;->s()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    .line 7
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/d92;->B0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/i14;

    invoke-direct {v3, p1, v1, v2, v0}, Lcom/shabakaty/downloader/i14;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j14;)V

    return-object v3
.end method

.method public v(Z)Lcom/shabakaty/downloader/j14;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/k14;->A(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/k14;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/k14;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->d()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/k14;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->d()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/k14;->A(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/j14$a;->v:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/k14;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    iget-object v8, p0, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, v0

    move v6, p1

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 15
    iput-object v8, v0, Lcom/shabakaty/downloader/k14;->x:Ljava/lang/String;

    .line 16
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 17
    invoke-static {p1, v8}, Lcom/shabakaty/downloader/k14;->J(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/downloader/k14;->B:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    const/4 v0, 0x0

    return v0
.end method

.method public z(Lcom/shabakaty/downloader/ri0;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ri0$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/ri0$e;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
