.class public Lcom/shabakaty/downloader/o14;
.super Lcom/shabakaty/downloader/ui0;
.source "ServiceResolver.java"


# instance fields
.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ui0;-><init>(Lcom/shabakaty/downloader/d92;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/o14;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 3

    const-string v0, "ServiceResolver("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, ")"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/j14;

    .line 5
    new-instance v10, Lcom/shabakaty/downloader/ri0$e;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/j14;->s()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v7, 0x0

    const/16 v8, 0xe10

    invoke-virtual {v3}, Lcom/shabakaty/downloader/j14;->n()Ljava/lang/String;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/ri0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZILjava/lang/String;)V

    invoke-virtual {p0, p1, v10, v0, v1}, Lcom/shabakaty/downloader/yi0;->b(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/ri0;J)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o14;->u:Ljava/lang/String;

    sget-object v1, Lcom/shabakaty/downloader/ti0;->v:Lcom/shabakaty/downloader/ti0;

    sget-object v2, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/qi0;->v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/yi0;->d(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/qi0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "querying service"

    return-object v0
.end method
