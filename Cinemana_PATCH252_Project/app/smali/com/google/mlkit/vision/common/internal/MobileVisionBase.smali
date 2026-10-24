.class public Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/shabakaty/downloader/qh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DetectionResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Lcom/shabakaty/downloader/qh2;"
    }
.end annotation


# static fields
.field public static final v:Lcom/shabakaty/downloader/lq1;


# instance fields
.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Lcom/shabakaty/downloader/tl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tl2<",
            "TDetectionResultT;",
            "Lcom/shabakaty/downloader/k12;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/rd5;

.field public final u:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lq1;

    const-string v1, "MobileVisionBase"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/lq1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->v:Lcom/shabakaty/downloader/lq1;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tl2;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Lcom/shabakaty/downloader/tl2;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tl2<",
            "TDetectionResultT;",
            "Lcom/shabakaty/downloader/k12;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->s:Lcom/shabakaty/downloader/tl2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/rd5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/rd5;-><init>(I)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->t:Lcom/shabakaty/downloader/rd5;

    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->u:Ljava/util/concurrent/Executor;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/tl2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/yd5;->r:Ljava/util/concurrent/Callable;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/rd5;

    .line 7
    invoke-virtual {p1, p2, v1, v0}, Lcom/shabakaty/downloader/tl2;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/rd5;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/rm5;->r:Lcom/shabakaty/downloader/p63;

    .line 8
    check-cast p1, Lcom/shabakaty/downloader/ye7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/ye7;->b(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/p63;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/h;
        value = .enum Landroidx/lifecycle/e$b;->ON_DESTROY:Landroidx/lifecycle/e$b;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->t:Lcom/shabakaty/downloader/rd5;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/rd5;->a()V

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->s:Lcom/shabakaty/downloader/tl2;

    iget-object v2, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->u:Ljava/util/concurrent/Executor;

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/tl2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->k(Z)V

    iget-object v1, v0, Lcom/shabakaty/downloader/tl2;->a:Lcom/shabakaty/downloader/hl4;

    new-instance v3, Lcom/shabakaty/downloader/zz6;

    .line 5
    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/tl2;)V

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/hl4;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
