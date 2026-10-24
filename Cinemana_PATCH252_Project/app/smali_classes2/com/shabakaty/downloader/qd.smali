.class public Lcom/shabakaty/downloader/qd;
.super Lcom/shabakaty/downloader/on4;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qd$b;,
        Lcom/shabakaty/downloader/qd$a;
    }
.end annotation


# static fields
.field public static final h:J

.field public static final i:J

.field public static j:Lcom/shabakaty/downloader/qd;

.field public static final k:Lcom/shabakaty/downloader/qd$a;


# instance fields
.field public e:Z

.field public f:Lcom/shabakaty/downloader/qd;

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/qd$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/qd$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/qd;->k:Lcom/shabakaty/downloader/qd$a;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/shabakaty/downloader/qd;->h:J

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/shabakaty/downloader/qd;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/on4;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qd;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/on4;->c:J

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/on4;->a:Z

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/qd;->e:Z

    .line 5
    const-class v1, Lcom/shabakaty/downloader/qd;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-object v4, Lcom/shabakaty/downloader/qd;->j:Lcom/shabakaty/downloader/qd;

    if-nez v4, :cond_1

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/qd;

    invoke-direct {v4}, Lcom/shabakaty/downloader/qd;-><init>()V

    .line 9
    sput-object v4, Lcom/shabakaty/downloader/qd;->j:Lcom/shabakaty/downloader/qd;

    .line 10
    new-instance v4, Lcom/shabakaty/downloader/qd$b;

    invoke-direct {v4}, Lcom/shabakaty/downloader/qd$b;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 11
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/on4;->c()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 13
    iput-wide v2, p0, Lcom/shabakaty/downloader/qd;->g:J

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    add-long/2addr v2, v4

    .line 14
    iput-wide v2, p0, Lcom/shabakaty/downloader/qd;->g:J

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/on4;->c()J

    move-result-wide v2

    .line 16
    iput-wide v2, p0, Lcom/shabakaty/downloader/qd;->g:J

    .line 17
    :goto_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/qd;->g:J

    sub-long/2addr v2, v4

    .line 18
    sget-object v0, Lcom/shabakaty/downloader/qd;->j:Lcom/shabakaty/downloader/qd;

    .line 19
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 20
    :goto_1
    iget-object v6, v0, Lcom/shabakaty/downloader/qd;->f:Lcom/shabakaty/downloader/qd;

    if-eqz v6, :cond_5

    .line 21
    invoke-static {v6}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 22
    iget-wide v6, v6, Lcom/shabakaty/downloader/qd;->g:J

    sub-long/2addr v6, v4

    cmp-long v8, v2, v6

    if-gez v8, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    iget-object v0, v0, Lcom/shabakaty/downloader/qd;->f:Lcom/shabakaty/downloader/qd;

    .line 24
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/shabakaty/downloader/qd;->f:Lcom/shabakaty/downloader/qd;

    .line 26
    iput-object v2, p0, Lcom/shabakaty/downloader/qd;->f:Lcom/shabakaty/downloader/qd;

    .line 27
    iput-object p0, v0, Lcom/shabakaty/downloader/qd;->f:Lcom/shabakaty/downloader/qd;

    .line 28
    sget-object v2, Lcom/shabakaty/downloader/qd;->j:Lcom/shabakaty/downloader/qd;

    if-ne v0, v2, :cond_6

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_6
    monitor-exit v1

    return-void

    .line 31
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 32
    monitor-exit v1

    throw v0

    :cond_8
    const-string v0, "Unbalanced enter/exit"

    .line 33
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final i()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qd;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/qd;->e:Z

    .line 3
    const-class v0, Lcom/shabakaty/downloader/qd;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v2, Lcom/shabakaty/downloader/qd;->j:Lcom/shabakaty/downloader/qd;

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    iget-object v3, v2, Lcom/shabakaty/downloader/qd;->f:Lcom/shabakaty/downloader/qd;

    if-ne v3, p0, :cond_1

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/qd;->f:Lcom/shabakaty/downloader/qd;

    .line 8
    iput-object v3, v2, Lcom/shabakaty/downloader/qd;->f:Lcom/shabakaty/downloader/qd;

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/shabakaty/downloader/qd;->f:Lcom/shabakaty/downloader/qd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    goto :goto_1

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 11
    monitor-exit v0

    :goto_1
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method
