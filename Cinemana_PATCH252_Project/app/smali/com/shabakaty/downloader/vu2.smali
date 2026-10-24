.class public Lcom/shabakaty/downloader/vu2;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Lcom/shabakaty/downloader/cy2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vu2$c;,
        Lcom/shabakaty/downloader/vu2$b;,
        Lcom/shabakaty/downloader/vu2$d;
    }
.end annotation


# static fields
.field public static final synthetic i0:I


# instance fields
.field public J:F

.field public K:I

.field public L:I

.field public M:I

.field public N:F

.field public O:F

.field public P:F

.field public Q:J

.field public R:F

.field public S:Lcom/shabakaty/downloader/vu2$c;

.field public T:Lcom/shabakaty/downloader/ls0;

.field public U:Z

.field public V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/uu2;",
            ">;"
        }
    .end annotation
.end field

.field public W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/uu2;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/shabakaty/downloader/vu2$c;",
            ">;"
        }
    .end annotation
.end field

.field public b0:I

.field public c0:F

.field public d0:Z

.field public e0:Lcom/shabakaty/downloader/vu2$b;

.field public f0:Z

.field public g0:Lcom/shabakaty/downloader/vu2$d;

.field public h0:Z


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/vu2;->t(Z)V

    .line 2
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->L:I

    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/yu2$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesignTool()Lcom/shabakaty/downloader/ls0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->T:Lcom/shabakaty/downloader/ls0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ls0;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ls0;-><init>(Lcom/shabakaty/downloader/vu2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->T:Lcom/shabakaty/downloader/ls0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->T:Lcom/shabakaty/downloader/ls0;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->M:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->P:F

    return v0
.end method

.method public getScene()Lcom/shabakaty/downloader/yu2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->K:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->R:F

    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/vu2$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vu2$b;-><init>(Lcom/shabakaty/downloader/vu2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/vu2$b;->e:Lcom/shabakaty/downloader/vu2;

    .line 5
    iget v2, v1, Lcom/shabakaty/downloader/vu2;->M:I

    .line 6
    iput v2, v0, Lcom/shabakaty/downloader/vu2$b;->d:I

    .line 7
    iget v2, v1, Lcom/shabakaty/downloader/vu2;->K:I

    .line 8
    iput v2, v0, Lcom/shabakaty/downloader/vu2$b;->c:I

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vu2;->getVelocity()F

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/vu2$b;->b:F

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/vu2$b;->e:Lcom/shabakaty/downloader/vu2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vu2;->getProgress()F

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/vu2$b;->a:F

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    iget v2, v0, Lcom/shabakaty/downloader/vu2$b;->a:F

    const-string v3, "motion.progress"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 14
    iget v2, v0, Lcom/shabakaty/downloader/vu2$b;->b:F

    const-string v3, "motion.velocity"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 15
    iget v2, v0, Lcom/shabakaty/downloader/vu2$b;->c:I

    const-string v3, "motion.StartState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget v0, v0, Lcom/shabakaty/downloader/vu2$b;->d:I

    const-string v2, "motion.EndState"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->N:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->J:F

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public n(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->B:Lcom/shabakaty/downloader/zb0;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, p0, Lcom/shabakaty/downloader/vu2;->f0:Z

    if-eqz v1, :cond_1

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/vu2$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vu2$a;-><init>(Lcom/shabakaty/downloader/vu2;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vu2$b;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/vu2;->d0:Z

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/vu2;->d0:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/vu2;->d0:Z

    .line 4
    throw p1
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1
    aget p2, p7, p1

    add-int/2addr p2, p4

    aput p2, p7, p1

    const/4 p1, 0x1

    .line 2
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    :cond_1
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vu2;->getNanoTime()J

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/uu2;

    if-eqz v0, :cond_4

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/uu2;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->a0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->a0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->a0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p1, Lcom/shabakaty/downloader/uu2;->z:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->V:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->V:Ljava/util/ArrayList;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->V:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-boolean v0, p1, Lcom/shabakaty/downloader/uu2;->A:Z

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->W:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->W:Ljava/util/ArrayList;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->W:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->V:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->W:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->L:I

    const/4 v1, -0x1

    .line 2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/vu2;->f0:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/vu2;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->W:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/vu2;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/uu2;

    .line 4
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/uu2;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->V:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/vu2;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/uu2;

    .line 4
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/uu2;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 7

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vu2$d;->u:Lcom/shabakaty/downloader/vu2$d;

    sget-object v1, Lcom/shabakaty/downloader/vu2$d;->t:Lcom/shabakaty/downloader/vu2$d;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v2

    if-ltz v4, :cond_0

    cmpl-float v5, p1, v3

    if-lez v5, :cond_1

    :cond_0
    const-string v5, "MotionLayout"

    const-string v6, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 2
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/vu2$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vu2$b;-><init>(Lcom/shabakaty/downloader/vu2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 7
    iput p1, v0, Lcom/shabakaty/downloader/vu2$b;->a:F

    return-void

    :cond_3
    if-gtz v4, :cond_5

    .line 8
    iget p1, p0, Lcom/shabakaty/downloader/vu2;->P:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    iget p1, p0, Lcom/shabakaty/downloader/vu2;->L:I

    iget v3, p0, Lcom/shabakaty/downloader/vu2;->M:I

    if-ne p1, v3, :cond_4

    .line 9
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    .line 10
    :cond_4
    iget p1, p0, Lcom/shabakaty/downloader/vu2;->K:I

    iput p1, p0, Lcom/shabakaty/downloader/vu2;->L:I

    .line 11
    iget p1, p0, Lcom/shabakaty/downloader/vu2;->P:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_8

    .line 12
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    goto :goto_0

    :cond_5
    cmpl-float p1, p1, v3

    if-ltz p1, :cond_7

    .line 13
    iget p1, p0, Lcom/shabakaty/downloader/vu2;->P:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_6

    iget p1, p0, Lcom/shabakaty/downloader/vu2;->L:I

    iget v2, p0, Lcom/shabakaty/downloader/vu2;->K:I

    if-ne p1, v2, :cond_6

    .line 14
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    .line 15
    :cond_6
    iget p1, p0, Lcom/shabakaty/downloader/vu2;->M:I

    iput p1, p0, Lcom/shabakaty/downloader/vu2;->L:I

    .line 16
    iget p1, p0, Lcom/shabakaty/downloader/vu2;->P:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_8

    .line 17
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    goto :goto_0

    :cond_7
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/shabakaty/downloader/vu2;->L:I

    .line 19
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public setScene(Lcom/shabakaty/downloader/yu2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->m()Z

    const/4 p1, 0x0

    throw p1
.end method

.method public setStartState(I)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/vu2$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vu2$b;-><init>(Lcom/shabakaty/downloader/vu2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 5
    iput p1, v0, Lcom/shabakaty/downloader/vu2$b;->c:I

    .line 6
    iput p1, v0, Lcom/shabakaty/downloader/vu2$b;->d:I

    return-void

    .line 7
    :cond_1
    iput p1, p0, Lcom/shabakaty/downloader/vu2;->L:I

    return-void
.end method

.method public setState(Lcom/shabakaty/downloader/vu2$d;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vu2$d;->u:Lcom/shabakaty/downloader/vu2$d;

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/shabakaty/downloader/vu2;->L:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vu2;->g0:Lcom/shabakaty/downloader/vu2$d;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/vu2;->g0:Lcom/shabakaty/downloader/vu2$d;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/vu2$d;->t:Lcom/shabakaty/downloader/vu2$d;

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vu2;->u()V

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vu2;->w()V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vu2;->u()V

    :cond_4
    if-ne p1, v0, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vu2;->w()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 0

    return-void
.end method

.method public setTransition(Lcom/shabakaty/downloader/yu2$a;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setTransitionDuration(I)V
    .locals 1

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTransitionListener(Lcom/shabakaty/downloader/vu2$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vu2;->S:Lcom/shabakaty/downloader/vu2$c;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/vu2$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vu2$b;-><init>(Lcom/shabakaty/downloader/vu2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "motion.progress"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/vu2$b;->a:F

    const-string v1, "motion.velocity"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/vu2$b;->b:F

    const-string v1, "motion.StartState"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/vu2$b;->c:I

    const-string v1, "motion.EndState"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/shabakaty/downloader/vu2$b;->d:I

    .line 8
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vu2$b;->a()V

    :cond_1
    return-void
.end method

.method public t(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/vu2$d;->u:Lcom/shabakaty/downloader/vu2$d;

    iget-wide v2, v0, Lcom/shabakaty/downloader/vu2;->Q:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/vu2;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/shabakaty/downloader/vu2;->Q:J

    .line 3
    :cond_0
    iget v2, v0, Lcom/shabakaty/downloader/vu2;->P:F

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-lez v6, :cond_1

    cmpg-float v6, v2, v4

    if-gez v6, :cond_1

    .line 4
    iput v3, v0, Lcom/shabakaty/downloader/vu2;->L:I

    .line 5
    :cond_1
    iget-boolean v6, v0, Lcom/shabakaty/downloader/vu2;->U:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    iget v6, v0, Lcom/shabakaty/downloader/vu2;->R:F

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/vu2;->getNanoTime()J

    move-result-wide v9

    .line 8
    iget-wide v11, v0, Lcom/shabakaty/downloader/vu2;->Q:J

    sub-long v11, v9, v11

    long-to-float v6, v11

    mul-float v6, v6, v2

    const v11, 0x3089705f    # 1.0E-9f

    mul-float v6, v6, v11

    iget v11, v0, Lcom/shabakaty/downloader/vu2;->N:F

    div-float/2addr v6, v11

    .line 9
    iget v11, v0, Lcom/shabakaty/downloader/vu2;->P:F

    add-float/2addr v11, v6

    cmpl-float v12, v2, v5

    if-lez v12, :cond_3

    .line 10
    iget v13, v0, Lcom/shabakaty/downloader/vu2;->R:F

    cmpl-float v13, v11, v13

    if-gez v13, :cond_4

    :cond_3
    cmpg-float v13, v2, v5

    if-gtz v13, :cond_5

    iget v13, v0, Lcom/shabakaty/downloader/vu2;->R:F

    cmpg-float v13, v11, v13

    if-gtz v13, :cond_5

    .line 11
    :cond_4
    iget v11, v0, Lcom/shabakaty/downloader/vu2;->R:F

    .line 12
    :cond_5
    iput v11, v0, Lcom/shabakaty/downloader/vu2;->P:F

    .line 13
    iput v11, v0, Lcom/shabakaty/downloader/vu2;->O:F

    .line 14
    iput-wide v9, v0, Lcom/shabakaty/downloader/vu2;->Q:J

    .line 15
    iput v6, v0, Lcom/shabakaty/downloader/vu2;->J:F

    .line 16
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v9, 0x3727c5ac    # 1.0E-5f

    cmpl-float v6, v6, v9

    if-lez v6, :cond_6

    .line 17
    sget-object v6, Lcom/shabakaty/downloader/vu2$d;->t:Lcom/shabakaty/downloader/vu2$d;

    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    :cond_6
    if-lez v12, :cond_7

    .line 18
    iget v6, v0, Lcom/shabakaty/downloader/vu2;->R:F

    cmpl-float v6, v11, v6

    if-gez v6, :cond_8

    :cond_7
    cmpg-float v6, v2, v5

    if-gtz v6, :cond_9

    iget v6, v0, Lcom/shabakaty/downloader/vu2;->R:F

    cmpg-float v6, v11, v6

    if-gtz v6, :cond_9

    .line 19
    :cond_8
    iget v11, v0, Lcom/shabakaty/downloader/vu2;->R:F

    :cond_9
    cmpl-float v6, v11, v4

    if-gez v6, :cond_a

    cmpg-float v9, v11, v5

    if-gtz v9, :cond_b

    .line 20
    :cond_a
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    .line 21
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 22
    iput-boolean v8, v0, Lcom/shabakaty/downloader/vu2;->U:Z

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/vu2;->getNanoTime()J

    const/4 v10, 0x0

    if-gtz v9, :cond_1d

    if-lez v12, :cond_c

    .line 24
    iget v9, v0, Lcom/shabakaty/downloader/vu2;->R:F

    cmpl-float v9, v11, v9

    if-gez v9, :cond_d

    :cond_c
    cmpg-float v9, v2, v5

    if-gtz v9, :cond_e

    iget v9, v0, Lcom/shabakaty/downloader/vu2;->R:F

    cmpg-float v9, v11, v9

    if-gtz v9, :cond_e

    :cond_d
    const/4 v9, 0x1

    goto :goto_0

    :cond_e
    const/4 v9, 0x0

    .line 25
    :goto_0
    iget-boolean v13, v0, Lcom/shabakaty/downloader/vu2;->U:Z

    if-nez v13, :cond_f

    if-eqz v9, :cond_f

    .line 26
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    .line 27
    :cond_f
    iget-boolean v13, v0, Lcom/shabakaty/downloader/vu2;->U:Z

    xor-int/2addr v9, v7

    or-int/2addr v9, v13

    iput-boolean v9, v0, Lcom/shabakaty/downloader/vu2;->U:Z

    cmpg-float v13, v11, v5

    if-gtz v13, :cond_11

    .line 28
    iget v13, v0, Lcom/shabakaty/downloader/vu2;->K:I

    if-eq v13, v3, :cond_11

    .line 29
    iget v3, v0, Lcom/shabakaty/downloader/vu2;->L:I

    if-ne v3, v13, :cond_10

    goto :goto_1

    .line 30
    :cond_10
    iput v13, v0, Lcom/shabakaty/downloader/vu2;->L:I

    .line 31
    throw v10

    :cond_11
    :goto_1
    float-to-double v13, v11

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v13, v15

    if-ltz v3, :cond_13

    .line 32
    iget v3, v0, Lcom/shabakaty/downloader/vu2;->L:I

    iget v13, v0, Lcom/shabakaty/downloader/vu2;->M:I

    if-ne v3, v13, :cond_12

    goto :goto_2

    .line 33
    :cond_12
    iput v13, v0, Lcom/shabakaty/downloader/vu2;->L:I

    .line 34
    throw v10

    :cond_13
    :goto_2
    if-nez v9, :cond_16

    if-lez v12, :cond_14

    if-eqz v6, :cond_15

    :cond_14
    cmpg-float v2, v2, v5

    if-gez v2, :cond_17

    cmpl-float v2, v11, v5

    if-nez v2, :cond_17

    .line 35
    :cond_15
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    goto :goto_3

    .line 36
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 37
    :cond_17
    :goto_3
    iget-boolean v1, v0, Lcom/shabakaty/downloader/vu2;->U:Z

    .line 38
    :goto_4
    iget v1, v0, Lcom/shabakaty/downloader/vu2;->P:F

    cmpl-float v2, v1, v4

    if-ltz v2, :cond_19

    .line 39
    iget v1, v0, Lcom/shabakaty/downloader/vu2;->L:I

    iget v2, v0, Lcom/shabakaty/downloader/vu2;->M:I

    if-eq v1, v2, :cond_18

    goto :goto_5

    :cond_18
    const/4 v7, 0x0

    .line 40
    :goto_5
    iput v2, v0, Lcom/shabakaty/downloader/vu2;->L:I

    :goto_6
    move v8, v7

    goto :goto_8

    :cond_19
    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1b

    .line 41
    iget v1, v0, Lcom/shabakaty/downloader/vu2;->L:I

    iget v2, v0, Lcom/shabakaty/downloader/vu2;->K:I

    if-eq v1, v2, :cond_1a

    goto :goto_7

    :cond_1a
    const/4 v7, 0x0

    .line 42
    :goto_7
    iput v2, v0, Lcom/shabakaty/downloader/vu2;->L:I

    goto :goto_6

    .line 43
    :cond_1b
    :goto_8
    iget-boolean v1, v0, Lcom/shabakaty/downloader/vu2;->h0:Z

    or-int/2addr v1, v8

    iput-boolean v1, v0, Lcom/shabakaty/downloader/vu2;->h0:Z

    if-eqz v8, :cond_1c

    .line 44
    iget-boolean v1, v0, Lcom/shabakaty/downloader/vu2;->d0:Z

    if-nez v1, :cond_1c

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/vu2;->requestLayout()V

    .line 46
    :cond_1c
    iget v1, v0, Lcom/shabakaty/downloader/vu2;->P:F

    iput v1, v0, Lcom/shabakaty/downloader/vu2;->O:F

    return-void

    .line 47
    :cond_1d
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    throw v10
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/vu2;->K:I

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/om0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/vu2;->M:I

    .line 3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/om0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/shabakaty/downloader/vu2;->P:F

    iget v3, p0, Lcom/shabakaty/downloader/vu2;->J:F

    const/16 v4, 0x2f

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "->"

    const-string v6, " (pos:"

    invoke-static {v4, v1, v5, v0, v6}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Dpos/Dt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->S:Lcom/shabakaty/downloader/vu2$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->a0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->c0:F

    iget v1, p0, Lcom/shabakaty/downloader/vu2;->O:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->b0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->S:Lcom/shabakaty/downloader/vu2$c;

    if-eqz v0, :cond_1

    .line 5
    iget v2, p0, Lcom/shabakaty/downloader/vu2;->K:I

    iget v3, p0, Lcom/shabakaty/downloader/vu2;->M:I

    invoke-interface {v0, p0, v2, v3}, Lcom/shabakaty/downloader/vu2$c;->b(Lcom/shabakaty/downloader/vu2;II)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->a0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vu2$c;

    .line 8
    iget v3, p0, Lcom/shabakaty/downloader/vu2;->K:I

    iget v4, p0, Lcom/shabakaty/downloader/vu2;->M:I

    invoke-interface {v2, p0, v3, v4}, Lcom/shabakaty/downloader/vu2$c;->b(Lcom/shabakaty/downloader/vu2;II)V

    goto :goto_0

    .line 9
    :cond_2
    iput v1, p0, Lcom/shabakaty/downloader/vu2;->b0:I

    .line 10
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->O:F

    iput v0, p0, Lcom/shabakaty/downloader/vu2;->c0:F

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/vu2;->S:Lcom/shabakaty/downloader/vu2$c;

    if-eqz v1, :cond_3

    .line 12
    iget v2, p0, Lcom/shabakaty/downloader/vu2;->K:I

    iget v3, p0, Lcom/shabakaty/downloader/vu2;->M:I

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/shabakaty/downloader/vu2$c;->a(Lcom/shabakaty/downloader/vu2;IIF)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->a0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vu2$c;

    .line 15
    iget v2, p0, Lcom/shabakaty/downloader/vu2;->K:I

    iget v3, p0, Lcom/shabakaty/downloader/vu2;->M:I

    iget v4, p0, Lcom/shabakaty/downloader/vu2;->O:F

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/shabakaty/downloader/vu2$c;->a(Lcom/shabakaty/downloader/vu2;IIF)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->S:Lcom/shabakaty/downloader/vu2$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->a0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->b0:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->S:Lcom/shabakaty/downloader/vu2$c;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->a0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 4
    :cond_3
    throw v1

    .line 5
    :cond_4
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->L:I

    iput v0, p0, Lcom/shabakaty/downloader/vu2;->b0:I

    .line 6
    throw v1
.end method

.method public x(FF)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/vu2$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vu2$b;-><init>(Lcom/shabakaty/downloader/vu2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 5
    iput p1, v0, Lcom/shabakaty/downloader/vu2$b;->a:F

    .line 6
    iput p2, v0, Lcom/shabakaty/downloader/vu2$b;->b:F

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/vu2;->setProgress(F)V

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/vu2$d;->t:Lcom/shabakaty/downloader/vu2$d;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/vu2;->setState(Lcom/shabakaty/downloader/vu2$d;)V

    .line 9
    iput p2, p0, Lcom/shabakaty/downloader/vu2;->J:F

    return-void
.end method

.method public y(II)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/vu2$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vu2$b;-><init>(Lcom/shabakaty/downloader/vu2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 5
    iput p1, v0, Lcom/shabakaty/downloader/vu2$b;->c:I

    .line 6
    iput p2, v0, Lcom/shabakaty/downloader/vu2$b;->d:I

    :cond_1
    return-void
.end method

.method public z(I)V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/vu2$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vu2$b;-><init>(Lcom/shabakaty/downloader/vu2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 5
    iput p1, v0, Lcom/shabakaty/downloader/vu2$b;->d:I

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/vu2;->L:I

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/vu2;->K:I

    if-ne v1, p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/vu2;->M:I

    if-ne v1, p1, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    iput p1, p0, Lcom/shabakaty/downloader/vu2;->M:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/vu2;->y(II)V

    .line 11
    iput v1, p0, Lcom/shabakaty/downloader/vu2;->P:F

    :goto_0
    return-void

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    iput p1, p0, Lcom/shabakaty/downloader/vu2;->R:F

    .line 13
    iput v1, p0, Lcom/shabakaty/downloader/vu2;->O:F

    .line 14
    iput v1, p0, Lcom/shabakaty/downloader/vu2;->P:F

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vu2;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/vu2;->Q:J

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vu2;->getNanoTime()J

    .line 17
    throw v3
.end method
