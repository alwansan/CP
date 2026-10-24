.class public final Lcom/shabakaty/downloader/c81;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvideTrackSelectorFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/ff3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lk2;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/c81;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/c81;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/c81;->c:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/c81;->d:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/xl2;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/c81;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/c81;->b:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/c81;->c:Lcom/shabakaty/downloader/oj3;

    .line 8
    iput-object p3, p0, Lcom/shabakaty/downloader/c81;->d:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/c81;->a:I

    const-string v1, "context"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/c81;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/lk2;

    iget-object v2, p0, Lcom/shabakaty/downloader/c81;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/shabakaty/downloader/c81;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ff3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsManager"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/ep0$d;->a0:Lcom/shabakaty/downloader/ep0$d;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ep0$e;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ep0$e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep0$e;->e()Lcom/shabakaty/downloader/ep0$d;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep0$d;->a()Lcom/shabakaty/downloader/ep0$e;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/ep0$e;->H:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/ep0$e;->H:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :goto_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/shabakaty/downloader/jp4$b;->v:Z

    .line 10
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ff3;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ep0$e;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/ep0$e;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/ep0;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ep0;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ep0;->j(Lcom/shabakaty/downloader/ep0$e;)V

    return-object v1

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/c81;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xl2;

    iget-object v2, p0, Lcom/shabakaty/downloader/c81;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/shabakaty/downloader/c81;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foregroundServiceConfig"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Application;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/liulishuo/filedownloader/FileDownloader;->setupOnApplicationOnCreate(Landroid/app/Application;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/iw3;->z:Lcom/shabakaty/downloader/iw3;

    .line 17
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->connectionCountAdapter(Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->foregroundServiceConfig(Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    move-result-object v0

    .line 19
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->limit(Landroid/content/Context;)I

    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->maxNetworkThreadCount(I)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Creator;

    .line 22
    new-instance v2, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    invoke-direct {v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;-><init>()V

    const/16 v3, 0x4e20

    .line 23
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->connectTimeout(I)Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->readTimeout(I)Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    move-result-object v2

    .line 25
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;->proxy(Ljava/net/Proxy;)Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;

    move-result-object v2

    .line 26
    invoke-direct {v1, v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Creator;-><init>(Lcom/liulishuo/filedownloader/connection/FileDownloadUrlConnection$Configuration;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->connectionCreator(Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;)Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;->commit()V

    .line 29
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    const-string v1, "getImpl()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
