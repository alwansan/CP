.class public Lcom/shabakaty/downloader/tm4;
.super Lcom/shabakaty/downloader/q85;
.source "ThinWormAnimation.java"


# instance fields
.field public i:Lcom/shabakaty/downloader/um4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lz4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/q85;-><init>(Lcom/shabakaty/downloader/lz4$a;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/um4;

    invoke-direct {p1}, Lcom/shabakaty/downloader/um4;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tm4;->i:Lcom/shabakaty/downloader/um4;

    return-void
.end method


# virtual methods
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

.method public bridge synthetic i(F)Lcom/shabakaty/downloader/yi;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/tm4;->m(F)Lcom/shabakaty/downloader/tm4;

    return-object p0
.end method

.method public bridge synthetic j(F)Lcom/shabakaty/downloader/q85;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/tm4;->m(F)Lcom/shabakaty/downloader/tm4;

    return-object p0
.end method

.method public k(IIIZ)Lcom/shabakaty/downloader/q85;
    .locals 17

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v8, p3

    move/from16 v1, p4

    .line 1
    invoke-virtual/range {p0 .. p4}, Lcom/shabakaty/downloader/q85;->h(IIIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q85;->d()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, v7, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    .line 3
    iput v0, v7, Lcom/shabakaty/downloader/q85;->d:I

    move/from16 v2, p2

    .line 4
    iput v2, v7, Lcom/shabakaty/downloader/q85;->e:I

    .line 5
    iput v8, v7, Lcom/shabakaty/downloader/q85;->f:I

    .line 6
    iput-boolean v1, v7, Lcom/shabakaty/downloader/q85;->g:Z

    mul-int/lit8 v9, v8, 0x2

    sub-int v2, v0, v8

    add-int/2addr v0, v8

    .line 7
    iget-object v3, v7, Lcom/shabakaty/downloader/tm4;->i:Lcom/shabakaty/downloader/um4;

    .line 8
    iput v2, v3, Lcom/shabakaty/downloader/r85;->a:I

    .line 9
    iput v0, v3, Lcom/shabakaty/downloader/r85;->b:I

    .line 10
    iput v9, v3, Lcom/shabakaty/downloader/um4;->c:I

    .line 11
    invoke-virtual {v7, v1}, Lcom/shabakaty/downloader/q85;->e(Z)Lcom/shabakaty/downloader/q85$b;

    move-result-object v10

    .line 12
    iget-wide v0, v7, Lcom/shabakaty/downloader/yi;->a:J

    long-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v0

    double-to-long v11, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double v2, v2, v0

    double-to-long v13, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    double-to-long v5, v0

    .line 13
    iget v1, v10, Lcom/shabakaty/downloader/q85$b;->a:I

    iget v2, v10, Lcom/shabakaty/downloader/q85$b;->b:I

    const/4 v15, 0x0

    iget-object v3, v7, Lcom/shabakaty/downloader/tm4;->i:Lcom/shabakaty/downloader/um4;

    move-object/from16 v0, p0

    move-object/from16 v16, v3

    move-wide v3, v11

    move/from16 p2, v9

    move-wide v8, v5

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/q85;->f(IIJZLcom/shabakaty/downloader/r85;)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 14
    iget v1, v10, Lcom/shabakaty/downloader/q85$b;->c:I

    iget v2, v10, Lcom/shabakaty/downloader/q85$b;->d:I

    const/4 v5, 0x1

    iget-object v6, v7, Lcom/shabakaty/downloader/tm4;->i:Lcom/shabakaty/downloader/um4;

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/q85;->f(IIJZLcom/shabakaty/downloader/r85;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move/from16 v2, p2

    move/from16 v1, p3

    move-wide v3, v8

    .line 16
    invoke-virtual {v7, v2, v1, v3, v4}, Lcom/shabakaty/downloader/tm4;->l(IIJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 17
    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/shabakaty/downloader/tm4;->l(IIJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 19
    iget-object v2, v7, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/AnimatorSet;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-object v7
.end method

.method public final l(IIJ)Landroid/animation/ValueAnimator;
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
    new-instance p2, Lcom/shabakaty/downloader/tm4$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/tm4$a;-><init>(Lcom/shabakaty/downloader/tm4;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public m(F)Lcom/shabakaty/downloader/tm4;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    .line 2
    iget-wide v1, p0, Lcom/shabakaty/downloader/yi;->a:J

    long-to-float v1, v1

    mul-float p1, p1, v1

    float-to-long v1, p1

    .line 3
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/yi;->c:Landroid/animation/Animator;

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v4

    sub-long v4, v1, v4

    .line 6
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_0

    move-wide v4, v6

    goto :goto_1

    :cond_0
    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    move-wide v4, v8

    :cond_1
    :goto_1
    add-int/lit8 v6, p1, -0x1

    if-ne v0, v6, :cond_2

    cmp-long v6, v4, v8

    if-gtz v6, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_3

    .line 8
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method
