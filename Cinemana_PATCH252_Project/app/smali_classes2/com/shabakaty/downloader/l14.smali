.class public Lcom/shabakaty/downloader/l14;
.super Lcom/shabakaty/downloader/ui0;
.source "ServiceInfoResolver.java"


# instance fields
.field public final u:Lcom/shabakaty/downloader/k14;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/k14;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ui0;-><init>(Lcom/shabakaty/downloader/d92;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    .line 5
    iput-object p1, v0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 7
    invoke-virtual {p2}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ti0;->C:Lcom/shabakaty/downloader/ti0;

    sget-object v2, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/qi0;->v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 9
    iget-object v4, p1, Lcom/shabakaty/downloader/d92;->t:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v4, p1, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ji0;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/li0;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 12
    invoke-virtual {v5}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object v7

    invoke-virtual {v0}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object v8

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/li0;->l(Lcom/shabakaty/downloader/li0;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_0

    .line 14
    invoke-virtual {v5, v1, v2}, Lcom/shabakaty/downloader/li0;->i(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 15
    iget-object v6, p1, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 16
    invoke-virtual {p2, v6, v1, v2, v5}, Lcom/shabakaty/downloader/k14;->a(Lcom/shabakaty/downloader/ji0;JLcom/shabakaty/downloader/li0;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    .line 3
    iget-boolean v2, v1, Lcom/shabakaty/downloader/k14;->G:Z

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/d92;->t:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    const-string v0, "ServiceInfoResolver("

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/ti0;->z:Lcom/shabakaty/downloader/ti0;

    sget-object v5, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    invoke-virtual {v2, v3, v4, v5}, Lcom/shabakaty/downloader/ji0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Lcom/shabakaty/downloader/li0;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/shabakaty/downloader/yi0;->b(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/ri0;J)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/ti0;->x:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v2, v3, v4, v5}, Lcom/shabakaty/downloader/ji0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Lcom/shabakaty/downloader/li0;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/shabakaty/downloader/yi0;->b(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/ri0;J)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/k14;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->o()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/ti0;->t:Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v2, v3, v4, v5}, Lcom/shabakaty/downloader/ji0;->g(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/li0;

    .line 13
    check-cast v3, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/shabakaty/downloader/yi0;->b(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/ri0;J)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 15
    iget-object v2, v2, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 16
    iget-object v3, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/k14;->o()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/ti0;->y:Lcom/shabakaty/downloader/ti0;

    sget-object v5, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    invoke-virtual {v2, v3, v4, v5}, Lcom/shabakaty/downloader/ji0;->g(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/li0;

    .line 17
    check-cast v3, Lcom/shabakaty/downloader/ri0;

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/shabakaty/downloader/yi0;->b(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/ri0;J)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ti0;->z:Lcom/shabakaty/downloader/ti0;

    sget-object v2, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/qi0;->v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/yi0;->d(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/qi0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ti0;->x:Lcom/shabakaty/downloader/ti0;

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/qi0;->v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/yi0;->d(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/qi0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->o()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ti0;->t:Lcom/shabakaty/downloader/ti0;

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/qi0;->v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/yi0;->d(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/qi0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k14;->o()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ti0;->y:Lcom/shabakaty/downloader/ti0;

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/qi0;->v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/yi0;->d(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/qi0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    const-string v0, "querying service info: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/l14;->u:Lcom/shabakaty/downloader/k14;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
