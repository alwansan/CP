.class public Lcom/shabakaty/downloader/s84;
.super Lcom/shabakaty/downloader/yi;
.source "SlideAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/yi<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/shabakaty/downloader/t84;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lz4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/yi;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/s84;->e:I

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/s84;->f:I

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/t84;

    invoke-direct {p1}, Lcom/shabakaty/downloader/t84;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/s84;->d:Lcom/shabakaty/downloader/t84;

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/Animator;
    .locals 3

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v1, 0x15e

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/r84;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/r84;-><init>(Lcom/shabakaty/downloader/s84;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public d(F)Lcom/shabakaty/downloader/yi;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/shabakaty/downloader/yi;->a:J

    long-to-float v1, v1

    mul-float p1, p1, v1

    float-to-long v1, p1

    .line 3
    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-object p0
.end method
