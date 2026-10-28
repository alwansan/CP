.class public final Lcom/shabakaty/downloader/ey0;
.super Ljava/lang/Object;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/i44;
.implements Lcom/shabakaty/downloader/az0;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/liulishuo/filedownloader/FileDownloader;

.field public c:Lcom/shabakaty/downloader/uz0;

.field public d:Lcom/shabakaty/downloader/mc4;

.field public e:Lcom/shabakaty/downloader/qd4;

.field public final f:Lcom/shabakaty/downloader/se0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liulishuo/filedownloader/FileDownloader;Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/mc4;Lcom/shabakaty/downloader/qd4;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileDownloader"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repo"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateListener"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageUtils"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ey0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/shabakaty/downloader/CnmDownloadQueue;->init(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ey0;->b:Lcom/liulishuo/filedownloader/FileDownloader;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/ey0;->d:Lcom/shabakaty/downloader/mc4;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->b(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ey0;->f:Lcom/shabakaty/downloader/se0;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->attach(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p1

    const-string p2, "populating composers from db"

    invoke-virtual {p1, p2, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/jy0;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/downloader/jy0;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public static final k(Lcom/shabakaty/downloader/ey0;ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p3, Lcom/shabakaty/downloader/hy0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/shabakaty/downloader/hy0;

    iget v1, v0, Lcom/shabakaty/downloader/hy0;->z:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/hy0;->z:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/hy0;

    invoke-direct {v0, p0, p3}, Lcom/shabakaty/downloader/hy0;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p3, v0, Lcom/shabakaty/downloader/hy0;->x:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/hy0;->z:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget p1, v0, Lcom/shabakaty/downloader/hy0;->w:I

    iget-object p0, v0, Lcom/shabakaty/downloader/hy0;->v:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    iget-object p0, v0, Lcom/shabakaty/downloader/hy0;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/ey0;

    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting download with id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and path: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 7
    iget-object p3, p0, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    iput-object p0, v0, Lcom/shabakaty/downloader/hy0;->u:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/hy0;->v:Ljava/lang/Object;

    iput p1, v0, Lcom/shabakaty/downloader/hy0;->w:I

    iput v4, v0, Lcom/shabakaty/downloader/hy0;->z:I

    .line 8
    iget-object p3, p3, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {p3, p1, v0}, Lcom/shabakaty/downloader/kz0;->a(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto/16 :goto_6

    .line 9
    :cond_4
    :goto_1
    check-cast p3, Lcom/shabakaty/downloader/pw0;

    if-nez p3, :cond_5

    goto/16 :goto_5

    .line 10
    :cond_5
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v2

    const-string v4, "deleting item: "

    invoke-static {v4, p3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 12
    iget-object v2, v2, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 13
    iget-object v4, p3, Lcom/shabakaty/downloader/pw0;->v:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/a90;

    .line 15
    iget-object v4, p0, Lcom/shabakaty/downloader/ey0;->b:Lcom/liulishuo/filedownloader/FileDownloader;

    invoke-virtual {v4, p1, p2}, Lcom/liulishuo/filedownloader/FileDownloader;->clear(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string v4, "clearing the task from FileDownloader succeeded"

    invoke-virtual {p2, v4, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    if-nez v2, :cond_6

    goto/16 :goto_4

    .line 17
    :cond_6
    iget-object p2, v2, Lcom/shabakaty/downloader/a90;->m:Lcom/shabakaty/downloader/rm1;

    if-nez p2, :cond_7

    goto/16 :goto_4

    .line 18
    :cond_7
    invoke-interface {p2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    goto/16 :goto_4

    .line 19
    :cond_8
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v4

    const-string v5, "clearing the item from file downloader failed"

    invoke-virtual {v4, v5, p0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 20
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->clearTaskData(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 21
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string v4, "clearing the task data from FileDownloaderServiceProxy succeeded"

    invoke-virtual {p2, v4, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    if-nez v2, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    iget-object p2, v2, Lcom/shabakaty/downloader/a90;->m:Lcom/shabakaty/downloader/rm1;

    if-nez p2, :cond_a

    goto :goto_4

    .line 24
    :cond_a
    invoke-interface {p2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    goto :goto_4

    .line 25
    :cond_b
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v4

    const-string v5, "clearing the task data from FileDownloaderServiceProxy failed"

    invoke-virtual {v4, v5, p0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 27
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v4

    const-string v5, "falling back to manual deletion"

    invoke-virtual {v4, v5, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 28
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {p2}, Lcom/shabakaty/downloader/d91;->f(Ljava/lang/Throwable;)V

    :goto_3
    if-nez v2, :cond_d

    goto :goto_4

    .line 29
    :cond_d
    iget-object p2, v2, Lcom/shabakaty/downloader/a90;->l:Lcom/shabakaty/downloader/tm1;

    if-nez p2, :cond_e

    goto :goto_4

    .line 30
    :cond_e
    sget-object v2, Lcom/shabakaty/downloader/ly0;->r:Lcom/shabakaty/downloader/ly0;

    invoke-interface {p2, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_4
    iget-object p2, p0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 32
    iget-object p2, p2, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 33
    iget-object p3, p3, Lcom/shabakaty/downloader/pw0;->v:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p0, p0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 36
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, v0, Lcom/shabakaty/downloader/hy0;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/hy0;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/hy0;->z:I

    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/qd4;->c(Ljava/lang/Integer;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_f

    goto :goto_6

    .line 38
    :cond_f
    :goto_5
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_6
    return-object v1
.end method

.method public static final l(Lcom/shabakaty/downloader/ey0;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "storageUtils.composersMap.values"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/a90;

    .line 4
    iget-object v3, v3, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 5
    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/shabakaty/downloader/a90;

    if-nez v1, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget-object v4, v1, Lcom/shabakaty/downloader/a90;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    iget-object v8, v1, Lcom/shabakaty/downloader/a90;->e:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x2e

    move-object v3, p0

    .line 8
    invoke-static/range {v3 .. v10}, Lcom/shabakaty/downloader/ey0;->n(Lcom/shabakaty/downloader/ey0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/shabakaty/downloader/a90;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/shabakaty/downloader/ey0;->q(Lcom/shabakaty/downloader/a90;Z)V

    :goto_2
    return-void
.end method

.method public static synthetic n(Lcom/shabakaty/downloader/ey0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/shabakaty/downloader/a90;
    .locals 8

    and-int/lit8 p6, p7, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    .line 1
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/ey0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/shabakaty/downloader/a90;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ey0$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/ey0$g;-><init>(Lcom/shabakaty/downloader/ey0;Ljava/util/List;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v0, v1, p2}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public b(ILcom/shabakaty/downloader/tm1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/dy0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subscribing to download with taskId: "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ey0;->f:Lcom/shabakaty/downloader/se0;

    new-instance v4, Lcom/shabakaty/downloader/ey0$l;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/shabakaty/downloader/ey0$l;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/dy0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalId"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "download called with url: "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    .line 2
    invoke-static/range {v1 .. v8}, Lcom/shabakaty/downloader/ey0;->n(Lcom/shabakaty/downloader/ey0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/shabakaty/downloader/a90;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->a:Landroid/content/Context;

    const-string v1, "NATIVE_ADMISSION_ENTER113"

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-static {v0, v1, v3, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->admitted(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p6, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 4
    iget-object p3, p0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 5
    iget-object p3, p3, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 6
    iget-object p4, p1, Lcom/shabakaty/downloader/a90;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 8
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p3

    const-string p4, "adding composer to composers map"

    invoke-virtual {p3, p4, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 9
    iget-object p3, p0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 10
    iget-object p3, p3, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 11
    iget-object p4, p1, Lcom/shabakaty/downloader/a90;->b:Ljava/lang/String;

    .line 12
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "p0"

    .line 13
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ey0;->q(Lcom/shabakaty/downloader/a90;Z)V

    const/4 p1, 0x0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p2, Lcom/shabakaty/downloader/ey0$e;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ey0$e;-><init>(Ljava/lang/Object;)V

    .line 16
    iget-object p3, p0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 17
    iget-object p3, p3, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 18
    iget-object p4, p1, Lcom/shabakaty/downloader/a90;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/a90;

    if-nez p3, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    iget-object p4, p3, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 21
    invoke-interface {p4}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isRunning()Z

    move-result p4

    if-nez p4, :cond_3

    .line 22
    iget-object p3, p3, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 23
    invoke-interface {p3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isResuming()Z

    move-result p3

    if-nez p3, :cond_3

    .line 24
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p3

    const-string p4, "download task was stopped, restarting.."

    invoke-virtual {p3, p4, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 25
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p3}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 3

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->paused(Ljava/lang/Object;I)V

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pausing download with id:"

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->b:Lcom/liulishuo/filedownloader/FileDownloader;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloader;->pause(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "pausing the task in FileDownloader failed"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 5
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadServiceProxy;->pause(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "pausing the task in FileDownloaderServiceProxy succeeded"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ey0;->p(I)V

    goto :goto_2

    .line 9
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "pausing the task in FileDownloaderServiceProxy failed"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 11
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->get(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    const-string v2, "found the task in FileDownloadList, pausing.."

    invoke-virtual {v1, v2, p0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 14
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->pause()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "pausing in FileDownloadList succeeded"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ey0;->p(I)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "pausing in FileDownloadList failed"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 18
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-nez v0, :cond_4

    .line 19
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "didn\'t find task in FileDownloadList"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ey0;->p(I)V

    goto :goto_2

    .line 21
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "pausing the task in FileDownloader succeeded"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ey0;->p(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/kz0;->f(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ey0$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/ey0$f;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/rh2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    new-instance v1, Lcom/shabakaty/downloader/ey0$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ey0$a;-><init>(Lcom/shabakaty/downloader/gq1;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/uz0;->b:Lcom/shabakaty/downloader/tm1;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uz0;->d()Lcom/shabakaty/downloader/te1;

    move-result-object v0

    const-string v1, "<this>"

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/b91;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/b91;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/ud0;)V

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/rw3;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/rw3;-><init>(Lcom/shabakaty/downloader/hn1;)V

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/ey0$b;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/ey0$b;-><init>(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/ud0;)V

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/of1;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/of1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/ey0$c;

    invoke-direct {v0, p1, v2}, Lcom/shabakaty/downloader/ey0$c;-><init>(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/ud0;)V

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/df1;

    invoke-direct {p1, v3, v0}, Lcom/shabakaty/downloader/df1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/jn1;)V

    .line 12
    invoke-static {p2}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/zy;->h(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/se0;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/ey0$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ey0$h;

    iget v1, v0, Lcom/shabakaty/downloader/ey0$h;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ey0$h;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ey0$h;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ey0$h;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ey0$h;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ey0$h;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object p2

    iput v3, v0, Lcom/shabakaty/downloader/ey0$h;->w:I

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/az0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/shabakaty/downloader/pw0;

    const/4 p1, 0x0

    if-nez p2, :cond_5

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/pw0;->c()Z

    move-result p2

    if-ne p2, v3, :cond_4

    .line 5
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public i(I)V
    .locals 8

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->beforeRetry(Ljava/lang/Object;I)Z
    move-result v0
    if-eqz v0, :retry269_native
    return-void
    :retry269_native

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retrying download with id: "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    if-eqz p1, :cond_3

    .line 2
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->get(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ey0;->f:Lcom/shabakaty/downloader/se0;

    const/4 v3, 0x0

    new-instance v5, Lcom/shabakaty/downloader/ey0$k;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/shabakaty/downloader/ey0$k;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    :cond_3
    return-void
.end method

.method public j(ILjava/lang/String;)V
    .locals 7

    const-string v0, "path"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/ey0;->f:Lcom/shabakaty/downloader/se0;

    new-instance v4, Lcom/shabakaty/downloader/ey0$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/shabakaty/downloader/ey0$d;-><init>(Lcom/shabakaty/downloader/ey0;ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/shabakaty/downloader/a90;
    .locals 8

    .line 1
    invoke-virtual {p0, p6, p1, p2, p3}, Lcom/shabakaty/downloader/ey0;->o(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/filedownloader/DownloadTask;

    move-result-object v1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/a90;

    if-nez p1, :cond_1

    new-instance p1, Lcom/shabakaty/downloader/a90;

    .line 5
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v2, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/a90;-><init>(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    return-object p1
.end method

.method public final o(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/filedownloader/DownloadTask;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "getting download task with url: "

    invoke-static {v1, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 3
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloadList;->getImpl()Lcom/liulishuo/filedownloader/FileDownloadList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/liulishuo/filedownloader/FileDownloadList;->get(I)Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask$IRunningTask;->getOrigin()Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object p1

    :goto_1
    instance-of v1, p1, Lcom/liulishuo/filedownloader/DownloadTask;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/liulishuo/filedownloader/DownloadTask;

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    if-nez p1, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/DownloadTask;->getId()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_3
    if-nez p1, :cond_d

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating download task [url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/lw0$a;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/ey0;->b:Lcom/liulishuo/filedownloader/FileDownloader;

    .line 10
    invoke-virtual {p1, p2}, Lcom/liulishuo/filedownloader/FileDownloader;->create(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object p1

    const/16 p2, 0x7d0

    .line 11
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setCallbackProgressMinInterval(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object p1

    const/4 p2, 0x1

    .line 12
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setWifiRequired(Z)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object p1

    const/16 p2, 0x4f6

    .line 13
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setCallbackProgressTimes(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/shabakaty/downloader/ey0;->d:Lcom/shabakaty/downloader/mc4;

    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object p1

    const/4 p2, 0x5

    .line 15
    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setAutoRetryTimes(I)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object p1

    const-string p2, "fileDownloader\n\t\t\t\t.crea\u2026tAutoRetryTimes(99999999)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<this>"

    .line 16
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_5

    goto :goto_4

    .line 17
    :cond_5
    invoke-interface {p1, p3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 18
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_4
    if-nez v0, :cond_c

    .line 19
    move-object v2, p2

    sget-object p2, Lcom/shabakaty/downloader/z24;->b:Lcom/shabakaty/downloader/wa3;

    if-nez p2, :cond_6

    goto/16 :goto_6

    :cond_6
    if-nez p4, :cond_7

    const-string p4, ""

    .line 20
    :cond_7
    invoke-interface {p2, p4}, Lcom/shabakaty/downloader/wa3;->create(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    goto/16 :goto_6

    .line 21
    :cond_8
    const-string v0, "mp4"

    if-eqz v2, :cond_9

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_9

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_9

    move-object v1, p4

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_9

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    :cond_9
    const-string v0, "mp4"

    if-eqz p4, :cond_b

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subtitle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "special subtitle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, "sp"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->extFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    const-string v0, "srt"

    :cond_b
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 22
    const-string v1, "CNM_DOWNLOAD"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK_CREATED URL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FILENAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " DESTINATION_FILE="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    check-cast p1, Lcom/liulishuo/filedownloader/DownloadTask;

    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->a:Landroid/content/Context;

    const-string v1, "task_ready"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_d
    return-object p1
.end method

.method public final p(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->f:Lcom/shabakaty/downloader/se0;

    new-instance v3, Lcom/shabakaty/downloader/ey0$i;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/shabakaty/downloader/ey0$i;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ey0$j;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ey0$j;-><init>(Lcom/shabakaty/downloader/ey0;)V

    check-cast p1, Lcom/shabakaty/downloader/l92;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v1, v2, v0}, Lcom/shabakaty/downloader/l92;->x(ZZLcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/ou0;

    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/a90;Z)V
    .locals 3

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Final100;->skip(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->admitted(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "starting download for composer: "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "should reuse task: "

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    iget-object p2, p1, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 4
    invoke-interface {p2}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->reuse()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 5
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 6
    :goto_0
    iget-object p1, p1, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 7
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->a:Landroid/content/Context;

    const-string v1, "start_requested"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/CnmDownloadQueue;->enqueue(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 10
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0;->a:Landroid/content/Context;

    const-string v1, "start_requested"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/cinemana/features/RenameAssets;->trace(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/CnmDownloadQueue;->enqueue(Lcom/liulishuo/filedownloader/BaseDownloadTask;)Z

    :cond_2
    :goto_1
    return-void
.end method
