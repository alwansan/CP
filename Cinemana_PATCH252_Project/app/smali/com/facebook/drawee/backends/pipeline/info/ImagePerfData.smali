.class public Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;
.super Ljava/lang/Object;
.source "ImagePerfData.java"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/facebook/imagepipeline/image/ImageInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/image/ImageInfo;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest;[Lcom/facebook/imagepipeline/request/ImageRequest;JJJJJJJILjava/lang/String;ZIILjava/lang/Throwable;IJJLjava/lang/String;JLcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->a:Ljava/lang/Object;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->b:Lcom/facebook/imagepipeline/image/ImageInfo;

    return-void
.end method
