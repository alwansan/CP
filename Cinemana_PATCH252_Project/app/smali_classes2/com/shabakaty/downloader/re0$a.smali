.class public final Lcom/shabakaty/downloader/re0$a;
.super Ljava/lang/Thread;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/re0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic y:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field public final r:Lcom/shabakaty/downloader/z75;

.field public s:I

.field public t:J

.field public u:J

.field public v:I

.field public w:Z

.field public volatile synthetic workerCtl:I

.field public final synthetic x:Lcom/shabakaty/downloader/re0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/re0$a;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/re0$a;->y:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/re0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/z75;

    invoke-direct {p1}, Lcom/shabakaty/downloader/z75;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/re0$a;->r:Lcom/shabakaty/downloader/z75;

    const/4 p1, 0x4

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/re0$a;->workerCtl:I

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/re0;->B:Lcom/shabakaty/downloader/j61;

    iput-object p1, p0, Lcom/shabakaty/downloader/re0$a;->nextParkedWorker:Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/om3;->r:Lcom/shabakaty/downloader/om3$a;

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/om3;->s:Lcom/shabakaty/downloader/om3;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/om3;->a()I

    move-result p1

    .line 10
    iput p1, p0, Lcom/shabakaty/downloader/re0$a;->v:I

    .line 11
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/re0$a;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/shabakaty/downloader/vk4;
    .locals 9

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    .line 3
    :cond_1
    iget-wide v5, v0, Lcom/shabakaty/downloader/re0;->controlState:J

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shr-long/2addr v3, v7

    long-to-int v4, v3

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/re0;->z:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    iput v2, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_9

    if-eqz p1, :cond_7

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget p1, p1, Lcom/shabakaty/downloader/re0;->u:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/re0$a;->d(I)I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/re0$a;->e()Lcom/shabakaty/downloader/vk4;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_4

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/re0$a;->r:Lcom/shabakaty/downloader/z75;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z75;->e()Lcom/shabakaty/downloader/vk4;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    if-nez v2, :cond_8

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/re0$a;->e()Lcom/shabakaty/downloader/vk4;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/re0$a;->e()Lcom/shabakaty/downloader/vk4;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 11
    :cond_8
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/re0$a;->i(Z)Lcom/shabakaty/downloader/vk4;

    move-result-object p1

    :goto_4
    return-object p1

    :cond_9
    if-eqz p1, :cond_b

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/re0$a;->r:Lcom/shabakaty/downloader/z75;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z75;->e()Lcom/shabakaty/downloader/vk4;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object p1, p1, Lcom/shabakaty/downloader/re0;->s:Lcom/shabakaty/downloader/hq1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/dk2;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vk4;

    goto :goto_5

    .line 13
    :cond_b
    iget-object p1, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object p1, p1, Lcom/shabakaty/downloader/re0;->s:Lcom/shabakaty/downloader/hq1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/dk2;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vk4;

    :goto_5
    if-eqz p1, :cond_c

    goto :goto_6

    .line 14
    :cond_c
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/re0$a;->i(Z)Lcom/shabakaty/downloader/vk4;

    move-result-object p1

    :goto_6
    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/re0$a;->indexInArray:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/re0$a;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/re0$a;->v:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/re0$a;->v:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 3
    rem-int/2addr v0, p1

    return v0
.end method

