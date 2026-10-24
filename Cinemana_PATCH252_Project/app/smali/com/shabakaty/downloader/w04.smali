.class public final Lcom/shabakaty/downloader/w04;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/w04$b;
    }
.end annotation


# instance fields
.field public final r:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/concurrent/Executor;

.field public final t:Lcom/shabakaty/downloader/w04$b;

.field public u:I

.field public v:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/w04;->r:Ljava/util/Deque;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/w04$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/w04$b;-><init>(Lcom/shabakaty/downloader/w04;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/w04;->t:Lcom/shabakaty/downloader/w04$b;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/w04;->u:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/shabakaty/downloader/w04;->v:J

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/w04;->s:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w04;->r:Ljava/util/Deque;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/w04;->u:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-wide v3, p0, Lcom/shabakaty/downloader/w04;->v:J

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/w04$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/w04$a;-><init>(Lcom/shabakaty/downloader/w04;Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/w04;->r:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/shabakaty/downloader/w04;->u:I

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 9
    :try_start_1
    iget-object v6, p0, Lcom/shabakaty/downloader/w04;->s:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/shabakaty/downloader/w04;->t:Lcom/shabakaty/downloader/w04$b;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    iget v1, p0, Lcom/shabakaty/downloader/w04;->u:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 11
    :cond_2
    iget-object v6, p0, Lcom/shabakaty/downloader/w04;->r:Ljava/util/Deque;

    monitor-enter v6

    .line 12
    :try_start_2
    iget-wide v0, p0, Lcom/shabakaty/downloader/w04;->v:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget v0, p0, Lcom/shabakaty/downloader/w04;->u:I

    if-ne v0, p1, :cond_3

    .line 13
    iput v2, p0, Lcom/shabakaty/downloader/w04;->u:I

    .line 14
    :cond_3
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/w04;->r:Ljava/util/Deque;

    monitor-enter v3

    .line 16
    :try_start_3
    iget v4, p0, Lcom/shabakaty/downloader/w04;->u:I

    if-eq v4, v5, :cond_4

    if-ne v4, p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/w04;->r:Ljava/util/Deque;

    .line 17
    invoke-interface {p1, v1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 18
    :cond_5
    instance-of p1, v2, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz p1, :cond_6

    if-nez v0, :cond_6

    .line 19
    monitor-exit v3

    return-void

    .line 20
    :cond_6
    throw v2

    :catchall_1
    move-exception p1

    .line 21
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 22
    :cond_7
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/shabakaty/downloader/w04;->r:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
