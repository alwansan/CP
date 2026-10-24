.class public Lcom/shabakaty/downloader/k12;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"


# instance fields
.field public volatile a:Landroid/graphics/Bitmap;

.field public volatile b:Lcom/shabakaty/downloader/qm5;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k12;->a:Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/k12;->c:I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/k12;->d:I

    iput p2, p0, Lcom/shabakaty/downloader/k12;->e:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/shabakaty/downloader/k12;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/qm5;

    .line 6
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/qm5;-><init>(Landroid/media/Image;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/k12;->b:Lcom/shabakaty/downloader/qm5;

    iput p2, p0, Lcom/shabakaty/downloader/k12;->c:I

    iput p3, p0, Lcom/shabakaty/downloader/k12;->d:I

    iput p4, p0, Lcom/shabakaty/downloader/k12;->e:I

    const/16 p1, 0x23

    iput p1, p0, Lcom/shabakaty/downloader/k12;->f:I

    return-void
.end method


# virtual methods
.method public a()[Landroid/media/Image$Plane;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/k12;->b:Lcom/shabakaty/downloader/qm5;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/k12;->b:Lcom/shabakaty/downloader/qm5;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/qm5;->a:Landroid/media/Image;

    .line 2
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    return-object v0
.end method
