.class public final Landroidx/camera/lifecycle/b;
.super Ljava/lang/Object;
.source "ProcessCameraProvider.java"


# static fields
.field public static final c:Landroidx/camera/lifecycle/b;


# instance fields
.field public final a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

.field public b:Lcom/shabakaty/downloader/tu;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/lifecycle/b;

    invoke-direct {v0}, Landroidx/camera/lifecycle/b;-><init>()V

    sput-object v0, Landroidx/camera/lifecycle/b;->c:Landroidx/camera/lifecycle/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-direct {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/b;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/fu;[Lcom/shabakaty/downloader/cx4;)Lcom/shabakaty/downloader/ms;
    .locals 12

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/fu;->a:Ljava/util/LinkedHashSet;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    array-length p2, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, p2, :cond_1

    aget-object v4, p3, v2

    .line 5
    iget-object v4, v4, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    .line 6
    invoke-interface {v4, v3}, Lcom/shabakaty/downloader/hx4;->w(Lcom/shabakaty/downloader/fu;)Lcom/shabakaty/downloader/fu;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, v3, Lcom/shabakaty/downloader/fu;->a:Ljava/util/LinkedHashSet;

    .line 8
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/rt;

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p2, Lcom/shabakaty/downloader/fu;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/fu;-><init>(Ljava/util/LinkedHashSet;)V

    .line 11
    iget-object v0, p0, Landroidx/camera/lifecycle/b;->b:Lcom/shabakaty/downloader/tu;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/tu;->a:Lcom/shabakaty/downloader/du;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/du;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/fu;->a(Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    move-result-object p2

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/ju$b;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/ju$b;-><init>(Ljava/util/LinkedHashSet;)V

    .line 15
    iget-object v2, p0, Landroidx/camera/lifecycle/b;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 16
    iget-object v4, v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 17
    :try_start_0
    iget-object v2, v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

    .line 18
    new-instance v5, Landroidx/camera/lifecycle/a;

    invoke-direct {v5, p1, v0}, Landroidx/camera/lifecycle/a;-><init>(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/ju$b;)V

    .line 19
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/LifecycleCamera;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 20
    iget-object v2, p0, Landroidx/camera/lifecycle/b;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 21
    iget-object v5, v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a:Ljava/lang/Object;

    monitor-enter v5

    .line 22
    :try_start_1
    iget-object v2, v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    array-length v4, p3

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v4, :cond_5

    aget-object v7, p3, v5

    .line 24
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 25
    iget-object v10, v9, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    monitor-enter v10

    .line 26
    :try_start_2
    iget-object v11, v9, Landroidx/camera/lifecycle/LifecycleCamera;->t:Lcom/shabakaty/downloader/ju;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/ju;->k()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_2

    if-ne v9, v0, :cond_3

    goto :goto_3

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Use case %s already bound to a different lifecycle."

    new-array p3, v6, [Ljava/lang/Object;

    aput-object v7, p3, v1

    .line 28
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 29
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-nez v0, :cond_b

    .line 30
    iget-object v0, p0, Landroidx/camera/lifecycle/b;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    new-instance v2, Lcom/shabakaty/downloader/ju;

    iget-object v4, p0, Landroidx/camera/lifecycle/b;->b:Lcom/shabakaty/downloader/tu;

    .line 31
    iget-object v5, v4, Lcom/shabakaty/downloader/tu;->h:Lcom/shabakaty/downloader/mt;

    if-eqz v5, :cond_a

    .line 32
    iget-object v4, v4, Lcom/shabakaty/downloader/tu;->i:Lcom/shabakaty/downloader/ix4;

    if-eqz v4, :cond_9

    .line 33
    invoke-direct {v2, p2, v5, v4}, Lcom/shabakaty/downloader/ju;-><init>(Ljava/util/LinkedHashSet;Lcom/shabakaty/downloader/mt;Lcom/shabakaty/downloader/ix4;)V

    .line 34
    iget-object p2, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a:Ljava/lang/Object;

    monitor-enter p2

    .line 35
    :try_start_4
    iget-object v4, v2, Lcom/shabakaty/downloader/ju;->u:Lcom/shabakaty/downloader/ju$b;

    .line 36
    new-instance v5, Landroidx/camera/lifecycle/a;

    invoke-direct {v5, p1, v4}, Landroidx/camera/lifecycle/a;-><init>(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/ju$b;)V

    .line 37
    iget-object v4, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    const-string v4, "LifecycleCamera already exists for the given LifecycleOwner and set of cameras"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/fl3;->e(ZLjava/lang/Object;)V

    .line 38
    invoke-interface {p1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object v1

    sget-object v4, Landroidx/lifecycle/e$c;->r:Landroidx/lifecycle/e$c;

    if-eq v1, v4, :cond_8

    .line 39
    new-instance v1, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-direct {v1, p1, v2}, Landroidx/camera/lifecycle/LifecycleCamera;-><init>(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/ju;)V

    .line 40
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ju;->k()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 41
    invoke-virtual {v1}, Landroidx/camera/lifecycle/LifecycleCamera;->m()V

    .line 42
    :cond_7
    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->d(Landroidx/camera/lifecycle/LifecycleCamera;)V

    .line 43
    monitor-exit p2

    move-object v0, v1

    goto :goto_4

    .line 44
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Trying to create LifecycleCamera with destroyed lifecycle."

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 45
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 46
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CameraX not initialized yet."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CameraX not initialized yet."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_b
    :goto_4
    array-length p1, p3

    if-nez p1, :cond_c

    goto :goto_5

    .line 49
    :cond_c
    iget-object p1, p0, Landroidx/camera/lifecycle/b;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 50
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 51
    invoke-virtual {p1, v0, v3, p2}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a(Landroidx/camera/lifecycle/LifecycleCamera;Lcom/shabakaty/downloader/z35;Ljava/util/Collection;)V

    :goto_5
    return-object v0

    :catchall_2
    move-exception p1

    .line 52
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 53
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method

.method public b()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    iget-object v0, p0, Landroidx/camera/lifecycle/b;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 3
    iget-object v1, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCameraRepository$a;

    .line 5
    iget-object v4, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 6
    iget-object v4, v3, Landroidx/camera/lifecycle/LifecycleCamera;->r:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v5, v3, Landroidx/camera/lifecycle/LifecycleCamera;->t:Lcom/shabakaty/downloader/ju;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ju;->k()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/ju;->m(Ljava/util/Collection;)V

    .line 8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v3}, Landroidx/camera/lifecycle/LifecycleCamera;->h()Lcom/shabakaty/downloader/rh2;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->f(Lcom/shabakaty/downloader/rh2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 11
    :cond_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
