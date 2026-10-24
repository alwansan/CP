.class public final Lcom/shabakaty/downloader/dv0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadsActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope$downloadVideo$1"
    f = "DownloadsActionsHandler.kt"
    l = {
        0x61,
        0x62,
        0x67
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
.field public v:I

.field public final synthetic w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/dv0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

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
    new-instance p1, Lcom/shabakaty/downloader/dv0;

    iget-object v0, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/dv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/dv0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    new-instance p1, Lcom/shabakaty/downloader/dv0;

    iget-object v0, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/dv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/dv0;->v:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 5
    iget-object v1, p1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 6
    iput v4, p0, Lcom/shabakaty/downloader/dv0;->v:I

    invoke-static {p1, v1, p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->c(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 8
    iget-object v1, p1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 9
    iput v3, p0, Lcom/shabakaty/downloader/dv0;->v:I

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/ev0;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/ev0;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    invoke-virtual {p1, v1, v3, p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->h(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-ne p1, v0, :cond_6

    return-object v0

    .line 11
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->i()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 14
    iput-boolean v4, p1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->v:Z

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->f()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->l(Landroid/content/Context;)V

    goto :goto_4

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    iput v2, p0, Lcom/shabakaty/downloader/dv0;->v:I

    invoke-virtual {p1, p0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->e(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    if-nez p1, :cond_a

    .line 17
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object v0

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 20
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->url:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->d()Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object p1, p0, Lcom/shabakaty/downloader/dv0;->w:Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 23
    iget-object v3, p1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->r:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 24
    iget-object v4, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    const/4 v5, 0x0

    .line 25
    iget-object v6, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 26
    new-instance v7, Lcom/shabakaty/downloader/mv0;

    invoke-direct {v7, p1}, Lcom/shabakaty/downloader/mv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V

    const/16 p1, 0x8

    const/4 v8, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, p1

    .line 27
    invoke-static/range {v0 .. v8}, Lcom/shabakaty/downloader/i44$a;->a(Lcom/shabakaty/downloader/i44;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)V

    .line 28
    :cond_a
    :goto_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
