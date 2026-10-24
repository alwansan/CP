.class public final Lcom/shabakaty/downloader/u61;
.super Lcom/shabakaty/downloader/t61;
.source "Executors.kt"


# instance fields
.field public final t:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/t61;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/u61;->t:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u61;->M()Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/l90;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    instance-of v2, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p1, :cond_1

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/l90;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 5
    :catchall_0
    :cond_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/t61;->s:Z

    return-void
.end method


# virtual methods
.method public M()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u61;->t:Ljava/util/concurrent/Executor;

    return-object v0
.end method
