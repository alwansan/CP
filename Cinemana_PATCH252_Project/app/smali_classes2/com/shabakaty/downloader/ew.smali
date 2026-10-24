.class public final Lcom/shabakaty/downloader/ew;
.super Ljava/lang/Object;
.source "CapturedTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/dw;


# instance fields
.field public final a:Lcom/shabakaty/downloader/qt4;

.field public b:Lcom/shabakaty/downloader/zy2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qt4;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ew;->a:Lcom/shabakaty/downloader/qt4;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ew;->a:Lcom/shabakaty/downloader/qt4;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ew;->a:Lcom/shabakaty/downloader/qt4;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ew;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zd2;->q()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    :goto_0
    const-string v1, "if (projection.projectio\u2026 builtIns.nullableAnyType"

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/qt4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ew;->a:Lcom/shabakaty/downloader/qt4;

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/ts4;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ew;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ew;->a:Lcom/shabakaty/downloader/qt4;

    .line 4
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/qt4;->c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    const-string v1, "projection.refine(kotlinTypeRefiner)"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ew;-><init>(Lcom/shabakaty/downloader/qt4;)V

    return-object v0
.end method

.method public bridge synthetic d()Lcom/shabakaty/downloader/g30;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcom/shabakaty/downloader/zd2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ew;->a:Lcom/shabakaty/downloader/qt4;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    const-string v1, "projection.type.constructor.builtIns"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CapturedTypeConstructor("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ew;->a:Lcom/shabakaty/downloader/qt4;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
