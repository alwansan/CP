.class public abstract Lcom/shabakaty/downloader/vt3;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vt3$d;,
        Lcom/shabakaty/downloader/vt3$b;,
        Lcom/shabakaty/downloader/vt3$c;,
        Lcom/shabakaty/downloader/vt3$a;
    }
.end annotation


# instance fields
.field public volatile a:Lcom/shabakaty/downloader/yh4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Lcom/shabakaty/downloader/zh4;

.field public final e:Lcom/shabakaty/downloader/v32;

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vt3$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shabakaty/downloader/wf;",
            ">;",
            "Lcom/shabakaty/downloader/wf;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public j:Lcom/shabakaty/downloader/qf;

.field public final k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vt3;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vt3;->k:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vt3;->l:Ljava/util/Map;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->c()Lcom/shabakaty/downloader/v32;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vt3;->m:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vt3;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/vt3;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract c()Lcom/shabakaty/downloader/v32;
.end method

.method public abstract d(Lcom/shabakaty/downloader/bm0;)Lcom/shabakaty/downloader/zh4;
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ht2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shabakaty/downloader/wf;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/zh4;->getWritableDatabase()Lcom/shabakaty/downloader/yh4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/yh4;->b1()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/zh4;->getWritableDatabase()Lcom/shabakaty/downloader/yh4;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/v32;->i(Lcom/shabakaty/downloader/yh4;)V

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/yh4;->i1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/yh4;->m0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/yh4;->A()V

    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/zh4;->getWritableDatabase()Lcom/shabakaty/downloader/yh4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/yh4;->F0()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/v32;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/v32;->d:Lcom/shabakaty/downloader/vt3;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/vt3;->b:Ljava/util/concurrent/Executor;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/v32;->k:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public k(Lcom/shabakaty/downloader/yh4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Lcom/shabakaty/downloader/v32;->f:Z

    if-eqz v1, :cond_0

    const-string p1, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v0

    goto :goto_0

    :cond_0
    const-string v1, "PRAGMA temp_store = MEMORY;"

    .line 6
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v1, "PRAGMA recursive_triggers=\'ON\';"

    .line 7
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v1, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 8
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v32;->i(Lcom/shabakaty/downloader/yh4;)V

    const-string v1, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    .line 10
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yh4;->Q(Ljava/lang/String;)Lcom/shabakaty/downloader/ci4;

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/downloader/v32;->g:Lcom/shabakaty/downloader/ci4;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, v0, Lcom/shabakaty/downloader/v32;->f:Z

    .line 12
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->j:Lcom/shabakaty/downloader/qf;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/qf;->a:Z

    xor-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->a:Lcom/shabakaty/downloader/yh4;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/yh4;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public m(Lcom/shabakaty/downloader/bi4;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vt3;->b()V

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/zh4;->getWritableDatabase()Lcom/shabakaty/downloader/yh4;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/yh4;->a1(Lcom/shabakaty/downloader/bi4;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    invoke-interface {p2}, Lcom/shabakaty/downloader/zh4;->getWritableDatabase()Lcom/shabakaty/downloader/yh4;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/yh4;->H0(Lcom/shabakaty/downloader/bi4;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public n()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/zh4;->getWritableDatabase()Lcom/shabakaty/downloader/yh4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/yh4;->i0()V

    return-void
.end method

.method public final o(Ljava/lang/Class;Lcom/shabakaty/downloader/zh4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/shabakaty/downloader/zh4;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    instance-of v0, p2, Lcom/shabakaty/downloader/yp0;

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/yp0;

    invoke-interface {p2}, Lcom/shabakaty/downloader/yp0;->a()Lcom/shabakaty/downloader/zh4;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/vt3;->o(Ljava/lang/Class;Lcom/shabakaty/downloader/zh4;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
