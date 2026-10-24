.class public abstract Lcom/shabakaty/downloader/r64;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lcom/shabakaty/downloader/ym0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/shabakaty/downloader/bn0;",
        "O:",
        "Lcom/shabakaty/downloader/q83;",
        "E:",
        "Lcom/shabakaty/downloader/an0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ym0<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:[Lcom/shabakaty/downloader/bn0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final f:[Lcom/shabakaty/downloader/q83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Lcom/shabakaty/downloader/bn0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public j:Lcom/shabakaty/downloader/an0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:I


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/bn0;[Lcom/shabakaty/downloader/q83;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/r64;->c:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/r64;->d:Ljava/util/ArrayDeque;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/r64;->e:[Lcom/shabakaty/downloader/bn0;

    .line 6
    array-length p1, p1

    iput p1, p0, Lcom/shabakaty/downloader/r64;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/r64;->g:I

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->e:[Lcom/shabakaty/downloader/bn0;

    .line 9
    new-instance v2, Lcom/shabakaty/downloader/lg4;

    invoke-direct {v2}, Lcom/shabakaty/downloader/lg4;-><init>()V

    .line 10
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput-object p2, p0, Lcom/shabakaty/downloader/r64;->f:[Lcom/shabakaty/downloader/q83;

    .line 12
    array-length p2, p2

    iput p2, p0, Lcom/shabakaty/downloader/r64;->h:I

    .line 13
    :goto_1
    iget p2, p0, Lcom/shabakaty/downloader/r64;->h:I

    if-ge p1, p2, :cond_1

    .line 14
    iget-object p2, p0, Lcom/shabakaty/downloader/r64;->f:[Lcom/shabakaty/downloader/q83;

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/z64;

    .line 15
    new-instance v1, Lcom/shabakaty/downloader/a74;

    new-instance v2, Lcom/shabakaty/downloader/cu;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/z64;)V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/a74;-><init>(Lcom/shabakaty/downloader/q83$a;)V

    .line 16
    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 17
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/r64$a;

    const-string p2, "ExoPlayer:SimpleDecoder"

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/r64$a;-><init>(Lcom/shabakaty/downloader/r64;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/r64;->a:Ljava/lang/Thread;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/r64;->l:Z

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r64;->i()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/q83;

    monitor-exit v0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r64;->i()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->i:Lcom/shabakaty/downloader/bn0;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/r64;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/shabakaty/downloader/r64;->e:[Lcom/shabakaty/downloader/bn0;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/r64;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lcom/shabakaty/downloader/r64;->i:Lcom/shabakaty/downloader/bn0;

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/bn0;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r64;->i()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->i:Lcom/shabakaty/downloader/bn0;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r64;->h()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/r64;->i:Lcom/shabakaty/downloader/bn0;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract f(Lcom/shabakaty/downloader/bn0;Lcom/shabakaty/downloader/q83;Z)Lcom/shabakaty/downloader/an0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/r64;->k:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/r64;->m:I

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->i:Lcom/shabakaty/downloader/bn0;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/r64;->j(Lcom/shabakaty/downloader/bn0;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/r64;->i:Lcom/shabakaty/downloader/bn0;

    .line 7
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/r64;->j(Lcom/shabakaty/downloader/bn0;)V

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/q83;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/q83;->H()V

    goto :goto_1

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/r64;->l:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/shabakaty/downloader/r64;->h:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/r64;->l:Z

    if-eqz v1, :cond_2

    .line 6
    monitor-exit v0

    return v2

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/r64;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/bn0;

    .line 8
    iget-object v4, p0, Lcom/shabakaty/downloader/r64;->f:[Lcom/shabakaty/downloader/q83;

    iget v5, p0, Lcom/shabakaty/downloader/r64;->h:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/shabakaty/downloader/r64;->h:I

    aget-object v4, v4, v5

    .line 9
    iget-boolean v5, p0, Lcom/shabakaty/downloader/r64;->k:Z

    .line 10
    iput-boolean v2, p0, Lcom/shabakaty/downloader/r64;->k:Z

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 13
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/ao;->u(I)V

    goto :goto_4

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x80000000

    .line 15
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/ao;->u(I)V

    .line 16
    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v4, v5}, Lcom/shabakaty/downloader/r64;->f(Lcom/shabakaty/downloader/bn0;Lcom/shabakaty/downloader/q83;Z)Lcom/shabakaty/downloader/an0;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 17
    new-instance v5, Lcom/shabakaty/downloader/dg4;

    const-string v6, "Unexpected decode error"

    invoke-direct {v5, v6, v0}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 18
    new-instance v5, Lcom/shabakaty/downloader/dg4;

    const-string v6, "Unexpected decode error"

    invoke-direct {v5, v6, v0}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v0, v5

    :goto_3
    if-eqz v0, :cond_5

    .line 19
    iget-object v5, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 20
    :try_start_2
    iput-object v0, p0, Lcom/shabakaty/downloader/r64;->j:Lcom/shabakaty/downloader/an0;

    .line 21
    monitor-exit v5

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 22
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 23
    :try_start_3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/r64;->k:Z

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v4}, Lcom/shabakaty/downloader/q83;->H()V

    goto :goto_5

    .line 25
    :cond_6
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    iget v0, p0, Lcom/shabakaty/downloader/r64;->m:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/r64;->m:I

    .line 27
    invoke-virtual {v4}, Lcom/shabakaty/downloader/q83;->H()V

    goto :goto_5

    .line 28
    :cond_7
    iput v2, p0, Lcom/shabakaty/downloader/r64;->m:I

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 30
    :goto_5
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/r64;->j(Lcom/shabakaty/downloader/bn0;)V

    .line 31
    monitor-exit v5

    return v3

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 32
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/r64;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->j:Lcom/shabakaty/downloader/an0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method

.method public final j(Lcom/shabakaty/downloader/bn0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/r64;->e:[Lcom/shabakaty/downloader/bn0;

    iget v1, p0, Lcom/shabakaty/downloader/r64;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/r64;->g:I

    aput-object p1, v0, v1

    return-void
.end method
