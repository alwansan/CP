.class public final Lcom/shabakaty/downloader/eg3;
.super Lcom/shabakaty/downloader/hp0;
.source "ProcessingSurface.java"


# instance fields
.field public final i:Ljava/lang/Object;

.field public final j:Lcom/shabakaty/downloader/gz1$a;

.field public k:Z

.field public final l:Lcom/shabakaty/downloader/xs2;

.field public final m:Landroid/view/Surface;

.field public final n:Landroid/os/Handler;

.field public final o:Lcom/shabakaty/downloader/xv;

.field public final p:Lcom/shabakaty/downloader/qv;

.field public final q:Lcom/shabakaty/downloader/ps;

.field public final r:Lcom/shabakaty/downloader/hp0;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILandroid/os/Handler;Lcom/shabakaty/downloader/xv;Lcom/shabakaty/downloader/qv;Lcom/shabakaty/downloader/hp0;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/hp0;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/eg3;->i:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ws2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ws2;-><init>(Lcom/shabakaty/downloader/eg3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/eg3;->j:Lcom/shabakaty/downloader/gz1$a;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/eg3;->k:Z

    .line 5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/eg3;->n:Landroid/os/Handler;

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/ds1;

    invoke-direct {v2, p4}, Lcom/shabakaty/downloader/ds1;-><init>(Landroid/os/Handler;)V

    .line 8
    new-instance p4, Lcom/shabakaty/downloader/xs2;

    const/4 v3, 0x2

    invoke-direct {p4, p1, p2, p3, v3}, Lcom/shabakaty/downloader/xs2;-><init>(IIII)V

    iput-object p4, p0, Lcom/shabakaty/downloader/eg3;->l:Lcom/shabakaty/downloader/xs2;

    .line 9
    invoke-virtual {p4, v0, v2}, Lcom/shabakaty/downloader/xs2;->e(Lcom/shabakaty/downloader/gz1$a;Ljava/util/concurrent/Executor;)V

    .line 10
    invoke-virtual {p4}, Lcom/shabakaty/downloader/xs2;->a()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/eg3;->m:Landroid/view/Surface;

    .line 11
    iget-object p1, p4, Lcom/shabakaty/downloader/xs2;->b:Lcom/shabakaty/downloader/ps;

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/eg3;->q:Lcom/shabakaty/downloader/ps;

    .line 13
    iput-object p6, p0, Lcom/shabakaty/downloader/eg3;->p:Lcom/shabakaty/downloader/qv;

    .line 14
    invoke-interface {p6, v1}, Lcom/shabakaty/downloader/qv;->b(Landroid/util/Size;)V

    .line 15
    iput-object p5, p0, Lcom/shabakaty/downloader/eg3;->o:Lcom/shabakaty/downloader/xv;

    .line 16
    iput-object p7, p0, Lcom/shabakaty/downloader/eg3;->r:Lcom/shabakaty/downloader/hp0;

    .line 17
    iput-object p8, p0, Lcom/shabakaty/downloader/eg3;->s:Ljava/lang/String;

    .line 18
    invoke-virtual {p7}, Lcom/shabakaty/downloader/hp0;->c()Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/eg3$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/eg3$a;-><init>(Lcom/shabakaty/downloader/eg3;)V

    .line 19
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 20
    new-instance p4, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {p4, p1, p2}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {p1, p4, p3}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hp0;->d()Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/rr;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/eg3;)V

    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public g()Lcom/shabakaty/downloader/pi2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/pi2<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eg3;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/eg3;->m:Landroid/view/Surface;

    invoke-static {v1}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h(Lcom/shabakaty/downloader/gz1;)V
    .locals 5

    const-string v0, "ProcessingSurfaceTextur"

    .line 1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/eg3;->k:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/gz1;->g()Lcom/shabakaty/downloader/fz1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Failed to acquire next image."

    .line 3
    invoke-static {v0, v2, p1}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->N0()Lcom/shabakaty/downloader/xy1;

    move-result-object v2

    if-nez v2, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->close()V

    return-void

    .line 6
    :cond_2
    invoke-interface {v2}, Lcom/shabakaty/downloader/xy1;->a()Lcom/shabakaty/downloader/lk4;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/eg3;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/lk4;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->close()V

    return-void

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/shabakaty/downloader/eg3;->o:Lcom/shabakaty/downloader/xv;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageProxyBundle does not contain this id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/vk2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->close()V

    goto :goto_1

    .line 12
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/u74;

    iget-object v1, p0, Lcom/shabakaty/downloader/eg3;->s:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/u74;-><init>(Lcom/shabakaty/downloader/fz1;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/eg3;->p:Lcom/shabakaty/downloader/qv;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/qv;->c(Lcom/shabakaty/downloader/u74;)V

    .line 14
    iget-object p1, v0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/fz1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->close()V

    :goto_1
    return-void
.end method
