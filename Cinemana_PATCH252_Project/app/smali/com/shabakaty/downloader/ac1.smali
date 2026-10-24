.class public final Lcom/shabakaty/downloader/ac1;
.super Lcom/shabakaty/downloader/ui4;
.source "FinishedDownloadHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.FinishedDownloadScope$showFinishedDialog$2$1"
    f = "FinishedDownloadHandler.kt"
    l = {
        0x1e
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ac1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ac1;->w:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ac1;

    iget-object v1, p0, Lcom/shabakaty/downloader/ac1;->w:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/ac1;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ac1;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ac1;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/ac1$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/ac1;->w:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3}, Lcom/shabakaty/downloader/ac1$a;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;Lcom/shabakaty/downloader/ud0;)V

    iput v2, p0, Lcom/shabakaty/downloader/ac1;->v:I

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 7
    invoke-static {v1, p1, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
