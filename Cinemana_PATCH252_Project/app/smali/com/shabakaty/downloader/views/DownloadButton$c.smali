.class public final Lcom/shabakaty/downloader/views/DownloadButton$c;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/views/DownloadButton;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/views/DownloadButton$c;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton$c;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    new-instance v1, Lcom/shabakaty/downloader/views/a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/views/a;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;)V

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/views/DownloadButton;->v:Lcom/shabakaty/downloader/uz0;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/views/a;->invoke()Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton$c;->r:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    iget-object v2, v0, Lcom/shabakaty/downloader/views/DownloadButton;->u:Ljava/lang/String;

    const-string v3, "subscribing to item with external id: "

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/views/DownloadButton;->s:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/se0;

    if-nez v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/views/DownloadButton;->getDownloadsRepo$shabakaty_downloader_release()Lcom/shabakaty/downloader/uz0;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/views/DownloadButton;->getExternalId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "externalId"

    .line 9
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/uz0;->d()Lcom/shabakaty/downloader/te1;

    move-result-object v2

    const-string v5, "<this>"

    .line 11
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v4, Lcom/shabakaty/downloader/b91;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/shabakaty/downloader/b91;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/ud0;)V

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/rw3;

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/rw3;-><init>(Lcom/shabakaty/downloader/hn1;)V

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/a91;

    invoke-direct {v4, v2, v3}, Lcom/shabakaty/downloader/a91;-><init>(Lcom/shabakaty/downloader/te1;Ljava/lang/String;)V

    .line 16
    invoke-static {v4}, Lcom/shabakaty/downloader/d91;->a(Lcom/shabakaty/downloader/te1;)Lcom/shabakaty/downloader/te1;

    move-result-object v2

    .line 17
    new-instance v3, Lcom/shabakaty/downloader/tv0;

    invoke-direct {v3, v0, v5}, Lcom/shabakaty/downloader/tv0;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/ud0;)V

    .line 18
    new-instance v4, Lcom/shabakaty/downloader/cf1;

    invoke-direct {v4, v2, v3}, Lcom/shabakaty/downloader/cf1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V

    .line 19
    invoke-static {v4}, Lcom/shabakaty/downloader/zy;->f(Lcom/shabakaty/downloader/te1;)Lcom/shabakaty/downloader/te1;

    move-result-object v2

    .line 20
    new-instance v3, Lcom/shabakaty/downloader/vv0;

    invoke-direct {v3, v0, v5}, Lcom/shabakaty/downloader/vv0;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/ud0;)V

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/of1;

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/of1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V

    .line 22
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/zy;->h(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/se0;)Lcom/shabakaty/downloader/e92;

    .line 23
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
