.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public c:Z

.field public d:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    invoke-direct {p2, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->b:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->c:Z

    .line 4
    new-instance p2, Lcom/facebook/imagepipeline/debug/NoOpCloseableReferenceLeakTracker;

    invoke-direct {p2}, Lcom/facebook/imagepipeline/debug/NoOpCloseableReferenceLeakTracker;-><init>()V

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->d:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->a:Landroid/content/Context;

    return-void
.end method
