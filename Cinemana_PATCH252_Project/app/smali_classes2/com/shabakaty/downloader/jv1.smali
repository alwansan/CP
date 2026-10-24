.class public Lcom/shabakaty/downloader/jv1;
.super Ljava/lang/Object;
.source "HostInfo.java"

# interfaces
.implements Lcom/shabakaty/downloader/xi0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/jv1$a;
    }
.end annotation


# static fields
.field public static v:Ljava/util/logging/Logger;


# instance fields
.field public r:Ljava/lang/String;

.field public s:Ljava/net/InetAddress;

.field public t:Ljava/net/NetworkInterface;

.field public final u:Lcom/shabakaty/downloader/jv1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/jv1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/jv1;->v:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;Lcom/shabakaty/downloader/d92;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/jv1$a;

    invoke-direct {v0, p3}, Lcom/shabakaty/downloader/jv1$a;-><init>(Lcom/shabakaty/downloader/d92;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/jv1;->t:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/jv1;->v:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v0, "LocalHostInfo() exception "

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/si0;ZI)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/si0;",
            "ZI)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/ri0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/jv1;->c(ZI)Lcom/shabakaty/downloader/ri0$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/li0;->n(Lcom/shabakaty/downloader/si0;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/jv1;->d(ZI)Lcom/shabakaty/downloader/ri0$a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/li0;->n(Lcom/shabakaty/downloader/si0;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/ri0$a;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v0

    .line 2
    iget-boolean v1, p1, Lcom/shabakaty/downloader/li0;->f:Z

    const/16 v2, 0xe10

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/jv1;->f(Lcom/shabakaty/downloader/ti0;ZI)Lcom/shabakaty/downloader/ri0$a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ri0$a;->z(Lcom/shabakaty/downloader/ri0;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final c(ZI)Lcom/shabakaty/downloader/ri0$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 2
    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ri0$c;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    .line 6
    iget-object v6, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    move-object v1, v0

    move v4, p1

    move v5, p2

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/ri0$c;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/net/InetAddress;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(ZI)Lcom/shabakaty/downloader/ri0$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 2
    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ri0$d;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    .line 6
    iget-object v6, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    move-object v1, v0

    move v4, p1

    move v5, p2

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/ri0$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/net/InetAddress;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/yi0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xi0$b;->e(Lcom/shabakaty/downloader/yi0;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcom/shabakaty/downloader/ti0;ZI)Lcom/shabakaty/downloader/ri0$a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x26

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/jv1;->d(ZI)Lcom/shabakaty/downloader/ri0$a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/jv1;->c(ZI)Lcom/shabakaty/downloader/ri0$a;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/ti0;ZI)Lcom/shabakaty/downloader/ri0$e;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x26

    if-eq p1, v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 3
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_1

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/ri0$e;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 6
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ip6.arpa."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    .line 7
    iget-object v7, p0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    move-object v2, v1

    move v5, p2

    move v6, p3

    .line 8
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/ri0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;)V

    :cond_1
    return-object v1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 10
    instance-of p1, p1, Ljava/net/Inet4Address;

    if-eqz p1, :cond_3

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/ri0$e;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 13
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".in-addr.arpa."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    .line 14
    iget-object v7, p0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    move-object v2, v1

    move v5, p2

    move v6, p3

    .line 15
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/ri0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/shabakaty/downloader/iw2$b;->a()Lcom/shabakaty/downloader/iw2;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    const/4 v3, 0x1

    check-cast v0, Lcom/shabakaty/downloader/iw2$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/iw2$c;->a(Ljava/net/InetAddress;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x400

    const-string v1, "local host info["

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ei;->a(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "no name"

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/jv1;->t:Ljava/net/NetworkInterface;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "???"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "no address"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
