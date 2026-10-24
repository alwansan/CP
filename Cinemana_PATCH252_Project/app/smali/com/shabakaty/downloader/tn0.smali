.class public Lcom/shabakaty/downloader/tn0;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lcom/shabakaty/downloader/p01;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tn0$d;,
        Lcom/shabakaty/downloader/tn0$c;,
        Lcom/shabakaty/downloader/tn0$e;,
        Lcom/shabakaty/downloader/tn0$b;,
        Lcom/shabakaty/downloader/tn0$a;,
        Lcom/shabakaty/downloader/tn0$f;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o01$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/h71;

.field public final c:Lcom/shabakaty/downloader/tn0$a;

.field public final d:Lcom/shabakaty/downloader/tn0$b;

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/shabakaty/downloader/je0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/je0<",
            "Lcom/shabakaty/downloader/s01$a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/shabakaty/downloader/gj2;

.field public final k:Lcom/shabakaty/downloader/ap2;

.field public final l:Ljava/util/UUID;

.field public final m:Lcom/shabakaty/downloader/tn0$e;

.field public n:I

.field public o:I

.field public p:Landroid/os/HandlerThread;

.field public q:Lcom/shabakaty/downloader/tn0$c;

.field public r:Lcom/shabakaty/downloader/g71;

.field public s:Lcom/shabakaty/downloader/p01$a;

