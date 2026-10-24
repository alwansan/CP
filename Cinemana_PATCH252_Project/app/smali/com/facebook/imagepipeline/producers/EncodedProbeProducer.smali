.class public Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;
.super Ljava/lang/Object;
.source "EncodedProbeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field public final b:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field public final c:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field public final d:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/producers/Producer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;",
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->a:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->b:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->c:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->e:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->f:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    .line 7
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->d:Lcom/facebook/imagepipeline/producers/Producer;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    const-string v0, "EncodedProbeProducer"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v1

    .line 3
    invoke-interface {v1, p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->e(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 4
    new-instance v10, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->a:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->b:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->c:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->e:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    iget-object v9, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->f:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer$ProbeConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;)V

    const/4 p1, 0x0

    .line 5
    invoke-interface {v1, p2, v0, p1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 7
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;->d:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {p1, v10, p2}, Lcom/facebook/imagepipeline/producers/Producer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 10
    throw p1
.end method
