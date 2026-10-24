.class public Lcom/shabakaty/downloader/tz1;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"


# static fields
.field public static a:Lcom/shabakaty/downloader/tz1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lq1;

    const-string v1, "MLKitImageUtils"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/lq1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/shabakaty/downloader/tz1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tz1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tz1;->a:Lcom/shabakaty/downloader/tz1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/k12;)I
    .locals 4
    .param p1    # Lcom/shabakaty/downloader/k12;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget v0, p1, Lcom/shabakaty/downloader/k12;->f:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "null reference"

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/k12;->a:Landroid/graphics/Bitmap;

    .line 3
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const v1, 0x32315659

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    :goto_0
    return v2

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k12;->a()[Landroid/media/Image$Plane;

    move-result-object p1

    .line 6
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 8
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw p1
.end method
