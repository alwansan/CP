.class public final Lcom/shabakaty/downloader/mi4;
.super Ljava/lang/Object;
.source "SurfaceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mi4$g;,
        Lcom/shabakaty/downloader/mi4$f;,
        Lcom/shabakaty/downloader/mi4$h;,
        Lcom/shabakaty/downloader/mi4$e;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/Size;

.field public final b:Z

.field public final c:Lcom/shabakaty/downloader/vt;

.field public final d:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/shabakaty/downloader/hp0;

.field public i:Lcom/shabakaty/downloader/mi4$g;

.field public j:Lcom/shabakaty/downloader/mi4$h;

.field public k:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/util/Size;Lcom/shabakaty/downloader/vt;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mi4;->a:Landroid/util/Size;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/mi4;->c:Lcom/shabakaty/downloader/vt;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/mi4;->b:Z

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SurfaceRequest[size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", id: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/ji4;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/shabakaty/downloader/ji4;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;I)V

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ar$a;

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/mi4;->g:Lcom/shabakaty/downloader/ar$a;

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/ji4;

    const/4 v3, 0x1

    invoke-direct {v2, v1, p1, v3}, Lcom/shabakaty/downloader/ji4;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/mi4;->f:Lcom/shabakaty/downloader/pi2;

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/mi4$a;

    invoke-direct {v3, p0, p2, v0}, Lcom/shabakaty/downloader/mi4$a;-><init>(Lcom/shabakaty/downloader/mi4;Lcom/shabakaty/downloader/ar$a;Lcom/shabakaty/downloader/pi2;)V

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {v2, v0, p2}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ar$a;

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 21
    new-instance p3, Lcom/shabakaty/downloader/ji4;

    const/4 v1, 0x2

    invoke-direct {p3, v0, p1, v1}, Lcom/shabakaty/downloader/ji4;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;I)V

    invoke-static {p3}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/mi4;->d:Lcom/shabakaty/downloader/pi2;

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ar$a;

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/shabakaty/downloader/mi4;->e:Lcom/shabakaty/downloader/ar$a;

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/mi4$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/mi4$b;-><init>(Lcom/shabakaty/downloader/mi4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/mi4;->h:Lcom/shabakaty/downloader/hp0;

    .line 26
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hp0;->d()Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/shabakaty/downloader/mi4$c;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/shabakaty/downloader/mi4$c;-><init>(Lcom/shabakaty/downloader/mi4;Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/ar$a;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {p2, p3, v1}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {p3, p2, p1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 30
    new-instance p1, Lcom/shabakaty/downloader/rr;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/mi4;)V

    .line 31
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/yc0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/yc0<",
            "Lcom/shabakaty/downloader/mi4$f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi4;->e:Lcom/shabakaty/downloader/ar$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/mi4;->d:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mi4;->d:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mi4;->d:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ki4;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p1, v1}, Lcom/shabakaty/downloader/ki4;-><init>(Lcom/shabakaty/downloader/yc0;Landroid/view/Surface;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    new-instance v0, Lcom/shabakaty/downloader/ki4;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p1, v1}, Lcom/shabakaty/downloader/ki4;-><init>(Lcom/shabakaty/downloader/yc0;Landroid/view/Surface;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mi4;->f:Lcom/shabakaty/downloader/pi2;

    new-instance v1, Lcom/shabakaty/downloader/mi4$d;

    invoke-direct {v1, p0, p3, p1}, Lcom/shabakaty/downloader/mi4$d;-><init>(Lcom/shabakaty/downloader/mi4;Lcom/shabakaty/downloader/yc0;Landroid/view/Surface;)V

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    return-void
.end method
