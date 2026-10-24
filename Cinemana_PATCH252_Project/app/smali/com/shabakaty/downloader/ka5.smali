.class public final Lcom/shabakaty/downloader/ka5;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/ua5;


# instance fields
.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Lcom/google/android/gms/common/internal/b;

.field public d:Lcom/shabakaty/downloader/va5;

.field public final e:I

.field public final f:Landroid/content/Context;

.field public final g:Landroid/os/Looper;

.field public final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "**>;>;"
        }
    .end annotation
.end field

.field public volatile i:Z

.field public j:J

.field public k:J

.field public final l:Lcom/shabakaty/downloader/ma5;

.field public final m:Lcom/shabakaty/downloader/pq1;

.field public n:Lcom/shabakaty/downloader/ta5;

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/shabakaty/downloader/t30;

.field public final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/shabakaty/downloader/mb5;",
            "Lcom/shabakaty/downloader/x54;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/google/android/gms/common/api/internal/e;

.field public final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/oc5;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/Integer;

.field public final w:Lcom/shabakaty/downloader/ib5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Lcom/shabakaty/downloader/pq1;Lcom/google/android/gms/common/api/a$a;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/shabakaty/downloader/t30;",
            "Lcom/shabakaty/downloader/pq1;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/shabakaty/downloader/mb5;",
            "Lcom/shabakaty/downloader/x54;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$c;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/oc5;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p3

    move/from16 v2, p11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v3, 0x0

    .line 2
    iput-object v3, v1, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    .line 3
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v1, Lcom/shabakaty/downloader/ka5;->h:Ljava/util/Queue;

    const-wide/32 v4, 0x1d4c0

    .line 4
    iput-wide v4, v1, Lcom/shabakaty/downloader/ka5;->j:J

    const-wide/16 v4, 0x1388

    .line 5
    iput-wide v4, v1, Lcom/shabakaty/downloader/ka5;->k:J

    .line 6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v1, Lcom/shabakaty/downloader/ka5;->p:Ljava/util/Set;

    .line 7
    new-instance v4, Lcom/google/android/gms/common/api/internal/e;

    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/e;-><init>()V

    iput-object v4, v1, Lcom/shabakaty/downloader/ka5;->t:Lcom/google/android/gms/common/api/internal/e;

    .line 8
    iput-object v3, v1, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/ka5;)V

    move-object v4, p1

    .line 10
    iput-object v4, v1, Lcom/shabakaty/downloader/ka5;->f:Landroid/content/Context;

    move-object v4, p2

    .line 11
    iput-object v4, v1, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    .line 12
    new-instance v4, Lcom/google/android/gms/common/internal/b;

    invoke-direct {v4, p3, v3}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/os/Looper;Lcom/shabakaty/downloader/bc5;)V

    iput-object v4, v1, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    .line 13
    iput-object v0, v1, Lcom/shabakaty/downloader/ka5;->g:Landroid/os/Looper;

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/ma5;

    invoke-direct {v3, p0, p3}, Lcom/shabakaty/downloader/ma5;-><init>(Lcom/shabakaty/downloader/ka5;Landroid/os/Looper;)V

    iput-object v3, v1, Lcom/shabakaty/downloader/ka5;->l:Lcom/shabakaty/downloader/ma5;

    move-object v0, p5

    .line 15
    iput-object v0, v1, Lcom/shabakaty/downloader/ka5;->m:Lcom/shabakaty/downloader/pq1;

    .line 16
    iput v2, v1, Lcom/shabakaty/downloader/ka5;->e:I

    if-ltz v2, :cond_0

    .line 17
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    :cond_0
    move-object/from16 v0, p7

    .line 18
    iput-object v0, v1, Lcom/shabakaty/downloader/ka5;->r:Ljava/util/Map;

    move-object/from16 v0, p10

    .line 19
    iput-object v0, v1, Lcom/shabakaty/downloader/ka5;->o:Ljava/util/Map;

    move-object/from16 v0, p13

    .line 20
    iput-object v0, v1, Lcom/shabakaty/downloader/ka5;->u:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/ib5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ib5;-><init>()V

    iput-object v0, v1, Lcom/shabakaty/downloader/ka5;->w:Lcom/shabakaty/downloader/ib5;

    .line 22
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$b;

    .line 23
    iget-object v3, v1, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "null reference"

    .line 24
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v4, v3, Lcom/google/android/gms/common/internal/b;->z:Ljava/lang/Object;

    monitor-enter v4

    .line 26
    :try_start_0
    iget-object v5, v3, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "GmsClientEvents"

    .line 27
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "registerConnectionCallbacks(): listener "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is already registered"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 28
    :cond_2
    iget-object v5, v3, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v4, v3, Lcom/google/android/gms/common/internal/b;->r:Lcom/shabakaty/downloader/bc5;

    invoke-interface {v4}, Lcom/shabakaty/downloader/bc5;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    iget-object v3, v3, Lcom/google/android/gms/common/internal/b;->y:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 33
    :cond_3
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$c;

    .line 34
    iget-object v3, v1, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/b;->b(Lcom/google/android/gms/common/api/GoogleApiClient$c;)V

    goto :goto_2

    :cond_4
    move-object v2, p4

    .line 35
    iput-object v2, v1, Lcom/shabakaty/downloader/ka5;->q:Lcom/shabakaty/downloader/t30;

    move-object v0, p6

    .line 36
    iput-object v0, v1, Lcom/shabakaty/downloader/ka5;->s:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public static l(Ljava/lang/Iterable;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$f;

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->E()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 3
    :cond_1
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x3

    return p0
.end method

.method public static n(Lcom/shabakaty/downloader/ka5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ka5;->i:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka5;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object p0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw v0
.end method

.method public static o(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :cond_1
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :cond_2
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    .line 1
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ka5;->i:Z

    if-nez p2, :cond_1

    .line 2
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ka5;->i:Z

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/ka5;->n:Lcom/shabakaty/downloader/ta5;

    if-nez p2, :cond_0

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/shabakaty/downloader/ka5;->m:Lcom/shabakaty/downloader/pq1;

    iget-object v2, p0, Lcom/shabakaty/downloader/ka5;->f:Landroid/content/Context;

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/la5;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/la5;-><init>(Lcom/shabakaty/downloader/ka5;)V

    .line 6
    invoke-virtual {p2, v2, v3}, Lcom/shabakaty/downloader/pq1;->g(Landroid/content/Context;Lcom/shabakaty/downloader/cl4;)Lcom/shabakaty/downloader/ta5;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ka5;->n:Lcom/shabakaty/downloader/ta5;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/ka5;->l:Lcom/shabakaty/downloader/ma5;

    .line 8
    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/shabakaty/downloader/ka5;->j:J

    .line 9
    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/ka5;->l:Lcom/shabakaty/downloader/ma5;

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/shabakaty/downloader/ka5;->k:J

    .line 12
    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/ka5;->w:Lcom/shabakaty/downloader/ib5;

    .line 14
    iget-object p2, p2, Lcom/shabakaty/downloader/ib5;->a:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 15
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    .line 16
    sget-object v6, Lcom/shabakaty/downloader/ib5;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    .line 18
    iget-object v3, p2, Lcom/google/android/gms/common/internal/b;->y:Landroid/os/Handler;

    const-string v4, "onUnintentionalDisconnection must only be called on the Handler thread"

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/a;->d(Landroid/os/Handler;Ljava/lang/String;)V

    .line 19
    iget-object v3, p2, Lcom/google/android/gms/common/internal/b;->y:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object v3, p2, Lcom/google/android/gms/common/internal/b;->z:Ljava/lang/Object;

    monitor-enter v3

    .line 21
    :try_start_1
    iput-boolean v1, p2, Lcom/google/android/gms/common/internal/b;->x:Z

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    iget-object v4, p2, Lcom/google/android/gms/common/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_3
    :goto_1
    if-ge v6, v5, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$b;

    .line 25
    iget-boolean v8, p2, Lcom/google/android/gms/common/internal/b;->v:Z

    if-eqz v8, :cond_4

    iget-object v8, p2, Lcom/google/android/gms/common/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v8, v4, :cond_4

    .line 26
    iget-object v8, p2, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 27
    invoke-interface {v7, p1}, Lcom/shabakaty/downloader/fb0;->onConnectionSuspended(I)V

    goto :goto_1

    .line 28
    :cond_4
    iget-object v1, p2, Lcom/google/android/gms/common/internal/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 29
    iput-boolean v2, p2, Lcom/google/android/gms/common/internal/b;->x:Z

    .line 30
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    iget-object p2, p0, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/b;->a()V

    if-ne p1, v0, :cond_5

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka5;->q()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 33
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final b(Lcom/shabakaty/downloader/gb0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->m:Lcom/shabakaty/downloader/pq1;

    iget-object v1, p0, Lcom/shabakaty/downloader/ka5;->f:Landroid/content/Context;

    .line 2
    iget v2, p1, Lcom/shabakaty/downloader/gb0;->s:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/uq1;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka5;->p()Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ka5;->i:Z

    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/common/internal/b;->y:Landroid/os/Handler;

    const-string v2, "onConnectionFailure must only be called on the Handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->d(Landroid/os/Handler;Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/common/internal/b;->y:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/common/internal/b;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/gms/common/internal/b;->u:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    iget-object v3, v0, Lcom/google/android/gms/common/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-ge v5, v4, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/google/android/gms/common/api/GoogleApiClient$c;

    .line 14
    iget-boolean v7, v0, Lcom/google/android/gms/common/internal/b;->v:Z

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/google/android/gms/common/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v7, v3, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v7, v0, Lcom/google/android/gms/common/internal/b;->u:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 16
    invoke-interface {v6, p1}, Lcom/shabakaty/downloader/l63;->onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V

    goto :goto_0

    .line 17
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_2

    .line 18
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b;->a()V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b<",
            "+",
            "Lcom/shabakaty/downloader/ft3;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/b;->p:Lcom/google/android/gms/common/api/a;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ka5;->o:Ljava/util/Map;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/b;->o:Lcom/google/android/gms/common/api/a$c;

    .line 4
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "the API"

    :goto_0
    const/16 v2, 0x41

    .line 6
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    if-eqz v0, :cond_3

    .line 10
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ka5;->i:Z

    if-eqz v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b;

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/ka5;->w:Lcom/shabakaty/downloader/ib5;

    .line 15
    iget-object v2, v1, Lcom/shabakaty/downloader/ib5;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/ib5;->b:Lcom/shabakaty/downloader/jb5;

    .line 17
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18
    sget-object v1, Lcom/google/android/gms/common/api/Status;->y:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/b;->o(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 20
    :cond_2
    :try_start_1
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/va5;->w(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 22
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 24
    throw p1
.end method

.method public final connect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget v0, p0, Lcom/shabakaty/downloader/ka5;->e:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->o:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ka5;->l(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    const-string v1, "null reference"

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ka5;->j(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 12
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw v0
.end method

.method public final d(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/a$f;",
            ">(",
            "Lcom/google/android/gms/common/api/a$c<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/a$f;

    const-string v0, "Appropriate Api was not requested."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final disconnect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->w:Lcom/shabakaty/downloader/ib5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ib5;->a()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/va5;->s()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->t:Lcom/google/android/gms/common/api/internal/e;

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/e;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/d;

    .line 7
    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/d;->a:Ljava/lang/Object;

    .line 8
    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/d;->b:Lcom/google/android/gms/common/api/internal/d$a;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b;

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b()V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 16
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka5;->p()Z

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 20
    throw v0
.end method

.method public final e()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->g:Landroid/os/Looper;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shabakaty/downloader/va5;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shabakaty/downloader/va5;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h(Lcom/shabakaty/downloader/w54;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/va5;->c(Lcom/shabakaty/downloader/w54;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/va5;->b()V

    :cond_0
    return-void
.end method

.method public final j(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/16 v0, 0x21

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal sign-in mode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ka5;->m(I)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka5;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method

.method public final k(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ka5;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/ka5;->i:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    .line 3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ka5;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->w:Lcom/shabakaty/downloader/ib5;

    const-string v1, " mUnconsumedApiCalls.size()="

    .line 5
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/shabakaty/downloader/ib5;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/va5;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 18

    move-object/from16 v15, p0

    .line 1
    iget-object v0, v15, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v15, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v1, p1

    if-ne v0, v1, :cond_13

    .line 4
    :goto_0
    iget-object v0, v15, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, v15, Lcom/shabakaty/downloader/ka5;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$f;

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->E()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 7
    :cond_3
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 8
    :cond_4
    iget-object v0, v15, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    :cond_5
    move-object v12, v15

    goto/16 :goto_7

    :cond_6
    if-eqz v1, :cond_5

    .line 9
    iget-object v1, v15, Lcom/shabakaty/downloader/ka5;->f:Landroid/content/Context;

    iget-object v3, v15, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v5, v15, Lcom/shabakaty/downloader/ka5;->g:Landroid/os/Looper;

    iget-object v6, v15, Lcom/shabakaty/downloader/ka5;->m:Lcom/shabakaty/downloader/pq1;

    iget-object v0, v15, Lcom/shabakaty/downloader/ka5;->o:Ljava/util/Map;

    iget-object v8, v15, Lcom/shabakaty/downloader/ka5;->q:Lcom/shabakaty/downloader/t30;

    iget-object v2, v15, Lcom/shabakaty/downloader/ka5;->r:Ljava/util/Map;

    iget-object v9, v15, Lcom/shabakaty/downloader/ka5;->s:Lcom/google/android/gms/common/api/a$a;

    iget-object v7, v15, Lcom/shabakaty/downloader/ka5;->u:Ljava/util/ArrayList;

    .line 10
    new-instance v10, Lcom/shabakaty/downloader/ad;

    invoke-direct {v10}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 11
    new-instance v11, Lcom/shabakaty/downloader/ad;

    invoke-direct {v11}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/common/api/a$f;

    .line 14
    invoke-interface {v14}, Lcom/google/android/gms/common/api/a$f;->q()Z

    move-result v16

    if-eqz v16, :cond_7

    move-object v12, v14

    .line 15
    :cond_7
    invoke-interface {v14}, Lcom/google/android/gms/common/api/a$f;->E()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 16
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {v10, v13, v14}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_8
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {v11, v13, v14}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_9
    invoke-virtual {v10}, Lcom/shabakaty/downloader/m64;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    const-string v4, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    .line 19
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 20
    new-instance v13, Lcom/shabakaty/downloader/ad;

    invoke-direct {v13}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 21
    new-instance v14, Lcom/shabakaty/downloader/ad;

    invoke-direct {v14}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 22
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/a;

    move-object/from16 p1, v0

    .line 23
    iget-object v0, v4, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/a$g;

    .line 24
    invoke-virtual {v10, v0}, Lcom/shabakaty/downloader/m64;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 25
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v13, v4, v0}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 26
    :cond_a
    invoke-virtual {v11, v0}, Lcom/shabakaty/downloader/m64;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v14, v4, v0}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object/from16 v0, p1

    goto :goto_3

    .line 28
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v0, :cond_f

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move/from16 p1, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/shabakaty/downloader/oc5;

    move-object/from16 v16, v7

    .line 32
    iget-object v7, v0, Lcom/shabakaty/downloader/oc5;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v13, v7}, Lcom/shabakaty/downloader/m64;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 33
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 34
    :cond_d
    iget-object v7, v0, Lcom/shabakaty/downloader/oc5;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v14, v7}, Lcom/shabakaty/downloader/m64;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move/from16 v0, p1

    move-object/from16 v7, v16

    goto :goto_5

    .line 36
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_f
    new-instance v15, Lcom/shabakaty/downloader/qc5;

    move-object v0, v15

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    move-object/from16 v17, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v10

    move-object v7, v11

    move-object v10, v12

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v14}, Lcom/shabakaty/downloader/qc5;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/ka5;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/shabakaty/downloader/qq1;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/t30;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$f;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v12, p0

    .line 38
    iput-object v15, v12, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    return-void

    :cond_10
    move-object v12, v15

    if-eqz v1, :cond_12

    if-nez v2, :cond_11

    .line 39
    :goto_7
    new-instance v13, Lcom/google/android/gms/common/api/internal/j;

    iget-object v1, v12, Lcom/shabakaty/downloader/ka5;->f:Landroid/content/Context;

    iget-object v3, v12, Lcom/shabakaty/downloader/ka5;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v4, v12, Lcom/shabakaty/downloader/ka5;->g:Landroid/os/Looper;

    iget-object v5, v12, Lcom/shabakaty/downloader/ka5;->m:Lcom/shabakaty/downloader/pq1;

    iget-object v6, v12, Lcom/shabakaty/downloader/ka5;->o:Ljava/util/Map;

    iget-object v7, v12, Lcom/shabakaty/downloader/ka5;->q:Lcom/shabakaty/downloader/t30;

    iget-object v8, v12, Lcom/shabakaty/downloader/ka5;->r:Ljava/util/Map;

    iget-object v9, v12, Lcom/shabakaty/downloader/ka5;->s:Lcom/google/android/gms/common/api/a$a;

    iget-object v10, v12, Lcom/shabakaty/downloader/ka5;->u:Ljava/util/ArrayList;

    move-object v0, v13

    move-object/from16 v2, p0

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/j;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/ka5;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/shabakaty/downloader/qq1;Ljava/util/Map;Lcom/shabakaty/downloader/t30;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;Lcom/shabakaty/downloader/ua5;)V

    iput-object v13, v12, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    return-void

    .line 40
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v12, v15

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/ka5;->o(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Lcom/shabakaty/downloader/ka5;->v:Ljava/lang/Integer;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/shabakaty/downloader/ka5;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    const-string v3, "Cannot use sign-in mode: "

    const-string v5, ". Mode was already set to "

    invoke-static {v4, v3, v1, v5, v2}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ka5;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ka5;->i:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->l:Lcom/shabakaty/downloader/ma5;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->l:Lcom/shabakaty/downloader/ma5;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->n:Lcom/shabakaty/downloader/ta5;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ta5;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ka5;->n:Lcom/shabakaty/downloader/ta5;

    :cond_1
    return v1
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/google/android/gms/common/internal/b;->v:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->d:Lcom/shabakaty/downloader/va5;

    const-string v1, "null reference"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/va5;->a()V

    return-void
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ka5;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ka5;->c:Lcom/google/android/gms/common/internal/b;

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/common/internal/b;->y:Landroid/os/Handler;

    const-string v2, "onConnectionSuccess must only be called on the Handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->d(Landroid/os/Handler;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/common/internal/b;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, v0, Lcom/google/android/gms/common/internal/b;->x:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->k(Z)V

    .line 7
    iget-object v2, v0, Lcom/google/android/gms/common/internal/b;->y:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iput-boolean v3, v0, Lcom/google/android/gms/common/internal/b;->x:Z

    .line 9
    iget-object v2, v0, Lcom/google/android/gms/common/internal/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->k(Z)V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    iget-object v3, v0, Lcom/google/android/gms/common/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_3
    :goto_3
    if-ge v6, v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$b;

    .line 13
    iget-boolean v8, v0, Lcom/google/android/gms/common/internal/b;->v:Z

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/common/internal/b;->r:Lcom/shabakaty/downloader/bc5;

    .line 14
    invoke-interface {v8}, Lcom/shabakaty/downloader/bc5;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/common/internal/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v8, v3, :cond_4

    .line 16
    iget-object v8, v0, Lcom/google/android/gms/common/internal/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 17
    invoke-interface {v7, p1}, Lcom/shabakaty/downloader/fb0;->onConnected(Landroid/os/Bundle;)V

    goto :goto_3

    .line 18
    :cond_4
    iget-object p1, v0, Lcom/google/android/gms/common/internal/b;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 19
    iput-boolean v4, v0, Lcom/google/android/gms/common/internal/b;->x:Z

    .line 20
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
