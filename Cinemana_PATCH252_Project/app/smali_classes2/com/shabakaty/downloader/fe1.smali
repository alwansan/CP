.class public abstract Lcom/shabakaty/downloader/fe1;
.super Lcom/shabakaty/downloader/qw4;
.source "KotlinType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ie1;


# instance fields
.field public final s:Lcom/shabakaty/downloader/b74;

.field public final t:Lcom/shabakaty/downloader/b74;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/qw4;-><init>(Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    iput-object p2, p0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fe1;->a1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public T0()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fe1;->a1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    return-object v0
.end method

.method public U0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fe1;->a1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v0

    return v0
.end method

.method public abstract a1()Lcom/shabakaty/downloader/b74;
.end method

.method public abstract b1(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/cr0;)Ljava/lang/String;
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fe1;->a1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/wq0;->b:Lcom/shabakaty/downloader/wq0;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/wq0;->v(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fe1;->a1()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    return-object v0
.end method
