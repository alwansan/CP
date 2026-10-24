.class public final Lcom/shabakaty/downloader/gb3;
.super Lcom/shabakaty/downloader/ui4;
.source "PausedDownloadHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.PausedDownloadHandler$handlePauseClick$2$1"
    f = "PausedDownloadHandler.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/gb3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/gb3;->v:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/gb3;

    iget-object v0, p0, Lcom/shabakaty/downloader/gb3;->v:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/gb3;-><init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/gb3;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/gb3;

    iget-object v0, p0, Lcom/shabakaty/downloader/gb3;->v:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/gb3;-><init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/gb3$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/gb3;->v:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/gb3$a;-><init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;)V

    const-string v0, "builder"

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/cb3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cb3$a;-><init>()V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
