.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Ljava/util/List<",
        "Lcom/shabakaty/downloader/ri;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final w:Lcom/shabakaty/downloader/ti;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ti;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ti;-><init>(ILjava/util/concurrent/Executor;)V

    .line 3
    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->w:Lcom/shabakaty/downloader/ti;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ti;Lcom/shabakaty/downloader/uk6;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/l07;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/shabakaty/downloader/tl2;Ljava/util/concurrent/Executor;)V

    new-instance p2, Lcom/shabakaty/downloader/ty6;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/ty6;-><init>(I)V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/wd5;->a(Lcom/shabakaty/downloader/ti;)Lcom/shabakaty/downloader/oy6;

    move-result-object p1

    .line 3
    iput-object p1, p2, Lcom/shabakaty/downloader/ty6;->b:Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/et6;

    .line 5
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/et6;-><init>(Lcom/shabakaty/downloader/ty6;)V

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/ty6;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/ty6;-><init>(I)V

    .line 7
    iput-object p1, p2, Lcom/shabakaty/downloader/ty6;->d:Ljava/lang/Object;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/qz2;

    .line 9
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/ty6;)V

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/hr6;->t:Lcom/shabakaty/downloader/hr6;

    .line 11
    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/l07;->b(Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/hr6;)V

    return-void
.end method
