.class public Lcom/shabakaty/downloader/ag3;
.super Lcom/shabakaty/downloader/wi0;
.source "Prober.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ag3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/d92;)V
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/wi0;->v:I

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/wi0;-><init>(Lcom/shabakaty/downloader/d92;I)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/vi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/wi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wi0;->h(Lcom/shabakaty/downloader/vi0;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wi0;->o()V

    .line 2
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    const-string v0, "Prober("

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

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vi0;->f()Lcom/shabakaty/downloader/vi0;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/wi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ag3;->cancel()Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->o()V

    :cond_1
    return-void
.end method

.method public i(Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/ti0;->C:Lcom/shabakaty/downloader/ti0;

    sget-object v2, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/qi0;->v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pi0;->m(Lcom/shabakaty/downloader/qi0;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/si0;->u:Lcom/shabakaty/downloader/si0;

    .line 8
    iget v2, p0, Lcom/shabakaty/downloader/wi0;->s:I

    .line 9
    invoke-virtual {v0, v1, v3, v2}, Lcom/shabakaty/downloader/jv1;->a(Lcom/shabakaty/downloader/si0;ZI)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ri0;

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/yi0;->c(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/ri0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/k14;Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ti0;->C:Lcom/shabakaty/downloader/ti0;

    sget-object v4, Lcom/shabakaty/downloader/si0;->t:Lcom/shabakaty/downloader/si0;

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Lcom/shabakaty/downloader/qi0;->v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/yi0;->d(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/qi0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ri0$f;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget v6, p0, Lcom/shabakaty/downloader/wi0;->s:I

    .line 4
    iget v7, p1, Lcom/shabakaty/downloader/k14;->A:I

    .line 5
    iget v8, p1, Lcom/shabakaty/downloader/k14;->z:I

    .line 6
    iget v9, p1, Lcom/shabakaty/downloader/k14;->y:I

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 9
    iget-object v10, p1, Lcom/shabakaty/downloader/jv1;->r:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, v0

    .line 10
    invoke-direct/range {v2 .. v10}, Lcom/shabakaty/downloader/ri0$f;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/si0;ZIIIILjava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/yi0;->c(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/ri0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Lcom/shabakaty/downloader/pi0;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pi0;-><init>(I)V

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "probing"

    return-object v0
.end method

.method public n(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/d92;->o0()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ag3;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/wi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
