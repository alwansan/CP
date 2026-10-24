.class public Lcom/shabakaty/downloader/ri0$b;
.super Lcom/shabakaty/downloader/ri0;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/ti0;->w:Lcom/shabakaty/downloader/ti0;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/ri0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZI)V

    .line 2
    iput-object p5, p0, Lcom/shabakaty/downloader/ri0$b;->n:Ljava/lang/String;

    .line 3
    iput-object p6, p0, Lcom/shabakaty/downloader/ri0$b;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Lcom/shabakaty/downloader/pi0$a;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/shabakaty/downloader/pi0$a;->f(Ljava/lang/String;II)V

    return-void
.end method

.method public r(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ri0;->r(Ljava/lang/StringBuilder;)V

    const-string v0, " cpu: \'"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' os: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$b;->m:Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ri0$b;->v(Z)Lcom/shabakaty/downloader/j14;

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
    .locals 13

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$b;->n:Ljava/lang/String;

    const-string v2, "cpu"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$b;->m:Ljava/lang/String;

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/k14;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->d()Ljava/util/Map;

    move-result-object v4

    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x100

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 8
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    invoke-static {v8, v6}, Lcom/shabakaty/downloader/k14;->J(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v9, 0x0

    if-nez v7, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    instance-of v10, v7, Ljava/lang/String;

    const/16 v11, 0x3d

    if-eqz v10, :cond_1

    .line 11
    invoke-virtual {v8, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 12
    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/shabakaty/downloader/k14;->J(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    instance-of v10, v7, [B

    if-eqz v10, :cond_5

    .line 14
    move-object v10, v7

    check-cast v10, [B

    .line 15
    array-length v12, v10

    if-lez v12, :cond_2

    .line 16
    invoke-virtual {v8, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 17
    array-length v11, v10

    invoke-virtual {v8, v10, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    move-object v7, v2

    .line 18
    :goto_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 19
    array-length v10, v8

    const/16 v11, 0xff

    if-le v10, v11, :cond_4

    .line 20
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot have individual values larger that 255 chars. Offending value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_3

    const-string v1, ""

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    array-length v6, v8

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 22
    array-length v6, v8

    invoke-virtual {v3, v8, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_0

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid property value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    .line 25
    array-length v2, v0

    if-lez v2, :cond_7

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/shabakaty/downloader/ri0;->l:[B

    :goto_3
    move-object v9, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move v8, p1

    .line 26
    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v1

    :catch_0
    move-exception p1

    .line 27
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

    const/4 v0, 0x1

    return v0
.end method

.method public z(Lcom/shabakaty/downloader/ri0;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ri0$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/ri0$b;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$b;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/shabakaty/downloader/ri0$b;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ri0$b;->m:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/shabakaty/downloader/ri0$b;->m:Ljava/lang/String;

    if-eqz v2, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v2, p1, Lcom/shabakaty/downloader/ri0$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$b;->m:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/ri0$b;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
