.class public Lcom/facebook/imagepipeline/core/ProducerFactory;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# instance fields
.field public a:Landroid/content/ContentResolver;

.field public b:Landroid/content/res/Resources;

.field public c:Landroid/content/res/AssetManager;

.field public final d:Lcom/facebook/common/memory/ByteArrayPool;

.field public final e:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field public final f:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field public final k:Lcom/facebook/common/memory/PooledByteBufferFactory;

.field public final l:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field public final m:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field public final n:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field public final q:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field public final t:I

.field public final u:I

.field public v:Z

.field public final w:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

.field public final x:I

.field public final y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;ZZZLcom/facebook/imagepipeline/core/ExecutorSupplier;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;IIZILcom/facebook/imagepipeline/core/CloseableReferenceFactory;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/common/memory/ByteArrayPool;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
            "Lcom/facebook/common/memory/PooledByteBufferFactory;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            "IIZI",
            "Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;",
            "ZI)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p22

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->a:Landroid/content/ContentResolver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->b:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->c:Landroid/content/res/AssetManager;

    move-object v2, p2

    .line 5
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->d:Lcom/facebook/common/memory/ByteArrayPool;

    move-object v2, p3

    .line 6
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->e:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-object v2, p4

    .line 7
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->f:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    move v2, p5

    .line 8
    iput-boolean v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->g:Z

    move v2, p6

    .line 9
    iput-boolean v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->h:Z

    move v2, p7

    .line 10
    iput-boolean v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->i:Z

    move-object v2, p8

    .line 11
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-object v2, p9

    .line 12
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    move-object v2, p10

    .line 13
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->o:Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-object v2, p11

    .line 14
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->n:Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-object v2, p12

    .line 15
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->l:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-object/from16 v2, p13

    .line 16
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->m:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-object/from16 v2, p14

    .line 17
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    move-object/from16 v2, p15

    .line 18
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->s:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 19
    new-instance v2, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;-><init>(I)V

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->q:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    .line 20
    new-instance v2, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;-><init>(I)V

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->r:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    move/from16 v1, p16

    .line 21
    iput v1, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->t:I

    move/from16 v1, p17

    .line 22
    iput v1, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->u:I

    move/from16 v1, p18

    .line 23
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->v:Z

    move/from16 v1, p19

    .line 24
    iput v1, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->x:I

    move-object/from16 v1, p20

    .line 25
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->w:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    move/from16 v1, p21

    .line 26
    iput-boolean v1, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->y:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;Z",
            "Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
            ")",
            "Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)V

    return-object v6
.end method
