.class public Lcom/facebook/imagepipeline/memory/PoolFactory;
.super Ljava/lang/Object;
.source "PoolFactory.java"


# instance fields
.field public final a:Lcom/facebook/imagepipeline/memory/PoolConfig;

.field public b:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

.field public c:Lcom/facebook/imagepipeline/memory/BitmapPool;

.field public d:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

.field public e:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

.field public f:Lcom/facebook/common/memory/PooledByteBufferFactory;

.field public g:Lcom/facebook/common/memory/PooledByteStreams;

.field public h:Lcom/facebook/common/memory/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/PoolConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/BitmapPool;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->c:Lcom/facebook/imagepipeline/memory/BitmapPool;

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 3
    iget-object v0, v0, Lcom/facebook/imagepipeline/memory/PoolConfig;->i:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "dummy_with_tracking"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "experimental"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "legacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "legacy_default_params"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_1

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 6
    iget-object v2, v1, Lcom/facebook/imagepipeline/memory/PoolConfig;->d:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 7
    iget-object v4, v1, Lcom/facebook/imagepipeline/memory/PoolConfig;->a:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 8
    iget-object v1, v1, Lcom/facebook/imagepipeline/memory/PoolConfig;->b:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 9
    invoke-direct {v0, v2, v4, v1, v3}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;Z)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->c:Lcom/facebook/imagepipeline/memory/BitmapPool;

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 11
    iget-object v1, v1, Lcom/facebook/imagepipeline/memory/PoolConfig;->d:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/memory/DefaultBitmapPoolParams;->a()Lcom/facebook/imagepipeline/memory/PoolParams;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 13
    iget-object v4, v4, Lcom/facebook/imagepipeline/memory/PoolConfig;->b:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 14
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;Z)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->c:Lcom/facebook/imagepipeline/memory/BitmapPool;

    goto :goto_1

    .line 15
    :cond_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 17
    iget v1, v1, Lcom/facebook/imagepipeline/memory/PoolConfig;->j:I

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->h()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 19
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 20
    invoke-direct {v0, v3, v1, v2, v4}, Lcom/facebook/imagepipeline/memory/LruBitmapPool;-><init>(IILcom/facebook/imagepipeline/memory/PoolStatsTracker;Lcom/facebook/common/memory/MemoryTrimmableRegistry;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->c:Lcom/facebook/imagepipeline/memory/BitmapPool;

    goto :goto_1

    .line 21
    :cond_3
    new-instance v0, Lcom/facebook/imagepipeline/memory/DummyTrackingInUseBitmapPool;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/DummyTrackingInUseBitmapPool;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->c:Lcom/facebook/imagepipeline/memory/BitmapPool;

    goto :goto_1

    .line 22
    :cond_4
    new-instance v0, Lcom/facebook/imagepipeline/memory/DummyBitmapPool;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/DummyBitmapPool;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->c:Lcom/facebook/imagepipeline/memory/BitmapPool;

    .line 23
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->c:Lcom/facebook/imagepipeline/memory/BitmapPool;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f64eb86 -> :sswitch_4
        -0x41f50c37 -> :sswitch_3
        -0x181d2318 -> :sswitch_2
        -0x17f85147 -> :sswitch_1
        0x5b804a8 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 2
    iget-object v0, v0, Lcom/facebook/imagepipeline/memory/PoolConfig;->c:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 3
    iget v0, v0, Lcom/facebook/imagepipeline/memory/PoolParams;->d:I

    return v0
.end method

.method public c(I)Lcom/facebook/common/memory/PooledByteBufferFactory;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->f:Lcom/facebook/common/memory/PooledByteBufferFactory;

    if-nez v0, :cond_6

    .line 2
    const-class v0, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    const-class v1, Lcom/facebook/imagepipeline/memory/PoolParams;

    const-class v2, Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v7, :cond_2

    if-ne p1, v6, :cond_1

    .line 3
    iget-object v8, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->b:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    if-nez v8, :cond_0

    .line 4
    :try_start_0
    const-class v8, Lcom/facebook/imagepipeline/memory/AshmemMemoryChunkPool;

    new-array v9, v4, [Ljava/lang/Class;

    aput-object v2, v9, v3

    aput-object v1, v9, v7

    aput-object v0, v9, v6

    .line 5
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 7
    iget-object v4, v2, Lcom/facebook/imagepipeline/memory/PoolConfig;->d:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    aput-object v4, v1, v3

    .line 8
    iget-object v3, v2, Lcom/facebook/imagepipeline/memory/PoolConfig;->e:Lcom/facebook/imagepipeline/memory/PoolParams;

    aput-object v3, v1, v7

    .line 9
    iget-object v2, v2, Lcom/facebook/imagepipeline/memory/PoolConfig;->f:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    aput-object v2, v1, v6

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->b:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->b:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 12
    :catch_1
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->b:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 13
    :catch_2
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->b:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 14
    :catch_3
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->b:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_0

    .line 15
    :catch_4
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->b:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->b:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto/16 :goto_3

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid MemoryChunkType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    iget-object v8, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->d:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    if-nez v8, :cond_3

    .line 19
    :try_start_1
    const-class v8, Lcom/facebook/imagepipeline/memory/BufferMemoryChunkPool;

    new-array v9, v4, [Ljava/lang/Class;

    aput-object v2, v9, v3

    aput-object v1, v9, v7

    aput-object v0, v9, v6

    .line 20
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 21
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 22
    iget-object v4, v2, Lcom/facebook/imagepipeline/memory/PoolConfig;->d:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    aput-object v4, v1, v3

    .line 23
    iget-object v3, v2, Lcom/facebook/imagepipeline/memory/PoolConfig;->e:Lcom/facebook/imagepipeline/memory/PoolParams;

    aput-object v3, v1, v7

    .line 24
    iget-object v2, v2, Lcom/facebook/imagepipeline/memory/PoolConfig;->f:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    aput-object v2, v1, v6

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->d:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 26
    :catch_5
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->d:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_1

    .line 27
    :catch_6
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->d:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_1

    .line 28
    :catch_7
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->d:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_1

    .line 29
    :catch_8
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->d:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_1

    .line 30
    :catch_9
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->d:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    .line 31
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->d:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_3

    :cond_4
    const-string v8, ""

    const-string v9, "PoolFactory"

    .line 32
    iget-object v10, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->e:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    if-nez v10, :cond_5

    .line 33
    :try_start_2
    const-class v10, Lcom/facebook/imagepipeline/memory/NativeMemoryChunkPool;

    new-array v11, v4, [Ljava/lang/Class;

    aput-object v2, v11, v3

    aput-object v1, v11, v7

    aput-object v0, v11, v6

    .line 34
    invoke-virtual {v10, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 35
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 36
    iget-object v4, v2, Lcom/facebook/imagepipeline/memory/PoolConfig;->d:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    aput-object v4, v1, v3

    .line 37
    iget-object v3, v2, Lcom/facebook/imagepipeline/memory/PoolConfig;->e:Lcom/facebook/imagepipeline/memory/PoolParams;

    aput-object v3, v1, v7

    .line 38
    iget-object v2, v2, Lcom/facebook/imagepipeline/memory/PoolConfig;->f:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    aput-object v2, v1, v6

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->e:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_a

    goto :goto_2

    :catch_a
    move-exception v0

    .line 40
    invoke-static {v9, v8, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->e:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_2

    :catch_b
    move-exception v0

    .line 42
    invoke-static {v9, v8, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->e:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_2

    :catch_c
    move-exception v0

    .line 44
    invoke-static {v9, v8, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->e:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_2

    :catch_d
    move-exception v0

    .line 46
    invoke-static {v9, v8, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->e:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    goto :goto_2

    :catch_e
    move-exception v0

    .line 48
    invoke-static {v9, v8, v0}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iput-object v5, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->e:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    .line 50
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->e:Lcom/facebook/imagepipeline/memory/MemoryChunkPool;

    .line 51
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get pool for chunk type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Preconditions;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance p1, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferFactory;

    .line 53
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->d()Lcom/facebook/common/memory/PooledByteStreams;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferFactory;-><init>(Lcom/facebook/imagepipeline/memory/MemoryChunkPool;Lcom/facebook/common/memory/PooledByteStreams;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->f:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 54
    :cond_6
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->f:Lcom/facebook/common/memory/PooledByteBufferFactory;

    return-object p1
.end method

.method public d()Lcom/facebook/common/memory/PooledByteStreams;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->g:Lcom/facebook/common/memory/PooledByteStreams;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/common/memory/PooledByteStreams;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->e()Lcom/facebook/common/memory/ByteArrayPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/memory/PooledByteStreams;-><init>(Lcom/facebook/common/memory/ByteArrayPool;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->g:Lcom/facebook/common/memory/PooledByteStreams;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->g:Lcom/facebook/common/memory/PooledByteStreams;

    return-object v0
.end method

.method public e()Lcom/facebook/common/memory/ByteArrayPool;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->h:Lcom/facebook/common/memory/ByteArrayPool;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->a:Lcom/facebook/imagepipeline/memory/PoolConfig;

    .line 3
    iget-object v2, v1, Lcom/facebook/imagepipeline/memory/PoolConfig;->d:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 4
    iget-object v3, v1, Lcom/facebook/imagepipeline/memory/PoolConfig;->g:Lcom/facebook/imagepipeline/memory/PoolParams;

    .line 5
    iget-object v1, v1, Lcom/facebook/imagepipeline/memory/PoolConfig;->h:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    .line 6
    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->h:Lcom/facebook/common/memory/ByteArrayPool;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/PoolFactory;->h:Lcom/facebook/common/memory/ByteArrayPool;

    return-object v0
.end method
