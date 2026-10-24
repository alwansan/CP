.class public final Lcom/shabakaty/downloader/is3;
.super Ljava/lang/Object;
.source "ResizeModeScaleListener.kt"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/ui/PlayerView;

.field public b:I

.field public c:F

.field public d:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/is3;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/is3;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/is3;->c:F

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/is3;->d:Lcom/shabakaty/downloader/tm1;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/is3$a;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/is3$a;-><init>(Landroid/view/View;Lcom/shabakaty/downloader/is3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/is3;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/is3;->c:F

    float-to-double v3, v2

    const/4 v5, 0x6

    if-ne v0, v5, :cond_0

    const-wide v6, 0x3ff199999999999aL    # 1.1

    goto :goto_0

    :cond_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    :goto_0
    cmpg-double v8, v3, v6

    if-gez v8, :cond_6

    float-to-double v3, v2

    if-ne v0, v5, :cond_1

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    goto :goto_1

    :cond_1
    const-wide v5, 0x3fc999999999999aL    # 0.2

    :goto_1
    cmpl-double v0, v3, v5

    if-lez v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    :goto_2
    mul-float v2, v2, p1

    iput v2, p0, Lcom/shabakaty/downloader/is3;->c:F

    cmpl-float p1, v2, v0

    if-lez p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/is3;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/is3;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget v0, p0, Lcom/shabakaty/downloader/is3;->c:F

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    goto :goto_4

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/is3;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/shabakaty/downloader/is3;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 7
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/is3;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/shabakaty/downloader/is3;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_6
    :goto_4
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/shabakaty/downloader/is3;->b:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/is3;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p1

    const-wide/16 v0, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/is3;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/is3;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/is3;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_d

    goto :goto_4

    .line 6
    :cond_d
    new-instance p1, Lcom/shabakaty/downloader/rr;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/is3;)V

    invoke-virtual {v3, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_4

    .line 7
    :cond_e
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8
    :goto_4
    iput v2, p0, Lcom/shabakaty/downloader/is3;->c:F

    :cond_f
    return-void
.end method
