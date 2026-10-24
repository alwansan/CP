.class public abstract Lcom/shabakaty/downloader/ri0$a;
.super Lcom/shabakaty/downloader/ri0;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field public static n:Ljava/util/logging/Logger;


# instance fields
.field public m:Ljava/net/InetAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ri0$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ri0$a;->n:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZILjava/net/InetAddress;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/shabakaty/downloader/ri0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZI)V

    .line 2
    iput-object p6, p0, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZI[B)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/shabakaty/downloader/ri0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;ZI)V

    .line 4
    :try_start_0
    invoke-static {p6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/ri0$a;->n:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "Address() exception "

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public p(Ljava/io/DataOutputStream;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/li0;->p(Ljava/io/DataOutputStream;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    .line 3
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 5
    aget-byte v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ri0;->r(Ljava/lang/StringBuilder;)V

    const-string v0, " address: \'"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

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
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ri0$a;->v(Z)Lcom/shabakaty/downloader/j14;

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

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v7
.end method

.method public w(Lcom/shabakaty/downloader/d92;J)Z
    .locals 3

    .line 1
    iget-object p2, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 2
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/jv1;->b(Lcom/shabakaty/downloader/ri0$a;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 3
    iget-object p2, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/shabakaty/downloader/li0;->f:Z

    const/16 v2, 0xe10

    .line 6
    invoke-virtual {p2, v0, v1, v2}, Lcom/shabakaty/downloader/jv1;->f(Lcom/shabakaty/downloader/ti0;ZI)Lcom/shabakaty/downloader/ri0$a;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/li0;->a(Lcom/shabakaty/downloader/li0;)I

    move-result p2

    if-nez p2, :cond_0

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/ri0$a;->n:Ljava/util/logging/Logger;

    const-string p2, "handleQuery() Ignoring an identical address query"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return p3

    .line 9
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ri0$a;->n:Ljava/util/logging/Logger;

    const-string v1, "handleQuery() Conflicting query detected."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 13
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p3, 0x1

    :cond_1
    if-eqz p3, :cond_2

    if-lez p2, :cond_2

    .line 14
    iget-object p2, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 15
    invoke-virtual {p2}, Lcom/shabakaty/downloader/jv1;->h()Ljava/lang/String;

    .line 16
    iget-object p2, p1, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 17
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 18
    iget-object p2, p1, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 19
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/j14;

    .line 20
    check-cast p3, Lcom/shabakaty/downloader/k14;

    .line 21
    invoke-virtual {p3}, Lcom/shabakaty/downloader/k14;->G()Z

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xi0$b;->i()Z

    return v1

    :cond_3
    return p3
.end method

.method public x(Lcom/shabakaty/downloader/d92;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/jv1;->b(Lcom/shabakaty/downloader/ri0$a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/ri0$a;->n:Ljava/util/logging/Logger;

    const-string v2, "handleResponse() Denial detected"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 7
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/jv1;->h()Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 12
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/j14;

    .line 14
    check-cast v1, Lcom/shabakaty/downloader/k14;

    .line 15
    invoke-virtual {v1}, Lcom/shabakaty/downloader/k14;->G()Z

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 17
    iget-object p1, p1, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xi0$b;->i()Z

    return v2

    :cond_2
    return v1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z(Lcom/shabakaty/downloader/ri0;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ri0$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/ri0$a;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/ri0$a;->m:Ljava/net/InetAddress;

    .line 5
    invoke-virtual {v0, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
