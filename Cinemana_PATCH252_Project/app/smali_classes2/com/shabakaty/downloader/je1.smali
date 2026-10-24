.class public final Lcom/shabakaty/downloader/je1;
.super Lcom/shabakaty/downloader/fe1;
.source "TypeWithEnhancement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ku4;


# instance fields
.field public final u:Lcom/shabakaty/downloader/fe1;

.field public final v:Lcom/shabakaty/downloader/qe2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fe1;Lcom/shabakaty/downloader/qe2;)V
    .locals 2

    const-string v0, "origin"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enhancement"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/fe1;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/je1;->u:Lcom/shabakaty/downloader/fe1;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/je1;->v:Lcom/shabakaty/downloader/qe2;

    return-void
.end method


# virtual methods
.method public O()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/je1;->v:Lcom/shabakaty/downloader/qe2;

    return-object v0
.end method

.method public bridge synthetic V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/je1;->c1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/je1;

    move-result-object p1

    return-object p1
.end method

.method public X0(Z)Lcom/shabakaty/downloader/qw4;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/je1;->u:Lcom/shabakaty/downloader/fe1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qw4;->X0(Z)Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/je1;->v:Lcom/shabakaty/downloader/qe2;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/qw4;->X0(Z)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/vd5;->E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/je1;->c1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/je1;

    move-result-object p1

    return-object p1
.end method

.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/je1;->u:Lcom/shabakaty/downloader/fe1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qw4;->Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/je1;->v:Lcom/shabakaty/downloader/qe2;

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vd5;->E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    return-object p1
.end method

.method public a1()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/je1;->u:Lcom/shabakaty/downloader/fe1;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fe1;->a1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method

.method public b1(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/cr0;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p2}, Lcom/shabakaty/downloader/cr0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/je1;->v:Lcom/shabakaty/downloader/qe2;

    .line 3
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/wq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/je1;->u:Lcom/shabakaty/downloader/fe1;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/fe1;->b1(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/cr0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/je1;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/je1;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/je1;->u:Lcom/shabakaty/downloader/fe1;

    .line 3
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/fe1;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/je1;->v:Lcom/shabakaty/downloader/qe2;

    .line 5
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    .line 6
    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/je1;-><init>(Lcom/shabakaty/downloader/fe1;Lcom/shabakaty/downloader/qe2;)V

    return-object v0
.end method

.method public getOrigin()Lcom/shabakaty/downloader/qw4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/je1;->u:Lcom/shabakaty/downloader/fe1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[@EnhancedForWarnings("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/je1;->v:Lcom/shabakaty/downloader/qe2;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/je1;->u:Lcom/shabakaty/downloader/fe1;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
