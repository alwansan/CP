.class public final Lcom/shabakaty/downloader/xt0;
.super Lcom/shabakaty/downloader/ci1;
.source "DiskLruCache.kt"


# instance fields
.field public s:Z

.field public final synthetic t:Lcom/shabakaty/downloader/wt0$d;

.field public final synthetic u:Lcom/shabakaty/downloader/r94;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wt0$d;Lcom/shabakaty/downloader/r94;Lcom/shabakaty/downloader/r94;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/r94;",
            "Lcom/shabakaty/downloader/r94;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xt0;->t:Lcom/shabakaty/downloader/wt0$d;

    iput-object p2, p0, Lcom/shabakaty/downloader/xt0;->u:Lcom/shabakaty/downloader/r94;

    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/ci1;-><init>(Lcom/shabakaty/downloader/r94;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ci1;->close()V

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/xt0;->s:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/xt0;->s:Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/xt0;->t:Lcom/shabakaty/downloader/wt0$d;

    iget-object v0, v0, Lcom/shabakaty/downloader/wt0$d;->j:Lcom/shabakaty/downloader/wt0;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xt0;->t:Lcom/shabakaty/downloader/wt0$d;

    .line 6
    iget v2, v1, Lcom/shabakaty/downloader/wt0$d;->g:I

    add-int/lit8 v2, v2, -0x1

    .line 7
    iput v2, v1, Lcom/shabakaty/downloader/wt0$d;->g:I

    if-nez v2, :cond_0

    .line 8
    iget-boolean v2, v1, Lcom/shabakaty/downloader/wt0$d;->e:Z

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/wt0$d;->j:Lcom/shabakaty/downloader/wt0;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/wt0;->r(Lcom/shabakaty/downloader/wt0$d;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
