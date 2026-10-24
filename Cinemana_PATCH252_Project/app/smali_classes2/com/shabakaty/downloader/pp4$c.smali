.class public final Lcom/shabakaty/downloader/pp4$c;
.super Lcom/shabakaty/downloader/wx3$c;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pp4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pp4$c$a;
    }
.end annotation


# instance fields
.field public final r:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/shabakaty/downloader/pp4$b;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final t:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wx3$c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/pp4$c;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/pp4$c;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/pp4$c;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/wx3$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/pp4$c;->e(Ljava/lang/Runnable;J)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/wx3$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr p2, v0

    .line 2
    new-instance p4, Lcom/shabakaty/downloader/pp4$a;

    invoke-direct {p4, p1, p0, p2, p3}, Lcom/shabakaty/downloader/pp4$a;-><init>(Ljava/lang/Runnable;Lcom/shabakaty/downloader/pp4$c;J)V

    invoke-virtual {p0, p4, p2, p3}, Lcom/shabakaty/downloader/pp4$c;->e(Ljava/lang/Runnable;J)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Runnable;J)Lcom/shabakaty/downloader/mu0;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/pp4$c;->u:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/pp4$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lcom/shabakaty/downloader/pp4$c;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    invoke-direct {v1, p1, p2, p3}, Lcom/shabakaty/downloader/pp4$b;-><init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/pp4$c;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/pp4$c;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/shabakaty/downloader/pp4$c;->u:Z

    if-eqz p2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/pp4$c;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    return-object v0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/pp4$c;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/pp4$b;

    if-nez p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/pp4$c;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 9
    :cond_3
    iget-boolean p3, p2, Lcom/shabakaty/downloader/pp4$b;->u:Z

    if-nez p3, :cond_1

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/pp4$b;->r:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 11
    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/pp4$c$a;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/pp4$c$a;-><init>(Lcom/shabakaty/downloader/pp4$c;Lcom/shabakaty/downloader/pp4$b;)V

    .line 12
    new-instance p2, Lcom/shabakaty/downloader/jv3;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/jv3;-><init>(Ljava/lang/Runnable;)V

    return-object p2
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/pp4$c;->u:Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pp4$c;->u:Z

    return v0
.end method
