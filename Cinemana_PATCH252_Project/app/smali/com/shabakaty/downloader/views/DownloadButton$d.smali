.class public final Lcom/shabakaty/downloader/views/DownloadButton$d;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.views.DownloadButton$setDownloadItem$1"
    f = "DownloadButton.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/views/DownloadButton;->setDownloadItem(Lcom/shabakaty/downloader/pw0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
.field public final synthetic v:Lcom/shabakaty/downloader/views/DownloadButton;

.field public final synthetic w:Lcom/shabakaty/downloader/pw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/views/DownloadButton;",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/views/DownloadButton$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/views/DownloadButton$d;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    iput-object p2, p0, Lcom/shabakaty/downloader/views/DownloadButton$d;->w:Lcom/shabakaty/downloader/pw0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/views/DownloadButton$d;

    iget-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton$d;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/views/DownloadButton$d;->w:Lcom/shabakaty/downloader/pw0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/views/DownloadButton$d;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/views/DownloadButton;->getViewBinding()Lcom/shabakaty/downloader/xv0;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/xv0;->G(Lcom/shabakaty/downloader/pw0;)V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/views/DownloadButton;->g()V

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
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

    new-instance p1, Lcom/shabakaty/downloader/views/DownloadButton$d;

    iget-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton$d;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v1, p0, Lcom/shabakaty/downloader/views/DownloadButton$d;->w:Lcom/shabakaty/downloader/pw0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/views/DownloadButton$d;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/views/DownloadButton$d;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/views/DownloadButton;->getViewBinding()Lcom/shabakaty/downloader/xv0;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton$d;->w:Lcom/shabakaty/downloader/pw0;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xv0;->G(Lcom/shabakaty/downloader/pw0;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/views/DownloadButton$d;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/views/DownloadButton;->g()V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