.field public t:[B

.field public u:[B

.field public v:Lcom/shabakaty/downloader/h71$a;

.field public w:Lcom/shabakaty/downloader/h71$d;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/shabakaty/downloader/h71;Lcom/shabakaty/downloader/tn0$a;Lcom/shabakaty/downloader/tn0$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/shabakaty/downloader/ap2;Landroid/os/Looper;Lcom/shabakaty/downloader/gj2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/shabakaty/downloader/h71;",
            "Lcom/shabakaty/downloader/tn0$a;",
            "Lcom/shabakaty/downloader/tn0$b;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o01$b;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shabakaty/downloader/ap2;",
            "Landroid/os/Looper;",
            "Lcom/shabakaty/downloader/gj2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/tn0;->l:Ljava/util/UUID;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/tn0;->c:Lcom/shabakaty/downloader/tn0$a;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/tn0;->d:Lcom/shabakaty/downloader/tn0$b;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/tn0;->b:Lcom/shabakaty/downloader/h71;

    .line 7
    iput p6, p0, Lcom/shabakaty/downloader/tn0;->e:I

    .line 8
    iput-boolean p7, p0, Lcom/shabakaty/downloader/tn0;->f:Z

    .line 9
    iput-boolean p8, p0, Lcom/shabakaty/downloader/tn0;->g:Z

    if-eqz p9, :cond_2

    .line 10
    iput-object p9, p0, Lcom/shabakaty/downloader/tn0;->u:[B

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/tn0;->a:Ljava/util/List;

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tn0;->a:Ljava/util/List;

    .line 14
    :goto_0
    iput-object p10, p0, Lcom/shabakaty/downloader/tn0;->h:Ljava/util/HashMap;

    .line 15
    iput-object p11, p0, Lcom/shabakaty/downloader/tn0;->k:Lcom/shabakaty/downloader/ap2;

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/je0;

    invoke-direct {p1}, Lcom/shabakaty/downloader/je0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tn0;->i:Lcom/shabakaty/downloader/je0;

    .line 17
    iput-object p13, p0, Lcom/shabakaty/downloader/tn0;->j:Lcom/shabakaty/downloader/gj2;

    const/4 p1, 0x2

    .line 18
    iput p1, p0, Lcom/shabakaty/downloader/tn0;->n:I

    .line 19
    new-instance p1, Lcom/shabakaty/downloader/tn0$e;

    invoke-direct {p1, p0, p12}, Lcom/shabakaty/downloader/tn0$e;-><init>(Lcom/shabakaty/downloader/tn0;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tn0;->m:Lcom/shabakaty/downloader/tn0$e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->l:Ljava/util/UUID;

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/s01$a;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/tn0;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/tn0;->o:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/shabakaty/downloader/tn0;->o:I

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/tn0;->n:I

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->m:Lcom/shabakaty/downloader/tn0$e;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->q:Lcom/shabakaty/downloader/tn0$c;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iput-boolean v2, v0, Lcom/shabakaty/downloader/tn0$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    .line 10
    iput-object v3, p0, Lcom/shabakaty/downloader/tn0;->q:Lcom/shabakaty/downloader/tn0$c;

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 12
    iput-object v3, p0, Lcom/shabakaty/downloader/tn0;->p:Landroid/os/HandlerThread;

    .line 13
    iput-object v3, p0, Lcom/shabakaty/downloader/tn0;->r:Lcom/shabakaty/downloader/g71;

    .line 14
    iput-object v3, p0, Lcom/shabakaty/downloader/tn0;->s:Lcom/shabakaty/downloader/p01$a;

    .line 15
    iput-object v3, p0, Lcom/shabakaty/downloader/tn0;->v:Lcom/shabakaty/downloader/h71$a;

    .line 16
    iput-object v3, p0, Lcom/shabakaty/downloader/tn0;->w:Lcom/shabakaty/downloader/h71$d;

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->t:[B

    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/tn0;->b:Lcom/shabakaty/downloader/h71;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/h71;->h([B)V

    .line 19
    iput-object v3, p0, Lcom/shabakaty/downloader/tn0;->t:[B

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0

    throw p1

    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->i:Lcom/shabakaty/downloader/je0;

    .line 22
    iget-object v1, v0, Lcom/shabakaty/downloader/je0;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_1
    iget-object v4, v0, Lcom/shabakaty/downloader/je0;->s:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_2

    .line 24
    monitor-exit v1

    goto :goto_3

    .line 25
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/shabakaty/downloader/je0;->u:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/shabakaty/downloader/je0;->u:Ljava/util/List;

    .line 28
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 29
    iget-object v4, v0, Lcom/shabakaty/downloader/je0;->s:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/shabakaty/downloader/je0;->t:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v0, Lcom/shabakaty/downloader/je0;->t:Ljava/util/Set;

    goto :goto_2

    .line 33
    :cond_3
    iget-object v0, v0, Lcom/shabakaty/downloader/je0;->s:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->i:Lcom/shabakaty/downloader/je0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/je0;->d(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_4

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->f()V

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 37
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 38
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/downloader/tn0;->d:Lcom/shabakaty/downloader/tn0$b;

    iget v0, p0, Lcom/shabakaty/downloader/tn0;->o:I

    check-cast p1, Lcom/shabakaty/downloader/un0$g;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v0, v2, :cond_5

    .line 39
    iget-object v1, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 40
    iget v2, v1, Lcom/shabakaty/downloader/un0;->p:I

    if-lez v2, :cond_5

    .line 41
    iget-wide v6, v1, Lcom/shabakaty/downloader/un0;->l:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_5

    .line 42
    iget-object v0, v1, Lcom/shabakaty/downloader/un0;->o:Ljava/util/Set;

    .line 43
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 45
    iget-object v0, v0, Lcom/shabakaty/downloader/un0;->u:Landroid/os/Handler;

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lcom/shabakaty/downloader/rr;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/tn0;)V

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 49
    iget-wide v4, v4, Lcom/shabakaty/downloader/un0;->l:J

    add-long/2addr v2, v4

    .line 50
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_5

    :cond_5
    if-nez v0, :cond_9

    .line 51
    iget-object v0, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 52
    iget-object v0, v0, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    .line 53
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 55
    iget-object v1, v0, Lcom/shabakaty/downloader/un0;->r:Lcom/shabakaty/downloader/tn0;

    if-ne v1, p0, :cond_6

    .line 56
    iput-object v3, v0, Lcom/shabakaty/downloader/un0;->r:Lcom/shabakaty/downloader/tn0;

    .line 57
    :cond_6
    iget-object v1, v0, Lcom/shabakaty/downloader/un0;->s:Lcom/shabakaty/downloader/tn0;

    if-ne v1, p0, :cond_7

    .line 58
    iput-object v3, v0, Lcom/shabakaty/downloader/un0;->s:Lcom/shabakaty/downloader/tn0;

    .line 59
    :cond_7
    iget-object v0, v0, Lcom/shabakaty/downloader/un0;->i:Lcom/shabakaty/downloader/un0$f;

    .line 60
    iget-object v1, v0, Lcom/shabakaty/downloader/un0$f;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, v0, Lcom/shabakaty/downloader/un0$f;->b:Lcom/shabakaty/downloader/tn0;

    if-ne v1, p0, :cond_8

    .line 62
    iput-object v3, v0, Lcom/shabakaty/downloader/un0$f;->b:Lcom/shabakaty/downloader/tn0;

    .line 63
    iget-object v1, v0, Lcom/shabakaty/downloader/un0$f;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 64
    iget-object v1, v0, Lcom/shabakaty/downloader/un0$f;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tn0;

    iput-object v1, v0, Lcom/shabakaty/downloader/un0$f;->b:Lcom/shabakaty/downloader/tn0;

    .line 65
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tn0;->n()V

    .line 66
    :cond_8
    iget-object v0, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 67
    iget-wide v1, v0, Lcom/shabakaty/downloader/un0;->l:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_9

    .line 68
    iget-object v0, v0, Lcom/shabakaty/downloader/un0;->u:Landroid/os/Handler;

    .line 69
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 72
    iget-object v0, v0, Lcom/shabakaty/downloader/un0;->o:Ljava/util/Set;

    .line 73
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    :cond_9
    :goto_5
    iget-object p1, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 75
    invoke-virtual {p1}, Lcom/shabakaty/downloader/un0;->l()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/tn0;->f:Z

    return v0
.end method

.method public d(Lcom/shabakaty/downloader/s01$a;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/tn0;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->i:Lcom/shabakaty/downloader/je0;

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/je0;->r:Ljava/lang/Object;

    monitor-enter v3

    .line 4
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/shabakaty/downloader/je0;->u:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/shabakaty/downloader/je0;->u:Ljava/util/List;

    .line 7
    iget-object v4, v0, Lcom/shabakaty/downloader/je0;->s:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    .line 8
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/shabakaty/downloader/je0;->t:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v0, Lcom/shabakaty/downloader/je0;->t:Ljava/util/Set;

    .line 11
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/je0;->s:Ljava/util/Map;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_3
    :goto_2
    iget v0, p0, Lcom/shabakaty/downloader/tn0;->o:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shabakaty/downloader/tn0;->o:I

    if-ne v0, v2, :cond_5

    .line 14
    iget p1, p0, Lcom/shabakaty/downloader/tn0;->n:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 15
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tn0;->p:Landroid/os/HandlerThread;

    .line 16
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance p1, Lcom/shabakaty/downloader/tn0$c;

    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/tn0$c;-><init>(Lcom/shabakaty/downloader/tn0;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tn0;->q:Lcom/shabakaty/downloader/tn0$c;

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tn0;->l()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/tn0;->h(Z)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tn0;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->i:Lcom/shabakaty/downloader/je0;

    .line 21
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/je0;->d(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 22
    iget v0, p0, Lcom/shabakaty/downloader/tn0;->n:I

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s01$a;->d(I)V

    .line 23
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/tn0;->d:Lcom/shabakaty/downloader/tn0$b;

    check-cast p1, Lcom/shabakaty/downloader/un0$g;

    .line 24
    iget-object v0, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 25
    iget-wide v1, v0, Lcom/shabakaty/downloader/un0;->l:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/un0;->o:Ljava/util/Set;

    .line 27
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28
    iget-object p1, p1, Lcom/shabakaty/downloader/un0$g;->a:Lcom/shabakaty/downloader/un0;

    .line 29
    iget-object p1, p1, Lcom/shabakaty/downloader/un0;->u:Landroid/os/Handler;

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final e()Lcom/shabakaty/downloader/g71;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->r:Lcom/shabakaty/downloader/g71;

    return-object v0
.end method

.method public final f()Lcom/shabakaty/downloader/p01$a;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/tn0;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->s:Lcom/shabakaty/downloader/p01$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final g(Lcom/shabakaty/downloader/wc0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wc0<",
            "Lcom/shabakaty/downloader/s01$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->i:Lcom/shabakaty/downloader/je0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/je0;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/je0;->t:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s01$a;

    .line 5
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/wc0;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/tn0;->n:I

    return v0
.end method

.method public final h(Z)V
    .locals 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/tn0;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->t:[B

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/tn0;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/tn0;->u:[B

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/tn0;->t:[B

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/tn0;->u:[B

    invoke-virtual {p0, v1, v0, p1}, Lcom/shabakaty/downloader/tn0;->m([BIZ)V

    goto/16 :goto_5

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/tn0;->u:[B

    if-eqz v1, :cond_3

    .line 10
    :try_start_0
    iget-object v5, p0, Lcom/shabakaty/downloader/tn0;->b:Lcom/shabakaty/downloader/h71;

    invoke-interface {v5, v0, v1}, Lcom/shabakaty/downloader/h71;->g([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {p0, v1, v4}, Lcom/shabakaty/downloader/tn0;->j(Ljava/lang/Exception;I)V

    :goto_0
    if-eqz v2, :cond_d

    .line 12
    :cond_3
    invoke-virtual {p0, v0, v3, p1}, Lcom/shabakaty/downloader/tn0;->m([BIZ)V

    goto/16 :goto_5

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/tn0;->u:[B

    if-nez v1, :cond_5

    .line 14
    invoke-virtual {p0, v0, v4, p1}, Lcom/shabakaty/downloader/tn0;->m([BIZ)V

    goto/16 :goto_5

    .line 15
    :cond_5
    iget v5, p0, Lcom/shabakaty/downloader/tn0;->n:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    .line 16
    :try_start_1
    iget-object v5, p0, Lcom/shabakaty/downloader/tn0;->b:Lcom/shabakaty/downloader/h71;

    invoke-interface {v5, v0, v1}, Lcom/shabakaty/downloader/h71;->g([B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 17
    invoke-virtual {p0, v1, v4}, Lcom/shabakaty/downloader/tn0;->j(Ljava/lang/Exception;I)V

    :goto_1
    if-eqz v2, :cond_d

    .line 18
    :cond_6
    sget-object v1, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    iget-object v2, p0, Lcom/shabakaty/downloader/tn0;->l:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_4

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tn0;->o()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    .line 20
    :cond_8
    new-instance v2, Landroid/util/Pair;

    const-string v4, "LicenseDurationRemaining"

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    :try_start_2
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 22
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    :cond_9
    move-wide v4, v7

    .line 23
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "PlaybackDurationRemaining"

    .line 24
    :try_start_3
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 25
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 26
    :catch_3
    :cond_a
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 27
    :goto_3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 29
    :goto_4
    iget v4, p0, Lcom/shabakaty/downloader/tn0;->e:I

    if-nez v4, :cond_b

    const-wide/16 v4, 0x3c

    cmp-long v7, v1, v4

    if-gtz v7, :cond_b

    const/16 v4, 0x58

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultDrmSession"

    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, v0, v3, p1}, Lcom/shabakaty/downloader/tn0;->m([BIZ)V

    goto :goto_5

    :cond_b
    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-gtz p1, :cond_c

    .line 33
    new-instance p1, Lcom/shabakaty/downloader/wd2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/wd2;-><init>()V

    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/tn0;->j(Ljava/lang/Exception;I)V

    goto :goto_5

    .line 34
    :cond_c
    iput v6, p0, Lcom/shabakaty/downloader/tn0;->n:I

    .line 35
    sget-object p1, Lcom/shabakaty/downloader/wx;->u:Lcom/shabakaty/downloader/wx;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/tn0;->g(Lcom/shabakaty/downloader/wc0;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public final i()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/tn0;->n:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final j(Ljava/lang/Exception;I)V
    .locals 7

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/p01$a;

    .line 2
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/y01;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/y01;->b(Ljava/lang/Throwable;)I

    move-result p2

    goto :goto_2

    :cond_0
    const/16 v2, 0x17

    const/16 v4, 0x1776

    if-lt v1, v2, :cond_1

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/z01;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const/16 p2, 0x1776

    goto :goto_2

    :cond_1
    const/16 v2, 0x1772

    const/16 v5, 0x12

    if-lt v1, v5, :cond_2

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/x01;->b(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    const/16 p2, 0x1772

    goto :goto_2

    :cond_2
    if-lt v1, v5, :cond_3

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/x01;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p2, 0x1777

    goto :goto_2

    .line 7
    :cond_3
    instance-of v1, p1, Lcom/shabakaty/downloader/nw4;

    if-eqz v1, :cond_4

    const/16 p2, 0x1771

    goto :goto_2

    .line 8
    :cond_4
    instance-of v1, p1, Lcom/shabakaty/downloader/un0$d;

    if-eqz v1, :cond_5

    const/16 p2, 0x1773

    goto :goto_2

    .line 9
    :cond_5
    instance-of v1, p1, Lcom/shabakaty/downloader/wd2;

    if-eqz v1, :cond_6

    const/16 p2, 0x1778

    goto :goto_2

    :cond_6
    if-ne p2, v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    const/16 p2, 0x1774

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    goto :goto_1

    .line 10
    :goto_2
    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/p01$a;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/tn0;->s:Lcom/shabakaty/downloader/p01$a;

    const-string p2, "DefaultDrmSession"

    const-string v0, "DRM session error"

    .line 11
    invoke-static {p2, v0, p1}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    new-instance p2, Lcom/shabakaty/downloader/cu;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cu;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/tn0;->g(Lcom/shabakaty/downloader/wc0;)V

    .line 13
    iget p1, p0, Lcom/shabakaty/downloader/tn0;->n:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_9

    .line 14
    iput v3, p0, Lcom/shabakaty/downloader/tn0;->n:I

    :cond_9
    return-void

    .line 15
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final k(Ljava/lang/Exception;Z)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/tn0;->c:Lcom/shabakaty/downloader/tn0$a;

    check-cast p1, Lcom/shabakaty/downloader/un0$f;

    .line 3
    iget-object p2, p1, Lcom/shabakaty/downloader/un0$f;->a:Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/un0$f;->b:Lcom/shabakaty/downloader/tn0;

    if-eqz p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iput-object p0, p1, Lcom/shabakaty/downloader/un0$f;->b:Lcom/shabakaty/downloader/tn0;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tn0;->n()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/tn0;->j(Ljava/lang/Exception;I)V

    :goto_1
    return-void
.end method

.method public final l()Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tn0;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->b:Lcom/shabakaty/downloader/h71;

    invoke-interface {v0}, Lcom/shabakaty/downloader/h71;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/tn0;->t:[B

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/tn0;->b:Lcom/shabakaty/downloader/h71;

    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/h71;->d([B)Lcom/shabakaty/downloader/g71;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/tn0;->r:Lcom/shabakaty/downloader/g71;

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/tn0;->n:I

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/tn0;->i:Lcom/shabakaty/downloader/je0;

    .line 6
    iget-object v3, v2, Lcom/shabakaty/downloader/je0;->r:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-object v2, v2, Lcom/shabakaty/downloader/je0;->t:Ljava/util/Set;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/s01$a;

    .line 9
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/s01$a;->d(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->t:[B

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception v0

    .line 12
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/tn0;->j(Ljava/lang/Exception;I)V

    goto :goto_1

    :catch_1
    nop

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->c:Lcom/shabakaty/downloader/tn0$a;

    check-cast v0, Lcom/shabakaty/downloader/un0$f;

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/un0$f;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, v0, Lcom/shabakaty/downloader/un0$f;->b:Lcom/shabakaty/downloader/tn0;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    iput-object p0, v0, Lcom/shabakaty/downloader/un0$f;->b:Lcom/shabakaty/downloader/tn0;

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tn0;->n()V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final m([BIZ)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tn0;->b:Lcom/shabakaty/downloader/h71;

    iget-object v2, p0, Lcom/shabakaty/downloader/tn0;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/shabakaty/downloader/tn0;->h:Ljava/util/HashMap;

    invoke-interface {v1, p1, v2, p2, v3}, Lcom/shabakaty/downloader/h71;->l([BLjava/util/List;ILjava/util/HashMap;)Lcom/shabakaty/downloader/h71$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tn0;->v:Lcom/shabakaty/downloader/h71$a;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/tn0;->q:Lcom/shabakaty/downloader/tn0$c;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2, v0, p1, p3}, Lcom/shabakaty/downloader/tn0$c;->a(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/tn0;->k(Ljava/lang/Exception;Z)V

    :goto_0
    return-void
.end method

.method public n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->b:Lcom/shabakaty/downloader/h71;

    invoke-interface {v0}, Lcom/shabakaty/downloader/h71;->e()Lcom/shabakaty/downloader/h71$d;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/tn0;->w:Lcom/shabakaty/downloader/h71$d;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tn0;->q:Lcom/shabakaty/downloader/tn0$c;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v2, 0x0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v0, v3}, Lcom/shabakaty/downloader/tn0$c;->a(ILjava/lang/Object;Z)V

    return-void
.end method

.method public o()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn0;->t:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tn0;->b:Lcom/shabakaty/downloader/h71;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/h71;->c([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method
