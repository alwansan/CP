.class public final synthetic Lcom/shabakaty/downloader/yd5;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final r:Ljava/util/concurrent/Callable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/yd5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yd5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/yd5;->r:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->v:Lcom/shabakaty/downloader/lq1;

    const/4 v0, 0x0

    return-object v0
.end method
