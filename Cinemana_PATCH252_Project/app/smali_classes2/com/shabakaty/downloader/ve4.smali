.class public final Lcom/shabakaty/downloader/ve4;
.super Lcom/shabakaty/downloader/g1;
.source "StubTypes.kt"


# instance fields
.field public final v:Lcom/shabakaty/downloader/ts4;

.field public final w:Lcom/shabakaty/downloader/mr2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ts4;ZLcom/shabakaty/downloader/ts4;)V
    .locals 1

    const-string v0, "originalTypeVariable"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/g1;-><init>(Lcom/shabakaty/downloader/ts4;Z)V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/ve4;->v:Lcom/shabakaty/downloader/ts4;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ve4;->w:Lcom/shabakaty/downloader/mr2;

    return-void
.end method


# virtual methods
.method public T0()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ve4;->v:Lcom/shabakaty/downloader/ts4;

    return-object v0
.end method

.method public c1(Z)Lcom/shabakaty/downloader/g1;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ve4;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/g1;->s:Lcom/shabakaty/downloader/ts4;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ve4;->v:Lcom/shabakaty/downloader/ts4;

    .line 4
    invoke-direct {v0, v1, p1, v2}, Lcom/shabakaty/downloader/ve4;-><init>(Lcom/shabakaty/downloader/ts4;ZLcom/shabakaty/downloader/ts4;)V

    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ve4;->w:Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Stub (BI): "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/g1;->s:Lcom/shabakaty/downloader/ts4;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lcom/shabakaty/downloader/g1;->t:Z

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
