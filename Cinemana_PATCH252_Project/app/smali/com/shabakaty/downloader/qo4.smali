.class public final Lcom/shabakaty/downloader/qo4;
.super Ljava/lang/Object;
.source "TorchControl.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/sr;

.field public final b:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Z

.field public final e:Lcom/shabakaty/downloader/sr$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sr;Lcom/shabakaty/downloader/zs;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/qo4$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/qo4$a;-><init>(Lcom/shabakaty/downloader/qo4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qo4;->e:Lcom/shabakaty/downloader/sr$c;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/qo4;->a:Lcom/shabakaty/downloader/sr;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/qo4;->c:Ljava/util/concurrent/Executor;

    .line 5
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    :cond_0
    new-instance p2, Lcom/shabakaty/downloader/xv2;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/qo4;->b:Lcom/shabakaty/downloader/xv2;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/sr;->a:Lcom/shabakaty/downloader/sr$b;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/sr$b;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
