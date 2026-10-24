.class public Lcom/shabakaty/downloader/qi0$a;
.super Lcom/shabakaty/downloader/qi0;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/qi0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/li0;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s(Lcom/shabakaty/downloader/d92;Ljava/util/Set;)V
    .locals 5
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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/shabakaty/downloader/li0;->f:Z

    const/16 v2, 0xe10

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/shabakaty/downloader/jv1;->a(Lcom/shabakaty/downloader/si0;ZI)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 9
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/d92;->y:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/qi0$e;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/ti0;->v:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object v3

    .line 12
    iget-boolean v4, p0, Lcom/shabakaty/downloader/li0;->f:Z

    .line 13
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/qi0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/qi0$e;->s(Lcom/shabakaty/downloader/d92;Ljava/util/Set;)V

    return-void

    .line 15
    :cond_1
    iget-object v1, p1, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 16
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k14;

    invoke-virtual {p0, p1, p2, v0}, Lcom/shabakaty/downloader/qi0;->t(Lcom/shabakaty/downloader/d92;Ljava/util/Set;Lcom/shabakaty/downloader/k14;)V

    return-void
.end method

.method public u(Lcom/shabakaty/downloader/d92;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
