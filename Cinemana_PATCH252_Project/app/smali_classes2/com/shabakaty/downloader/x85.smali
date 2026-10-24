.class public abstract Lcom/shabakaty/downloader/x85;
.super Lcom/shabakaty/downloader/qe2;
.source "KotlinType.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/qe2;-><init>(Lcom/shabakaty/downloader/nn0;)V

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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x85;->X0()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public T0()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x85;->X0()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    return-object v0
.end method

.method public U0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x85;->X0()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v0

    return v0
.end method

.method public final W0()Lcom/shabakaty/downloader/qw4;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x85;->X0()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Lcom/shabakaty/downloader/x85;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/x85;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x85;->X0()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/qw4;

    return-object v0
.end method

.method public abstract X0()Lcom/shabakaty/downloader/qe2;
.end method

.method public Y0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x85;->X0()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x85;->Y0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x85;->X0()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<Not computed yet>"

    :goto_0
    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x85;->X0()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    return-object v0
.end method
