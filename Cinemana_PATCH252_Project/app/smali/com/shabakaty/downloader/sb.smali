.class public Lcom/shabakaty/downloader/sb;
.super Ljava/lang/Object;
.source "AppStateMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sb$a;,
        Lcom/shabakaty/downloader/sb$b;
    }
.end annotation


# static fields
.field public static final H:Lcom/shabakaty/downloader/i7;

.field public static volatile I:Lcom/shabakaty/downloader/sb;


# instance fields
.field public A:Lcom/shabakaty/downloader/pl1;

.field public B:Lcom/shabakaty/downloader/pn4;

.field public C:Lcom/shabakaty/downloader/pn4;

.field public D:Lcom/shabakaty/downloader/oc;

.field public E:Z

.field public F:Z

.field public G:Z

.field public final r:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/sb$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/sb$a;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final x:Lcom/shabakaty/downloader/wq4;

.field public final y:Lcom/shabakaty/downloader/w90;

.field public final z:Lcom/shabakaty/downloader/ll3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/i7;->d()Lcom/shabakaty/downloader/i7;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/sb;->H:Lcom/shabakaty/downloader/i7;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/ll3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sb;->r:Ljava/util/WeakHashMap;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sb;->s:Ljava/util/WeakHashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sb;->t:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sb;->u:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sb;->v:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/sb;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/oc;->u:Lcom/shabakaty/downloader/oc;

    iput-object v0, p0, Lcom/shabakaty/downloader/sb;->D:Lcom/shabakaty/downloader/oc;

    .line 9
    iput-boolean v1, p0, Lcom/shabakaty/downloader/sb;->E:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sb;->F:Z

    .line 11
    iput-boolean v1, p0, Lcom/shabakaty/downloader/sb;->G:Z

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/sb;->x:Lcom/shabakaty/downloader/wq4;

    .line 13
    iput-object p2, p0, Lcom/shabakaty/downloader/sb;->z:Lcom/shabakaty/downloader/ll3;

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/w90;->e()Lcom/shabakaty/downloader/w90;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/sb;->y:Lcom/shabakaty/downloader/w90;

    .line 15
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sb;->G:Z

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/pl1;

    invoke-direct {p1}, Lcom/shabakaty/downloader/pl1;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sb;->A:Lcom/shabakaty/downloader/pl1;

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/sb;
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/sb;->I:Lcom/shabakaty/downloader/sb;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shabakaty/downloader/sb;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/sb;->I:Lcom/shabakaty/downloader/sb;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/sb;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/wq4;->J:Lcom/shabakaty/downloader/wq4;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/ll3;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/ll3;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/sb;-><init>(Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/ll3;)V

    sput-object v1, Lcom/shabakaty/downloader/sb;->I:Lcom/shabakaty/downloader/sb;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/sb;->I:Lcom/shabakaty/downloader/sb;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "_st_"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->t:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sb;->t:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/sb;->t:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/sb;->t:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->s:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->s:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/sb;->s:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/sb;->A:Lcom/shabakaty/downloader/pl1;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/pl1;->a:Lcom/shabakaty/downloader/pl1$b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/pl1$b;->b()[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 6
    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 8
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 9
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/2addr v3, v7

    const/16 v8, 0x2bc

    if-le v6, v8, :cond_2

    add-int/2addr v5, v7

    :cond_2
    const/16 v8, 0x10

    if-le v6, v8, :cond_3

    add-int/2addr v4, v7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-lez v2, :cond_6

    const-string v1, "_fr_tot"

    int-to-long v6, v2

    .line 10
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_6
    if-lez v4, :cond_7

    const-string v1, "_fr_slo"

    int-to-long v6, v4

    .line 11
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_7
    if-lez v5, :cond_8

    const-string v1, "_fr_fzn"

    int-to-long v6, v5

    .line 12
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    .line 13
    :cond_8
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/zy4;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/sb;->H:Lcom/shabakaty/downloader/i7;

    const-string v3, "sendScreenTrace name:"

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/sb;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " _fr_tot:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _fr_slo:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _fr_fzn:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/i7;->a(Ljava/lang/String;)V

    .line 17
    :cond_9
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/shabakaty/downloader/pn4;Lcom/shabakaty/downloader/pn4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->y:Lcom/shabakaty/downloader/w90;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/w90;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/uo4;->T()Lcom/shabakaty/downloader/uo4$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v1, Lcom/shabakaty/downloader/uo4;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/uo4;->B(Lcom/shabakaty/downloader/uo4;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p2, Lcom/shabakaty/downloader/pn4;->r:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/uo4$b;->u(J)Lcom/shabakaty/downloader/uo4$b;

    .line 7
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/pn4;->b(Lcom/shabakaty/downloader/pn4;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/uo4$b;->v(J)Lcom/shabakaty/downloader/uo4$b;

    .line 8
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lcom/shabakaty/downloader/ub3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ub3;->a()Lcom/shabakaty/downloader/tb3;

    move-result-object p1

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 10
    iget-object p2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast p2, Lcom/shabakaty/downloader/uo4;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/uo4;->G(Lcom/shabakaty/downloader/uo4;Lcom/shabakaty/downloader/tb3;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/sb;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/shabakaty/downloader/sb;->t:Ljava/util/Map;

    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p3, p0, Lcom/shabakaty/downloader/sb;->t:Ljava/util/Map;

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v1, Lcom/shabakaty/downloader/uo4;

    invoke-static {v1}, Lcom/shabakaty/downloader/uo4;->C(Lcom/shabakaty/downloader/uo4;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/jm2;

    invoke-virtual {v1, p3}, Lcom/shabakaty/downloader/jm2;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_1

    const-string p3, "_tsns"

    int-to-long v1, p1

    .line 16
    invoke-virtual {v0, p3, v1, v2}, Lcom/shabakaty/downloader/uo4$b;->t(Ljava/lang/String;J)Lcom/shabakaty/downloader/uo4$b;

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/sb;->t:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 18
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p1, p0, Lcom/shabakaty/downloader/sb;->x:Lcom/shabakaty/downloader/wq4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->n()Lcom/shabakaty/downloader/qp1;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/uo4;

    sget-object p3, Lcom/shabakaty/downloader/oc;->v:Lcom/shabakaty/downloader/oc;

    .line 20
    iget-object v0, p1, Lcom/shabakaty/downloader/wq4;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/downloader/pr;

    invoke-direct {v1, p1, p2, p3}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/uo4;Lcom/shabakaty/downloader/oc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f(Lcom/shabakaty/downloader/oc;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/sb;->D:Lcom/shabakaty/downloader/oc;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/sb;->u:Ljava/util/Set;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/sb$b;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/sb;->D:Lcom/shabakaty/downloader/oc;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/sb$b;->onUpdateAppState(Lcom/shabakaty/downloader/oc;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->r:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->z:Lcom/shabakaty/downloader/ll3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/pn4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pn4;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/sb;->B:Lcom/shabakaty/downloader/pn4;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->r:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/oc;->t:Lcom/shabakaty/downloader/oc;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sb;->f(Lcom/shabakaty/downloader/oc;)V

    .line 7
    iget-boolean p1, p0, Lcom/shabakaty/downloader/sb;->F:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/sb;->u:Ljava/util/Set;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/sb$a;

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1}, Lcom/shabakaty/downloader/sb$a;->a()V

    goto :goto_0

    .line 12
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 13
    :try_start_2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/sb;->F:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    const-string p1, "_bs"

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->C:Lcom/shabakaty/downloader/pn4;

    iget-object v1, p0, Lcom/shabakaty/downloader/sb;->B:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/sb;->e(Ljava/lang/String;Lcom/shabakaty/downloader/pn4;Lcom/shabakaty/downloader/pn4;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->r:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 17
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sb;->G:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->y:Lcom/shabakaty/downloader/w90;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/w90;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->A:Lcom/shabakaty/downloader/pl1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/pl1;->a:Lcom/shabakaty/downloader/pl1$b;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/pl1$b;->a(Landroid/app/Activity;)V

    .line 5
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-static {p1}, Lcom/shabakaty/downloader/sb;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/sb;->x:Lcom/shabakaty/downloader/wq4;

    iget-object v3, p0, Lcom/shabakaty/downloader/sb;->z:Lcom/shabakaty/downloader/ll3;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/ll3;Lcom/shabakaty/downloader/sb;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/sb;->s:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sb;->G:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sb;->d(Landroid/app/Activity;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->r:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->r:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/sb;->r:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/sb;->z:Lcom/shabakaty/downloader/ll3;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/pn4;

    invoke-direct {p1}, Lcom/shabakaty/downloader/pn4;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/sb;->C:Lcom/shabakaty/downloader/pn4;

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/oc;->u:Lcom/shabakaty/downloader/oc;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sb;->f(Lcom/shabakaty/downloader/oc;)V

    const-string p1, "_fs"

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/sb;->B:Lcom/shabakaty/downloader/pn4;

    iget-object v1, p0, Lcom/shabakaty/downloader/sb;->C:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/sb;->e(Ljava/lang/String;Lcom/shabakaty/downloader/pn4;Lcom/shabakaty/downloader/pn4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
