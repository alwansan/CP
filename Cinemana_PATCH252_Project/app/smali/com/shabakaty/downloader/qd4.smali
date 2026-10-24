.class public final Lcom/shabakaty/downloader/qd4;
.super Ljava/lang/Object;
.source "StorageUtils.kt"


# instance fields
.field public a:Lcom/shabakaty/downloader/uz0;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/shabakaty/downloader/se0;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/a90;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uz0;Landroid/content/Context;)V
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qd4;->a:Lcom/shabakaty/downloader/uz0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/qd4;->b:Landroid/content/Context;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->b(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/se0;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qd4;->c:Lcom/shabakaty/downloader/se0;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/SafeComposerMap;

    invoke-direct {p1}, Lcom/shabakaty/downloader/SafeComposerMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/rd4;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/rd4;-><init>(Lcom/shabakaty/downloader/qd4;)V

    .line 8
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/liulishuo/filedownloader/FileDownloader;->addServiceConnectListener(Lcom/liulishuo/filedownloader/FileDownloadConnectListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/shabakaty/downloader/qd4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;I)Ljava/lang/Object;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/qd4;->d(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/shabakaty/downloader/qd4$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/qd4$a;

    iget v4, v3, Lcom/shabakaty/downloader/qd4$a;->z:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/shabakaty/downloader/qd4$a;->z:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/shabakaty/downloader/qd4$a;

    invoke-direct {v3, v0, v2}, Lcom/shabakaty/downloader/qd4$a;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object v2, v3, Lcom/shabakaty/downloader/qd4$a;->x:Ljava/lang/Object;

    sget-object v4, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v5, v3, Lcom/shabakaty/downloader/qd4$a;->z:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/shabakaty/downloader/qd4$a;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/pw0;

    iget-object v3, v3, Lcom/shabakaty/downloader/qd4$a;->u:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/qd4;

    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_3
    iget-object v1, v3, Lcom/shabakaty/downloader/qd4$a;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/a90;

    iget-object v5, v3, Lcom/shabakaty/downloader/qd4$a;->v:Ljava/lang/Object;

    check-cast v5, Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object v8, v3, Lcom/shabakaty/downloader/qd4$a;->u:Ljava/lang/Object;

    check-cast v8, Lcom/shabakaty/downloader/qd4;

    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, v3, Lcom/shabakaty/downloader/qd4$a;->v:Ljava/lang/Object;

    check-cast v1, Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object v5, v3, Lcom/shabakaty/downloader/qd4$a;->u:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/qd4;

    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v2

    const-string v5, "creating download item from task: "

    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/qd4;->a:Lcom/shabakaty/downloader/uz0;

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v5

    iput-object v0, v3, Lcom/shabakaty/downloader/qd4$a;->u:Ljava/lang/Object;

    iput-object v1, v3, Lcom/shabakaty/downloader/qd4$a;->v:Ljava/lang/Object;

    iput v9, v3, Lcom/shabakaty/downloader/qd4$a;->z:I

    invoke-virtual {v2, v5, v3}, Lcom/shabakaty/downloader/uz0;->e(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    return-object v4

    :cond_6
    move-object v5, v0

    :goto_1
    check-cast v2, Lcom/shabakaty/downloader/pw0;

    if-nez v2, :cond_15

    .line 7
    iget-object v2, v5, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 8
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/a90;

    if-nez v2, :cond_7

    goto :goto_3

    .line 9
    :cond_7
    iget-object v9, v2, Lcom/shabakaty/downloader/a90;->e:Ljava/lang/String;

    if-nez v9, :cond_8

    goto :goto_3

    .line 10
    :cond_8
    iget-object v11, v5, Lcom/shabakaty/downloader/qd4;->a:Lcom/shabakaty/downloader/uz0;

    .line 11
    iput-object v5, v3, Lcom/shabakaty/downloader/qd4$a;->u:Ljava/lang/Object;

    iput-object v1, v3, Lcom/shabakaty/downloader/qd4$a;->v:Ljava/lang/Object;

    iput-object v2, v3, Lcom/shabakaty/downloader/qd4$a;->w:Ljava/lang/Object;

    iput v8, v3, Lcom/shabakaty/downloader/qd4$a;->z:I

    .line 12
    iget-object v8, v11, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {v8, v9, v3}, Lcom/shabakaty/downloader/kz0;->f(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_9

    return-object v4

    :cond_9
    move-object/from16 v25, v5

    move-object v5, v1

    move-object v1, v2

    move-object v2, v8

    move-object/from16 v8, v25

    .line 13
    :goto_2
    check-cast v2, Lcom/shabakaty/downloader/pw0;

    if-nez v2, :cond_13

    move-object v2, v1

    move-object v1, v5

    move-object v5, v8

    .line 14
    :goto_3
    sget-object v22, Lcom/shabakaty/downloader/xc4;->s:Lcom/shabakaty/downloader/xc4;

    .line 15
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v12

    if-nez v2, :cond_a

    goto :goto_4

    .line 16
    :cond_a
    iget-object v7, v2, Lcom/shabakaty/downloader/a90;->e:Ljava/lang/String;

    if-nez v7, :cond_b

    :goto_4
    const-string v7, "-1"

    :cond_b
    move-object v13, v7

    const-string v7, ""

    if-nez v2, :cond_c

    goto :goto_5

    .line 17
    :cond_c
    iget-object v8, v2, Lcom/shabakaty/downloader/a90;->c:Ljava/lang/String;

    if-nez v8, :cond_d

    :goto_5
    move-object/from16 v16, v7

    goto :goto_6

    :cond_d
    move-object/from16 v16, v8

    .line 18
    :goto_6
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_e

    move-object/from16 v17, v7

    goto :goto_7

    :cond_e
    move-object/from16 v17, v8

    .line 19
    :goto_7
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_f

    move-object/from16 v19, v7

    goto :goto_8

    :cond_f
    move-object/from16 v19, v8

    :goto_8
    if-nez v2, :cond_10

    goto :goto_9

    .line 20
    :cond_10
    iget-object v2, v2, Lcom/shabakaty/downloader/a90;->d:Ljava/lang/String;

    if-nez v2, :cond_11

    :goto_9
    move-object/from16 v18, v7

    goto :goto_a

    :cond_11
    move-object/from16 v18, v2

    .line 21
    :goto_a
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v20

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    .line 23
    new-instance v1, Lcom/shabakaty/downloader/pw0;

    const-wide/16 v14, 0x0

    const/16 v23, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v24}, Lcom/shabakaty/downloader/pw0;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 24
    iput-object v5, v3, Lcom/shabakaty/downloader/qd4$a;->u:Ljava/lang/Object;

    iput-object v1, v3, Lcom/shabakaty/downloader/qd4$a;->v:Ljava/lang/Object;

    iput-object v10, v3, Lcom/shabakaty/downloader/qd4$a;->w:Ljava/lang/Object;

    iput v6, v3, Lcom/shabakaty/downloader/qd4$a;->z:I

    invoke-virtual {v5, v1, v3}, Lcom/shabakaty/downloader/qd4;->b(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_12

    return-object v4

    :cond_12
    move-object v3, v5

    .line 25
    :goto_b
    iget-object v2, v3, Lcom/shabakaty/downloader/qd4;->b:Landroid/content/Context;

    const-wide/16 v3, 0x0

    .line 26
    invoke-static {v2, v3, v4}, Lcom/shabakaty/downloader/vd5;->z(Landroid/content/Context;J)V

    return-object v1

    .line 27
    :cond_13
    sget-object v1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 28
    new-instance v6, Lcom/shabakaty/downloader/qd4$b;

    invoke-direct {v6, v8, v2, v5, v10}, Lcom/shabakaty/downloader/qd4$b;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/pw0;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    iput-object v10, v3, Lcom/shabakaty/downloader/qd4$a;->u:Ljava/lang/Object;

    iput-object v10, v3, Lcom/shabakaty/downloader/qd4$a;->v:Ljava/lang/Object;

    iput-object v10, v3, Lcom/shabakaty/downloader/qd4$a;->w:Ljava/lang/Object;

    iput v7, v3, Lcom/shabakaty/downloader/qd4$a;->z:I

    invoke-static {v1, v6, v3}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_14

    return-object v4

    :cond_14
    :goto_c
    return-object v2

    .line 29
    :cond_15
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    const-string v3, "item already exists, returning"

    invoke-virtual {v1, v3, v5}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    return-object v2
.end method

.method public final b(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "inserting item to db: "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/qd4$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/qd4$c;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v0, v1, p2}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final c(Ljava/lang/Integer;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/qd4$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/qd4$d;

    iget v1, v0, Lcom/shabakaty/downloader/qd4$d;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/qd4$d;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qd4$d;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/qd4$d;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/qd4$d;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/qd4$d;->x:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/qd4$d;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/qd4;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/qd4$d;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/qd4;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string v2, "removing item from db with id: "

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    if-eqz p1, :cond_4

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/qd4;->a:Lcom/shabakaty/downloader/uz0;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput-object p0, v0, Lcom/shabakaty/downloader/qd4$d;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/qd4$d;->x:I

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/uz0;->h(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 7
    :goto_1
    iget-object p2, p1, Lcom/shabakaty/downloader/qd4;->a:Lcom/shabakaty/downloader/uz0;

    .line 8
    iput-object p1, v0, Lcom/shabakaty/downloader/qd4$d;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/qd4$d;->x:I

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/kz0;->e(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 10
    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_7

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string v0, "stopping service"

    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 13
    sget-object p2, Lcom/shabakaty/downloader/services/DownloaderService;->x:Lcom/shabakaty/downloader/services/DownloaderService$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/qd4;->b:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/services/DownloaderService$a;->a(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/FileDownloader;->isServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/liulishuo/filedownloader/FileDownloader;->stopForeground(Z)V

    .line 16
    :cond_7
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final d(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            "Lcom/shabakaty/downloader/xc4;",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/shabakaty/downloader/qd4$e;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/shabakaty/downloader/qd4$e;

    iget v1, v0, Lcom/shabakaty/downloader/qd4$e;->A:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/qd4$e;->A:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qd4$e;

    invoke-direct {v0, p0, p4}, Lcom/shabakaty/downloader/qd4$e;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p4, v0, Lcom/shabakaty/downloader/qd4$e;->y:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/qd4$e;->A:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/qd4$e;->x:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, v0, Lcom/shabakaty/downloader/qd4$e;->w:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/xc4;

    iget-object p3, v0, Lcom/shabakaty/downloader/qd4$e;->v:Ljava/lang/Object;

    check-cast p3, Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object v2, v0, Lcom/shabakaty/downloader/qd4$e;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/qd4;

    invoke-static {p4}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object p1, v0, Lcom/shabakaty/downloader/qd4$e;->x:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljava/lang/Throwable;

    iget-object p1, v0, Lcom/shabakaty/downloader/qd4$e;->w:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/xc4;

    iget-object p1, v0, Lcom/shabakaty/downloader/qd4$e;->v:Ljava/lang/Object;

    check-cast p1, Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object v2, v0, Lcom/shabakaty/downloader/qd4$e;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/qd4;

    invoke-static {p4}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p4}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p4

    const-string v2, "updating item from task: "

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 5
    iget-object p4, p0, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 6
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p1

    const-string p2, "composers map doesn\'t contain such task, returning null.."

    invoke-virtual {p1, p2, p0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    return-object v6

    .line 8
    :cond_5
    iget-object p4, p0, Lcom/shabakaty/downloader/qd4;->a:Lcom/shabakaty/downloader/uz0;

    .line 9
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v2

    iput-object p0, v0, Lcom/shabakaty/downloader/qd4$e;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/qd4$e;->v:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/qd4$e;->w:Ljava/lang/Object;

    iput-object p3, v0, Lcom/shabakaty/downloader/qd4$e;->x:Ljava/lang/Object;

    iput v5, v0, Lcom/shabakaty/downloader/qd4$e;->A:I

    invoke-virtual {p4, v2, v0}, Lcom/shabakaty/downloader/uz0;->e(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    check-cast p4, Lcom/shabakaty/downloader/pw0;

    if-nez p4, :cond_8

    iput-object v2, v0, Lcom/shabakaty/downloader/qd4$e;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/qd4$e;->v:Ljava/lang/Object;

    iput-object p2, v0, Lcom/shabakaty/downloader/qd4$e;->w:Ljava/lang/Object;

    iput-object p3, v0, Lcom/shabakaty/downloader/qd4$e;->x:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/qd4$e;->A:I

    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/qd4;->a(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_7

    return-object v1

    :cond_7
    move-object v10, p3

    move-object p3, p1

    move-object p1, v10

    :goto_2
    check-cast p4, Lcom/shabakaty/downloader/pw0;

    move-object v10, p3

    move-object p3, p1

    move-object p1, v10

    .line 10
    :cond_8
    invoke-static {v2, p4, p2}, Lcom/shabakaty/cinemana/ca1/Final100;->protectEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    return-object p4

    :cond_9
    sget-object v7, Lcom/shabakaty/downloader/services/DownloaderService;->x:Lcom/shabakaty/downloader/services/DownloaderService$a;

    .line 11
    sget-boolean v7, Lcom/shabakaty/downloader/services/DownloaderService;->y:Z

    if-nez v7, :cond_a

    .line 12
    iget-object v7, v2, Lcom/shabakaty/downloader/qd4;->b:Landroid/content/Context;

    const-wide/16 v8, 0x5

    invoke-static {v7, v8, v9}, Lcom/shabakaty/downloader/vd5;->z(Landroid/content/Context;J)V

    .line 13
    :cond_a
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p4}, Lcom/shabakaty/downloader/pw0;->b()Z

    move-result v7

    if-eqz v7, :cond_b

    move-object v7, p3

    goto :goto_3

    :cond_b
    move-object v7, v6

    .line 15
    :goto_3
    iput-object v7, p4, Lcom/shabakaty/downloader/pw0;->A:Ljava/lang/Throwable;

    .line 16
    invoke-virtual {p4, p2}, Lcom/shabakaty/downloader/pw0;->k(Lcom/shabakaty/downloader/xc4;)V

    .line 17
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileSoFarBytes()J

    move-result-wide v7

    .line 18
    iput-wide v7, p4, Lcom/shabakaty/downloader/pw0;->t:J

    .line 19
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v7, ""

    if-nez p2, :cond_c

    move-object p2, v7

    :cond_c
    invoke-virtual {p4, p2}, Lcom/shabakaty/downloader/pw0;->j(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_4

    :cond_d
    move-object v7, p2

    :goto_4
    invoke-virtual {p4, v7}, Lcom/shabakaty/downloader/pw0;->m(Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v7

    .line 22
    iput-wide v7, p4, Lcom/shabakaty/downloader/pw0;->y:J

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/shabakaty/downloader/pw0;->i(Ljava/lang/String;)V

    .line 24
    iget-object p2, v2, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/a90;

    if-nez p2, :cond_e

    goto/16 :goto_5

    .line 25
    :cond_e
    iget-object v7, p4, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    .line 26
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_14

    if-eq v7, v5, :cond_13

    if-eq v7, v4, :cond_12

    const/4 v4, 0x4

    if-eq v7, v4, :cond_11

    const/4 p3, 0x5

    if-eq v7, p3, :cond_10

    const/4 p3, 0x6

    if-eq v7, p3, :cond_f

    .line 27
    iget-object p2, p2, Lcom/shabakaty/downloader/a90;->k:Lcom/shabakaty/downloader/hn1;

    .line 28
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileSoFarBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/d91;->g(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 29
    invoke-interface {p2, p4, p1}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 30
    :cond_f
    iget-object p1, p2, Lcom/shabakaty/downloader/a90;->n:Lcom/shabakaty/downloader/tm1;

    .line 31
    invoke-interface {p1, p4}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 32
    :cond_10
    iget-object p1, p2, Lcom/shabakaty/downloader/a90;->j:Lcom/shabakaty/downloader/tm1;

    .line 33
    invoke-interface {p1, p4}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 34
    :cond_11
    iget-object p1, p2, Lcom/shabakaty/downloader/a90;->l:Lcom/shabakaty/downloader/tm1;

    .line 35
    invoke-interface {p1, p3}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 36
    :cond_12
    iget-object p2, p2, Lcom/shabakaty/downloader/a90;->k:Lcom/shabakaty/downloader/hn1;

    .line 37
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileSoFarBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getLargeFileTotalBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/d91;->g(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 38
    invoke-interface {p2, p4, p1}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 39
    :cond_13
    iget-object p1, p2, Lcom/shabakaty/downloader/a90;->i:Lcom/shabakaty/downloader/tm1;

    .line 40
    invoke-interface {p1, p4}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 41
    :cond_14
    iget-object p1, p2, Lcom/shabakaty/downloader/a90;->h:Lcom/shabakaty/downloader/tm1;

    .line 42
    invoke-interface {p1, p4}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_5
    iput-object v6, v0, Lcom/shabakaty/downloader/qd4$e;->u:Ljava/lang/Object;

    iput-object v6, v0, Lcom/shabakaty/downloader/qd4$e;->v:Ljava/lang/Object;

    iput-object v6, v0, Lcom/shabakaty/downloader/qd4$e;->w:Ljava/lang/Object;

    iput-object v6, v0, Lcom/shabakaty/downloader/qd4$e;->x:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/qd4$e;->A:I

    invoke-virtual {v2, p4, v0}, Lcom/shabakaty/downloader/qd4;->f(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_15

    return-object v1

    :cond_15
    :goto_6
    return-object p4
.end method

.method public final f(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/qd4$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/qd4$f;

    iget v1, v0, Lcom/shabakaty/downloader/qd4$f;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/qd4$f;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qd4$f;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/qd4$f;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/qd4$f;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/qd4$f;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/shabakaty/downloader/qd4$f;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/pw0;

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
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string v2, "updating item in db: "

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/qd4$g;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/shabakaty/downloader/qd4$g;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/qd4$f;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/qd4$f;->x:I

    invoke-static {p2, v2, v0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method
