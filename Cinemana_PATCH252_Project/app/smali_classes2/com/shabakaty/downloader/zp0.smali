.class public abstract Lcom/shabakaty/downloader/zp0;
.super Lcom/shabakaty/downloader/b74;
.source "SpecialTypes.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b74;-><init>()V

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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->c1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public T0()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->c1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    return-object v0
.end method

.method public U0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->c1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp0;->d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp0;->d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method

.method public abstract c1()Lcom/shabakaty/downloader/b74;
.end method

.method public d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/b74;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->c1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zp0;->e1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/zp0;

    move-result-object p1

    return-object p1
.end method

.method public abstract e1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/zp0;
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->c1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->c1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    return-object v0
.end method
