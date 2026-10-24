.class public final Lcom/shabakaty/downloader/if3;
.super Lcom/shabakaty/downloader/cx4;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/if3$b;,
        Lcom/shabakaty/downloader/if3$c;,
        Lcom/shabakaty/downloader/if3$d;
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/if3$c;

.field public static final s:Ljava/util/concurrent/Executor;


# instance fields
.field public l:Lcom/shabakaty/downloader/if3$d;

.field public m:Ljava/util/concurrent/Executor;

.field public n:Lcom/shabakaty/downloader/hp0;

.field public o:Lcom/shabakaty/downloader/mi4;

.field public p:Z

.field public q:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/if3$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/if3$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/if3;->r:Lcom/shabakaty/downloader/if3$c;

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/if3;->s:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/jf3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/cx4;-><init>(Lcom/shabakaty/downloader/hx4;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/if3;->s:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/shabakaty/downloader/if3;->m:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/if3;->p:Z

    return-void
.end method


# virtual methods
.method public c(ZLcom/shabakaty/downloader/ix4;)Lcom/shabakaty/downloader/hx4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/shabakaty/downloader/ix4;",
            ")",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ix4$a;->s:Lcom/shabakaty/downloader/ix4$a;

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/ix4;->a(Lcom/shabakaty/downloader/ix4$a;)Lcom/shabakaty/downloader/o90;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/if3;->r:Lcom/shabakaty/downloader/if3$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/if3$c;->a:Lcom/shabakaty/downloader/jf3;

    .line 4
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/n90;->a(Lcom/shabakaty/downloader/o90;Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/o90;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/if3;->f(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/hx4$a;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/if3$b;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/if3$b;->e()Lcom/shabakaty/downloader/jf3;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/hx4$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/o90;",
            ")",
            "Lcom/shabakaty/downloader/hx4$a<",
            "***>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/if3$b;

    invoke-static {p1}, Lcom/shabakaty/downloader/yv2;->z(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/yv2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/if3$b;-><init>(Lcom/shabakaty/downloader/yv2;)V

    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/if3;->n:Lcom/shabakaty/downloader/hp0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hp0;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/if3;->o:Lcom/shabakaty/downloader/mi4;

    return-void
.end method

.method public n(Lcom/shabakaty/downloader/tt;Lcom/shabakaty/downloader/hx4$a;)Lcom/shabakaty/downloader/hx4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tt;",
            "Lcom/shabakaty/downloader/hx4$a<",
            "***>;)",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-interface {p2}, Lcom/shabakaty/downloader/p81;->b()Lcom/shabakaty/downloader/wv2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/jf3;->t:Lcom/shabakaty/downloader/o90$a;

    check-cast v0, Lcom/shabakaty/downloader/k83;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/shabakaty/downloader/p81;->b()Lcom/shabakaty/downloader/wv2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/az1;->a:Lcom/shabakaty/downloader/o90$a;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Lcom/shabakaty/downloader/yv2;

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lcom/shabakaty/downloader/p81;->b()Lcom/shabakaty/downloader/wv2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/az1;->a:Lcom/shabakaty/downloader/o90$a;

    const/16 v2, 0x22

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/yv2;

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-interface {p2}, Lcom/shabakaty/downloader/hx4$a;->c()Lcom/shabakaty/downloader/hx4;

    move-result-object p1

    return-object p1
.end method

.method public o(Landroid/util/Size;)Landroid/util/Size;
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/if3;->q:Landroid/util/Size;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/jf3;

    iget-object v2, p0, Lcom/shabakaty/downloader/if3;->q:Landroid/util/Size;

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/if3;->q(Ljava/lang/String;Lcom/shabakaty/downloader/jf3;Landroid/util/Size;)Lcom/shabakaty/downloader/u14$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/u14$b;->e()Lcom/shabakaty/downloader/u14;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    return-object p1
.end method

.method public p(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cx4;->i:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/if3;->s()V

    return-void
.end method

.method public q(Ljava/lang/String;Lcom/shabakaty/downloader/jf3;Landroid/util/Size;)Lcom/shabakaty/downloader/u14$b;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/shabakaty/downloader/u14$b;->f(Lcom/shabakaty/downloader/hx4;)Lcom/shabakaty/downloader/u14$b;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/shabakaty/downloader/jf3;->t:Lcom/shabakaty/downloader/o90$a;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/shabakaty/downloader/qv;

    .line 4
    iget-object v4, v1, Lcom/shabakaty/downloader/if3;->n:Lcom/shabakaty/downloader/hp0;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/shabakaty/downloader/hp0;->a()V

    .line 6
    :cond_0
    new-instance v4, Lcom/shabakaty/downloader/mi4;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/cx4;->a()Lcom/shabakaty/downloader/vt;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v12, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    invoke-direct {v4, v2, v6, v8}, Lcom/shabakaty/downloader/mi4;-><init>(Landroid/util/Size;Lcom/shabakaty/downloader/vt;Z)V

    .line 7
    iput-object v4, v1, Lcom/shabakaty/downloader/if3;->o:Lcom/shabakaty/downloader/mi4;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/if3;->r()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/if3;->s()V

    goto :goto_1

    .line 10
    :cond_2
    iput-boolean v7, v1, Lcom/shabakaty/downloader/if3;->p:Z

    :goto_1
    if-eqz v12, :cond_4

    .line 11
    new-instance v11, Lcom/shabakaty/downloader/xv$a;

    invoke-direct {v11}, Lcom/shabakaty/downloader/xv$a;-><init>()V

    .line 12
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "CameraX-preview_processing"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 14
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 15
    new-instance v13, Lcom/shabakaty/downloader/eg3;

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/jf3;->i()I

    move-result v9

    new-instance v10, Landroid/os/Handler;

    .line 19
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v10, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    iget-object v4, v4, Lcom/shabakaty/downloader/mi4;->h:Lcom/shabakaty/downloader/hp0;

    move-object v6, v13

    move-object v15, v13

    move-object v13, v4

    move-object v4, v14

    .line 21
    invoke-direct/range {v6 .. v14}, Lcom/shabakaty/downloader/eg3;-><init>(IIILandroid/os/Handler;Lcom/shabakaty/downloader/xv;Lcom/shabakaty/downloader/qv;Lcom/shabakaty/downloader/hp0;Ljava/lang/String;)V

    .line 22
    iget-object v6, v15, Lcom/shabakaty/downloader/eg3;->i:Ljava/lang/Object;

    monitor-enter v6

    .line 23
    :try_start_0
    iget-boolean v7, v15, Lcom/shabakaty/downloader/eg3;->k:Z

    if-nez v7, :cond_3

    .line 24
    iget-object v7, v15, Lcom/shabakaty/downloader/eg3;->q:Lcom/shabakaty/downloader/ps;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/u14$b;->a(Lcom/shabakaty/downloader/ps;)V

    .line 26
    invoke-virtual {v15}, Lcom/shabakaty/downloader/hp0;->d()Lcom/shabakaty/downloader/pi2;

    move-result-object v6

    new-instance v7, Lcom/shabakaty/downloader/hf3;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8}, Lcom/shabakaty/downloader/hf3;-><init>(Landroid/os/HandlerThread;I)V

    .line 27
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 28
    invoke-interface {v6, v7, v5}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 29
    iput-object v15, v1, Lcom/shabakaty/downloader/if3;->n:Lcom/shabakaty/downloader/hp0;

    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 31
    iget-object v6, v3, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 32
    iget-object v6, v6, Lcom/shabakaty/downloader/pv$a;->f:Lcom/shabakaty/downloader/ew2;

    .line 33
    iget-object v6, v6, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 34
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ProcessingSurface already released!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 35
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 36
    :cond_4
    sget-object v6, Lcom/shabakaty/downloader/jf3;->s:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {v0, v6, v5}, Lcom/shabakaty/downloader/jn3;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/yy1;

    if-eqz v5, :cond_5

    .line 37
    new-instance v6, Lcom/shabakaty/downloader/if3$a;

    invoke-direct {v6, v1, v5}, Lcom/shabakaty/downloader/if3$a;-><init>(Lcom/shabakaty/downloader/if3;Lcom/shabakaty/downloader/yy1;)V

    .line 38
    iget-object v5, v3, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/pv$a;->b(Lcom/shabakaty/downloader/ps;)V

    .line 39
    iget-object v5, v3, Lcom/shabakaty/downloader/u14$a;->f:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_5
    iget-object v4, v4, Lcom/shabakaty/downloader/mi4;->h:Lcom/shabakaty/downloader/hp0;

    .line 41
    iput-object v4, v1, Lcom/shabakaty/downloader/if3;->n:Lcom/shabakaty/downloader/hp0;

    .line 42
    :goto_2
    iget-object v4, v1, Lcom/shabakaty/downloader/if3;->n:Lcom/shabakaty/downloader/hp0;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/u14$b;->d(Lcom/shabakaty/downloader/hp0;)V

    .line 43
    new-instance v4, Lcom/shabakaty/downloader/ey1;

    move-object/from16 v5, p1

    invoke-direct {v4, v1, v5, v0, v2}, Lcom/shabakaty/downloader/ey1;-><init>(Lcom/shabakaty/downloader/if3;Ljava/lang/String;Lcom/shabakaty/downloader/jf3;Landroid/util/Size;)V

    .line 44
    iget-object v0, v3, Lcom/shabakaty/downloader/u14$a;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public final r()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/if3;->o:Lcom/shabakaty/downloader/mi4;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/if3;->l:Lcom/shabakaty/downloader/if3$d;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/if3;->m:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/shabakaty/downloader/or;

    invoke-direct {v3, v1, v0}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/if3$d;Lcom/shabakaty/downloader/mi4;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->a()Lcom/shabakaty/downloader/vt;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/if3;->l:Lcom/shabakaty/downloader/if3$d;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/if3;->q:Landroid/util/Size;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/cx4;->i:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v3, v4, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/if3;->o:Lcom/shabakaty/downloader/mi4;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/vt;->l()Lcom/shabakaty/downloader/tt;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    check-cast v1, Lcom/shabakaty/downloader/dz1;

    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/dz1;->v(I)I

    move-result v1

    .line 9
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/st;->e(I)I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    check-cast v1, Lcom/shabakaty/downloader/dz1;

    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/dz1;->v(I)I

    move-result v1

    .line 11
    new-instance v5, Lcom/shabakaty/downloader/yh;

    invoke-direct {v5, v3, v0, v1}, Lcom/shabakaty/downloader/yh;-><init>(Landroid/graphics/Rect;II)V

    .line 12
    iput-object v5, v2, Lcom/shabakaty/downloader/mi4;->i:Lcom/shabakaty/downloader/mi4$g;

    .line 13
    iget-object v0, v2, Lcom/shabakaty/downloader/mi4;->j:Lcom/shabakaty/downloader/mi4$h;

    if-eqz v0, :cond_2

    .line 14
    iget-object v1, v2, Lcom/shabakaty/downloader/mi4;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/li4;

    invoke-direct {v2, v0, v5, v4}, Lcom/shabakaty/downloader/li4;-><init>(Lcom/shabakaty/downloader/mi4$h;Lcom/shabakaty/downloader/mi4$g;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Preview:"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
