.class public interface abstract Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;
.super Ljava/lang/Object;
.source "ImageTranscoder.java"


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
.end method

.method public abstract c(Lcom/facebook/imagepipeline/image/EncodedImage;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imageformat/ImageFormat;Ljava/lang/Integer;)Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;
.end method

.method public abstract d(Lcom/facebook/imageformat/ImageFormat;)Z
.end method
