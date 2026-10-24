.class public final synthetic Lcom/shabakaty/downloader/rm5;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Lcom/shabakaty/downloader/p63;


# static fields
.field public static final r:Lcom/shabakaty/downloader/p63;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/rm5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rm5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/rm5;->r:Lcom/shabakaty/downloader/p63;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->v:Lcom/shabakaty/downloader/lq1;

    const-string v1, "MobileVisionBase"

    const-string v2, "Error preloading model resource"

    invoke-virtual {v0, v1, v2, p1}, Lcom/shabakaty/downloader/lq1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
