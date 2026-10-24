.class public Lcom/shabakaty/downloader/ri0$f;
.super Lcom/shabakaty/downloader/ri0;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static q:Ljava/util/logging/Logger;


# instance fields
.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ri0$f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ri0$f;->q:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZIIIILjava/lang/String;)V
    .locals 6

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/ti0;->z:Lcom/shabakaty/downloader/ti0;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/ri0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZI)V

    .line 2
    iput p5, p0, Lcom/shabakaty/downloader/ri0$f;->m:I

    .line 3
    iput p6, p0, Lcom/shabakaty/downloader/ri0$f;->n:I

    .line 4
    iput p7, p0, Lcom/shabakaty/downloader/ri0$f;->o:I

    .line 5
    iput-object p8, p0, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Lcom/shabakaty/downloader/pi0$a;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ri0$f;->m:I

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/ri0$f;->n:I

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/ri0$f;->o:I

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 4
    sget-boolean v0, Lcom/shabakaty/downloader/mi0;->m:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pi0$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/shabakaty/downloader/pi0$a;->f(Ljava/lang/String;II)V

    .line 7
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public p(Ljava/io/DataOutputStream;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/li0;->p(Ljava/io/DataOutputStream;)V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/ri0$f;->m:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/ri0$f;->n:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/ri0$f;->o:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public r(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ri0;->r(Ljava/lang/StringBuilder;)V

    const-string v0, " server: \'"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/ri0$f;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ri0$f;->v(Z)Lcom/shabakaty/downloader/j14;

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

    iget v2, p0, Lcom/shabakaty/downloader/ri0$f;->o:I

    iget v3, p0, Lcom/shabakaty/downloader/ri0$f;->n:I

    iget v4, p0, Lcom/shabakaty/downloader/ri0$f;->m:I

    const/4 v6, 0x0

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v7
.end method

.method public w(Lcom/shabakaty/downloader/d92;J)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v0, v2, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/li0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/k14;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 3
    iget-object v0, v3, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 5
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v0, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, v3, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi0$b;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    :cond_1
    iget v0, v1, Lcom/shabakaty/downloader/ri0$f;->o:I

    .line 8
    iget v7, v3, Lcom/shabakaty/downloader/k14;->y:I

    if-ne v0, v7, :cond_2

    .line 9
    iget-object v0, v1, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    .line 10
    iget-object v7, v2, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 11
    iget-object v7, v7, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/ri0$f;->q:Ljava/util/logging/Logger;

    const-string v7, "handleQuery() Conflicting probe detected from: "

    invoke-static {v7}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 14
    iget-object v8, v1, Lcom/shabakaty/downloader/ri0;->j:Ljava/net/InetAddress;

    .line 15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 16
    new-instance v7, Lcom/shabakaty/downloader/ri0$f;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v11, 0x1

    const/16 v12, 0xe10

    .line 17
    iget v13, v3, Lcom/shabakaty/downloader/k14;->A:I

    .line 18
    iget v14, v3, Lcom/shabakaty/downloader/k14;->z:I

    .line 19
    iget v15, v3, Lcom/shabakaty/downloader/k14;->y:I

    .line 20
    iget-object v0, v2, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 21
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    move-object v8, v7

    move-object/from16 v16, v0

    .line 22
    invoke-direct/range {v8 .. v16}, Lcom/shabakaty/downloader/ri0$f;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZIIIILjava/lang/String;)V

    .line 23
    :try_start_0
    iget-object v0, v2, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 24
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 25
    iget-object v8, v1, Lcom/shabakaty/downloader/ri0;->j:Ljava/net/InetAddress;

    .line 26
    invoke-virtual {v0, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    sget-object v0, Lcom/shabakaty/downloader/ri0$f;->q:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got conflicting probe from ourselves\nincoming: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/li0;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "local   : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/li0;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 28
    sget-object v8, Lcom/shabakaty/downloader/ri0$f;->q:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "IOException"

    invoke-virtual {v8, v9, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {v1, v7}, Lcom/shabakaty/downloader/li0;->a(Lcom/shabakaty/downloader/li0;)I

    move-result v0

    if-nez v0, :cond_4

    .line 30
    sget-object v0, Lcom/shabakaty/downloader/ri0$f;->q:Ljava/util/logging/Logger;

    const-string v2, "handleQuery() Ignoring a identical service query"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v4

    .line 31
    :cond_4
    iget-object v7, v3, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 32
    iget-object v7, v7, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 33
    iget v7, v7, Lcom/shabakaty/downloader/vi0;->s:I

    if-ne v7, v6, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    if-lez v0, :cond_6

    .line 34
    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/shabakaty/downloader/iw2$b;->a()Lcom/shabakaty/downloader/iw2;

    move-result-object v4

    .line 36
    iget-object v7, v2, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 37
    iget-object v7, v7, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 38
    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v8

    check-cast v4, Lcom/shabakaty/downloader/iw2$c;

    invoke-virtual {v4, v7, v8, v5}, Lcom/shabakaty/downloader/iw2$c;->a(Ljava/net/InetAddress;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/k14;->H(Ljava/lang/String;)V

    .line 39
    iget-object v4, v2, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, v2, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 42
    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/shabakaty/downloader/ri0$f;->q:Ljava/util/logging/Logger;

    const-string v2, "handleQuery() Lost tie break: new unique name chosen:"

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->G()Z

    return v6

    :cond_6
    return v4
.end method

.method public x(Lcom/shabakaty/downloader/d92;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k14;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/ri0$f;->o:I

    .line 4
    iget v3, v0, Lcom/shabakaty/downloader/k14;->y:I

    if-ne v2, v3, :cond_0

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    .line 6
    iget-object v3, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 7
    iget-object v3, v3, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    :cond_0
    sget-object v2, Lcom/shabakaty/downloader/ri0$f;->q:Ljava/util/logging/Logger;

    const-string v3, "handleResponse() Denial detected"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 12
    iget v2, v2, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/iw2$b;->a()Lcom/shabakaty/downloader/iw2;

    move-result-object v2

    .line 15
    iget-object v4, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 16
    iget-object v4, v4, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    check-cast v2, Lcom/shabakaty/downloader/iw2$c;

    invoke-virtual {v2, v4, v5, v6}, Lcom/shabakaty/downloader/iw2$c;->a(Ljava/net/InetAddress;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/k14;->H(Ljava/lang/String;)V

    .line 18
    iget-object v2, p1, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 19
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p1, Lcom/shabakaty/downloader/ri0$f;->q:Ljava/util/logging/Logger;

    const-string v1, "handleResponse() New unique name chose:"

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 23
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->G()Z

    return v3

    :cond_3
    return v1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z(Lcom/shabakaty/downloader/ri0;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ri0$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/ri0$f;

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/ri0$f;->m:I

    iget v2, p1, Lcom/shabakaty/downloader/ri0$f;->m:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/shabakaty/downloader/ri0$f;->n:I

    iget v2, p1, Lcom/shabakaty/downloader/ri0$f;->n:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/shabakaty/downloader/ri0$f;->o:I

    iget v2, p1, Lcom/shabakaty/downloader/ri0$f;->o:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
