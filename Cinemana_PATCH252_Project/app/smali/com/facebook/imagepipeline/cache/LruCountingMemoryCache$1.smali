.class public Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/ValueDescriptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

.field public final synthetic b:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;->b:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;->a:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;->b:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    .line 3
    iget-boolean v0, v0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->h:Z

    if-eqz v0, :cond_0

    .line 4
    iget p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->f:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;->a:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->b:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/ValueDescriptor;->a(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method
