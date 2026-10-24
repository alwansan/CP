.class public final Lcom/shabakaty/downloader/uv0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.views.DownloadButton$shouldPerformClick$1"
    f = "DownloadButton.kt"
    l = {
        0x9a,
        0x9c,
        0x9f
    }
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
.field public final synthetic A:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:I

.field public synthetic y:Ljava/lang/Object;

.field public final synthetic z:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/views/DownloadButton;",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/se0;",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/uv0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/uv0;->z:Lcom/shabakaty/downloader/views/DownloadButton;

    iput-object p2, p0, Lcom/shabakaty/downloader/uv0;->A:Lcom/shabakaty/downloader/hn1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uv0;

    iget-object v1, p0, Lcom/shabakaty/downloader/uv0;->z:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v2, p0, Lcom/shabakaty/downloader/uv0;->A:Lcom/shabakaty/downloader/hn1;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/uv0;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/uv0;->y:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/uv0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 3
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

    new-instance v0, Lcom/shabakaty/downloader/uv0;

    iget-object v1, p0, Lcom/shabakaty/downloader/uv0;->z:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v2, p0, Lcom/shabakaty/downloader/uv0;->A:Lcom/shabakaty/downloader/hn1;

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/uv0;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/uv0;->y:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/uv0;->x:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/uv0;->y:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/uv0;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/hn1;

    iget-object v4, p0, Lcom/shabakaty/downloader/uv0;->v:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v6, p0, Lcom/shabakaty/downloader/uv0;->y:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object v7, v1

    move-object v1, v6

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/uv0;->y:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/uv0;->z:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/views/DownloadButton;->getExternalId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v5

    goto :goto_5

    :cond_4
    iget-object v6, p0, Lcom/shabakaty/downloader/uv0;->z:Lcom/shabakaty/downloader/views/DownloadButton;

    iget-object v7, p0, Lcom/shabakaty/downloader/uv0;->A:Lcom/shabakaty/downloader/hn1;

    .line 5
    invoke-virtual {v6}, Lcom/shabakaty/downloader/views/DownloadButton;->getDownloadsRepo$shabakaty_downloader_release()Lcom/shabakaty/downloader/uz0;

    move-result-object v8

    iput-object p1, p0, Lcom/shabakaty/downloader/uv0;->y:Ljava/lang/Object;

    iput-object v6, p0, Lcom/shabakaty/downloader/uv0;->v:Ljava/lang/Object;

    iput-object v7, p0, Lcom/shabakaty/downloader/uv0;->w:Ljava/lang/Object;

    iput v4, p0, Lcom/shabakaty/downloader/uv0;->x:I

    .line 6
    iget-object v4, v8, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {v4, v1, p0}, Lcom/shabakaty/downloader/kz0;->f(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v4, v6

    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    .line 7
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    if-nez p1, :cond_6

    move-object v6, v5

    goto :goto_1

    .line 8
    :cond_6
    iget-object v6, p1, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    .line 9
    :goto_1
    iget-object v8, v4, Lcom/shabakaty/downloader/views/DownloadButton;->H:Lcom/shabakaty/downloader/pw0;

    if-nez v8, :cond_7

    move-object v8, v5

    goto :goto_2

    .line 10
    :cond_7
    iget-object v8, v8, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    :goto_2
    if-ne v6, v8, :cond_9

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/uv0;->y:Ljava/lang/Object;

    iput-object v5, p0, Lcom/shabakaty/downloader/uv0;->v:Ljava/lang/Object;

    iput-object v5, p0, Lcom/shabakaty/downloader/uv0;->w:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/uv0;->x:I

    invoke-static {p1, v7, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    move-object p1, v1

    goto :goto_4

    .line 14
    :cond_9
    invoke-virtual {v4, p1}, Lcom/shabakaty/downloader/views/DownloadButton;->setDownloadItem(Lcom/shabakaty/downloader/pw0;)V

    goto :goto_3

    .line 15
    :goto_4
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_5
    if-nez v1, :cond_a

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/uv0;->A:Lcom/shabakaty/downloader/hn1;

    .line 17
    iput-object v5, p0, Lcom/shabakaty/downloader/uv0;->y:Ljava/lang/Object;

    iput-object v5, p0, Lcom/shabakaty/downloader/uv0;->v:Ljava/lang/Object;

    iput-object v5, p0, Lcom/shabakaty/downloader/uv0;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/uv0;->x:I

    invoke-interface {v1, p1, p0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 18
    :cond_a
    :goto_6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
