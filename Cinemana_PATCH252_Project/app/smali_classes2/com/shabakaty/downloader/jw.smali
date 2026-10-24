.class public final Lcom/shabakaty/downloader/jw;
.super Ljava/lang/Object;
.source "typeParameterUtils.kt"

# interfaces
.implements Lcom/shabakaty/downloader/kt4;


# instance fields
.field public final r:Lcom/shabakaty/downloader/kt4;

.field public final s:Lcom/shabakaty/downloader/qm0;

.field public final t:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/qm0;I)V
    .locals 1

    const-string v0, "originalDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declarationDescriptor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/jw;->s:Lcom/shabakaty/downloader/qm0;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/jw;->t:I

    return-void
.end method


# virtual methods
.method public L()Z
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kt4;->L()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/g30;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jw;->a()Lcom/shabakaty/downloader/kt4;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/shabakaty/downloader/kt4;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kt4;->a()Lcom/shabakaty/downloader/kt4;

    move-result-object v0

    const-string v1, "originalDescriptor.original"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jw;->a()Lcom/shabakaty/downloader/kt4;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->s:Lcom/shabakaty/downloader/qm0;

    return-object v0
.end method

.method public getName()Lcom/shabakaty/downloader/hw2;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/jw;->t:I

    iget-object v1, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kt4;->j()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/um0<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/qm0;->j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/shabakaty/downloader/ts4;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kt4;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/shabakaty/downloader/xz4;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v0

    return-object v0
.end method

.method public q0()Lcom/shabakaty/downloader/md4;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kt4;->q0()Lcom/shabakaty/downloader/md4;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "[inner-copy]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/shabakaty/downloader/b74;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method

.method public x0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/jw;->r:Lcom/shabakaty/downloader/kt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    return-object v0
.end method
