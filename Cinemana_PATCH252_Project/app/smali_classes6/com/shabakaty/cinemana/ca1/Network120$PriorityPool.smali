.class final Lcom/shabakaty/cinemana/ca1/Network120$PriorityPool;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "Network120.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Network120;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PriorityPool"
.end annotation


# instance fields
.field final order:Lcom/shabakaty/cinemana/ca1/Network120$Ordering;


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/cinemana/ca1/Network120$PriorityPool;-><init>(ILjava/util/concurrent/ThreadFactory;Lcom/shabakaty/cinemana/ca1/Network120$Ordering;)V

    return-void
.end method

.method constructor <init>(ILjava/util/concurrent/ThreadFactory;Lcom/shabakaty/cinemana/ca1/Network120$Ordering;)V
    .locals 8

    .line 22
    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0x10

    invoke-direct {v6, v0, p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Network120$PriorityPool;->order:Lcom/shabakaty/cinemana/ca1/Network120$Ordering;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Network120$PriorityPool;->allowCoreThreadTimeOut(Z)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Network120$PriorityPool;->order:Lcom/shabakaty/cinemana/ca1/Network120$Ordering;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->ranks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Network120$PriorityPool;->order:Lcom/shabakaty/cinemana/ca1/Network120$Ordering;

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->admit(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Network120$PriorityPool;->order:Lcom/shabakaty/cinemana/ca1/Network120$Ordering;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->ranks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2

    .line 25
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Network120$PriorityPool;->order:Lcom/shabakaty/cinemana/ca1/Network120$Ordering;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Network120$Ordering;->ranks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0
.end method
