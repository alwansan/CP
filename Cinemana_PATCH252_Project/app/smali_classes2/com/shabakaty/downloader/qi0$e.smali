.class public Lcom/shabakaty/downloader/qi0$e;
.super Lcom/shabakaty/downloader/qi0;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/qi0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-void
.end method


# virtual methods
.method public s(Lcom/shabakaty/downloader/d92;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d92;",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/ri0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/j14;

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/k14;

    invoke-virtual {p0, p1, p2, v1}, Lcom/shabakaty/downloader/qi0;->t(Lcom/shabakaty/downloader/d92;Ljava/util/Set;Lcom/shabakaty/downloader/k14;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->y:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/d92;->y:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/d92$h;

    .line 9
    new-instance v8, Lcom/shabakaty/downloader/ri0$e;

    sget-object v4, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v5, 0x0

    const/16 v6, 0xe10

    .line 10
    iget-object v7, v1, Lcom/shabakaty/downloader/d92$h;->s:Ljava/lang/String;

    const-string v3, "_services._dns-sd._udp.local."

    move-object v2, v8

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/ri0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;)V

    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->d()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/j14$a;->u:Lcom/shabakaty/downloader/j14$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 15
    iget-object v1, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    .line 18
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/li0;->g:Ljava/util/Map;

    sget-object v1, Lcom/shabakaty/downloader/j14$a;->r:Lcom/shabakaty/downloader/j14$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "in-addr.arpa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xe10

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 21
    sget-object v4, Lcom/shabakaty/downloader/ti0;->t:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v0, v4, v3, v2}, Lcom/shabakaty/downloader/jv1;->g(Lcom/shabakaty/downloader/ti0;ZI)Lcom/shabakaty/downloader/ri0$e;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/li0;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ip6.arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 24
    sget-object v0, Lcom/shabakaty/downloader/ti0;->y:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {p1, v0, v3, v2}, Lcom/shabakaty/downloader/jv1;->g(Lcom/shabakaty/downloader/ti0;ZI)Lcom/shabakaty/downloader/ri0$e;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->h()Z

    :cond_5
    :goto_3
    return-void
.end method
