.class public final Lcom/shabakaty/downloader/f03;
.super Lcom/shabakaty/downloader/zp0;
.source "typeEnhancement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/gh0;


# instance fields
.field public final s:Lcom/shabakaty/downloader/b74;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b74;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zp0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f03;->s:Lcom/shabakaty/downloader/b74;

    return-void
.end method


# virtual methods
.method public N()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public U0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/f03;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/f03;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/f03;-><init>(Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/f03;->s:Lcom/shabakaty/downloader/b74;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/f03;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/f03;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/f03;-><init>(Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public c1()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f03;->s:Lcom/shabakaty/downloader/b74;

    return-object v0
.end method

.method public e1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/zp0;
    .locals 1

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/f03;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/f03;-><init>(Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public final f1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/hu4;->i(Lcom/shabakaty/downloader/qe2;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/f03;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/f03;-><init>(Lcom/shabakaty/downloader/b74;)V

    return-object p1
.end method

.method public w0(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;
    .locals 2

    const-string v0, "replacement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/hu4;->i(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/f03;->f1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/fe1;

    if-eqz v0, :cond_2

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/fe1;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 7
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/f03;->f1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 9
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/f03;->f1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    .line 10
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/vd5;->E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incorrect type: "

    .line 12
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