.method public final e()Lcom/shabakaty/downloader/vk4;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/re0$a;->d(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v0, v0, Lcom/shabakaty/downloader/re0;->r:Lcom/shabakaty/downloader/hq1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dk2;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vk4;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v0, v0, Lcom/shabakaty/downloader/re0;->s:Lcom/shabakaty/downloader/hq1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dk2;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vk4;

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v0, v0, Lcom/shabakaty/downloader/re0;->s:Lcom/shabakaty/downloader/hq1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dk2;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vk4;

    if-eqz v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v0, v0, Lcom/shabakaty/downloader/re0;->r:Lcom/shabakaty/downloader/hq1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dk2;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vk4;

    return-object v0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v1, v1, Lcom/shabakaty/downloader/re0;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/re0$a;->indexInArray:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/re0$a;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(I)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    .line 3
    sget-object v3, Lcom/shabakaty/downloader/re0;->z:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    :cond_2
    return v1
.end method

.method public final i(Z)Lcom/shabakaty/downloader/vk4;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    .line 2
    iget-wide v1, v1, Lcom/shabakaty/downloader/re0;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/re0$a;->d(I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    :goto_0
    const-wide/16 v10, 0x0

    if-ge v7, v2, :cond_6

    const/4 v12, 0x1

    add-int/2addr v3, v12

    if-le v3, v2, :cond_1

    const/4 v3, 0x1

    .line 4
    :cond_1
    iget-object v12, v0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v12, v12, Lcom/shabakaty/downloader/re0;->t:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v12, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/re0$a;

    if-eqz v12, :cond_5

    if-eq v12, v0, :cond_5

    const-wide/16 v13, -0x1

    if-eqz p1, :cond_2

    .line 5
    iget-object v15, v0, Lcom/shabakaty/downloader/re0$a;->r:Lcom/shabakaty/downloader/z75;

    iget-object v12, v12, Lcom/shabakaty/downloader/re0$a;->r:Lcom/shabakaty/downloader/z75;

    invoke-virtual {v15, v12}, Lcom/shabakaty/downloader/z75;->g(Lcom/shabakaty/downloader/z75;)J

    move-result-wide v15

    move-wide v4, v15

    goto :goto_2

    .line 6
    :cond_2
    iget-object v15, v0, Lcom/shabakaty/downloader/re0$a;->r:Lcom/shabakaty/downloader/z75;

    iget-object v12, v12, Lcom/shabakaty/downloader/re0$a;->r:Lcom/shabakaty/downloader/z75;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v12}, Lcom/shabakaty/downloader/z75;->f()Lcom/shabakaty/downloader/vk4;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v15, v1, v6}, Lcom/shabakaty/downloader/z75;->a(Lcom/shabakaty/downloader/vk4;Z)Lcom/shabakaty/downloader/vk4;

    move-wide/from16 v17, v13

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v15, v12, v6}, Lcom/shabakaty/downloader/z75;->h(Lcom/shabakaty/downloader/z75;Z)J

    move-result-wide v17

    :goto_1
    move-wide/from16 v4, v17

    :goto_2
    cmp-long v1, v4, v13

    if-nez v1, :cond_4

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/re0$a;->r:Lcom/shabakaty/downloader/z75;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/z75;->e()Lcom/shabakaty/downloader/vk4;

    move-result-object v1

    return-object v1

    :cond_4
    cmp-long v1, v4, v10

    if-lez v1, :cond_5

    .line 11
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move-wide v8, v10

    .line 12
    :goto_3
    iput-wide v8, v0, Lcom/shabakaty/downloader/re0$a;->u:J

    const/4 v1, 0x0

    return-object v1
.end method

