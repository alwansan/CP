.class public Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;
.super Lcom/facebook/imagepipeline/listener/BaseRequestListener;
.source "ImagePerfRequestListener.java"


# instance fields
.field public final a:Lcom/facebook/common/time/MonotonicClock;

.field public final b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/listener/BaseRequestListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->a:Lcom/facebook/common/time/MonotonicClock;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->a:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->n:J

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 4
    iput-object p1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 5
    iput-object p2, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->d:Ljava/lang/Object;

    .line 6
    iput-object p3, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->b:Ljava/lang/String;

    .line 7
    iput-boolean p4, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->r:Z

    return-void
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->a:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->o:J

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 4
    iput-object p1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 5
    iput-object p2, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->b:Ljava/lang/String;

    .line 6
    iput-boolean p3, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->r:Z

    return-void
.end method

.method public g(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->a:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 2
    iput-wide v0, p3, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->o:J

    .line 3
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 4
    iput-object p1, p3, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 5
    iput-object p2, p3, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->b:Ljava/lang/String;

    .line 6
    iput-boolean p4, p3, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->r:Z

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->a:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->o:J

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 4
    iput-object p1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->b:Ljava/lang/String;

    return-void
.end method
