.class public final Lcom/shabakaty/downloader/gl4;
.super Ljava/lang/Object;
.source "TaskQueue.kt"


# instance fields
.field public a:Z

.field public b:Lcom/shabakaty/downloader/wk4;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wk4;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Lcom/shabakaty/downloader/il4;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/il4;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gl4;->e:Lcom/shabakaty/downloader/il4;

    iput-object p2, p0, Lcom/shabakaty/downloader/gl4;->f:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic d(Lcom/shabakaty/downloader/gl4;Lcom/shabakaty/downloader/wk4;JI)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gl4;->e:Lcom/shabakaty/downloader/il4;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gl4;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/gl4;->e:Lcom/shabakaty/downloader/il4;

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/il4;->e(Lcom/shabakaty/downloader/gl4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gl4;->b:Lcom/shabakaty/downloader/wk4;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/wk4;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/shabakaty/downloader/gl4;->d:Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_3

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/wk4;

    .line 6
    iget-boolean v3, v3, Lcom/shabakaty/downloader/wk4;->d:Z

    if-eqz v3, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wk4;

    .line 8
    sget-object v3, Lcom/shabakaty/downloader/il4;->j:Lcom/shabakaty/downloader/il4$b;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v3, Lcom/shabakaty/downloader/il4;->i:Ljava/util/logging/Logger;

    .line 10
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "canceled"

    .line 11
    invoke-static {v0, p0, v3}, Lcom/shabakaty/downloader/nh3;->d(Lcom/shabakaty/downloader/wk4;Lcom/shabakaty/downloader/gl4;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final c(Lcom/shabakaty/downloader/wk4;J)V
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gl4;->e:Lcom/shabakaty/downloader/il4;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gl4;->a:Z

    if-eqz v1, :cond_3

    .line 3
    iget-boolean p2, p1, Lcom/shabakaty/downloader/wk4;->d:Z

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Lcom/shabakaty/downloader/il4;->j:Lcom/shabakaty/downloader/il4$b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p2, Lcom/shabakaty/downloader/il4;->i:Ljava/util/logging/Logger;

    .line 6
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "schedule canceled (queue is shutdown)"

    .line 7
    invoke-static {p1, p0, p2}, Lcom/shabakaty/downloader/nh3;->d(Lcom/shabakaty/downloader/wk4;Lcom/shabakaty/downloader/gl4;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    :try_start_1
    sget-object p2, Lcom/shabakaty/downloader/il4;->j:Lcom/shabakaty/downloader/il4$b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/il4;->i:Ljava/util/logging/Logger;

    .line 11
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "schedule failed (queue is shutdown)"

    .line 12
    invoke-static {p1, p0, p2}, Lcom/shabakaty/downloader/nh3;->d(Lcom/shabakaty/downloader/wk4;Lcom/shabakaty/downloader/gl4;Ljava/lang/String;)V

    .line 13
    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1

    :cond_3
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/shabakaty/downloader/gl4;->e(Lcom/shabakaty/downloader/wk4;JZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/gl4;->e:Lcom/shabakaty/downloader/il4;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/il4;->e(Lcom/shabakaty/downloader/gl4;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final e(Lcom/shabakaty/downloader/wk4;JZ)Z
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/wk4;->a:Lcom/shabakaty/downloader/gl4;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_c

    .line 2
    iput-object p0, p1, Lcom/shabakaty/downloader/wk4;->a:Lcom/shabakaty/downloader/gl4;

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/gl4;->e:Lcom/shabakaty/downloader/il4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/il4;->g:Lcom/shabakaty/downloader/il4$a;

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/il4$a;->c()J

    move-result-wide v3

    add-long v5, v3, p2

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_4

    .line 7
    iget-wide v8, p1, Lcom/shabakaty/downloader/wk4;->b:J

    cmp-long v10, v8, v5

    if-gtz v10, :cond_3

    .line 8
    sget-object p2, Lcom/shabakaty/downloader/il4;->j:Lcom/shabakaty/downloader/il4$b;

    .line 9
    sget-object p2, Lcom/shabakaty/downloader/il4;->i:Ljava/util/logging/Logger;

    .line 10
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "already scheduled"

    .line 11
    invoke-static {p1, p0, p2}, Lcom/shabakaty/downloader/nh3;->d(Lcom/shabakaty/downloader/wk4;Lcom/shabakaty/downloader/gl4;Ljava/lang/String;)V

    :cond_2
    return v2

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    :cond_4
    iput-wide v5, p1, Lcom/shabakaty/downloader/wk4;->b:J

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/il4;->j:Lcom/shabakaty/downloader/il4$b;

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/il4;->i:Ljava/util/logging/Logger;

    .line 16
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    const-string p4, "run again after "

    .line 17
    invoke-static {p4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/nh3;->k(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_5
    const-string p4, "scheduled after "

    .line 18
    invoke-static {p4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/nh3;->k(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 19
    :goto_2
    invoke-static {p1, p0, p4}, Lcom/shabakaty/downloader/nh3;->d(Lcom/shabakaty/downloader/wk4;Lcom/shabakaty/downloader/gl4;Ljava/lang/String;)V

    .line 20
    :cond_6
    iget-object p4, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    .line 21
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Lcom/shabakaty/downloader/wk4;

    .line 23
    iget-wide v5, v2, Lcom/shabakaty/downloader/wk4;->b:J

    sub-long/2addr v5, v3

    cmp-long v2, v5, p2

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, -0x1

    :goto_5
    if-ne v0, v7, :cond_a

    .line 24
    iget-object p2, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 25
    :cond_a
    iget-object p2, p0, Lcom/shabakaty/downloader/gl4;->c:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    return v1

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "task is in multiple queues"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gl4;->e:Lcom/shabakaty/downloader/il4;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/gl4;->a:Z

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gl4;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/gl4;->e:Lcom/shabakaty/downloader/il4;

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/il4;->e(Lcom/shabakaty/downloader/gl4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gl4;->f:Ljava/lang/String;

    return-object v0
.end method