.method public run()V
    .locals 15

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/re0;->isTerminated()Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_13

    iget v3, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    if-eq v3, v4, :cond_13

    .line 2
    iget-boolean v3, p0, Lcom/shabakaty/downloader/re0$a;->w:Z

    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/re0$a;->a(Z)Lcom/shabakaty/downloader/vk4;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    if-eqz v3, :cond_6

    .line 3
    iput-wide v5, p0, Lcom/shabakaty/downloader/re0$a;->u:J

    const/4 v0, 0x2

    .line 4
    iget-object v1, v3, Lcom/shabakaty/downloader/vk4;->s:Lcom/shabakaty/downloader/al4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/al4;->e()I

    move-result v1

    .line 5
    iput-wide v5, p0, Lcom/shabakaty/downloader/re0$a;->t:J

    .line 6
    iget v2, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    if-ne v2, v7, :cond_2

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/re0$a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/re0;->k()V

    .line 10
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/re0;->j(Lcom/shabakaty/downloader/vk4;)V

    if-nez v1, :cond_5

    goto :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/re0;->z:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v2, -0x200000

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 13
    iget v0, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    goto :goto_0

    .line 15
    :cond_6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/re0$a;->w:Z

    .line 16
    iget-wide v8, p0, Lcom/shabakaty/downloader/re0$a;->u:J

    cmp-long v3, v8, v5

    if-eqz v3, :cond_8

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p0, v7}, Lcom/shabakaty/downloader/re0$a;->h(I)Z

    .line 18
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 19
    iget-wide v0, p0, Lcom/shabakaty/downloader/re0$a;->u:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 20
    iput-wide v5, p0, Lcom/shabakaty/downloader/re0$a;->u:J

    goto :goto_0

    .line 21
    :cond_8
    iget-object v3, p0, Lcom/shabakaty/downloader/re0$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v8, Lcom/shabakaty/downloader/re0;->B:Lcom/shabakaty/downloader/j61;

    if-eq v3, v8, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_a

    .line 22
    iget-object v3, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v3, p0}, Lcom/shabakaty/downloader/re0;->f(Lcom/shabakaty/downloader/re0$a;)Z

    goto :goto_1

    :cond_a
    const/4 v3, -0x1

    .line 23
    iput v3, p0, Lcom/shabakaty/downloader/re0$a;->workerCtl:I

    .line 24
    :cond_b
    :goto_4
    iget-object v8, p0, Lcom/shabakaty/downloader/re0$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v9, Lcom/shabakaty/downloader/re0;->B:Lcom/shabakaty/downloader/j61;

    if-eq v8, v9, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_1

    .line 25
    iget v8, p0, Lcom/shabakaty/downloader/re0$a;->workerCtl:I

    if-ne v8, v3, :cond_1

    .line 26
    iget-object v8, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/re0;->isTerminated()Z

    move-result v8

    if-nez v8, :cond_1

    iget v8, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    if-ne v8, v4, :cond_d

    goto/16 :goto_1

    .line 27
    :cond_d
    invoke-virtual {p0, v7}, Lcom/shabakaty/downloader/re0$a;->h(I)Z

    .line 28
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 29
    iget-wide v8, p0, Lcom/shabakaty/downloader/re0$a;->t:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-wide v10, v10, Lcom/shabakaty/downloader/re0;->w:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/shabakaty/downloader/re0$a;->t:J

    .line 30
    :cond_e
    iget-object v8, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-wide v8, v8, Lcom/shabakaty/downloader/re0;->w:J

    invoke-static {v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/shabakaty/downloader/re0$a;->t:J

    sub-long/2addr v8, v10

    cmp-long v10, v8, v5

    if-ltz v10, :cond_b

    .line 32
    iput-wide v5, p0, Lcom/shabakaty/downloader/re0$a;->t:J

    .line 33
    iget-object v8, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v8, v8, Lcom/shabakaty/downloader/re0;->t:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 34
    monitor-enter v8

    .line 35
    :try_start_0
    iget-object v9, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/re0;->isTerminated()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_f

    monitor-exit v8

    goto :goto_4

    .line 36
    :cond_f
    :try_start_1
    iget-object v9, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    .line 37
    iget-wide v9, v9, Lcom/shabakaty/downloader/re0;->controlState:J

    const-wide/32 v11, 0x1fffff

    and-long/2addr v9, v11

    long-to-int v10, v9

    .line 38
    iget-object v9, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget v9, v9, Lcom/shabakaty/downloader/re0;->u:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v10, v9, :cond_10

    monitor-exit v8

    goto :goto_4

    .line 39
    :cond_10
    :try_start_2
    sget-object v9, Lcom/shabakaty/downloader/re0$a;->y:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v9, p0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_11

    monitor-exit v8

    goto :goto_4

    .line 40
    :cond_11
    :try_start_3
    iget v9, p0, Lcom/shabakaty/downloader/re0$a;->indexInArray:I

    .line 41
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/re0$a;->f(I)V

    .line 42
    iget-object v10, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v10, p0, v9, v0}, Lcom/shabakaty/downloader/re0;->g(Lcom/shabakaty/downloader/re0$a;II)V

    .line 43
    iget-object v10, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    .line 44
    sget-object v13, Lcom/shabakaty/downloader/re0;->z:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v13, v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v13

    and-long v10, v13, v11

    long-to-int v11, v10

    if-eq v11, v9, :cond_12

    .line 45
    iget-object v10, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v10, v10, Lcom/shabakaty/downloader/re0;->t:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v10, Lcom/shabakaty/downloader/re0$a;

    .line 46
    iget-object v12, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v12, v12, Lcom/shabakaty/downloader/re0;->t:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v12, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 47
    invoke-virtual {v10, v9}, Lcom/shabakaty/downloader/re0$a;->f(I)V

    .line 48
    iget-object v12, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    invoke-virtual {v12, v10, v11, v9}, Lcom/shabakaty/downloader/re0;->g(Lcom/shabakaty/downloader/re0$a;II)V

    .line 49
    :cond_12
    iget-object v9, p0, Lcom/shabakaty/downloader/re0$a;->x:Lcom/shabakaty/downloader/re0;

    iget-object v9, v9, Lcom/shabakaty/downloader/re0;->t:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    monitor-exit v8

    .line 51
    iput v4, p0, Lcom/shabakaty/downloader/re0$a;->s:I

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    .line 52
    monitor-exit v8

    throw v0

    .line 53
    :cond_13
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/re0$a;->h(I)Z

    return-void
.end method
