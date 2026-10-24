.class public final Lcom/shabakaty/downloader/fy0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.DownloadManager$cancelAll$1"
    f = "DownloadManager.kt"
    l = {
        0x1a4,
        0x1a5,
        0x1a7
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

.field public final synthetic y:Lcom/shabakaty/downloader/ey0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ey0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/fy0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/fy0;->y:Lcom/shabakaty/downloader/ey0;

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
    new-instance p1, Lcom/shabakaty/downloader/fy0;

    iget-object v0, p0, Lcom/shabakaty/downloader/fy0;->y:Lcom/shabakaty/downloader/ey0;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/fy0;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/fy0;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/fy0;

    iget-object v0, p0, Lcom/shabakaty/downloader/fy0;->y:Lcom/shabakaty/downloader/ey0;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/fy0;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/fy0;->x:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/fy0;->w:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v2, p0, Lcom/shabakaty/downloader/fy0;->v:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ey0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/fy0;->y:Lcom/shabakaty/downloader/ey0;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/fy0;->x:I

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/kz0;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_5

    goto :goto_4

    .line 9
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/shabakaty/downloader/pw0;

    iget-object v7, p0, Lcom/shabakaty/downloader/fy0;->y:Lcom/shabakaty/downloader/ey0;

    invoke-static {v7, v6}, Lcom/shabakaty/cinemana/ca1/Final100;->restore(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v6}, Lcom/shabakaty/downloader/pw0;->a()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/shabakaty/downloader/pw0;->c()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lcom/shabakaty/downloader/pw0;->d()Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/shabakaty/downloader/fy0;->y:Lcom/shabakaty/downloader/ey0;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/pw0;

    .line 13
    iget v5, p1, Lcom/shabakaty/downloader/pw0;->r:I

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/shabakaty/downloader/fy0;->v:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/fy0;->w:Ljava/lang/Object;

    iput v4, p0, Lcom/shabakaty/downloader/fy0;->x:I

    invoke-static {v2, v5, p1, p0}, Lcom/shabakaty/downloader/ey0;->k(Lcom/shabakaty/downloader/ey0;ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 16
    :cond_a
    :goto_4
    sget-object p1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 17
    sget-object p1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 18
    new-instance v1, Lcom/shabakaty/downloader/fy0$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/fy0;->y:Lcom/shabakaty/downloader/ey0;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/shabakaty/downloader/fy0$a;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    iput-object v4, p0, Lcom/shabakaty/downloader/fy0;->v:Ljava/lang/Object;

    iput-object v4, p0, Lcom/shabakaty/downloader/fy0;->w:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/fy0;->x:I

    invoke-static {p1, v1, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 19
    :cond_b
    :goto_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
