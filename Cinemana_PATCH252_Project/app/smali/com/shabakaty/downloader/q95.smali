.class public final Lcom/shabakaty/downloader/q95;
.super Ljava/lang/Object;
.source "ZoomControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q95$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/sr;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/shabakaty/downloader/s95;

.field public final d:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/r95;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/q95$b;

.field public f:Z

.field public g:Lcom/shabakaty/downloader/sr$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sr;Lcom/shabakaty/downloader/zs;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/q95;->f:Z

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/q95$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/q95$a;-><init>(Lcom/shabakaty/downloader/q95;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/q95;->g:Lcom/shabakaty/downloader/sr$c;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/q95;->a:Lcom/shabakaty/downloader/sr;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/q95;->b:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {p2}, Lcom/shabakaty/downloader/q95;->a(Lcom/shabakaty/downloader/zs;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/l7;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/l7;-><init>(Lcom/shabakaty/downloader/zs;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Lcom/shabakaty/downloader/tg0;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/tg0;-><init>(Lcom/shabakaty/downloader/zs;)V

    .line 9
    :goto_0
    iput-object p3, p0, Lcom/shabakaty/downloader/q95;->e:Lcom/shabakaty/downloader/q95$b;

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/s95;

    invoke-interface {p3}, Lcom/shabakaty/downloader/q95$b;->b()F

    move-result v0

    invoke-interface {p3}, Lcom/shabakaty/downloader/q95$b;->c()F

    move-result p3

    invoke-direct {p2, v0, p3}, Lcom/shabakaty/downloader/s95;-><init>(FF)V

    iput-object p2, p0, Lcom/shabakaty/downloader/q95;->c:Lcom/shabakaty/downloader/s95;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/s95;->a(F)V

    .line 12
    new-instance p3, Lcom/shabakaty/downloader/xv2;

    invoke-static {p2}, Lcom/shabakaty/downloader/b02;->a(Lcom/shabakaty/downloader/r95;)Lcom/shabakaty/downloader/r95;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/shabakaty/downloader/q95;->d:Lcom/shabakaty/downloader/xv2;

    .line 13
    iget-object p2, p0, Lcom/shabakaty/downloader/q95;->g:Lcom/shabakaty/downloader/sr$c;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/sr;->a(Lcom/shabakaty/downloader/sr$c;)V

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/zs;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
