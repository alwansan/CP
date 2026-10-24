.class public Lcom/shabakaty/downloader/jx3;
.super Lcom/shabakaty/downloader/o50;
.source "ScaleAnimation.java"


# instance fields
.field public g:I

.field public h:F

.field public i:Lcom/shabakaty/downloader/kx3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lz4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/o50;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/kx3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/kx3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jx3;->i:Lcom/shabakaty/downloader/kx3;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jx3;->d()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/ValueAnimator;
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
    new-instance v1, Lcom/shabakaty/downloader/jx3$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/jx3$a;-><init>(Lcom/shabakaty/downloader/jx3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public g(Z)Landroid/animation/PropertyValuesHolder;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/shabakaty/downloader/jx3;->g:I

    int-to-float v0, p1

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/jx3;->h:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const-string v1, "ANIMATION_SCALE_REVERSE"

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/jx3;->g:I

    int-to-float p1, v0

    iget v1, p0, Lcom/shabakaty/downloader/jx3;->h:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    const-string v1, "ANIMATION_SCALE"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput v0, v2, p1

    .line 4
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p1
.end method

.method public h(IIIF)Lcom/shabakaty/downloader/jx3;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/o50;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/o50;->f:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/jx3;->g:I

    if-eq v0, p3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/jx3;->h:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 6
    iput p1, p0, Lcom/shabakaty/downloader/o50;->e:I

    .line 7
    iput p2, p0, Lcom/shabakaty/downloader/o50;->f:I

    .line 8
    iput p3, p0, Lcom/shabakaty/downloader/jx3;->g:I

    .line 9
    iput p4, p0, Lcom/shabakaty/downloader/jx3;->h:F

    .line 10
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/o50;->e(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 11
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/o50;->e(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 12
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/jx3;->g(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 13
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/jx3;->g(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    const/4 p1, 0x2

    aput-object p3, v3, p1

    const/4 p1, 0x3

    aput-object p4, v3, p1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_4
    return-object p0
.end method
