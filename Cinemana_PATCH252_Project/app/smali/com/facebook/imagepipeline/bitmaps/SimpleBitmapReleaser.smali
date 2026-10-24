.class public Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;
.super Ljava/lang/Object;
.source "SimpleBitmapReleaser.java"

# interfaces
.implements Lcom/facebook/common/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/ResourceReleaser<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->a:Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->a:Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    .line 3
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->a:Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
