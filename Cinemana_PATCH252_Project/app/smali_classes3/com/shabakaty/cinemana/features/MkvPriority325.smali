.class public final Lcom/shabakaty/cinemana/features/MkvPriority325;
.super Ljava/lang/Object;

# Safely move a *queued* matching task to the front of the one-worker deque.
# ThreadPoolExecutor's worker may already own a task: that task is never moved.
# The deque is unbounded and addFirst cannot reject an ordinary queued task.
.method public static promote(Ljava/util/concurrent/ExecutorService;Ljava/io/File;)Z
    .locals 9
    if-eqz p0, :p325_no
    if-eqz p1, :p325_no
    instance-of v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;
    if-eqz v0, :p325_no
    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;
    move-result-object v1
    instance-of v0, v1, Ljava/util/concurrent/LinkedBlockingDeque;
    if-eqz v0, :p325_no
    check-cast v1, Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->toArray()[Ljava/lang/Object;
    move-result-object v3
    array-length v4, v3
    const/4 v5, 0x0
    :p325_next
    if-ge v5, v4, :p325_no
    aget-object v6, v3, v5
    add-int/lit8 v5, v5, 0x1
    if-eqz v6, :p325_next
    instance-of v7, v6, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;
    if-eqz v7, :p325_normal_job
    check-cast v6, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;
    invoke-virtual {v6}, Lcom/shabakaty/cinemana/features/MkvExporter$Recovered;->sourceForPriority()Ljava/io/File;
    move-result-object v7
    if-eqz v7, :p325_next
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v7
    goto :p325_compare

    :p325_normal_job
    instance-of v7, v6, Lcom/shabakaty/cinemana/features/MkvExporter$2;
    if-eqz v7, :p325_next
    check-cast v6, Lcom/shabakaty/cinemana/features/MkvExporter$2;
    iget-object v7, v6, Lcom/shabakaty/cinemana/features/MkvExporter$2;->val$initialRawPath:Ljava/lang/String;
    if-eqz v7, :p325_next

    :p325_compare
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :p325_next
    # Remove only if the worker has not already taken the task. Never clone it.
    invoke-virtual {v1, v6}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :p325_no
    invoke-virtual {v1, v6}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V
    const/4 v0, 0x1
    return v0

    :p325_no
    const/4 v0, 0x0
    return v0
.end method
