.class public Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory$1;
.super Ljava/lang/Object;
.source "CountingLruBitmapMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/ValueDescriptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableImage;->b()I

    move-result p1

    return p1
.end method
