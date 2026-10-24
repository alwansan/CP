.class public final Lcom/shabakaty/downloader/n00;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaApplication.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.CinemanaApplication$syncDownloadsLocalDbWithModuleDb$1"
    f = "CinemanaApplication.kt"
    l = {
        0x11d,
        0x12b,
        0x12c,
        0x12d
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
.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:I

.field public synthetic y:Ljava/lang/Object;

.field public final synthetic z:Lcom/shabakaty/cinemana/CinemanaApplication;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/CinemanaApplication;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/n00;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/n00;->z:Lcom/shabakaty/cinemana/CinemanaApplication;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/n00;

    iget-object v1, p0, Lcom/shabakaty/downloader/n00;->z:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/n00;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/n00;->y:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n00;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    new-instance v0, Lcom/shabakaty/downloader/n00;

    iget-object v1, p0, Lcom/shabakaty/downloader/n00;->z:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/n00;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/n00;->y:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/n00;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/n00;->v:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, p0, Lcom/shabakaty/downloader/n00;->y:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/n00;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/pw0;

    iget-object v5, p0, Lcom/shabakaty/downloader/n00;->v:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/shabakaty/downloader/n00;->y:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/n00;->y:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    const-string v1, "add_downloads"

    .line 4
    new-instance v7, Lcom/shabakaty/downloader/n00$a;

    iget-object v8, p0, Lcom/shabakaty/downloader/n00;->z:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-direct {v7, v8, p1, v2}, Lcom/shabakaty/downloader/n00$a;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/ud0;)V

    iput v6, p0, Lcom/shabakaty/downloader/n00;->x:I

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/f73;

    invoke-direct {p1, v1, v2}, Lcom/shabakaty/downloader/f73;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 6
    invoke-virtual {p1, v1, v7, p0}, Lcom/shabakaty/downloader/f73;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    :goto_0
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object p1

    iput v5, p0, Lcom/shabakaty/downloader/n00;->x:I

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/az0;->f(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcom/shabakaty/downloader/n00;->z:Lcom/shabakaty/cinemana/CinemanaApplication;

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    move-object p1, p0

    move-object v6, v5

    move-object v5, v1

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/pw0;

    .line 9
    invoke-virtual {v6}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object v7

    .line 10
    iget-object v8, v1, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 11
    iput-object v6, p1, Lcom/shabakaty/downloader/n00;->y:Ljava/lang/Object;

    iput-object v5, p1, Lcom/shabakaty/downloader/n00;->v:Ljava/lang/Object;

    iput-object v1, p1, Lcom/shabakaty/downloader/n00;->w:Ljava/lang/Object;

    iput v3, p1, Lcom/shabakaty/downloader/n00;->x:I

    invoke-interface {v7, v8, p1}, Lcom/shabakaty/downloader/jw0;->n(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_8

    return-object v0

    :cond_8
    move-object v9, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v1

    move-object v1, v9

    .line 12
    :goto_4
    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    .line 13
    invoke-virtual {v7}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object v8

    invoke-static {v5, p1}, Lcom/shabakaty/downloader/he0;->u(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-result-object p1

    iput-object v7, v0, Lcom/shabakaty/downloader/n00;->y:Ljava/lang/Object;

    iput-object v6, v0, Lcom/shabakaty/downloader/n00;->v:Ljava/lang/Object;

    iput-object v2, v0, Lcom/shabakaty/downloader/n00;->w:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/n00;->x:I

    invoke-interface {v8, p1, v0}, Lcom/shabakaty/downloader/jw0;->r(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object p1, v0

    move-object v0, v1

    move-object v5, v6

    move-object v6, v7

    goto :goto_3

    .line 14
    :cond_a
    :goto_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
