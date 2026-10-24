.class public Lcom/shabakaty/downloader/dv;
.super Lcom/shabakaty/downloader/wi0;
.source "Canceler.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/dv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/d92;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/wi0;-><init>(Lcom/shabakaty/downloader/d92;I)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/vi0;->z:Lcom/shabakaty/downloader/vi0;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/wi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 4
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

    const-string v0, "Canceler("

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vi0;->f()Lcom/shabakaty/downloader/vi0;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/wi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vi0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dv;->cancel()Z

    :cond_0
    return-void
.end method

.method public i(Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/si0;->u:Lcom/shabakaty/downloader/si0;

    const/4 v2, 0x1

    .line 4
    iget v3, p0, Lcom/shabakaty/downloader/wi0;->s:I

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/jv1;->a(Lcom/shabakaty/downloader/si0;ZI)Ljava/util/Collection;

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

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v2, v1}, Lcom/shabakaty/downloader/yi0;->a(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/mi0;Lcom/shabakaty/downloader/ri0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/k14;Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/si0;->u:Lcom/shabakaty/downloader/si0;

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/wi0;->s:I

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/shabakaty/downloader/k14;->x(Lcom/shabakaty/downloader/si0;ZILcom/shabakaty/downloader/jv1;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ri0;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p2, v1, v0}, Lcom/shabakaty/downloader/yi0;->a(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/mi0;Lcom/shabakaty/downloader/ri0;)Lcom/shabakaty/downloader/pi0;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()Lcom/shabakaty/downloader/pi0;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi0;

    const v1, 0x8400

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pi0;-><init>(I)V

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "canceling"

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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dv;->e()Ljava/lang/String;

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
