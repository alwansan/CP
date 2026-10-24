.class public Lcom/shabakaty/downloader/d92;
.super Lcom/shabakaty/downloader/b92;
.source "JmDNSImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/xi0;
.implements Lcom/shabakaty/downloader/zi0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d92$g;,
        Lcom/shabakaty/downloader/d92$h;,
        Lcom/shabakaty/downloader/d92$f;
    }
.end annotation


# static fields
.field public static J:Ljava/util/logging/Logger;

.field public static final K:Ljava/util/Random;


# instance fields
.field public A:Ljava/lang/Thread;

.field public B:I

.field public C:J

.field public final D:Ljava/util/concurrent/ExecutorService;

.field public final E:Ljava/util/concurrent/locks/ReentrantLock;

.field public F:Lcom/shabakaty/downloader/mi0;

.field public final G:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/d92$g;",
            ">;"
        }
    .end annotation
.end field

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/Object;

.field public volatile r:Ljava/net/InetAddress;

.field public volatile s:Ljava/net/MulticastSocket;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ni0;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ti2$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/ti2$b;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lcom/shabakaty/downloader/ji0;

.field public final x:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/j14;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/d92$h;",
            ">;"
        }
    .end annotation
.end field

.field public z:Lcom/shabakaty/downloader/jv1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/d92;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/d92;->K:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b92;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/mw2;

    const-string v1, "JmDNS"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mw2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->D:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->E:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->I:Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v1, "JmDNS instance created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ji0;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ji0;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->t:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->v:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->y:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/jv1;->v:Ljava/util/logging/Logger;

    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_4

    :try_start_0
    const-string v2, "net.mdns.interface"

    .line 15
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 16
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 19
    invoke-static {}, Lcom/shabakaty/downloader/ty2$a;->a()Lcom/shabakaty/downloader/ty2;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/uy2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/uy2;->a()[Ljava/net/InetAddress;

    move-result-object v3

    .line 20
    array-length v4, v3

    if-lez v4, :cond_3

    .line 21
    aget-object v2, v3, v1

    .line 22
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 23
    sget-object v3, Lcom/shabakaty/downloader/jv1;->v:Ljava/util/logging/Logger;

    const-string v4, "Could not find any address beside the loopback."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v2, p1

    .line 24
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 25
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v3, "in-addr.arpa"

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_7
    if-eqz p2, :cond_8

    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 28
    :goto_3
    sget-object v2, Lcom/shabakaty/downloader/jv1;->v:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not intialize the host network interface on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "because of an error: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 29
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-object v2, p1

    if-eqz p2, :cond_9

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    :goto_4
    move-object v0, p2

    goto :goto_6

    :cond_9
    const-string p1, "computer"

    :goto_5
    move-object v0, p1

    :cond_a
    :goto_6
    const-string p1, ".local"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_b

    .line 32
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_b
    const/16 p1, 0x2e

    const/16 v1, 0x2d

    .line 33
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".local."

    .line 34
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/shabakaty/downloader/jv1;

    invoke-direct {v0, v2, p1, p0}, Lcom/shabakaty/downloader/jv1;-><init>(Ljava/net/InetAddress;Ljava/lang/String;Lcom/shabakaty/downloader/d92;)V

    .line 36
    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    if-eqz p2, :cond_c

    goto :goto_7

    .line 37
    :cond_c
    iget-object p2, v0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 38
    :goto_7
    iput-object p2, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/d92;->l0(Lcom/shabakaty/downloader/jv1;)V

    .line 40
    iget-object p1, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d92;->x0(Ljava/util/Collection;)V

    .line 42
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/zi0;->g()V

    return-void
.end method

.method public static B0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final B(Ljava/lang/String;Lcom/shabakaty/downloader/m14;Z)V
    .locals 7

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ti2$a;

    invoke-direct {v0, p2, p3}, Lcom/shabakaty/downloader/ti2$a;-><init>(Lcom/shabakaty/downloader/m14;Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, p3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lcom/shabakaty/downloader/d92$g;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/d92$g;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/m14;

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v1, v2}, Lcom/shabakaty/downloader/d92;->B(Ljava/lang/String;Lcom/shabakaty/downloader/m14;Z)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :cond_1
    if-eqz v1, :cond_3

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_3
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ji0;->c()Ljava/util/Collection;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/li0;

    .line 16
    check-cast v2, Lcom/shabakaty/downloader/ri0;

    .line 17
    invoke-virtual {v2}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/ti0;->z:Lcom/shabakaty/downloader/ti0;

    if-ne v3, v4, :cond_4

    .line 18
    invoke-virtual {v2}, Lcom/shabakaty/downloader/li0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    new-instance v3, Lcom/shabakaty/downloader/i14;

    .line 20
    iget-object v4, v2, Lcom/shabakaty/downloader/li0;->c:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v5, v4

    goto :goto_2

    :cond_5
    const-string v5, ""

    :goto_2
    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, ""

    .line 21
    :goto_3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/d92;->B0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/ri0;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object v2

    .line 23
    invoke-direct {v3, p0, v5, v4, v2}, Lcom/shabakaty/downloader/i14;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j14;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/h14;

    .line 25
    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/ti2$a;->a(Lcom/shabakaty/downloader/h14;)V

    goto :goto_4

    .line 26
    :cond_8
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d92;->c(Ljava/lang/String;)V

    return-void
.end method

.method public C0()V
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v1, "unregisterAllServices()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k14;

    if-eqz v1, :cond_1

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling service info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v1, v1, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/xi0$b;->b()Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->f()V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/k14;

    if-eqz v2, :cond_4

    .line 11
    sget-object v3, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    sget-object v3, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait for service info cancel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_5
    const-wide/16 v3, 0x1388

    .line 13
    iget-object v5, v2, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v5, v3, v4}, Lcom/shabakaty/downloader/xi0$b;->m(J)Z

    .line 14
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public D()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ji0;->c()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/li0;

    .line 4
    :try_start_0
    move-object v4, v3

    check-cast v4, Lcom/shabakaty/downloader/ri0;

    .line 5
    invoke-virtual {v4, v0, v1}, Lcom/shabakaty/downloader/ri0;->i(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    sget-object v5, Lcom/shabakaty/downloader/d92$f;->r:Lcom/shabakaty/downloader/d92$f;

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/shabakaty/downloader/d92;->D0(JLcom/shabakaty/downloader/ri0;Lcom/shabakaty/downloader/d92$f;)V

    .line 7
    iget-object v5, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 8
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/ji0;->i(Lcom/shabakaty/downloader/li0;)Z

    goto :goto_0

    :cond_1
    const/16 v5, 0x32

    .line 9
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ri0;->s(I)J

    move-result-wide v5

    const/4 v7, 0x0

    cmp-long v8, v5, v0

    if-gtz v8, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/ri0;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/j14;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-virtual {v4}, Lcom/shabakaty/downloader/j14;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/d92;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 13
    sget-object v5, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v8, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".Error while reaping records: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    sget-object v3, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public D0(JLcom/shabakaty/downloader/ri0;Lcom/shabakaty/downloader/d92$f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->t:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->t:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ni0;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 6
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/shabakaty/downloader/ni0;->a(Lcom/shabakaty/downloader/ji0;JLcom/shabakaty/downloader/li0;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/ti0;->v:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 8
    invoke-virtual {p3, p0}, Lcom/shabakaty/downloader/ri0;->u(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/h14;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->c()Lcom/shabakaty/downloader/j14;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->c()Lcom/shabakaty/downloader/j14;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/j14;->u()Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->e()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/shabakaty/downloader/d92;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/shabakaty/downloader/k14;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/shabakaty/downloader/k14;->u()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 12
    new-instance p3, Lcom/shabakaty/downloader/i14;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/shabakaty/downloader/i14;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j14;)V

    move-object p1, p3

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_3

    .line 14
    monitor-enter p2

    .line 15
    :try_start_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 17
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 18
    :goto_1
    sget-object p2, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    sget-object p2, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".updating record for event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 22
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 23
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p4, 0x2

    if-eq p2, p4, :cond_5

    goto :goto_4

    .line 24
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/ti2$a;

    .line 25
    iget-boolean p4, p3, Lcom/shabakaty/downloader/ti2;->b:Z

    if-eqz p4, :cond_6

    .line 26
    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/ti2$a;->a(Lcom/shabakaty/downloader/h14;)V

    goto :goto_2

    .line 27
    :cond_6
    iget-object p4, p0, Lcom/shabakaty/downloader/d92;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/shabakaty/downloader/d92$c;

    invoke-direct {v0, p0, p3, p1}, Lcom/shabakaty/downloader/d92$c;-><init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/ti2$a;Lcom/shabakaty/downloader/h14;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    .line 28
    :cond_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/ti2$a;

    .line 29
    iget-boolean p4, p3, Lcom/shabakaty/downloader/ti2;->b:Z

    if-eqz p4, :cond_8

    .line 30
    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/ti2$a;->b(Lcom/shabakaty/downloader/h14;)V

    goto :goto_3

    .line 31
    :cond_8
    iget-object p4, p0, Lcom/shabakaty/downloader/d92;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/shabakaty/downloader/d92$d;

    invoke-direct {v0, p0, p3, p1}, Lcom/shabakaty/downloader/d92$d;-><init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/ti2$a;Lcom/shabakaty/downloader/h14;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3

    :cond_9
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final J()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v1, "closeMulticastSocket()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->r:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    .line 5
    :catch_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->A:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->A:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v2, "closeMulticastSocket(): waiting for jmDNS monitor"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v1, 0x3e8

    .line 11
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 12
    :catch_2
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 13
    :cond_3
    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->A:Ljava/lang/Thread;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 14
    :goto_4
    sget-object v2, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "closeMulticastSocket() Close socket exception "

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :goto_5
    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    :cond_4
    return-void
.end method

.method public final K()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v1, "disposeServiceCollectors()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/d92$g;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/d92;->w(Ljava/lang/String;Lcom/shabakaty/downloader/m14;)V

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/shabakaty/downloader/k14;
    .locals 13

    move-object v0, p0

    move/from16 v8, p4

    .line 1
    new-instance v9, Lcom/shabakaty/downloader/k14;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/k14;->A(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/j14$a;->u:Lcom/shabakaty/downloader/j14$a;

    move-object v3, v1

    check-cast v3, Ljava/util/HashMap;

    move-object v4, p2

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/j14$a;->v:Lcom/shabakaty/downloader/j14$a;

    move-object/from16 v4, p3

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/k14;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move/from16 v6, p4

    .line 6
    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 8
    new-instance v10, Lcom/shabakaty/downloader/ri0$e;

    sget-object v11, Lcom/shabakaty/downloader/si0;->u:Lcom/shabakaty/downloader/si0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v9}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v7

    move-object v2, v10

    move-object v3, p1

    move-object v4, v11

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/ri0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/shabakaty/downloader/ji0;->d(Lcom/shabakaty/downloader/li0;)Lcom/shabakaty/downloader/li0;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lcom/shabakaty/downloader/ri0;

    if-eqz v2, :cond_9

    .line 10
    check-cast v1, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {v1, v8}, Lcom/shabakaty/downloader/ri0;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/k14;

    if-eqz v1, :cond_9

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/k14;->C()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    .line 12
    iget-object v4, v0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 13
    invoke-virtual {v9}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/ti0;->z:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v4, v5, v6, v11}, Lcom/shabakaty/downloader/ji0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Lcom/shabakaty/downloader/li0;

    move-result-object v4

    .line 14
    instance-of v5, v4, Lcom/shabakaty/downloader/ri0;

    if-eqz v5, :cond_0

    .line 15
    check-cast v4, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/ri0;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 16
    new-instance v12, Lcom/shabakaty/downloader/k14;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/j14;->k()I

    move-result v3

    invoke-virtual {v10}, Lcom/shabakaty/downloader/j14;->t()I

    move-result v4

    invoke-virtual {v10}, Lcom/shabakaty/downloader/j14;->l()I

    move-result v5

    const/4 v7, 0x0

    move-object v1, v12

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/k14;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 17
    invoke-virtual {v10}, Lcom/shabakaty/downloader/j14;->r()[B

    move-result-object v3

    .line 18
    invoke-virtual {v10}, Lcom/shabakaty/downloader/j14;->o()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, ""

    move-object v12, v1

    move-object v1, v2

    .line 19
    :goto_0
    iget-object v2, v0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 20
    sget-object v4, Lcom/shabakaty/downloader/ti0;->t:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v2, v1, v4, v11}, Lcom/shabakaty/downloader/ji0;->g(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/li0;

    .line 21
    instance-of v6, v4, Lcom/shabakaty/downloader/ri0;

    if-eqz v6, :cond_1

    .line 22
    check-cast v4, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/ri0;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 23
    invoke-virtual {v4}, Lcom/shabakaty/downloader/j14;->h()[Ljava/net/Inet4Address;

    move-result-object v6

    array-length v7, v6

    :goto_2
    if-ge v5, v7, :cond_2

    aget-object v10, v6, v5

    .line 24
    iget-object v11, v12, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 25
    :cond_2
    invoke-virtual {v4}, Lcom/shabakaty/downloader/j14;->r()[B

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/shabakaty/downloader/k14;->w([B)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v2, v0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 27
    sget-object v4, Lcom/shabakaty/downloader/ti0;->y:Lcom/shabakaty/downloader/ti0;

    sget-object v6, Lcom/shabakaty/downloader/si0;->u:Lcom/shabakaty/downloader/si0;

    invoke-virtual {v2, v1, v4, v6}, Lcom/shabakaty/downloader/ji0;->g(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/li0;

    .line 28
    instance-of v4, v2, Lcom/shabakaty/downloader/ri0;

    if-eqz v4, :cond_4

    .line 29
    check-cast v2, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/ri0;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/j14;->i()[Ljava/net/Inet6Address;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_5

    aget-object v10, v4, v7

    .line 31
    iget-object v11, v12, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 32
    :cond_5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/j14;->r()[B

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/shabakaty/downloader/k14;->w([B)V

    goto :goto_3

    .line 33
    :cond_6
    iget-object v1, v0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 34
    invoke-virtual {v12}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/shabakaty/downloader/ti0;->x:Lcom/shabakaty/downloader/ti0;

    sget-object v5, Lcom/shabakaty/downloader/si0;->u:Lcom/shabakaty/downloader/si0;

    invoke-virtual {v1, v2, v4, v5}, Lcom/shabakaty/downloader/ji0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Lcom/shabakaty/downloader/li0;

    move-result-object v1

    .line 35
    instance-of v2, v1, Lcom/shabakaty/downloader/ri0;

    if-eqz v2, :cond_7

    .line 36
    check-cast v1, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {v1, v8}, Lcom/shabakaty/downloader/ri0;->v(Z)Lcom/shabakaty/downloader/j14;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 37
    invoke-virtual {v1}, Lcom/shabakaty/downloader/j14;->r()[B

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/shabakaty/downloader/k14;->w([B)V

    .line 38
    :cond_7
    invoke-virtual {v12}, Lcom/shabakaty/downloader/k14;->r()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_8

    .line 39
    invoke-virtual {v12, v3}, Lcom/shabakaty/downloader/k14;->w([B)V

    .line 40
    :cond_8
    invoke-virtual {v12}, Lcom/shabakaty/downloader/k14;->u()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v9, v12

    :cond_9
    return-object v9
.end method

.method public M(Lcom/shabakaty/downloader/mi0;I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".handle query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x78

    add-long/2addr v1, v3

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->a()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ri0;

    .line 7
    invoke-virtual {v4, p0, v1, v2}, Lcom/shabakaty/downloader/ri0;->w(Lcom/shabakaty/downloader/d92;J)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->E:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->F:Lcom/shabakaty/downloader/mi0;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/mi0;->j(Lcom/shabakaty/downloader/mi0;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mi0;->k()Lcom/shabakaty/downloader/mi0;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/d92;->F:Lcom/shabakaty/downloader/mi0;

    .line 14
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lcom/shabakaty/downloader/zi0;->k(Lcom/shabakaty/downloader/mi0;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_1
    iget-object p2, p0, Lcom/shabakaty/downloader/d92;->E:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 17
    iget-object p1, p1, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ri0;

    .line 19
    invoke-virtual {p0, p2, v1, v2}, Lcom/shabakaty/downloader/d92;->O(Lcom/shabakaty/downloader/ri0;J)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->j()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 21
    iget-object p2, p0, Lcom/shabakaty/downloader/d92;->E:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22
    throw p1
.end method

.method public O(Lcom/shabakaty/downloader/ri0;J)V
    .locals 9

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/d92$f;->t:Lcom/shabakaty/downloader/d92$f;

    sget-object v1, Lcom/shabakaty/downloader/d92$f;->v:Lcom/shabakaty/downloader/d92$f;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/ri0;->i(J)Z

    move-result v2

    .line 3
    sget-object v3, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v6, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " handle response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->m()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->h()Z

    move-result v3

    if-nez v3, :cond_b

    .line 8
    iget-boolean v3, p1, Lcom/shabakaty/downloader/li0;->f:Z

    .line 9
    iget-object v5, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 10
    invoke-virtual {v5, p1}, Lcom/shabakaty/downloader/ji0;->d(Lcom/shabakaty/downloader/li0;)Lcom/shabakaty/downloader/li0;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ri0;

    .line 11
    sget-object v6, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    invoke-virtual {v6, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    sget-object v4, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object v7, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 14
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " handle response cached record: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 15
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 16
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ji0;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/li0;

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v7

    invoke-virtual {v6}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object v7

    invoke-virtual {v6}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eq v6, v5, :cond_2

    .line 18
    check-cast v6, Lcom/shabakaty/downloader/ri0;

    .line 19
    iput-wide p2, v6, Lcom/shabakaty/downloader/ri0;->i:J

    .line 20
    iput v4, v6, Lcom/shabakaty/downloader/ri0;->h:I

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_a

    if-eqz v2, :cond_5

    .line 21
    iget v0, p1, Lcom/shabakaty/downloader/ri0;->h:I

    if-nez v0, :cond_4

    .line 22
    iput-wide p2, v5, Lcom/shabakaty/downloader/ri0;->i:J

    .line 23
    iput v4, v5, Lcom/shabakaty/downloader/ri0;->h:I

    goto/16 :goto_2

    .line 24
    :cond_4
    sget-object v0, Lcom/shabakaty/downloader/d92$f;->r:Lcom/shabakaty/downloader/d92$f;

    .line 25
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 26
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ji0;->i(Lcom/shabakaty/downloader/li0;)Z

    goto/16 :goto_3

    .line 27
    :cond_5
    invoke-virtual {p1, v5}, Lcom/shabakaty/downloader/ri0;->z(Lcom/shabakaty/downloader/ri0;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/shabakaty/downloader/li0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    goto :goto_1

    .line 30
    :cond_6
    iget-wide v3, p1, Lcom/shabakaty/downloader/ri0;->i:J

    iput-wide v3, v5, Lcom/shabakaty/downloader/ri0;->i:J

    .line 31
    iget p1, p1, Lcom/shabakaty/downloader/ri0;->h:I

    iput p1, v5, Lcom/shabakaty/downloader/ri0;->h:I

    move-object v0, v1

    move-object p1, v5

    goto :goto_3

    .line 32
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ri0;->y()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 33
    sget-object v0, Lcom/shabakaty/downloader/d92$f;->s:Lcom/shabakaty/downloader/d92$f;

    .line 34
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 35
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/shabakaty/downloader/li0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 37
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_8

    .line 38
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 40
    :cond_8
    monitor-enter v4

    .line 41
    :try_start_0
    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 44
    :cond_9
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 45
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/ji0;->b(Lcom/shabakaty/downloader/li0;)Z

    goto :goto_3

    :cond_a
    if-nez v2, :cond_b

    .line 46
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 47
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/ji0;->b(Lcom/shabakaty/downloader/li0;)Z

    goto :goto_3

    :cond_b
    :goto_2
    move-object v0, v1

    .line 48
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/ti0;->v:Lcom/shabakaty/downloader/ti0;

    if-ne v3, v4, :cond_f

    .line 49
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->m()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v2, :cond_d

    .line 50
    check-cast p1, Lcom/shabakaty/downloader/ri0$e;

    .line 51
    iget-object p1, p1, Lcom/shabakaty/downloader/ri0$e;->m:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d92;->q0(Ljava/lang/String;)Z

    :cond_d
    return-void

    .line 53
    :cond_e
    invoke-virtual {p1}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/d92;->q0(Ljava/lang/String;)Z

    move-result v2

    or-int/lit8 v2, v2, 0x0

    if-eqz v2, :cond_f

    if-ne v0, v1, :cond_f

    .line 54
    sget-object v0, Lcom/shabakaty/downloader/d92$f;->u:Lcom/shabakaty/downloader/d92$f;

    :cond_f
    if-eq v0, v1, :cond_10

    .line 55
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/shabakaty/downloader/d92;->D0(JLcom/shabakaty/downloader/ri0;Lcom/shabakaty/downloader/d92$f;)V

    :cond_10
    return-void
.end method

.method public S(Lcom/shabakaty/downloader/mi0;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->a()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ri0;

    .line 3
    invoke-virtual {p0, v4, v0, v1}, Lcom/shabakaty/downloader/d92;->O(Lcom/shabakaty/downloader/ri0;J)V

    .line 4
    sget-object v5, Lcom/shabakaty/downloader/ti0;->t:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/shabakaty/downloader/ti0;->y:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v4, p0}, Lcom/shabakaty/downloader/ri0;->x(Lcom/shabakaty/downloader/d92;)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {v4, p0}, Lcom/shabakaty/downloader/ri0;->x(Lcom/shabakaty/downloader/d92;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->j()V

    :cond_4
    return-void
.end method

.method public V()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi0$b;->c()Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi0$b;->f()Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vi0;->j()Z

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->b()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zi0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling JmDNS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi0$b;->o()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi0$b;->o()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/vi0;->D:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xi0$b;->j(Lcom/shabakaty/downloader/vi0;)V

    .line 10
    iput-object v4, v0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_3
    :goto_0
    if-eqz v3, :cond_6

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v2, "Canceling the timer"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->d()V

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->C0()V

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->K()V

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for JmDNS cancel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_4
    const-wide/16 v2, 0x1388

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 19
    iget-object v5, v0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    if-nez v5, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/xi0$b;->m(J)Z

    .line 21
    :goto_1
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v2, "Canceling the state timer"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->b()V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->D:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->J()V

    .line 25
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/zi0$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v1, "JmDNS closed."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 30
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/xi0$b;->e(Lcom/shabakaty/downloader/yi0;)Z

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->d()V

    return-void
.end method

.method public final d0(Lcom/shabakaty/downloader/k14;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->B()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_0
    const/4 v3, 0x0

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ji0;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/li0;

    .line 5
    sget-object v8, Lcom/shabakaty/downloader/ti0;->z:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/li0;->f()Lcom/shabakaty/downloader/ti0;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, v1, v2}, Lcom/shabakaty/downloader/li0;->i(J)Z

    move-result v8

    if-nez v8, :cond_1

    .line 6
    move-object v8, v5

    check-cast v8, Lcom/shabakaty/downloader/ri0$f;

    .line 7
    iget v9, v8, Lcom/shabakaty/downloader/ri0$f;->o:I

    .line 8
    iget v10, p1, Lcom/shabakaty/downloader/k14;->y:I

    if-ne v9, v10, :cond_2

    .line 9
    iget-object v9, v8, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    .line 10
    iget-object v10, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 11
    iget-object v10, v10, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 12
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 13
    :cond_2
    sget-object v3, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    sget-object v3, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeServiceNameUnique() JmDNS.makeServiceNameUnique srv collision:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " s.server="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v5, v8, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 17
    iget-object v5, v5, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " equals:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v5, v8, Lcom/shabakaty/downloader/ri0$f;->p:Ljava/lang/String;

    .line 20
    iget-object v8, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 21
    iget-object v8, v8, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 22
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 23
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/iw2$b;->a()Lcom/shabakaty/downloader/iw2;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 24
    iget-object v4, v4, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/shabakaty/downloader/iw2$c;

    invoke-virtual {v3, v4, v5, v7}, Lcom/shabakaty/downloader/iw2$c;->a(Ljava/net/InetAddress;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/k14;->H(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 26
    :cond_4
    iget-object v4, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->B()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/j14;

    if-eqz v4, :cond_5

    if-eq v4, p1, :cond_5

    .line 27
    invoke-static {}, Lcom/shabakaty/downloader/iw2$b;->a()Lcom/shabakaty/downloader/iw2;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 28
    iget-object v4, v4, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->j()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/shabakaty/downloader/iw2$c;

    invoke-virtual {v3, v4, v5, v7}, Lcom/shabakaty/downloader/iw2$c;->a(Ljava/net/InetAddress;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/k14;->H(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_5
    if-nez v3, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    return p1
.end method

.method public e(Lcom/shabakaty/downloader/yi0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xi0$b;->e(Lcom/shabakaty/downloader/yi0;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->f()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->g()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->j()V

    return-void
.end method

.method public k(Lcom/shabakaty/downloader/mi0;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/zi0;->k(Lcom/shabakaty/downloader/mi0;I)V

    return-void
.end method

.method public final l0(Lcom/shabakaty/downloader/jv1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->r:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 3
    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    const-string v0, "FF02::FB"

    .line 4
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->r:Ljava/net/InetAddress;

    goto :goto_0

    :cond_0
    const-string v0, "224.0.0.251"

    .line 5
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->r:Ljava/net/InetAddress;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->J()V

    .line 8
    :cond_2
    new-instance v0, Ljava/net/MulticastSocket;

    sget v1, Lcom/shabakaty/downloader/ki0;->a:I

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/jv1;->t:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_3

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/jv1;->t:Ljava/net/NetworkInterface;

    .line 12
    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v1, "openMulticastSocket() Set network interface exception: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 15
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->r:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->o()V

    return-void
.end method

.method public o0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "recover()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->c0()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->s()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/xi0$b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "recover() thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/d92$e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".recover()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/d92$e;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 15
    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->p()V

    return-void
.end method

.method public p0(Lcom/shabakaty/downloader/j14;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->c0()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->s()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/k14;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    if-ne v0, p0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A service information can only be registered once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A service information can only be registered with a single instamce of JmDNS."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 11
    iput-object p0, v0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/d92;->q0(Ljava/lang/String;)Z

    .line 13
    iget-object v0, p1, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi0$b;->g()Z

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 16
    iput-object v1, p1, Lcom/shabakaty/downloader/k14;->x:Ljava/lang/String;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 18
    instance-of v1, v0, Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 19
    check-cast v0, Ljava/net/Inet4Address;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 20
    :goto_1
    iget-object v1, p1, Lcom/shabakaty/downloader/k14;->D:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 23
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_4

    .line 24
    move-object v2, v0

    check-cast v2, Ljava/net/Inet6Address;

    .line 25
    :cond_4
    iget-object v0, p1, Lcom/shabakaty/downloader/k14;->E:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 27
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/xi0$b;->l(J)Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d92;->d0(Lcom/shabakaty/downloader/k14;)Z

    .line 29
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->B()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d92;->d0(Lcom/shabakaty/downloader/k14;)Z

    goto :goto_2

    .line 31
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->j()V

    .line 32
    iget-object v0, p1, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/xi0$b;->l(J)Z

    .line 33
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    sget-object v0, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerService() JmDNS registered service as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 35
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This DNS is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q0(Ljava/lang/String;)Z
    .locals 13

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/k14;->A(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/j14$a;->r:Lcom/shabakaty/downloader/j14$a;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/j14$a;->s:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/j14$a;->t:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    sget-object v4, Lcom/shabakaty/downloader/j14$a;->v:Lcom/shabakaty/downloader/j14$a;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "_"

    const-string v6, "."

    invoke-static {v5, v3, v6}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, "_"

    const-string v6, "."

    invoke-static {v5, v2, v6}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    const-string v5, "."

    invoke-static {v4, v2, v1, v5}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    sget-object v5, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v7, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    const-string v8, ".registering service type: "

    const-string v9, " as: "

    .line 11
    invoke-static {v6, v7, v8, p1, v9}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, " subtype: "

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/d92;->y:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v4}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v3, "dns-sd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v3, "in-addr.arpa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ip6.arpa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/d92;->y:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/shabakaty/downloader/d92$h;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/d92$h;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->v:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/shabakaty/downloader/ti2$b;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/ti2$b;

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/i14;

    const-string v8, ""

    invoke-direct {v3, p0, v2, v8, v5}, Lcom/shabakaty/downloader/i14;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j14;)V

    .line 16
    array-length v8, v1

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_6

    aget-object v10, v1, v9

    .line 17
    iget-object v11, p0, Lcom/shabakaty/downloader/d92;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Lcom/shabakaty/downloader/d92$a;

    invoke-direct {v12, p0, v10, v3}, Lcom/shabakaty/downloader/d92$a;-><init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/ti2$b;Lcom/shabakaty/downloader/h14;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 18
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 19
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->y:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/d92$h;

    if-eqz v1, :cond_9

    .line 20
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/d92$h;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/d92$h;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 23
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/d92$h;->a(Ljava/lang/String;)Z

    .line 24
    iget-object p1, p0, Lcom/shabakaty/downloader/d92;->v:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/shabakaty/downloader/ti2$b;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/shabakaty/downloader/ti2$b;

    .line 25
    new-instance v3, Lcom/shabakaty/downloader/i14;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "._sub."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v3, p0, v0, v2, v5}, Lcom/shabakaty/downloader/i14;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j14;)V

    .line 26
    array-length v0, p1

    :goto_5
    if-ge v7, v0, :cond_8

    aget-object v2, p1, v7

    .line 27
    iget-object v4, p0, Lcom/shabakaty/downloader/d92;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/shabakaty/downloader/d92$b;

    invoke-direct {v5, p0, v2, v3}, Lcom/shabakaty/downloader/d92$b;-><init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/ti2$b;Lcom/shabakaty/downloader/h14;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    move v6, p1

    .line 28
    :cond_8
    monitor-exit v1

    move p1, v6

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_6
    return p1
.end method

.method public r()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/zi0;->r()V

    return-void
.end method

.method public s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t(Lcom/shabakaty/downloader/k14;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zi0;->t(Lcom/shabakaty/downloader/k14;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t---- Local Host -----"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t---- Services -----"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ": "

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "\n\t\tService: "

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v4, p0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t---- Types ----"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->y:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    iget-object v5, p0, Lcom/shabakaty/downloader/d92;->y:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/d92$h;

    const-string v5, "\n\t\tType: "

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v5, v3, Lcom/shabakaty/downloader/d92$h;->s:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "no subtypes"

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ji0;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t---- Service Collectors ----"

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v2, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "\n\t\tService Collector: "

    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v5, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 30
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t---- Service Listeners ----"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n\t\tService Listener: "

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 37
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/shabakaty/downloader/k14;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->D()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d92;->q0(Ljava/lang/String;)Z

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lcom/shabakaty/downloader/d92$g;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/d92$g;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/d92;->G:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/m14;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/d92;->B(Ljava/lang/String;Lcom/shabakaty/downloader/m14;Z)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/d92;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/shabakaty/downloader/k14;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/zi0;->t(Lcom/shabakaty/downloader/k14;)V

    return-object p1
.end method

.method public v(Ljava/lang/String;Lcom/shabakaty/downloader/m14;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/d92;->B(Ljava/lang/String;Lcom/shabakaty/downloader/m14;Z)V

    return-void
.end method

.method public v0(Lcom/shabakaty/downloader/pi0;)V
    .locals 6

    const-string v0, "send("

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->g()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/pi0;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/pi0$a;

    iget v4, p1, Lcom/shabakaty/downloader/pi0;->i:I

    invoke-direct {v3, v4, p1}, Lcom/shabakaty/downloader/pi0$a;-><init>(ILcom/shabakaty/downloader/pi0;)V

    .line 5
    iget-boolean v4, p1, Lcom/shabakaty/downloader/oi0;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->b()I

    move-result v4

    :goto_0
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 6
    iget v4, p1, Lcom/shabakaty/downloader/oi0;->c:I

    .line 7
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/pi0$a;->e(I)V

    .line 12
    iget-object v4, p1, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/qi0;

    .line 13
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/pi0$a;->c(Lcom/shabakaty/downloader/qi0;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v4, p1, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ri0;

    .line 15
    invoke-virtual {v3, v5, v1, v2}, Lcom/shabakaty/downloader/pi0$a;->d(Lcom/shabakaty/downloader/ri0;J)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v4, p1, Lcom/shabakaty/downloader/oi0;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ri0;

    .line 17
    invoke-virtual {v3, v5, v1, v2}, Lcom/shabakaty/downloader/pi0$a;->d(Lcom/shabakaty/downloader/ri0;J)V

    goto :goto_3

    .line 18
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/downloader/oi0;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ri0;

    .line 19
    invoke-virtual {v3, v4, v1, v2}, Lcom/shabakaty/downloader/pi0$a;->d(Lcom/shabakaty/downloader/ri0;J)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 21
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/shabakaty/downloader/d92;->r:Ljava/net/InetAddress;

    sget v4, Lcom/shabakaty/downloader/ki0;->a:I

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 22
    sget-object p1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    :try_start_0
    new-instance p1, Lcom/shabakaty/downloader/mi0;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/mi0;-><init>(Ljava/net/DatagramPacket;)V

    .line 24
    sget-object v3, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 25
    sget-object v2, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v4, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") JmDNS out:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/mi0;->l(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 28
    sget-object v2, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-class v3, Lcom/shabakaty/downloader/d92;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    iget-object v4, p0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    const-string v5, ") - JmDNS can not parse what it sends!!!"

    .line 30
    invoke-static {v0, v4, v5}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, p1}, Ljava/util/logging/Logger;->throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :cond_5
    :goto_5
    iget-object p1, p0, Lcom/shabakaty/downloader/d92;->s:Ljava/net/MulticastSocket;

    if-eqz p1, :cond_6

    .line 32
    invoke-virtual {p1}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 33
    invoke-virtual {p1, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    :cond_6
    return-void
.end method

.method public w(Ljava/lang/String;Lcom/shabakaty/downloader/m14;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/ti2$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/shabakaty/downloader/ti2$a;-><init>(Lcom/shabakaty/downloader/m14;Z)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/d92;->u:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    const-string p3, ""

    const/4 p4, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/d92;->u0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/shabakaty/downloader/k14;

    move-result-object p1

    .line 2
    monitor-enter p1

    const-wide/16 p2, 0xc8

    const-wide/16 v0, 0x1e

    :goto_0
    int-to-long v2, p4

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->u()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catchall_0
    move-exception p2

    goto :goto_2
.end method

.method public final x0(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/j14;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92;->A:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/m94;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/m94;-><init>(Lcom/shabakaty/downloader/d92;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d92;->A:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d92;->j()V

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/j14;

    .line 6
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/k14;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/k14;-><init>(Lcom/shabakaty/downloader/j14;)V

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/d92;->p0(Lcom/shabakaty/downloader/j14;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "start() Registration exception "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
