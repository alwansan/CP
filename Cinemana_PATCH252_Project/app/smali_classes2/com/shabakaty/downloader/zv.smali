.class public final Lcom/shabakaty/downloader/zv;
.super Lcom/shabakaty/downloader/b74;
.source "CapturedTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/iw;


# instance fields
.field public final s:Lcom/shabakaty/downloader/qt4;

.field public final t:Lcom/shabakaty/downloader/dw;

.field public final u:Z

.field public final v:Lcom/shabakaty/downloader/d9;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/dw;ZLcom/shabakaty/downloader/d9;)V
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zv;->s:Lcom/shabakaty/downloader/qt4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/zv;->t:Lcom/shabakaty/downloader/dw;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/zv;->u:Z

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/zv;->v:Lcom/shabakaty/downloader/d9;

    return-void
.end method


# virtual methods
.method public S0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public T0()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv;->t:Lcom/shabakaty/downloader/dw;

    return-object v0
.end method

.method public U0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zv;->u:Z

    return v0
.end method

.method public bridge synthetic V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zv;->c1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/zv;

    move-result-object p1

    return-object p1
.end method

.method public X0(Z)Lcom/shabakaty/downloader/qw4;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zv;->u:Z

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/zv;

    iget-object v1, p0, Lcom/shabakaty/downloader/zv;->s:Lcom/shabakaty/downloader/qt4;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/zv;->t:Lcom/shabakaty/downloader/dw;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/zv;->v:Lcom/shabakaty/downloader/d9;

    .line 5
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/shabakaty/downloader/zv;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/dw;ZLcom/shabakaty/downloader/d9;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zv;->c1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/zv;

    move-result-object p1

    return-object p1
.end method

.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 4

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zv;

    iget-object v1, p0, Lcom/shabakaty/downloader/zv;->s:Lcom/shabakaty/downloader/qt4;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/zv;->t:Lcom/shabakaty/downloader/dw;

    .line 4
    iget-boolean v3, p0, Lcom/shabakaty/downloader/zv;->u:Z

    .line 5
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/shabakaty/downloader/zv;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/dw;ZLcom/shabakaty/downloader/d9;)V

    return-object v0
.end method

.method public a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zv;->u:Z

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/zv;

    iget-object v1, p0, Lcom/shabakaty/downloader/zv;->s:Lcom/shabakaty/downloader/qt4;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/zv;->t:Lcom/shabakaty/downloader/dw;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/zv;->v:Lcom/shabakaty/downloader/d9;

    .line 5
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/shabakaty/downloader/zv;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/dw;ZLcom/shabakaty/downloader/d9;)V

    :goto_0
    return-object v0
.end method

.method public b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 4

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zv;

    iget-object v1, p0, Lcom/shabakaty/downloader/zv;->s:Lcom/shabakaty/downloader/qt4;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/zv;->t:Lcom/shabakaty/downloader/dw;

    .line 4
    iget-boolean v3, p0, Lcom/shabakaty/downloader/zv;->u:Z

    .line 5
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/shabakaty/downloader/zv;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/dw;ZLcom/shabakaty/downloader/d9;)V

    return-object v0
.end method

.method public c1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/zv;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zv;

    iget-object v1, p0, Lcom/shabakaty/downloader/zv;->s:Lcom/shabakaty/downloader/qt4;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/qt4;->c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    const-string v1, "typeProjection.refine(kotlinTypeRefiner)"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/zv;->t:Lcom/shabakaty/downloader/dw;

    .line 3
    iget-boolean v2, p0, Lcom/shabakaty/downloader/zv;->u:Z

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/zv;->v:Lcom/shabakaty/downloader/d9;

    .line 5
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/shabakaty/downloader/zv;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/dw;ZLcom/shabakaty/downloader/d9;)V

    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 2

    const-string v0, "No member resolution should be done on captured type, it used only during constraint system resolution"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/d51;->c(Ljava/lang/String;Z)Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Captured("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/zv;->s:Lcom/shabakaty/downloader/qt4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/zv;->u:Z

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zv;->v:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method
