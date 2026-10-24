.class public Lcom/shabakaty/downloader/gg3;
.super Lcom/shabakaty/downloader/qy;
.source "Produce.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hg3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qy<",
        "TE;>;",
        "Lcom/shabakaty/downloader/hg3<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/py;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "Lcom/shabakaty/downloader/py<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/qy;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/py;Z)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/u;->c()Z

    move-result v0

    return v0
.end method

.method public o0(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/h04;->s(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/u;->s:Lcom/shabakaty/downloader/me0;

    .line 4
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/md0;->y(Lcom/shabakaty/downloader/me0;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public p0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qv4;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/qy;->u:Lcom/shabakaty/downloader/py;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/h04;->s(Ljava/lang/Throwable;)Z

    return-void
.end method
