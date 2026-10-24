.class public Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;
.super Lcom/facebook/fresco/ui/common/BaseControllerListener2;
.source "ImagePerfControllerListener2.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/fresco/ui/common/BaseControllerListener2<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field public static w:Landroid/os/Handler;


# instance fields
.field public final r:Lcom/facebook/common/time/MonotonicClock;

.field public final s:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

.field public final t:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;

.field public final u:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;",
            "Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/ui/common/BaseControllerListener2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->r:Lcom/facebook/common/time/MonotonicClock;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->s:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 4
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->t:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;

    .line 5
    iput-object p4, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->u:Lcom/facebook/common/internal/Supplier;

    .line 6
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->v:Lcom/facebook/common/internal/Supplier;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->r:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->e()Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->b()V

    .line 4
    iput-wide v0, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->i:J

    .line 5
    iput-object p1, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->a:Ljava/lang/String;

    .line 6
    iput-object p2, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->d:Ljava/lang/Object;

    .line 7
    iput-object p3, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->A:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->g(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    const/4 p1, 0x1

    .line 9
    iput p1, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->w:I

    .line 10
    iput-wide v0, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->x:J

    .line 11
    invoke-virtual {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->j(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->r:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->e()Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    move-result-object v2

    .line 3
    iput-object p3, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->A:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 4
    iput-wide v0, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->l:J

    .line 5
    iput-object p1, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->a:Ljava/lang/String;

    .line 6
    iput-object p2, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->u:Ljava/lang/Throwable;

    const/4 p1, 0x5

    .line 7
    invoke-virtual {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->g(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    const/4 p1, 0x2

    .line 8
    iput p1, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->w:I

    .line 9
    iput-wide v0, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->y:J

    .line 10
    invoke-virtual {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->j(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->r:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->e()Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    move-result-object v2

    .line 3
    iput-object p2, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->A:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 4
    iput-object p1, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->a:Ljava/lang/String;

    .line 5
    iget p1, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->v:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    .line 6
    iput-wide v0, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->m:J

    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->g(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    :cond_0
    const/4 p1, 0x2

    .line 8
    iput p1, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->w:I

    .line 9
    iput-wide v0, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->y:J

    .line 10
    invoke-virtual {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->j(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->e()Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->a()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->r:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->e()Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    move-result-object v2

    .line 4
    iput-object p3, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->A:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 5
    iput-wide v0, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->k:J

    .line 6
    iput-wide v0, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->o:J

    .line 7
    iput-object p1, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->a:Ljava/lang/String;

    .line 8
    iput-object p2, v2, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->e:Lcom/facebook/imagepipeline/image/ImageInfo;

    const/4 p1, 0x3

    .line 9
    invoke-virtual {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->g(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    return-void
.end method

.method public final e()Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->v:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    invoke-direct {v0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->s:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    :goto_0
    return-object v0
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->u:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->w:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->w:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    monitor-exit p0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImagePerfControllerListener2Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 8
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->t:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;

    invoke-direct {v2, v1, v3}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;-><init>(Landroid/os/Looper;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;)V

    sput-object v2, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->w:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    return v0
.end method

.method public final g(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->w:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 7
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->w:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->t:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->b(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    :goto_0
    return-void
.end method

.method public final j(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->w:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 7
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->w:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;->t:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    :goto_0
    return-void
.end method
