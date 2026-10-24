.class public final Lcom/shabakaty/downloader/t11;
.super Lcom/shabakaty/downloader/fe1;
.source "dynamicTypes.kt"

# interfaces
.implements Lcom/shabakaty/downloader/u11;


# instance fields
.field public final u:Lcom/shabakaty/downloader/d9;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/d9;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zd2;->p()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    const-string v1, "builtIns.nothingType"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zd2;->q()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    const-string v1, "builtIns.nullableAnyType"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/fe1;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/t11;->u:Lcom/shabakaty/downloader/d9;

    return-void
.end method


# virtual methods
.method public U0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public X0(Z)Lcom/shabakaty/downloader/qw4;
    .locals 0

    return-object p0
.end method

.method public Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/t11;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-static {v1}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/t11;-><init>(Lcom/shabakaty/downloader/zd2;Lcom/shabakaty/downloader/d9;)V

    return-object v0
.end method

.method public a1()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    return-object v0
.end method

.method public b1(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/cr0;)Ljava/lang/String;
    .locals 0

    const-string p1, "dynamic"

    return-object p1
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t11;->u:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method
