.class public final Lcom/shabakaty/downloader/gw;
.super Lcom/shabakaty/downloader/xp0;
.source "CapturedTypeConstructor.kt"


# instance fields
.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tt4;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/shabakaty/downloader/gw;->c:Z

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/xp0;-><init>(Lcom/shabakaty/downloader/tt4;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gw;->c:Z

    return v0
.end method

.method public d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xp0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tt4;->d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p1

    instance-of v2, p1, Lcom/shabakaty/downloader/kt4;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/kt4;

    .line 3
    :cond_1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fw;->a(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object v1

    :goto_0
    return-object v1
.end method
