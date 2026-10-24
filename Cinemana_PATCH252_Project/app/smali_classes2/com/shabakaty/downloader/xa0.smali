.class public Lcom/shabakaty/downloader/xa0;
.super Lcom/shabakaty/downloader/m;
.source "ConflatedChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/m<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final u:Ljava/util/concurrent/locks/ReentrantLock;

.field public v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/m;-><init>(Lcom/shabakaty/downloader/tm1;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xa0;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    iput-object p1, p0, Lcom/shabakaty/downloader/xa0;->v:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    const-string v0, "(value="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/xa0;->v:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xa0;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->e()Lcom/shabakaty/downloader/f40;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/xa0;->v:Ljava/lang/Object;

    sget-object v2, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    if-ne v1, v2, :cond_3

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m;->l()Lcom/shabakaty/downloader/zn3;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    instance-of v2, v1, Lcom/shabakaty/downloader/f40;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_2
    const/4 v2, 0x0

    .line 8
    :try_start_2
    invoke-interface {v1, p1, v2}, Lcom/shabakaty/downloader/zn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ck2$b;)Lcom/shabakaty/downloader/j61;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/zn3;->f(Ljava/lang/Object;)V

    .line 11
    invoke-interface {v1}, Lcom/shabakaty/downloader/zn3;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xa0;->w(Ljava/lang/Object;)Lcom/shabakaty/downloader/lv4;

    move-result-object p1

    if-nez p1, :cond_4

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 14
    :cond_4
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/xn3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xn3<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xa0;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/m;->o(Lcom/shabakaty/downloader/xn3;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xa0;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xa0;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/xa0;->w(Ljava/lang/Object;)Lcom/shabakaty/downloader/lv4;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/m;->t(Z)V

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    throw v1

    :catchall_0
    move-exception p1

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public v()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xa0;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xa0;->v:Ljava/lang/Object;

    sget-object v2, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->e()Lcom/shabakaty/downloader/f40;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 4
    :cond_1
    :try_start_1
    iput-object v2, p0, Lcom/shabakaty/downloader/xa0;->v:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final w(Ljava/lang/Object;)Lcom/shabakaty/downloader/lv4;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xa0;->v:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Lcom/shabakaty/downloader/d73;->b(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/lv4;I)Lcom/shabakaty/downloader/lv4;

    move-result-object v2

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/xa0;->v:Ljava/lang/Object;

    return-object v2
.end method
