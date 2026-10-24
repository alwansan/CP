.class public Lcom/shabakaty/downloader/dh1;
.super Ljava/lang/Object;
.source "FocusMeteringControl.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/sr;

.field public final b:Ljava/util/concurrent/Executor;

.field public volatile c:Z

.field public d:Lcom/shabakaty/downloader/sr$c;

.field public e:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public f:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public g:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public h:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public i:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public j:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public k:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sr;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/shabakaty/downloader/dh1;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/dh1;->d:Lcom/shabakaty/downloader/sr$c;

    new-array v1, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/dh1;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v1, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/dh1;->f:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v1, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/dh1;->g:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v1, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/dh1;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v1, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/dh1;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array p2, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/dh1;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/dh1;->k:Lcom/shabakaty/downloader/ar$a;

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/dh1;->a:Lcom/shabakaty/downloader/sr;

    .line 12
    iput-object p3, p0, Lcom/shabakaty/downloader/dh1;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
