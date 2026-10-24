.class public final Lcom/shabakaty/downloader/qc5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/va5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/ka5;

.field public final c:Landroid/os/Looper;

.field public final d:Lcom/google/android/gms/common/api/internal/j;

.field public final e:Lcom/google/android/gms/common/api/internal/j;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/w54;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/android/gms/common/api/a$f;

.field public i:Landroid/os/Bundle;

.field public j:Lcom/shabakaty/downloader/gb0;

.field public k:Lcom/shabakaty/downloader/gb0;

.field public l:Z

.field public final m:Ljava/util/concurrent/locks/Lock;

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/ka5;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/shabakaty/downloader/qq1;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/t30;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$f;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/shabakaty/downloader/ka5;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/shabakaty/downloader/qq1;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a$c<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;",
            "Lcom/shabakaty/downloader/t30;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/shabakaty/downloader/mb5;",
            "Lcom/shabakaty/downloader/x54;",
            ">;",
            "Lcom/google/android/gms/common/api/a$f;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/oc5;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/oc5;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/qc5;->g:Ljava/util/Set;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/shabakaty/downloader/qc5;->l:Z

    .line 7
    iput v2, v0, Lcom/shabakaty/downloader/qc5;->n:I

    move-object/from16 v15, p1

    .line 8
    iput-object v15, v0, Lcom/shabakaty/downloader/qc5;->a:Landroid/content/Context;

    move-object/from16 v14, p2

    .line 9
    iput-object v14, v0, Lcom/shabakaty/downloader/qc5;->b:Lcom/shabakaty/downloader/ka5;

    move-object/from16 v13, p3

    .line 10
    iput-object v13, v0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v12, p4

    .line 11
    iput-object v12, v0, Lcom/shabakaty/downloader/qc5;->c:Landroid/os/Looper;

    move-object/from16 v3, p10

    .line 12
    iput-object v3, v0, Lcom/shabakaty/downloader/qc5;->h:Lcom/google/android/gms/common/api/a$f;

    .line 13
    new-instance v11, Lcom/google/android/gms/common/api/internal/j;

    new-instance v10, Lcom/shabakaty/downloader/uc5;

    invoke-direct {v10, v0, v1, v2}, Lcom/shabakaty/downloader/uc5;-><init>(Lcom/shabakaty/downloader/qc5;Lcom/shabakaty/downloader/zz6;I)V

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object v3, v11

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v17, v10

    move-object v10, v2

    move-object v2, v11

    move-object/from16 v11, p14

    move-object/from16 v12, v16

    move-object/from16 v13, p12

    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/j;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/ka5;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/shabakaty/downloader/qq1;Ljava/util/Map;Lcom/shabakaty/downloader/t30;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;Lcom/shabakaty/downloader/ua5;)V

    iput-object v2, v0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    .line 14
    new-instance v2, Lcom/google/android/gms/common/api/internal/j;

    new-instance v14, Lcom/shabakaty/downloader/uc5;

    const/4 v3, 0x1

    invoke-direct {v14, v0, v1, v3}, Lcom/shabakaty/downloader/uc5;-><init>(Lcom/shabakaty/downloader/qc5;Lcom/shabakaty/downloader/zz6;I)V

    move-object v3, v2

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/j;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/ka5;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/shabakaty/downloader/qq1;Ljava/util/Map;Lcom/shabakaty/downloader/t30;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;Lcom/shabakaty/downloader/ua5;)V

    iput-object v2, v0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    .line 15
    new-instance v1, Lcom/shabakaty/downloader/ad;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 16
    move-object/from16 v2, p7

    check-cast v2, Lcom/shabakaty/downloader/ad;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ad;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/gm2$c;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/gm2$c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$c;

    .line 17
    iget-object v4, v0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    move-object/from16 v2, p6

    check-cast v2, Lcom/shabakaty/downloader/ad;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ad;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/gm2$c;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/gm2$c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$c;

    .line 19
    iget-object v4, v0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/qc5;->f:Ljava/util/Map;

    return-void
.end method

