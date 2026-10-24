.class public final Lcom/shabakaty/downloader/kw0;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/jw0;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/ce4;

.field public final d:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/downloader/p84;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/downloader/gz0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/w31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w31<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/shabakaty/downloader/w31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w31<",
            "Lcom/shabakaty/downloader/gz0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/shabakaty/downloader/f54;

.field public final j:Lcom/shabakaty/downloader/f54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ce4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ce4;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/kw0$g;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/kw0$g;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/kw0;->b:Lcom/shabakaty/downloader/x31;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/kw0$j;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/kw0$j;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/kw0;->d:Lcom/shabakaty/downloader/x31;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/kw0$r;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/kw0$r;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/kw0;->e:Lcom/shabakaty/downloader/x31;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/kw0$s;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/kw0$s;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/kw0;->f:Lcom/shabakaty/downloader/x31;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/kw0$t;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/kw0$t;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/kw0;->g:Lcom/shabakaty/downloader/w31;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/kw0$u;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/kw0$u;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/kw0;->h:Lcom/shabakaty/downloader/w31;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/kw0$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/kw0$a;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/kw0;->i:Lcom/shabakaty/downloader/f54;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/kw0$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/kw0$b;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/kw0;->j:Lcom/shabakaty/downloader/f54;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Integer;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/gz0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM DownloadsCollectionItem WHERE id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/yt3;->h0(IJ)V

    .line 3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v3, Lcom/shabakaty/downloader/kw0$q;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/kw0$q;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v2, v1, p1, v3, p2}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public B(Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/kw0$d;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/kw0$d;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C()Lcom/shabakaty/downloader/t43;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/t43<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM CinemanaDownloadItem"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    const-string v3, "CinemanaDownloadItem"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/kw0$n;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/kw0$n;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/yt3;)V

    sget-object v0, Lcom/shabakaty/downloader/bw3;->a:Ljava/lang/Object;

    .line 3
    iget-object v0, v2, Lcom/shabakaty/downloader/vt3;->b:Ljava/util/concurrent/Executor;

    .line 4
    sget-object v5, Lcom/shabakaty/downloader/ay3;->a:Lcom/shabakaty/downloader/wx3;

    .line 5
    new-instance v5, Lcom/shabakaty/downloader/w61;

    invoke-direct {v5, v0, v1}, Lcom/shabakaty/downloader/w61;-><init>(Ljava/util/concurrent/Executor;Z)V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/co2;

    invoke-direct {v0, v4}, Lcom/shabakaty/downloader/co2;-><init>(Ljava/util/concurrent/Callable;)V

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/yv3;

    invoke-direct {v4, v3, v2}, Lcom/shabakaty/downloader/yv3;-><init>([Ljava/lang/String;Lcom/shabakaty/downloader/vt3;)V

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/v43;

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/v43;-><init>(Lcom/shabakaty/downloader/f53;)V

    .line 9
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/t43;->k(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/t43;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/p53;

    invoke-direct {v3, v2, v5}, Lcom/shabakaty/downloader/p53;-><init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/wx3;)V

    .line 11
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/t43;->g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/t43;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/zv3;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/zv3;-><init>(Lcom/shabakaty/downloader/zn2;)V

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/z43;

    invoke-direct {v0, v2, v3, v1}, Lcom/shabakaty/downloader/z43;-><init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/in1;Z)V

    return-object v0
.end method

.method public H()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM CinemanaDownloadItem"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    const-string v3, "CinemanaDownloadItem"

    .line 4
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/kw0$m;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/kw0$m;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/yt3;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/shabakaty/downloader/v32;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public I()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/d50;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM DownloadsCollectionItem"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    const-string v2, "CinemanaDownloadItem"

    const-string v3, "DownloadsCollectionItem"

    .line 4
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/shabakaty/downloader/kw0$o;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/kw0$o;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/yt3;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/v32;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/d50;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM DownloadsCollectionItem"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "id"

    .line 7
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "name"

    .line 8
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "image"

    .line 9
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 10
    new-instance v6, Lcom/shabakaty/downloader/jl2;

    const/16 v7, 0xa

    .line 11
    invoke-direct {v6, v7}, Lcom/shabakaty/downloader/jl2;-><init>(I)V

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 13
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 14
    invoke-virtual {v6, v7, v8}, Lcom/shabakaty/downloader/jl2;->g(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 15
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v6, v7, v8, v9}, Lcom/shabakaty/downloader/jl2;->k(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    .line 17
    invoke-interface {v1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 18
    invoke-virtual {p0, v6}, Lcom/shabakaty/downloader/kw0;->L(Lcom/shabakaty/downloader/jl2;)V

    .line 19
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 21
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move-object v8, v3

    goto :goto_5

    .line 22
    :cond_3
    :goto_2
    new-instance v8, Lcom/shabakaty/downloader/gz0;

    invoke-direct {v8}, Lcom/shabakaty/downloader/gz0;-><init>()V

    .line 23
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 24
    iput v9, v8, Lcom/shabakaty/downloader/gz0;->r:I

    .line 25
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v3

    goto :goto_3

    .line 26
    :cond_4
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 27
    :goto_3
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/gz0;->c(Ljava/lang/String;)V

    .line 28
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v3

    goto :goto_4

    .line 29
    :cond_5
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 30
    :goto_4
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/gz0;->b(Ljava/lang/String;)V

    .line 31
    :goto_5
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 32
    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/jl2;->g(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_6

    .line 33
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 34
    :cond_6
    new-instance v10, Lcom/shabakaty/downloader/d50;

    invoke-direct {v10, v8, v9}, Lcom/shabakaty/downloader/d50;-><init>(Lcom/shabakaty/downloader/gz0;Ljava/util/List;)V

    .line 35
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_6

    .line 36
    :cond_7
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 38
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 40
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    return-object v7

    .line 41
    :goto_6
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 42
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 43
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 45
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 46
    throw v0
.end method

.method public K(Ljava/lang/Integer;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
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

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/kw0$k;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/kw0$k;-><init>(Lcom/shabakaty/downloader/kw0;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final L(Lcom/shabakaty/downloader/jl2;)V
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/jl2<",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "collectionID"

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/jl2;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/jl2;->m()I

    move-result v3

    const/16 v4, 0x3e7

    const/4 v5, 0x0

    if-le v3, v4, :cond_4

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/jl2;

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/jl2;-><init>(I)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/jl2;->m()I

    move-result v3

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :cond_1
    if-ge v6, v3, :cond_2

    .line 5
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/jl2;->j(I)J

    move-result-wide v8

    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/jl2;->n(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v9, v10}, Lcom/shabakaty/downloader/jl2;->k(JLjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v4, :cond_1

    .line 6
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/kw0;->L(Lcom/shabakaty/downloader/jl2;)V

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/jl2;

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/jl2;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    .line 8
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/kw0;->L(Lcom/shabakaty/downloader/jl2;)V

    :cond_3
    return-void

    .line 9
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT `id`,`downloadTaskId`,`title`,`stars`,`kind`,`sizeMB`,`season`,`imgObjUrl`,`filmRating`,`tvShowRating`,`path`,`episodeNumber`,`special`,`useParentImg`,`parentSkipping`,`collectionID`,`imgThumbObjUrl`,`qualityName`,`rootEpisode`,`hasIntroSkipping`,`episodeFlag`,`lastUpdated`,`skippingDurations_start`,`skippingDurations_end` FROM `CinemanaDownloadItem` WHERE `collectionID` IN ("

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/jl2;->m()I

    move-result v4

    .line 12
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/ee4;->a(Ljava/lang/StringBuilder;I)V

    const-string v6, ")"

    .line 13
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v4, v5

    .line 15
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 16
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/jl2;->m()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 17
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/jl2;->j(I)J

    move-result-wide v8

    .line 18
    invoke-virtual {v3, v7, v8, v9}, Lcom/shabakaty/downloader/yt3;->h0(IJ)V

    add-int/2addr v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget-object v6, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v7, 0x0

    invoke-static {v6, v3, v5, v7}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 20
    :try_start_0
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v8, -0x1

    if-ne v6, v8, :cond_6

    .line 21
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_6
    :try_start_1
    const-string v8, "id"

    .line 22
    invoke-static {v3, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "downloadTaskId"

    .line 23
    invoke-static {v3, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "title"

    .line 24
    invoke-static {v3, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "stars"

    .line 25
    invoke-static {v3, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "kind"

    .line 26
    invoke-static {v3, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "sizeMB"

    .line 27
    invoke-static {v3, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "season"

    .line 28
    invoke-static {v3, v14}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "imgObjUrl"

    .line 29
    invoke-static {v3, v15}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "filmRating"

    .line 30
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "tvShowRating"

    .line 31
    invoke-static {v3, v5}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v7, "path"

    .line 32
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v1, "episodeNumber"

    .line 33
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "special"

    .line 34
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "useParentImg"

    .line 35
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "parentSkipping"

    .line 36
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 37
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "imgThumbObjUrl"

    .line 38
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "qualityName"

    .line 39
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "rootEpisode"

    .line 40
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "hasIntroSkipping"

    .line 41
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "episodeFlag"

    .line 42
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "lastUpdated"

    .line 43
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "skippingDurations_start"

    .line 44
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "skippingDurations_end"

    .line 45
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 46
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v27

    if-eqz v27, :cond_1f

    move/from16 v27, v1

    move/from16 v28, v2

    .line 47
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/jl2;->g(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    .line 49
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v30, 0x0

    goto :goto_3

    .line 50
    :cond_7
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    .line 51
    :goto_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 52
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v32, 0x0

    goto :goto_4

    .line 53
    :cond_8
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v32, v2

    .line 54
    :goto_4
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v33, 0x0

    goto :goto_5

    .line 55
    :cond_9
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v33, v2

    .line 56
    :goto_5
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v34, 0x0

    goto :goto_6

    .line 57
    :cond_a
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v34, v2

    .line 58
    :goto_6
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 59
    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v36, 0x0

    goto :goto_7

    .line 60
    :cond_b
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v36, v2

    .line 61
    :goto_7
    invoke-interface {v3, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v37, 0x0

    goto :goto_8

    .line 62
    :cond_c
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v37, v2

    .line 63
    :goto_8
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v38, 0x0

    goto :goto_9

    .line 64
    :cond_d
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v38, v2

    .line 65
    :goto_9
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v39, 0x0

    goto :goto_a

    .line 66
    :cond_e
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v39, v2

    .line 67
    :goto_a
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    move/from16 v2, v16

    const/16 v40, 0x0

    goto :goto_b

    .line 68
    :cond_f
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v40, v2

    move/from16 v2, v16

    .line 69
    :goto_b
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_10

    move/from16 v0, v17

    const/16 v41, 0x0

    goto :goto_c

    .line 70
    :cond_10
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v41, v16

    move/from16 v0, v17

    .line 71
    :goto_c
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_11

    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v42, 0x0

    goto :goto_d

    .line 72
    :cond_11
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v0

    move-object/from16 v42, v16

    move/from16 v0, v18

    .line 73
    :goto_d
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_12

    move/from16 v18, v0

    move/from16 v0, v27

    const/16 v43, 0x0

    goto :goto_e

    .line 74
    :cond_12
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v18, v0

    move-object/from16 v43, v16

    move/from16 v0, v27

    .line 75
    :goto_e
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_13

    move/from16 v27, v0

    move/from16 v0, v19

    const/16 v44, 0x0

    goto :goto_f

    .line 76
    :cond_13
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v27, v0

    move-object/from16 v44, v16

    move/from16 v0, v19

    .line 77
    :goto_f
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    move/from16 v19, v0

    move/from16 v0, v20

    .line 78
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_14

    move/from16 v20, v0

    move/from16 v0, v21

    const/16 v46, 0x0

    goto :goto_10

    .line 79
    :cond_14
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v20, v0

    move-object/from16 v46, v16

    move/from16 v0, v21

    .line 80
    :goto_10
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_15

    move/from16 v21, v0

    move/from16 v0, v22

    const/16 v48, 0x0

    goto :goto_11

    .line 81
    :cond_15
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v21, v0

    move-object/from16 v48, v16

    move/from16 v0, v22

    .line 82
    :goto_11
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_16

    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v49, 0x0

    goto :goto_12

    .line 83
    :cond_16
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v22, v0

    move-object/from16 v49, v16

    move/from16 v0, v23

    .line 84
    :goto_12
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v23, v0

    move/from16 v0, v24

    if-eqz v16, :cond_17

    const/16 v50, 0x1

    goto :goto_13

    :cond_17
    const/16 v50, 0x0

    .line 85
    :goto_13
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_18

    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v51, 0x0

    goto :goto_14

    .line 86
    :cond_18
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v24, v0

    move-object/from16 v51, v16

    move/from16 v0, v25

    .line 87
    :goto_14
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_19

    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v52, 0x0

    goto :goto_15

    .line 88
    :cond_19
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v25, v0

    move-object/from16 v52, v16

    move/from16 v0, v26

    .line 89
    :goto_15
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_1b

    move/from16 v16, v2

    move/from16 v2, v28

    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-nez v26, :cond_1a

    goto :goto_16

    :cond_1a
    move/from16 v28, v0

    move/from16 v54, v2

    move/from16 v26, v4

    move/from16 v53, v5

    const/16 v47, 0x0

    move-object/from16 v4, p0

    goto :goto_1a

    :cond_1b
    move/from16 v16, v2

    move/from16 v2, v28

    .line 90
    :goto_16
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1c

    move/from16 v28, v0

    move/from16 v26, v4

    move/from16 v53, v5

    const/4 v0, 0x0

    :goto_17
    move-object/from16 v4, p0

    goto :goto_18

    .line 91
    :cond_1c
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v28, v0

    move/from16 v53, v5

    move-object/from16 v0, v26

    move/from16 v26, v4

    goto :goto_17

    .line 92
    :goto_18
    :try_start_3
    iget-object v5, v4, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    move/from16 v54, v2

    const/4 v5, 0x0

    goto :goto_19

    .line 94
    :cond_1d
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v54, v2

    .line 95
    :goto_19
    iget-object v2, v4, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 96
    new-instance v5, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    invoke-direct {v5, v0, v2}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v47, v5

    .line 97
    :goto_1a
    new-instance v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v52}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1b

    :catchall_0
    move-exception v0

    goto :goto_1c

    :cond_1e
    move/from16 v53, v5

    move/from16 v54, v28

    move/from16 v28, v26

    move/from16 v26, v4

    move-object/from16 v4, p0

    :goto_1b
    move-object/from16 v0, p1

    move/from16 v4, v26

    move/from16 v1, v27

    move/from16 v26, v28

    move/from16 v5, v53

    move/from16 v2, v54

    goto/16 :goto_2

    :cond_1f
    move-object/from16 v4, p0

    .line 99
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1c

    :catchall_2
    move-exception v0

    move-object v4, v1

    :goto_1c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 100
    throw v0
.end method

.method public final M(Lcom/shabakaty/downloader/ad;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ad<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/p84;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "parentId"

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ad;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2
    check-cast v3, Lcom/shabakaty/downloader/gm2$c;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/gm2$c;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 3
    :cond_0
    iget v4, v0, Lcom/shabakaty/downloader/m64;->t:I

    const/16 v5, 0x3e7

    const/4 v6, 0x0

    if-le v4, v5, :cond_4

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/ad;

    invoke-direct {v2, v5}, Lcom/shabakaty/downloader/ad;-><init>(I)V

    .line 5
    iget v3, v0, Lcom/shabakaty/downloader/m64;->t:I

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x0

    :cond_1
    if-ge v4, v3, :cond_2

    .line 6
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/m64;->i(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/m64;->l(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v9}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v5, :cond_1

    .line 7
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/kw0;->M(Lcom/shabakaty/downloader/ad;)V

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/ad;

    invoke-direct {v2, v5}, Lcom/shabakaty/downloader/ad;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    .line 9
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/kw0;->M(Lcom/shabakaty/downloader/ad;)V

    :cond_3
    return-void

    .line 10
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT `id`,`parentId`,`start`,`end`,`controlLevel` FROM `SkippableSceneDB` WHERE `parentId` IN ("

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    .line 13
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/ee4;->a(Ljava/lang/StringBuilder;I)V

    const-string v7, ")"

    .line 14
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v6

    .line 16
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v4

    .line 17
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_5

    .line 18
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v4, v5, v7}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 20
    :cond_6
    iget-object v3, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v5, 0x0

    invoke-static {v3, v4, v6, v5}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 21
    :try_start_0
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_7

    .line 22
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    :try_start_1
    const-string v6, "id"

    .line 23
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 24
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v7, "start"

    .line 25
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "end"

    .line 26
    invoke-static {v3, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "controlLevel"

    .line 27
    invoke-static {v3, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 28
    :cond_8
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 29
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 30
    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-eqz v10, :cond_8

    .line 31
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 32
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_9

    move-object v13, v5

    goto :goto_4

    .line 33
    :cond_9
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    .line 34
    :goto_4
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 35
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 36
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object/from16 v18, v5

    goto :goto_5

    .line 37
    :cond_a
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v11

    .line 38
    :goto_5
    new-instance v11, Lcom/shabakaty/downloader/p84;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    invoke-direct/range {v11 .. v18}, Lcom/shabakaty/downloader/p84;-><init>(ILjava/lang/String;JJLjava/lang/String;)V

    .line 39
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 40
    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 41
    throw v0
.end method

.method public final N(Lcom/shabakaty/downloader/ad;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ad<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "parentId"

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ad;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2
    check-cast v3, Lcom/shabakaty/downloader/gm2$c;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/gm2$c;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 3
    :cond_0
    iget v4, v0, Lcom/shabakaty/downloader/m64;->t:I

    const/16 v5, 0x3e7

    const/4 v6, 0x0

    if-le v4, v5, :cond_4

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/ad;

    invoke-direct {v2, v5}, Lcom/shabakaty/downloader/ad;-><init>(I)V

    .line 5
    iget v3, v0, Lcom/shabakaty/downloader/m64;->t:I

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x0

    :cond_1
    if-ge v4, v3, :cond_2

    .line 6
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/m64;->i(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/m64;->l(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v9}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v5, :cond_1

    .line 7
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/kw0;->N(Lcom/shabakaty/downloader/ad;)V

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/ad;

    invoke-direct {v2, v5}, Lcom/shabakaty/downloader/ad;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    .line 9
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/kw0;->N(Lcom/shabakaty/downloader/ad;)V

    :cond_3
    return-void

    .line 10
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT `id`,`parentId`,`downloadTaskId`,`name`,`type`,`extension`,`file` FROM `SubtitleDb` WHERE `parentId` IN ("

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    .line 13
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/ee4;->a(Ljava/lang/StringBuilder;I)V

    const-string v7, ")"

    .line 14
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v6

    .line 16
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v4

    .line 17
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_5

    .line 18
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v4, v5, v7}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 20
    :cond_6
    iget-object v3, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v5, 0x0

    invoke-static {v3, v4, v6, v5}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 21
    :try_start_0
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_7

    .line 22
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    :try_start_1
    const-string v6, "id"

    .line 23
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 24
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v7, "downloadTaskId"

    .line 25
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "name"

    .line 26
    invoke-static {v3, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    .line 27
    invoke-static {v3, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "extension"

    .line 28
    invoke-static {v3, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "file"

    .line 29
    invoke-static {v3, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 30
    :cond_8
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 31
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 32
    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-eqz v12, :cond_8

    .line 33
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object v15, v5

    goto :goto_4

    .line 34
    :cond_9
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v15, v13

    .line 35
    :goto_4
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v16, v5

    goto :goto_5

    .line 36
    :cond_a
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 37
    :goto_5
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 38
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v18, v5

    goto :goto_6

    .line 39
    :cond_b
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v13

    .line 40
    :goto_6
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v19, v5

    goto :goto_7

    .line 41
    :cond_c
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v13

    .line 42
    :goto_7
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v20, v5

    goto :goto_8

    .line 43
    :cond_d
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v13

    .line 44
    :goto_8
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v21, v5

    goto :goto_9

    .line 45
    :cond_e
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v13

    .line 46
    :goto_9
    new-instance v13, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;

    move-object v14, v13

    invoke-direct/range {v14 .. v21}, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 48
    :cond_f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 49
    throw v0
.end method

.method public g(Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gz0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/kw0$f;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/kw0$f;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/gz0;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Delete101;->absent(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Recovery92;->deleted(Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/kw0$l;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/kw0$l;-><init>(Lcom/shabakaty/downloader/kw0;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gz0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/kw0$i;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/kw0$i;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/gz0;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()Ljava/util/List;
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM CinemanaDownloadItem"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v3

    .line 2
    iget-object v0, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 3
    iget-object v0, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "id"

    .line 4
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "downloadTaskId"

    .line 5
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    .line 6
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "stars"

    .line 7
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "kind"

    .line 8
    invoke-static {v5, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sizeMB"

    .line 9
    invoke-static {v5, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "season"

    .line 10
    invoke-static {v5, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "imgObjUrl"

    .line 11
    invoke-static {v5, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "filmRating"

    .line 12
    invoke-static {v5, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "tvShowRating"

    .line 13
    invoke-static {v5, v14}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "path"

    .line 14
    invoke-static {v5, v15}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "episodeNumber"

    .line 15
    invoke-static {v5, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "special"

    .line 16
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "useParentImg"

    .line 17
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v1, "parentSkipping"

    .line 18
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "collectionID"

    .line 19
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "imgThumbObjUrl"

    .line 20
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "qualityName"

    .line 21
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "rootEpisode"

    .line 22
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "hasIntroSkipping"

    .line 23
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "episodeFlag"

    .line 24
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "lastUpdated"

    .line 25
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "skippingDurations_start"

    .line 26
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "skippingDurations_end"

    .line 27
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 30
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v29, 0x0

    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    .line 32
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 33
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v31, 0x0

    goto :goto_2

    .line 34
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v31, v3

    .line 35
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v32, 0x0

    goto :goto_3

    .line 36
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    .line 37
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v33, 0x0

    goto :goto_4

    .line 38
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v3

    .line 39
    :goto_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 40
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v35, 0x0

    goto :goto_5

    .line 41
    :cond_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    .line 42
    :goto_5
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v36, 0x0

    goto :goto_6

    .line 43
    :cond_5
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v36, v3

    .line 44
    :goto_6
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v37, 0x0

    goto :goto_7

    .line 45
    :cond_6
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v37, v3

    .line 46
    :goto_7
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v38, 0x0

    goto :goto_8

    .line 47
    :cond_7
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v38, v3

    .line 48
    :goto_8
    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v39, 0x0

    goto :goto_9

    .line 49
    :cond_8
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    .line 50
    :goto_9
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v40, 0x0

    goto :goto_a

    .line 51
    :cond_9
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v3

    .line 52
    :goto_a
    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v3, v27

    const/16 v41, 0x0

    goto :goto_b

    .line 53
    :cond_a
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v41, v3

    move/from16 v3, v27

    .line 54
    :goto_b
    invoke-interface {v5, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_b

    const/16 v42, 0x0

    :goto_c
    move/from16 v55, v17

    move/from16 v17, v0

    move/from16 v0, v55

    goto :goto_d

    .line 55
    :cond_b
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v42, v27

    goto :goto_c

    .line 56
    :goto_d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_c

    const/16 v43, 0x0

    :goto_e
    move/from16 v55, v18

    move/from16 v18, v0

    move/from16 v0, v55

    goto :goto_f

    .line 57
    :cond_c
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v43, v27

    goto :goto_e

    .line 58
    :goto_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    move/from16 v27, v0

    move/from16 v0, v19

    .line 59
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_d

    move/from16 v19, v0

    move/from16 v0, v20

    const/16 v45, 0x0

    goto :goto_10

    .line 60
    :cond_d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v45, v19

    move/from16 v19, v0

    move/from16 v0, v20

    .line 61
    :goto_10
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_e

    move/from16 v20, v0

    move/from16 v0, v21

    const/16 v47, 0x0

    goto :goto_11

    .line 62
    :cond_e
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v47, v20

    move/from16 v20, v0

    move/from16 v0, v21

    .line 63
    :goto_11
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_f

    move/from16 v21, v0

    move/from16 v0, v22

    const/16 v48, 0x0

    goto :goto_12

    .line 64
    :cond_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v48, v21

    move/from16 v21, v0

    move/from16 v0, v22

    .line 65
    :goto_12
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_10

    const/16 v22, 0x1

    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v49, 0x1

    goto :goto_13

    :cond_10
    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v49, 0x0

    .line 66
    :goto_13
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_11

    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v50, 0x0

    goto :goto_14

    .line 67
    :cond_11
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v50, v23

    move/from16 v23, v0

    move/from16 v0, v24

    .line 68
    :goto_14
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_12

    move/from16 v24, v0

    move/from16 v0, v25

    const/16 v51, 0x0

    goto :goto_15

    .line 69
    :cond_12
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v51, v24

    move/from16 v24, v0

    move/from16 v0, v25

    .line 70
    :goto_15
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_14

    move/from16 v25, v2

    move/from16 v2, v26

    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-nez v26, :cond_13

    goto :goto_16

    :cond_13
    move/from16 v52, v0

    move/from16 v54, v2

    move/from16 v26, v3

    move/from16 v53, v4

    const/16 v46, 0x0

    move-object/from16 v3, p0

    goto :goto_1a

    :cond_14
    move/from16 v25, v2

    move/from16 v2, v26

    .line 71
    :goto_16
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_15

    move/from16 v52, v0

    move/from16 v26, v3

    move/from16 v53, v4

    const/4 v0, 0x0

    :goto_17
    move-object/from16 v3, p0

    goto :goto_18

    .line 72
    :cond_15
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v52, v0

    move/from16 v53, v4

    move-object/from16 v0, v26

    move/from16 v26, v3

    goto :goto_17

    .line 73
    :goto_18
    :try_start_3
    iget-object v4, v3, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    move/from16 v54, v2

    const/4 v4, 0x0

    goto :goto_19

    .line 75
    :cond_16
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v54, v2

    .line 76
    :goto_19
    iget-object v2, v3, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 77
    new-instance v4, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    invoke-direct {v4, v0, v2}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v46, v4

    .line 78
    :goto_1a
    new-instance v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v51}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v0, v17

    move/from16 v17, v18

    move/from16 v2, v25

    move/from16 v18, v27

    move/from16 v25, v52

    move/from16 v4, v53

    move/from16 v27, v26

    move/from16 v26, v54

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1c

    :cond_17
    move-object/from16 v3, p0

    .line 80
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual/range {v16 .. v16}, Lcom/shabakaty/downloader/yt3;->c()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_1c

    :catchall_2
    move-exception v0

    goto :goto_1b

    :catchall_3
    move-exception v0

    move-object/from16 v16, v3

    :goto_1b
    move-object v3, v1

    .line 82
    :goto_1c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 83
    invoke-virtual/range {v16 .. v16}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 84
    throw v0
.end method

.method public l(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Commit105;->prepare(Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/kw0$c;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/kw0$c;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM CinemanaDownloadItem Where id = ? LIMIT 1"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 4
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v3, Lcom/shabakaty/downloader/kw0$p;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/kw0$p;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v2, v1, p1, v3, p2}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Ljava/util/List;
    .locals 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM CinemanaDownloadItem Where collectionID = ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Lcom/shabakaty/downloader/yt3;->h0(IJ)V

    .line 3
    iget-object v0, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 4
    iget-object v0, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 7
    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v0, "id"

    .line 8
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "downloadTaskId"

    .line 9
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    .line 10
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "stars"

    .line 11
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "kind"

    .line 12
    invoke-static {v5, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sizeMB"

    .line 13
    invoke-static {v5, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "season"

    .line 14
    invoke-static {v5, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "imgObjUrl"

    .line 15
    invoke-static {v5, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "filmRating"

    .line 16
    invoke-static {v5, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "tvShowRating"

    .line 17
    invoke-static {v5, v14}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "path"

    .line 18
    invoke-static {v5, v15}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "episodeNumber"

    .line 19
    invoke-static {v5, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "special"

    .line 20
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v16, v3

    :try_start_2
    const-string v3, "useParentImg"

    .line 21
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "parentSkipping"

    .line 22
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "collectionID"

    .line 23
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "imgThumbObjUrl"

    .line 24
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "qualityName"

    .line 25
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "rootEpisode"

    .line 26
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "hasIntroSkipping"

    .line 27
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "episodeFlag"

    .line 28
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "lastUpdated"

    .line 29
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "skippingDurations_start"

    .line 30
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "skippingDurations_end"

    .line 31
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    .line 32
    new-instance v3, Lcom/shabakaty/downloader/ad;

    invoke-direct {v3}, Lcom/shabakaty/downloader/ad;-><init>()V

    move/from16 v28, v4

    .line 33
    new-instance v4, Lcom/shabakaty/downloader/ad;

    invoke-direct {v4}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 34
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v29

    if-eqz v29, :cond_2

    move/from16 v29, v2

    .line 35
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    if-nez v30, :cond_0

    move/from16 v30, v15

    .line 37
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v3, v2, v15}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move/from16 v30, v15

    .line 39
    :goto_1
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_1

    .line 41
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {v4, v2, v15}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move/from16 v2, v29

    move/from16 v15, v30

    goto :goto_0

    :cond_2
    move/from16 v29, v2

    move/from16 v30, v15

    const/4 v2, -0x1

    .line 43
    invoke-interface {v5, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 44
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/kw0;->N(Lcom/shabakaty/downloader/ad;)V

    .line 45
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/kw0;->M(Lcom/shabakaty/downloader/ad;)V

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 48
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v15, :cond_11

    :try_start_3
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_11

    move/from16 v15, v30

    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_10

    move-object/from16 v30, v2

    move/from16 v2, v29

    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_f

    move-object/from16 v29, v4

    move/from16 v4, v28

    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_d

    move-object/from16 v28, v3

    move/from16 v3, v17

    invoke-interface {v5, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v1, v18

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v18, v1

    move/from16 v1, v19

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v19, v1

    move/from16 v1, v20

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_a

    move/from16 v20, v1

    move/from16 v1, v21

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_9

    move/from16 v21, v1

    move/from16 v1, v22

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v22, v1

    move/from16 v1, v23

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v23, v1

    move/from16 v1, v24

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move/from16 v24, v1

    move/from16 v1, v25

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v25, v1

    move/from16 v1, v26

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    move/from16 v26, v1

    move/from16 v1, v27

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_3

    goto/16 :goto_6

    :cond_3
    move/from16 v56, v1

    move/from16 v17, v2

    move/from16 v55, v4

    move/from16 v27, v26

    const/4 v1, 0x0

    move/from16 v26, v18

    move/from16 v18, v3

    move-object/from16 v3, p0

    goto/16 :goto_1f

    :cond_4
    move/from16 v26, v1

    goto :goto_3

    :cond_5
    move/from16 v25, v1

    goto :goto_3

    :cond_6
    move/from16 v24, v1

    goto :goto_3

    :cond_7
    move/from16 v23, v1

    goto :goto_3

    :cond_8
    move/from16 v22, v1

    goto :goto_3

    :cond_9
    move/from16 v21, v1

    goto :goto_3

    :cond_a
    move/from16 v20, v1

    goto :goto_3

    :cond_b
    move/from16 v19, v1

    goto :goto_3

    :cond_c
    move/from16 v18, v1

    goto :goto_3

    :cond_d
    move-object/from16 v28, v3

    move/from16 v3, v17

    :cond_e
    :goto_3
    move/from16 v1, v27

    goto :goto_6

    :cond_f
    move-object/from16 v29, v4

    move/from16 v1, v27

    goto :goto_5

    :cond_10
    move-object/from16 v30, v2

    move/from16 v1, v27

    goto :goto_4

    :cond_11
    move/from16 v1, v27

    move/from16 v15, v30

    move-object/from16 v30, v2

    :goto_4
    move/from16 v2, v29

    move-object/from16 v29, v4

    :goto_5
    move/from16 v4, v28

    move-object/from16 v28, v3

    move/from16 v3, v17

    .line 49
    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v32, 0x0

    goto :goto_7

    .line 50
    :cond_12
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v32, v17

    .line 51
    :goto_7
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 52
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v34, 0x0

    goto :goto_8

    .line 53
    :cond_13
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v34, v17

    .line 54
    :goto_8
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v35, 0x0

    goto :goto_9

    .line 55
    :cond_14
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v35, v17

    .line 56
    :goto_9
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v36, 0x0

    goto :goto_a

    .line 57
    :cond_15
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v36, v17

    .line 58
    :goto_a
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 59
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_16

    const/16 v38, 0x0

    goto :goto_b

    .line 60
    :cond_16
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v38, v17

    .line 61
    :goto_b
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_17

    const/16 v39, 0x0

    goto :goto_c

    .line 62
    :cond_17
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v39, v17

    .line 63
    :goto_c
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_18

    const/16 v40, 0x0

    goto :goto_d

    .line 64
    :cond_18
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v40, v17

    .line 65
    :goto_d
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_19

    const/16 v41, 0x0

    goto :goto_e

    .line 66
    :cond_19
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v41, v17

    .line 67
    :goto_e
    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/16 v42, 0x0

    goto :goto_f

    .line 68
    :cond_1a
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v42, v17

    .line 69
    :goto_f
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1b

    const/16 v43, 0x0

    goto :goto_10

    .line 70
    :cond_1b
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v43, v17

    .line 71
    :goto_10
    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/16 v44, 0x0

    goto :goto_11

    .line 72
    :cond_1c
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v44, v17

    .line 73
    :goto_11
    invoke-interface {v5, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1d

    move/from16 v17, v2

    move/from16 v2, v18

    const/16 v45, 0x0

    goto :goto_12

    .line 74
    :cond_1d
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v45, v17

    move/from16 v17, v2

    move/from16 v2, v18

    .line 75
    :goto_12
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1e

    move/from16 v18, v2

    move/from16 v2, v19

    const/16 v46, 0x0

    goto :goto_13

    .line 76
    :cond_1e
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v46, v18

    move/from16 v18, v2

    move/from16 v2, v19

    .line 77
    :goto_13
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    move/from16 v19, v2

    move/from16 v2, v20

    .line 78
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1f

    move/from16 v20, v2

    move/from16 v2, v21

    const/16 v48, 0x0

    goto :goto_14

    .line 79
    :cond_1f
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v48, v20

    move/from16 v20, v2

    move/from16 v2, v21

    .line 80
    :goto_14
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_20

    move/from16 v21, v2

    move/from16 v2, v22

    const/16 v50, 0x0

    goto :goto_15

    .line 81
    :cond_20
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v50, v21

    move/from16 v21, v2

    move/from16 v2, v22

    .line 82
    :goto_15
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_21

    move/from16 v22, v2

    move/from16 v2, v23

    const/16 v51, 0x0

    goto :goto_16

    .line 83
    :cond_21
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v51, v22

    move/from16 v22, v2

    move/from16 v2, v23

    .line 84
    :goto_16
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_22

    move/from16 v23, v2

    move/from16 v2, v24

    const/16 v52, 0x1

    goto :goto_17

    :cond_22
    const/16 v23, 0x0

    move/from16 v23, v2

    move/from16 v2, v24

    const/16 v52, 0x0

    .line 85
    :goto_17
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_23

    move/from16 v24, v2

    move/from16 v2, v25

    const/16 v53, 0x0

    goto :goto_18

    .line 86
    :cond_23
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v53, v24

    move/from16 v24, v2

    move/from16 v2, v25

    .line 87
    :goto_18
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_24

    move/from16 v25, v2

    move/from16 v2, v26

    const/16 v54, 0x0

    goto :goto_19

    .line 88
    :cond_24
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v54, v25

    move/from16 v25, v2

    move/from16 v2, v26

    .line 89
    :goto_19
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_26

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-nez v26, :cond_25

    goto :goto_1a

    :cond_25
    move/from16 v56, v1

    move/from16 v27, v2

    move/from16 v55, v4

    move/from16 v26, v18

    const/16 v49, 0x0

    move/from16 v18, v3

    move-object/from16 v3, p0

    goto :goto_1e

    .line 90
    :cond_26
    :goto_1a
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_27

    move/from16 v27, v2

    move/from16 v55, v4

    move/from16 v26, v18

    const/4 v2, 0x0

    :goto_1b
    move/from16 v18, v3

    move-object/from16 v3, p0

    goto :goto_1c

    .line 91
    :cond_27
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v27, v2

    move/from16 v55, v4

    move-object/from16 v2, v26

    move/from16 v26, v18

    goto :goto_1b

    .line 92
    :goto_1c
    :try_start_4
    iget-object v4, v3, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 93
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_28

    move/from16 v56, v1

    const/4 v4, 0x0

    goto :goto_1d

    .line 94
    :cond_28
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v56, v1

    .line 95
    :goto_1d
    iget-object v1, v3, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 96
    new-instance v4, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    invoke-direct {v4, v2, v1}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v49, v4

    .line 97
    :goto_1e
    new-instance v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-object/from16 v31, v1

    invoke-direct/range {v31 .. v54}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_1f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v28

    .line 99
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_29

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    move-object/from16 v28, v4

    .line 101
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v31, v0

    move-object/from16 v0, v29

    .line 102
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_2a

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    move-object/from16 v29, v0

    .line 104
    new-instance v0, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    invoke-direct {v0, v1, v2, v4}, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;-><init>(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v30

    .line 105
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    move-object v1, v3

    move/from16 v30, v15

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move/from16 v0, v31

    move/from16 v28, v55

    move/from16 v29, v17

    move/from16 v17, v18

    move/from16 v18, v26

    move/from16 v26, v27

    move/from16 v27, v56

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_21

    :cond_2b
    move-object v3, v1

    move-object v1, v2

    .line 106
    iget-object v0, v3, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 108
    invoke-virtual/range {v16 .. v16}, Lcom/shabakaty/downloader/yt3;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 109
    iget-object v0, v3, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 110
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_21

    :catchall_2
    move-exception v0

    goto :goto_20

    :catchall_3
    move-exception v0

    move-object/from16 v16, v3

    :goto_20
    move-object v3, v1

    .line 111
    :goto_21
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-virtual/range {v16 .. v16}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 113
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_22

    :catchall_5
    move-exception v0

    move-object v3, v1

    .line 114
    :goto_22
    iget-object v1, v3, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 115
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 116
    throw v0
.end method

.method public r(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Commit105;->prepare(Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/kw0$h;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/kw0$h;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcom/shabakaty/downloader/p84;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/p84;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/kw0$e;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/kw0$e;-><init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/p84;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
