.class public Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$DefaultProducerFactoryMethod;,
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;,
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

.field public final c:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Z

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x800

    .line 3
    iput p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->a:I

    .line 4
    new-instance p2, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$DefaultProducerFactoryMethod;

    invoke-direct {p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$DefaultProducerFactoryMethod;-><init>()V

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->b:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    .line 5
    iget-object p2, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->a:Lcom/facebook/common/internal/Supplier;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->c:Lcom/facebook/common/internal/Supplier;

    .line 6
    iget-boolean p2, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->b:Z

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->d:Z

    .line 7
    iget-boolean p2, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->c:Z

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->e:Z

    .line 8
    iget p1, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->d:I

    .line 9
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->f:I

    return-void
.end method
