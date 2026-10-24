.class public final Lcom/shabakaty/downloader/lc;
.super Lcom/shabakaty/downloader/af2;
.source "ApplicationDownloadActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/oz0;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/CinemanaApplication;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/lc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/oz0;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/yb;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/yb;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/oz0;->d(Lcom/shabakaty/downloader/hn1;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/zb;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/zb;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/ud0;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/oz0;->h(Lcom/shabakaty/downloader/hn1;)V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/bc;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/oz0;->b(Lcom/shabakaty/downloader/hn1;)V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/dc;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/oz0;->f(Lcom/shabakaty/downloader/hn1;)V

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/fc;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/oz0;->c(Lcom/shabakaty/downloader/hn1;)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/gc;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/gc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/ud0;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/oz0;->g(Lcom/shabakaty/downloader/hn1;)V

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/ic;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ic;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/oz0;->a(Lcom/shabakaty/downloader/tm1;)V

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/kc;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/oz0;->e(Lcom/shabakaty/downloader/jn1;)V

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
