.class public abstract Lcom/shabakaty/downloader/bv;
.super Ljava/lang/Object;
.source "CancelWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final r:Lcom/shabakaty/downloader/z73;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/z73;

    invoke-direct {v0}, Lcom/shabakaty/downloader/z73;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/bv;->r:Lcom/shabakaty/downloader/z73;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/r75;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()Lcom/shabakaty/downloader/iq0;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 5
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    move-object v6, v1

    check-cast v6, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/f85;->g(Ljava/lang/String;)Landroidx/work/d;

    move-result-object v7

    .line 9
    sget-object v8, Landroidx/work/d;->t:Landroidx/work/d;

    if-eq v7, v8, :cond_0

    sget-object v8, Landroidx/work/d;->u:Landroidx/work/d;

    if-eq v7, v8, :cond_0

    .line 10
    sget-object v7, Landroidx/work/d;->w:Landroidx/work/d;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v5

    invoke-virtual {v6, v7, v4}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 11
    :cond_0
    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/jq0;

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/jq0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/r75;->f:Lcom/shabakaty/downloader/fg3;

    .line 13
    iget-object v1, v0, Lcom/shabakaty/downloader/fg3;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/fg3;->B:Ljava/lang/String;

    const-string v6, "Processor cancelling %s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p2, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v6, v7}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 15
    iget-object v2, v0, Lcom/shabakaty/downloader/fg3;->y:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v2, v0, Lcom/shabakaty/downloader/fg3;->v:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/p85;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v2, :cond_3

    .line 17
    iget-object v2, v0, Lcom/shabakaty/downloader/fg3;->w:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/p85;

    .line 18
    :cond_3
    invoke-static {p2, v2}, Lcom/shabakaty/downloader/fg3;->b(Ljava/lang/String;Lcom/shabakaty/downloader/p85;)Z

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fg3;->g()V

    .line 20
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/r75;->e:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xx3;

    .line 23
    invoke-interface {v0, p2}, Lcom/shabakaty/downloader/xx3;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract b()V
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bv;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bv;->r:Lcom/shabakaty/downloader/z73;

    sget-object v1, Lcom/shabakaty/downloader/x73;->a:Lcom/shabakaty/downloader/x73$b$c;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/z73;->a(Lcom/shabakaty/downloader/x73$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/bv;->r:Lcom/shabakaty/downloader/z73;

    new-instance v2, Lcom/shabakaty/downloader/x73$b$a;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/x73$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/z73;->a(Lcom/shabakaty/downloader/x73$b;)V

    :goto_0
    return-void
.end method
