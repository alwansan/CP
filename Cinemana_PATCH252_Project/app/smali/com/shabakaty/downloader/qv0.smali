.class public final synthetic Lcom/shabakaty/downloader/qv0;
.super Lcom/shabakaty/downloader/co1;
.source "DownloadButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/tm1<",
        "Landroid/view/View;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shabakaty/downloader/views/DownloadButton;

    const/4 v1, 0x1

    const-string v4, "handleClicks"

    const-string v5, "handleClicks(Landroid/view/View;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/views/DownloadButton;

    sget v0, Lcom/shabakaty/downloader/views/DownloadButton;->I:I

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/downloader/views/DownloadButton;->H:Lcom/shabakaty/downloader/pw0;

    const-string v2, "download button click, item: "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/pv0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/pv0;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/ud0;)V

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/views/DownloadButton;->s:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/se0;

    if-nez v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v4, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 9
    new-instance v6, Lcom/shabakaty/downloader/uv0;

    invoke-direct {v6, p1, v0, v1}, Lcom/shabakaty/downloader/uv0;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/views/DownloadButton;->g()V

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
