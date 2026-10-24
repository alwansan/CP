.class public final Lcom/shabakaty/downloader/wy3;
.super Ljava/lang/Object;
.source "SearchDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/vy3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/cinemana/data/db/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/f54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/wy3$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/wy3$b;-><init>(Lcom/shabakaty/downloader/wy3;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/wy3;->b:Lcom/shabakaty/downloader/x31;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/wy3$c;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/wy3$c;-><init>(Lcom/shabakaty/downloader/wy3;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/wy3;->c:Lcom/shabakaty/downloader/f54;

    return-void
.end method


# virtual methods
.method public G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wy3;->c:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/wy3;->c:Lcom/shabakaty/downloader/f54;

    .line 11
    iget-object v2, v1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v2, :cond_0

    .line 12
    iget-object v0, v1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    .line 14
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 15
    iget-object v2, p0, Lcom/shabakaty/downloader/wy3;->c:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 16
    throw v1
.end method

.method public m(Lcom/shabakaty/cinemana/data/db/search/SearchItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wy3;->b:Lcom/shabakaty/downloader/x31;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x31;->f(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 11
    throw p1
.end method

.method public s()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/search/SearchItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM search_table"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/wy3;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    const-string v3, "search_table"

    .line 4
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/wy3$a;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/wy3$a;-><init>(Lcom/shabakaty/downloader/wy3;Lcom/shabakaty/downloader/yt3;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/shabakaty/downloader/v32;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
