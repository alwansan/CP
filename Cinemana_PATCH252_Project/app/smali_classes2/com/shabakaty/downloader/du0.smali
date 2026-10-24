.class public abstract Lcom/shabakaty/downloader/du0;
.super Lcom/shabakaty/downloader/vk4;
.source "DispatchedTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/vk4;"
    }
.end annotation


# instance fields
.field public t:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vk4;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/du0;->t:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public abstract c()Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/ud0<",
            "TT;>;"
        }
    .end annotation
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/i80;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/i80;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 2
    :goto_0
    new-instance p2, Lcom/shabakaty/downloader/ve0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/ve0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/du0;->c()Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/md0;->y(Lcom/shabakaty/downloader/me0;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract k()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vk4;->s:Lcom/shabakaty/downloader/al4;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/du0;->c()Lcom/shabakaty/downloader/ud0;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Lcom/shabakaty/downloader/au0;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/au0;->v:Ljava/lang/Object;

    .line 5
    invoke-interface {v2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v3

    .line 6
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/zm4;->c(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    sget-object v4, Lcom/shabakaty/downloader/zm4;->a:Lcom/shabakaty/downloader/j61;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_0

    .line 8
    invoke-static {v2, v3, v1}, Lcom/shabakaty/downloader/ne0;->b(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Lcom/shabakaty/downloader/nv4;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 9
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v6

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/du0;->k()Ljava/lang/Object;

    move-result-object v7

    .line 11
    invoke-virtual {p0, v7}, Lcom/shabakaty/downloader/du0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_1

    .line 12
    iget v9, p0, Lcom/shabakaty/downloader/du0;->t:I

    invoke-static {v9}, Lcom/shabakaty/downloader/vd5;->q(I)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {v6, v9}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/e92;

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    .line 13
    invoke-interface {v6}, Lcom/shabakaty/downloader/e92;->c()Z

    move-result v9

    if-nez v9, :cond_2

    .line 14
    invoke-interface {v6}, Lcom/shabakaty/downloader/e92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    .line 15
    invoke-virtual {p0, v7, v6}, Lcom/shabakaty/downloader/du0;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {v6}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    .line 17
    invoke-static {v8}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p0, v7}, Lcom/shabakaty/downloader/du0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    .line 19
    :goto_2
    sget-object v2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    .line 20
    :try_start_2
    invoke-virtual {v4}, Lcom/shabakaty/downloader/nv4;->s0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    :cond_4
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    :cond_5
    :try_start_3
    invoke-interface {v0}, Lcom/shabakaty/downloader/al4;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    :goto_3
    invoke-static {v2}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/shabakaty/downloader/du0;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v2

    if-eqz v4, :cond_6

    .line 24
    :try_start_4
    invoke-virtual {v4}, Lcom/shabakaty/downloader/nv4;->s0()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    :cond_6
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    :cond_7
    throw v2

    :catchall_2
    move-exception v1

    goto :goto_4

    .line 26
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 27
    :goto_4
    :try_start_5
    invoke-interface {v0}, Lcom/shabakaty/downloader/al4;->a()V

    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    :goto_5
    invoke-static {v0}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/du0;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method
