.class public final Lcom/shabakaty/downloader/z32$b;
.super Lcom/shabakaty/downloader/wx3$c;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/z32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/c90;

.field public final s:Lcom/shabakaty/downloader/z32$a;

.field public final t:Lcom/shabakaty/downloader/z32$c;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z32$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wx3$c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/z32$b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/z32$b;->s:Lcom/shabakaty/downloader/z32$a;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/c90;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c90;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/z32$b;->r:Lcom/shabakaty/downloader/c90;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/z32$a;->t:Lcom/shabakaty/downloader/c90;

    .line 6
    iget-boolean v0, v0, Lcom/shabakaty/downloader/c90;->s:Z

    if-eqz v0, :cond_0

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/z32;->h:Lcom/shabakaty/downloader/z32$c;

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/z32$a;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/z32$a;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/z32$c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/z32$c;

    iget-object v1, p1, Lcom/shabakaty/downloader/z32$a;->w:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/z32$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/z32$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/c90;->b(Lcom/shabakaty/downloader/mu0;)Z

    :goto_0
    move-object p1, v0

    .line 12
    :goto_1
    iput-object p1, p0, Lcom/shabakaty/downloader/z32$b;->t:Lcom/shabakaty/downloader/z32$c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z32$b;->r:Lcom/shabakaty/downloader/c90;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/c90;->s:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/z32$b;->t:Lcom/shabakaty/downloader/z32$c;

    iget-object v5, p0, Lcom/shabakaty/downloader/z32$b;->r:Lcom/shabakaty/downloader/c90;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/hz2;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/nu0;)Lcom/shabakaty/downloader/ux3;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z32$b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/z32$b;->r:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/c90;->h()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/z32$b;->s:Lcom/shabakaty/downloader/z32$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/z32$b;->t:Lcom/shabakaty/downloader/z32$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 5
    iget-wide v4, v0, Lcom/shabakaty/downloader/z32$a;->r:J

    add-long/2addr v2, v4

    .line 6
    iput-wide v2, v1, Lcom/shabakaty/downloader/z32$c;->t:J

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/z32$a;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z32$b;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
