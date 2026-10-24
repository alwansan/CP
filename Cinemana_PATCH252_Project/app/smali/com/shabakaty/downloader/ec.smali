.class public final Lcom/shabakaty/downloader/ec;
.super Lcom/shabakaty/downloader/ui4;
.source "ApplicationDownloadActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.ApplicationDownloadActionsHandlerKt$ApplicationDownloadActionsHandler$1$5$1"
    f = "ApplicationDownloadActionsHandler.kt"
    l = {
        0x2f,
        0x30,
        0x36
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

.field public final synthetic w:Lcom/shabakaty/cinemana/CinemanaApplication;

.field public final synthetic x:Lcom/shabakaty/downloader/pw0;

.field public final synthetic y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/CinemanaApplication;",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ec;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ec;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iput-object p2, p0, Lcom/shabakaty/downloader/ec;->x:Lcom/shabakaty/downloader/pw0;

    iput-object p3, p0, Lcom/shabakaty/downloader/ec;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/ec;

    iget-object v0, p0, Lcom/shabakaty/downloader/ec;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iget-object v1, p0, Lcom/shabakaty/downloader/ec;->x:Lcom/shabakaty/downloader/pw0;

    iget-object v2, p0, Lcom/shabakaty/downloader/ec;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/ec;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ec;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/ec;

    iget-object v0, p0, Lcom/shabakaty/downloader/ec;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iget-object v1, p0, Lcom/shabakaty/downloader/ec;->x:Lcom/shabakaty/downloader/pw0;

    iget-object v2, p0, Lcom/shabakaty/downloader/ec;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/ec;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ec;->v:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ec;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object p1

    iget-object v1, p0, Lcom/shabakaty/downloader/ec;->x:Lcom/shabakaty/downloader/pw0;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_4
    iget-object v1, v1, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 6
    :goto_1
    iput v4, p0, Lcom/shabakaty/downloader/ec;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/jw0;->n(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/ec;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object p1

    .line 8
    sget-object v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->Companion:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/ec;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 10
    iget-object v4, p0, Lcom/shabakaty/downloader/ec;->x:Lcom/shabakaty/downloader/pw0;

    .line 11
    invoke-virtual {v1, v2, v4}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-result-object v1

    .line 12
    iput v3, p0, Lcom/shabakaty/downloader/ec;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/jw0;->l(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/ec;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object p1

    .line 14
    sget-object v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->Companion:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;

    .line 15
    iget-object v3, p0, Lcom/shabakaty/downloader/ec;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 16
    iget-object v4, p0, Lcom/shabakaty/downloader/ec;->x:Lcom/shabakaty/downloader/pw0;

    .line 17
    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-result-object v1

    .line 18
    iput v2, p0, Lcom/shabakaty/downloader/ec;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/jw0;->r(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 19
    :cond_7
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