.method public static h(Lcom/shabakaty/downloader/qc5;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;

    invoke-static {v0}, Lcom/shabakaty/downloader/qc5;->i(Lcom/shabakaty/downloader/gb0;)Z

    move-result v0

    const-string v1, "null reference"

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    invoke-static {v0}, Lcom/shabakaty/downloader/qc5;->i(Lcom/shabakaty/downloader/gb0;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    if-eqz v0, :cond_8

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/qc5;->n:I

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->j()V

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qc5;->g(Lcom/shabakaty/downloader/gb0;)V

    .line 7
    iget-object p0, p0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/j;->s()V

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/qc5;->n:I

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string v1, "CompositeGAC"

    const-string v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->b:Lcom/shabakaty/downloader/ka5;

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka5;->t(Landroid/os/Bundle;)V

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->j()V

    :goto_1
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/shabakaty/downloader/qc5;->n:I

    goto :goto_2

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    invoke-static {v0}, Lcom/shabakaty/downloader/qc5;->i(Lcom/shabakaty/downloader/gb0;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/j;->s()V

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;

    .line 18
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qc5;->g(Lcom/shabakaty/downloader/gb0;)V

    goto :goto_2

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    if-eqz v1, :cond_8

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    iget v2, v2, Lcom/google/android/gms/common/api/internal/j;->l:I

    iget-object v3, p0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    iget v3, v3, Lcom/google/android/gms/common/api/internal/j;->l:I

    if-ge v2, v3, :cond_7

    move-object v0, v1

    .line 22
    :cond_7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qc5;->g(Lcom/shabakaty/downloader/gb0;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public static i(Lcom/shabakaty/downloader/gb0;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gb0;->o1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/qc5;->n:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qc5;->l:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    invoke-interface {v0}, Lcom/shabakaty/downloader/na5;->s()V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    invoke-interface {v0}, Lcom/shabakaty/downloader/na5;->s()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->d()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/j;->s()V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/gb0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/gb0;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/nc5;

    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/nc5;-><init>(Landroid/os/Looper;)V

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/zz6;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/qc5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw v0
.end method

.method public final c(Lcom/shabakaty/downloader/w54;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    instance-of v0, v0, Lcom/shabakaty/downloader/aa5;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget p1, p0, Lcom/shabakaty/downloader/qc5;->n:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/qc5;->n:I

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/na5;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw p1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget v0, p0, Lcom/shabakaty/downloader/qc5;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    instance-of v0, v0, Lcom/shabakaty/downloader/aa5;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    instance-of v0, v0, Lcom/shabakaty/downloader/aa5;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/shabakaty/downloader/qc5;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw v0
.end method

.method public final f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/j;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "anonClient"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/j;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lcom/shabakaty/downloader/gb0;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/qc5;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->b:Lcom/shabakaty/downloader/ka5;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ka5;->b(Lcom/shabakaty/downloader/gb0;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->j()V

    :goto_0
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/qc5;->n:I

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/w54;

    .line 2
    invoke-interface {v1}, Lcom/shabakaty/downloader/w54;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/gb0;->s:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/qc5;->k:Lcom/shabakaty/downloader/gb0;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/qc5;->j:Lcom/shabakaty/downloader/gb0;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/qc5;->n:I

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/j;->s()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/j;->s()V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->j()V

    return-void
.end method

.method public final w(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 7
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
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/b;->o:Lcom/google/android/gms/common/api/a$c;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/j;

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qc5;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/qc5;->h:Lcom/google/android/gms/common/api/a$f;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/qc5;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/shabakaty/downloader/qc5;->b:Lcom/shabakaty/downloader/ka5;

    .line 9
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 10
    iget-object v5, p0, Lcom/shabakaty/downloader/qc5;->h:Lcom/google/android/gms/common/api/a$f;

    .line 11
    invoke-interface {v5}, Lcom/google/android/gms/common/api/a$f;->D()Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x8000000

    .line 12
    invoke-static {v2, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 13
    :goto_0
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/b;->o(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->e:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/j;->w(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    return-object p1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/qc5;->d:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/j;->w(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    return-object p1
.end method
