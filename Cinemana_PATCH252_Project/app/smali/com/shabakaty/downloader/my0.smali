.class public Lcom/shabakaty/downloader/my0;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/util/concurrent/Future;

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Lcom/shabakaty/downloader/r63;

.field public l:Lcom/shabakaty/downloader/n63;

.field public m:Lcom/shabakaty/downloader/z63;

.field public n:Lcom/shabakaty/downloader/q63;

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/py0;)V
    .locals 3

    .line 1
    const-class v0, Lcom/shabakaty/downloader/u80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/py0;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/shabakaty/downloader/my0;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/py0;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/shabakaty/downloader/my0;->b:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/py0;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/my0;->c:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    .line 6
    iget v1, p1, Lcom/shabakaty/downloader/u80;->a:I

    const/16 v2, 0x4e20

    if-nez v1, :cond_1

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget v1, p1, Lcom/shabakaty/downloader/u80;->a:I

    if-nez v1, :cond_0

    .line 9
    iput v2, p1, Lcom/shabakaty/downloader/u80;->a:I

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget v1, p1, Lcom/shabakaty/downloader/u80;->a:I

    .line 12
    iput v1, p0, Lcom/shabakaty/downloader/my0;->h:I

    .line 13
    iget v1, p1, Lcom/shabakaty/downloader/u80;->b:I

    if-nez v1, :cond_3

    .line 14
    monitor-enter v0

    .line 15
    :try_start_1
    iget v1, p1, Lcom/shabakaty/downloader/u80;->b:I

    if-nez v1, :cond_2

    .line 16
    iput v2, p1, Lcom/shabakaty/downloader/u80;->b:I

    .line 17
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 18
    :cond_3
    :goto_1
    iget p1, p1, Lcom/shabakaty/downloader/u80;->b:I

    .line 19
    iput p1, p0, Lcom/shabakaty/downloader/my0;->i:I

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/shabakaty/downloader/my0;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/my0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/my0;->k:Lcom/shabakaty/downloader/r63;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/my0;->l:Lcom/shabakaty/downloader/n63;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/my0;->m:Lcom/shabakaty/downloader/z63;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/my0;->n:Lcom/shabakaty/downloader/q63;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/qy0;->a()Lcom/shabakaty/downloader/qy0;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/qy0;->a:Ljava/util/Map;

    .line 7
    iget p0, p0, Lcom/shabakaty/downloader/my0;->o:I

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/r41;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/my0;->p:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/my0;->p:I

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/ke0;->a()Lcom/shabakaty/downloader/ke0;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ke0;->a:Lcom/shabakaty/downloader/y61;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/ao0;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/ao0;->c:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/my0$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/my0$a;-><init>(Lcom/shabakaty/downloader/my0;Lcom/shabakaty/downloader/r41;)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/my0;->p:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/ke0;->a()Lcom/shabakaty/downloader/ke0;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ke0;->a:Lcom/shabakaty/downloader/y61;

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/ao0;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/ao0;->c:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/my0$b;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/my0$b;-><init>(Lcom/shabakaty/downloader/my0;)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
