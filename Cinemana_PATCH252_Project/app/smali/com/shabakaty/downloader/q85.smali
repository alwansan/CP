.class public Lcom/shabakaty/downloader/q85;
.super Lcom/shabakaty/downloader/yi;
.source "WormAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q85$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/yi<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lcom/shabakaty/downloader/r85;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lz4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/yi;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/r85;

    invoke-direct {p1}, Lcom/shabakaty/downloader/r85;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/q85;->h:Lcom/shabakaty/downloader/r85;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q85;->d()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/AnimatorSet;
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public e(Z)Lcom/shabakaty/downloader/q85$b;
    .locals 10

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/shabakaty/downloader/q85;->d:I

    iget v0, p0, Lcom/shabakaty/downloader/q85;->f:I

    add-int v1, p1, v0

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/q85;->e:I

    add-int v3, v2, v0

    sub-int/2addr p1, v0

    sub-int/2addr v2, v0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/shabakaty/downloader/q85;->d:I

    iget v0, p0, Lcom/shabakaty/downloader/q85;->f:I

    sub-int v1, p1, v0

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/q85;->e:I

    sub-int v3, v2, v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    :goto_0
    move v8, p1

    move v6, v1

    move v9, v2

    move v7, v3

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/q85$b;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/q85$b;-><init>(Lcom/shabakaty/downloader/q85;IIII)V

    return-object p1
.end method

.method public f(IIJZLcom/shabakaty/downloader/r85;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/q85$a;

    invoke-direct {p2, p0, p6, p5}, Lcom/shabakaty/downloader/q85$a;-><init>(Lcom/shabakaty/downloader/q85;Lcom/shabakaty/downloader/r85;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public g(J)Lcom/shabakaty/downloader/q85;
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/yi;->a:J

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_0
    return-object p0
.end method

.method public h(IIIZ)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/q85;->d:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget p1, p0, Lcom/shabakaty/downloader/q85;->e:I

    if-eq p1, p2, :cond_1

    return v1

    .line 3
    :cond_1
    iget p1, p0, Lcom/shabakaty/downloader/q85;->f:I

    if-eq p1, p3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/q85;->g:Z

    if-eq p1, p4, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic i(F)Lcom/shabakaty/downloader/yi;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/q85;->j(F)Lcom/shabakaty/downloader/q85;

    move-result-object p1

    return-object p1
.end method

.method public j(F)Lcom/shabakaty/downloader/q85;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-wide v1, p0, Lcom/shabakaty/downloader/yi;->a:J

    long-to-float v1, v1

    mul-float p1, p1, v1

    float-to-long v1, p1

    .line 3
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 4
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v3, v1

    .line 6
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public k(IIIZ)Lcom/shabakaty/downloader/q85;
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/q85;->h(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q85;->d()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/q85;->d:I

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/q85;->e:I

    .line 5
    iput p3, p0, Lcom/shabakaty/downloader/q85;->f:I

    .line 6
    iput-boolean p4, p0, Lcom/shabakaty/downloader/q85;->g:Z

    sub-int p2, p1, p3

    add-int/2addr p1, p3

    .line 7
    iget-object p3, p0, Lcom/shabakaty/downloader/q85;->h:Lcom/shabakaty/downloader/r85;

    .line 8
    iput p2, p3, Lcom/shabakaty/downloader/r85;->a:I

    .line 9
    iput p1, p3, Lcom/shabakaty/downloader/r85;->b:I

    .line 10
    invoke-virtual {p0, p4}, Lcom/shabakaty/downloader/q85;->e(Z)Lcom/shabakaty/downloader/q85$b;

    move-result-object p1

    .line 11
    iget-wide p2, p0, Lcom/shabakaty/downloader/yi;->a:J

    const-wide/16 v0, 0x2

    div-long/2addr p2, v0

    .line 12
    iget v3, p1, Lcom/shabakaty/downloader/q85$b;->a:I

    iget v4, p1, Lcom/shabakaty/downloader/q85$b;->b:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/shabakaty/downloader/q85;->h:Lcom/shabakaty/downloader/r85;

    move-object v2, p0

    move-wide v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/q85;->f(IIJZLcom/shabakaty/downloader/r85;)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 13
    iget v3, p1, Lcom/shabakaty/downloader/q85$b;->c:I

    iget v4, p1, Lcom/shabakaty/downloader/q85$b;->d:I

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/shabakaty/downloader/q85;->h:Lcom/shabakaty/downloader/r85;

    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/q85;->f(IIJZLcom/shabakaty/downloader/r85;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast p2, Landroid/animation/AnimatorSet;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object p4, p3, v0

    const/4 p4, 0x1

    aput-object p1, p3, p4

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_0
    return-object p0
.end method
