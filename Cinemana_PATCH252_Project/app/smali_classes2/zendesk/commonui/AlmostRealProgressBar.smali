.class public Lzendesk/commonui/AlmostRealProgressBar;
.super Landroid/widget/ProgressBar;
.source "AlmostRealProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/commonui/AlmostRealProgressBar$b;,
        Lzendesk/commonui/AlmostRealProgressBar$a;,
        Lzendesk/commonui/AlmostRealProgressBar$c;
    }
.end annotation


# static fields
.field public static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Lzendesk/commonui/AlmostRealProgressBar$b;

.field public s:Lzendesk/commonui/AlmostRealProgressBar$b;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$c;",
            ">;"
        }
    .end annotation
.end field

.field public u:Landroid/os/Handler;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lzendesk/commonui/AlmostRealProgressBar$c;

    .line 1
    new-instance v1, Lzendesk/commonui/AlmostRealProgressBar$c;

    const/16 v2, 0x3c

    const-wide/16 v3, 0xfa0

    invoke-direct {v1, v2, v3, v4}, Lzendesk/commonui/AlmostRealProgressBar$c;-><init>(IJ)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lzendesk/commonui/AlmostRealProgressBar$c;

    const/16 v2, 0x5a

    const-wide/16 v3, 0x3a98

    invoke-direct {v1, v2, v3, v4}, Lzendesk/commonui/AlmostRealProgressBar$c;-><init>(IJ)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzendesk/commonui/AlmostRealProgressBar;->x:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar;->u:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->r:Lzendesk/commonui/AlmostRealProgressBar$b;

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 2
    iget-object v2, p0, Lzendesk/commonui/AlmostRealProgressBar;->s:Lzendesk/commonui/AlmostRealProgressBar$b;

    if-eqz v2, :cond_0

    .line 3
    iget-boolean v3, v2, Lzendesk/commonui/AlmostRealProgressBar$b;->b:Z

    if-eqz v3, :cond_0

    .line 4
    iget-boolean v3, v2, Lzendesk/commonui/AlmostRealProgressBar$b;->c:Z

    if-nez v3, :cond_0

    .line 5
    iget-object v0, v2, Lzendesk/commonui/AlmostRealProgressBar$b;->a:Landroid/animation/Animator;

    .line 6
    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lzendesk/commonui/AlmostRealProgressBar;->s:Lzendesk/commonui/AlmostRealProgressBar$b;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/commonui/AlmostRealProgressBar$c;

    .line 10
    iget v4, v3, Lzendesk/commonui/AlmostRealProgressBar$c;->r:I

    .line 11
    iget-wide v5, v3, Lzendesk/commonui/AlmostRealProgressBar$c;->s:J

    .line 12
    invoke-virtual {p0, p2, v4, v5, v6}, Lzendesk/commonui/AlmostRealProgressBar;->b(IIJ)Landroid/animation/Animator;

    move-result-object p2

    .line 13
    iget v3, v3, Lzendesk/commonui/AlmostRealProgressBar$c;->r:I

    .line 14
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v3

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 16
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 18
    new-instance p2, Lzendesk/commonui/AlmostRealProgressBar$b;

    invoke-direct {p2, p1}, Lzendesk/commonui/AlmostRealProgressBar$b;-><init>(Landroid/animation/Animator;)V

    .line 19
    iput-object p2, p0, Lzendesk/commonui/AlmostRealProgressBar;->r:Lzendesk/commonui/AlmostRealProgressBar$b;

    .line 20
    iget-object p1, p2, Lzendesk/commonui/AlmostRealProgressBar$b;->a:Landroid/animation/Animator;

    .line 21
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    return-void
.end method

.method public final b(IIJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "progress"

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public final c(FFJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "alpha"

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 10

    .line 1
    instance-of v0, p1, Lzendesk/commonui/AlmostRealProgressBar$a;

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lzendesk/commonui/AlmostRealProgressBar$a;

    .line 3
    iget v0, p1, Lzendesk/commonui/AlmostRealProgressBar$a;->r:I

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    iget-object v2, p1, Lzendesk/commonui/AlmostRealProgressBar$a;->s:Ljava/util/List;

    .line 6
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v3, p1, Lzendesk/commonui/AlmostRealProgressBar$a;->s:Ljava/util/List;

    .line 9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/commonui/AlmostRealProgressBar$c;

    .line 10
    iget v6, p1, Lzendesk/commonui/AlmostRealProgressBar$a;->r:I

    .line 11
    iget v7, v5, Lzendesk/commonui/AlmostRealProgressBar$c;->r:I

    if-ge v6, v7, :cond_0

    .line 12
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/h50;->g(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/commonui/AlmostRealProgressBar$c;

    .line 15
    iget v5, p1, Lzendesk/commonui/AlmostRealProgressBar$a;->r:I

    .line 16
    iget v6, v3, Lzendesk/commonui/AlmostRealProgressBar$c;->r:I

    sub-int v7, v6, v4

    int-to-float v7, v7

    sub-int/2addr v5, v4

    int-to-float v4, v5

    .line 17
    iget-wide v8, v3, Lzendesk/commonui/AlmostRealProgressBar$c;->s:J

    long-to-float v3, v8

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v4, v7

    sub-float/2addr v5, v4

    mul-float v5, v5, v3

    float-to-long v3, v5

    .line 18
    new-instance v5, Lzendesk/commonui/AlmostRealProgressBar$c;

    invoke-direct {v5, v6, v3, v4}, Lzendesk/commonui/AlmostRealProgressBar$c;-><init>(IJ)V

    .line 19
    invoke-virtual {v2, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 20
    :cond_2
    iget v1, p1, Lzendesk/commonui/AlmostRealProgressBar$a;->r:I

    .line 21
    invoke-virtual {p0, v2, v1}, Lzendesk/commonui/AlmostRealProgressBar;->a(Ljava/util/List;I)V

    .line 22
    iput-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->t:Ljava/util/List;

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 24
    :goto_1
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    .line 25
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->r:Lzendesk/commonui/AlmostRealProgressBar$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar;->v:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3
    new-instance v1, Lzendesk/commonui/AlmostRealProgressBar$a;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lzendesk/commonui/AlmostRealProgressBar;->t:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3}, Lzendesk/commonui/AlmostRealProgressBar$a;-><init>(Landroid/os/Parcelable;ILjava/util/List;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
