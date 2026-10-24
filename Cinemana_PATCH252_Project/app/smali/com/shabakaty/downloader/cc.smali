.class public final Lcom/shabakaty/downloader/cc;
.super Lcom/shabakaty/downloader/ui4;
.source "ApplicationDownloadActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.ApplicationDownloadActionsHandlerKt$ApplicationDownloadActionsHandler$1$4$1"
    f = "ApplicationDownloadActionsHandler.kt"
    l = {
        0x25
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

.field public final synthetic x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final synthetic y:Lcom/shabakaty/downloader/pw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/CinemanaApplication;",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/cc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/cc;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iput-object p2, p0, Lcom/shabakaty/downloader/cc;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iput-object p3, p0, Lcom/shabakaty/downloader/cc;->y:Lcom/shabakaty/downloader/pw0;

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
    new-instance p1, Lcom/shabakaty/downloader/cc;

    iget-object v0, p0, Lcom/shabakaty/downloader/cc;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iget-object v1, p0, Lcom/shabakaty/downloader/cc;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v2, p0, Lcom/shabakaty/downloader/cc;->y:Lcom/shabakaty/downloader/pw0;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/cc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/cc;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/cc;

    iget-object v0, p0, Lcom/shabakaty/downloader/cc;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iget-object v1, p0, Lcom/shabakaty/downloader/cc;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v2, p0, Lcom/shabakaty/downloader/cc;->y:Lcom/shabakaty/downloader/pw0;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/cc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/cc;->v:I

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
    iget-object p1, p0, Lcom/shabakaty/downloader/cc;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object p1

    .line 5
    sget-object v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->Companion:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/cc;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/cc;->y:Lcom/shabakaty/downloader/pw0;

    .line 8
    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-result-object v1

    iget-object v5, p0, Lcom/shabakaty/downloader/cc;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-static {v5, v1}, Lcom/shabakaty/cinemana/CinemanaApplication;->d(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-result-object v1

    .line 9
    iput v2, p0, Lcom/shabakaty/downloader/cc;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/jw0;->l(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
