.class public final Lcom/shabakaty/downloader/bw;
.super Lcom/shabakaty/downloader/ws4;
.source "CapturedTypeApproximation.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ws4;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lcom/shabakaty/downloader/ts4;)Lcom/shabakaty/downloader/qt4;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/dw;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/dw;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/dw;->b()Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/st4;

    sget-object v1, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/dw;->b()Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    return-object v0

    .line 4
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/dw;->b()Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    return-object p1
.end method
