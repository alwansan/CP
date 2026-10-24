.class public final Lcom/shabakaty/downloader/n00$a;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaApplication.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.CinemanaApplication$syncDownloadsLocalDbWithModuleDb$1$1"
    f = "CinemanaApplication.kt"
    l = {
        0x128
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/n00;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/tm1<",
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

.field public final synthetic x:Lcom/shabakaty/downloader/se0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/CinemanaApplication;",
            "Lcom/shabakaty/downloader/se0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/n00$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/n00$a;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iput-object p2, p0, Lcom/shabakaty/downloader/n00$a;->x:Lcom/shabakaty/downloader/se0;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/n00$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/n00$a;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iget-object v2, p0, Lcom/shabakaty/downloader/n00$a;->x:Lcom/shabakaty/downloader/se0;

    invoke-direct {v0, v1, v2, p1}, Lcom/shabakaty/downloader/n00$a;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n00$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v1, p0

    sget-object v2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v0, v1, Lcom/shabakaty/downloader/n00$a;->v:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v1, Lcom/shabakaty/downloader/n00$a;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/jw0;->j()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v10, v1, Lcom/shabakaty/downloader/n00$a;->x:Lcom/shabakaty/downloader/se0;

    iget-object v11, v1, Lcom/shabakaty/downloader/n00$a;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    .line 5
    new-instance v12, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    move-object v14, v0

    check-cast v14, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 8
    :try_start_0
    invoke-static {v11, v14}, Lcom/shabakaty/cinemana/CinemanaApplication;->d(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v14

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 9
    invoke-static {v4}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    :goto_1
    instance-of v4, v0, Lcom/shabakaty/downloader/dt3$a;

    xor-int/2addr v4, v3

    if-eqz v4, :cond_3

    .line 11
    check-cast v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 12
    sget-object v5, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 13
    new-instance v7, Lcom/shabakaty/downloader/n00$a$a;

    const/4 v4, 0x0

    invoke-direct {v7, v11, v0, v4}, Lcom/shabakaty/downloader/n00$a$a;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v10

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 14
    :cond_3
    invoke-virtual {v11}, Lcom/shabakaty/cinemana/CinemanaApplication;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/pw0;

    .line 16
    iget v5, v14, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    .line 17
    iget-object v6, v14, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 18
    iget-object v7, v14, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/shabakaty/downloader/q00;->ca1CleanPlayerTitle130(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    iget-object v8, v14, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/Cinemana/work/"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 21
    iget v0, v14, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    move-object/from16 p1, v4

    int-to-long v3, v0

    const-wide/16 v15, 0x400

    mul-long v3, v3, v15

    mul-long v24, v3, v15

    .line 22
    sget-object v26, Lcom/shabakaty/downloader/xc4;->y:Lcom/shabakaty/downloader/xc4;

    .line 23
    iget-object v0, v14, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->lastUpdated:Ljava/lang/String;

    const-wide/16 v18, 0x0

    const/16 v27, 0x0

    const-string v21, ""

    move-object/from16 v15, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v28, v0

    .line 24
    invoke-direct/range {v15 .. v28}, Lcom/shabakaty/downloader/pw0;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object/from16 v0, p1

    .line 25
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 26
    :cond_4
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object v0

    const/4 v3, 0x1

    iput v3, v1, Lcom/shabakaty/downloader/n00$a;->v:I

    invoke-interface {v0, v12, v1}, Lcom/shabakaty/downloader/az0;->a(Ljava/util/List;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    return-object v2

    .line 27
    :cond_5
    :goto_2
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
