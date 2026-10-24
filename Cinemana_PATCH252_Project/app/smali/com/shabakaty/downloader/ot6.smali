.class public final Lcom/shabakaty/downloader/ot6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"


# static fields
.field public static a:Lcom/shabakaty/downloader/kt6;

.field public static final b:Lcom/shabakaty/downloader/bi5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/bi5<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "play-services-mlkit-image-labeling"

    const-string v1, "play-services-mlkit-text-recognition"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1
    sget v1, Lcom/shabakaty/downloader/bi5;->t:I

    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "common"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "vision-common"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "play-services-mlkit-barcode-scanning"

    aput-object v5, v2, v4

    const/4 v5, 0x3

    const-string v6, "barcode-scanning"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "play-services-mlkit-face-detection"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "face-detection"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 2
    invoke-static {v0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/bi5;->q(I[Ljava/lang/Object;)Lcom/shabakaty/downloader/bi5;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/shabakaty/downloader/ot6;->b:Lcom/shabakaty/downloader/bi5;

    return-void
.end method
