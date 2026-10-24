.class public Lzendesk/support/PicassoTransformations;
.super Ljava/lang/Object;
.source "PicassoTransformations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/PicassoTransformations$RoundedTransformation;,
        Lzendesk/support/PicassoTransformations$BlurTransformation;
    }
.end annotation


# direct methods
.method public static getBlurTransformation(Landroid/content/Context;)Lcom/shabakaty/downloader/up4;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/PicassoTransformations$BlurTransformation;

    invoke-direct {v0, p0}, Lzendesk/support/PicassoTransformations$BlurTransformation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getRoundWithBorderTransformation(III)Lcom/shabakaty/downloader/up4;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/PicassoTransformations$RoundedTransformation;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/PicassoTransformations$RoundedTransformation;-><init>(III)V

    return-object v0
.end method

.method public static getRoundedTransformation(I)Lcom/shabakaty/downloader/up4;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/PicassoTransformations$RoundedTransformation;

    invoke-direct {v0, p0}, Lzendesk/support/PicassoTransformations$RoundedTransformation;-><init>(I)V

    return-object v0
.end method
