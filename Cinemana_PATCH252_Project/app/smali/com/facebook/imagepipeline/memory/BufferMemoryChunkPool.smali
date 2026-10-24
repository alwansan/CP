.class public Lcom/facebook/imagepipeline/memory/BufferMemoryChunkPool;
.super Lcom/facebook/imagepipeline/memory/MemoryChunkPool;
.source "BufferMemoryChunkPool.java"


# annotations
.annotation build Lcom/facebook/common/internal/DoNotStrip;
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V
    .locals 0
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/MemoryChunkPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V

    return-void
.end method


# virtual methods
.method public c(I)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;-><init>(I)V

    return-object v0
.end method

.method public q(I)Lcom/facebook/imagepipeline/memory/MemoryChunk;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/BufferMemoryChunk;-><init>(I)V

    return-object v0
.end method
