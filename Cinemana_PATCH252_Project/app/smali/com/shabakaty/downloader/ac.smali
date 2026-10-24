.class public final Lcom/shabakaty/downloader/ac;
.super Lcom/shabakaty/downloader/ui4;
.source "ApplicationDownloadActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.ApplicationDownloadActionsHandlerKt$ApplicationDownloadActionsHandler$1$3$1"
    f = "ApplicationDownloadActionsHandler.kt"
    l = {
        0x20
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

.field public final synthetic x:Lcom/shabakaty/downloader/o84;

.field public final synthetic y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/o84;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/CinemanaApplication;",
            "Lcom/shabakaty/downloader/o84;",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ac;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ac;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iput-object p2, p0, Lcom/shabakaty/downloader/ac;->x:Lcom/shabakaty/downloader/o84;

    iput-object p3, p0, Lcom/shabakaty/downloader/ac;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

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
    new-instance p1, Lcom/shabakaty/downloader/ac;

    iget-object v0, p0, Lcom/shabakaty/downloader/ac;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iget-object v1, p0, Lcom/shabakaty/downloader/ac;->x:Lcom/shabakaty/downloader/o84;

    iget-object v2, p0, Lcom/shabakaty/downloader/ac;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/ac;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/o84;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ac;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/ac;

    iget-object v0, p0, Lcom/shabakaty/downloader/ac;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iget-object v1, p0, Lcom/shabakaty/downloader/ac;->x:Lcom/shabakaty/downloader/o84;

    iget-object v2, p0, Lcom/shabakaty/downloader/ac;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/ac;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/o84;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ac;->v:I

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
    iget-object p1, p0, Lcom/shabakaty/downloader/ac;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object p1

    iget-object v1, p0, Lcom/shabakaty/downloader/ac;->x:Lcom/shabakaty/downloader/o84;

    iget-object v3, p0, Lcom/shabakaty/downloader/ac;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 5
    new-instance v13, Lcom/shabakaty/downloader/p84;

    .line 6
    iget-object v6, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 7
    iget-wide v7, v1, Lcom/shabakaty/downloader/o84;->r:J

    .line 8
    iget-wide v9, v1, Lcom/shabakaty/downloader/o84;->s:J

    .line 9
    iget-object v11, v1, Lcom/shabakaty/downloader/o84;->t:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v5, 0x0

    move-object v4, v13

    .line 10
    invoke-direct/range {v4 .. v12}, Lcom/shabakaty/downloader/p84;-><init>(ILjava/lang/String;JJLjava/lang/String;I)V

    .line 11
    iput v2, p0, Lcom/shabakaty/downloader/ac;->v:I

    invoke-interface {p1, v13, p0}, Lcom/shabakaty/downloader/jw0;->u(Lcom/shabakaty/downloader/p84;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 12
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
