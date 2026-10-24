.class public final Lcom/shabakaty/downloader/jy0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.DownloadManager$populateComposersFromDb$1"
    f = "DownloadManager.kt"
    l = {
        0x2b
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

.field public final synthetic w:Lcom/shabakaty/downloader/ey0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ey0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/jy0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/jy0;->w:Lcom/shabakaty/downloader/ey0;

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
    new-instance p1, Lcom/shabakaty/downloader/jy0;

    iget-object v0, p0, Lcom/shabakaty/downloader/jy0;->w:Lcom/shabakaty/downloader/ey0;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/jy0;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/jy0;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/jy0;

    iget-object v0, p0, Lcom/shabakaty/downloader/jy0;->w:Lcom/shabakaty/downloader/ey0;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/jy0;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/jy0;->v:I

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
    iget-object p1, p0, Lcom/shabakaty/downloader/jy0;->w:Lcom/shabakaty/downloader/ey0;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/jy0;->v:I

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/kz0;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/jy0;->w:Lcom/shabakaty/downloader/ey0;

    check-cast p1, Ljava/util/List;

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    const-string v3, "db has download items: "

    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-nez p1, :cond_3

    move-object v4, v1

    goto :goto_3

    .line 10
    :cond_3
    iget-object v3, p0, Lcom/shabakaty/downloader/jy0;->w:Lcom/shabakaty/downloader/ey0;

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 13
    check-cast v5, Lcom/shabakaty/downloader/pw0;

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Final100;->restore(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-object v8, v5, Lcom/shabakaty/downloader/pw0;->v:Ljava/lang/String;

    .line 15
    iget-object v6, v5, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    .line 16
    iget-object v7, v5, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    .line 17
    invoke-virtual {v3, v1, v8, v6, v7}, Lcom/shabakaty/downloader/ey0;->o(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/filedownloader/DownloadTask;

    move-result-object v7

    .line 18
    iget-object v9, v5, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    .line 19
    iget-object v10, v5, Lcom/shabakaty/downloader/pw0;->w:Ljava/lang/String;

    .line 20
    iget-object v11, v5, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 21
    invoke-virtual {v5}, Lcom/shabakaty/downloader/pw0;->d()Z

    move-result v12

    .line 22
    invoke-virtual {v5}, Lcom/shabakaty/downloader/pw0;->c()Z

    move-result v13

    .line 23
    new-instance v5, Lcom/shabakaty/downloader/a90;

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lcom/shabakaty/downloader/a90;-><init>(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/jy0;->w:Lcom/shabakaty/downloader/ey0;

    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/a90;

    .line 26
    iget-boolean v6, v5, Lcom/shabakaty/downloader/a90;->f:Z

    if-nez v6, :cond_5

    .line 27
    iget-boolean v6, v5, Lcom/shabakaty/downloader/a90;->g:Z

    if-nez v6, :cond_5

    .line 28
    invoke-static {p1, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->canRestore(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v5, v2}, Lcom/shabakaty/downloader/ey0;->q(Lcom/shabakaty/downloader/a90;Z)V

    goto :goto_2

    :cond_6
    :goto_3
    if-nez v4, :cond_7

    goto :goto_5

    .line 29
    :cond_7
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result p1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_8

    const/16 p1, 0x10

    .line 30
    :cond_8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 31
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Lcom/shabakaty/downloader/a90;

    .line 33
    iget-object v2, v0, Lcom/shabakaty/downloader/a90;->b:Ljava/lang/String;

    .line 34
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 35
    :cond_9
    :goto_5
    new-instance p1, Lcom/shabakaty/downloader/SafeComposerMap;

    invoke-direct {p1}, Lcom/shabakaty/downloader/SafeComposerMap;-><init>()V

    if-nez v1, :cond_a

    goto :goto_6

    .line 36
    :cond_a
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 37
    :goto_6
    iget-object v0, p0, Lcom/shabakaty/downloader/jy0;->w:Lcom/shabakaty/downloader/ey0;

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-object p1, v0, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/shabakaty/downloader/jy0;->w:Lcom/shabakaty/downloader/ey0;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->start(Ljava/lang/Object;)V

    .line 41
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
