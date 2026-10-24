.class public Lcom/shabakaty/downloader/c45;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/b45;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:Landroid/view/animation/Interpolator;

.field public d:Lcom/shabakaty/downloader/d45;

.field public e:Z

.field public final f:Lcom/shabakaty/downloader/e45;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/c45;->b:J

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/c45$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/c45$a;-><init>(Lcom/shabakaty/downloader/c45;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/c45;->f:Lcom/shabakaty/downloader/e45;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/c45;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/c45;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/c45;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/b45;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/b45;->b()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/c45;->e:Z

    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/c45;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/c45;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/b45;

    .line 3
    iget-wide v2, p0, Lcom/shabakaty/downloader/c45;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/b45;->c(J)Lcom/shabakaty/downloader/b45;

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/c45;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_3

    .line 6
    iget-object v3, v1, Lcom/shabakaty/downloader/b45;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/c45;->d:Lcom/shabakaty/downloader/d45;

    if-eqz v2, :cond_4

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/c45;->f:Lcom/shabakaty/downloader/e45;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/b45;->d(Lcom/shabakaty/downloader/d45;)Lcom/shabakaty/downloader/b45;

    .line 10
    :cond_4
    iget-object v1, v1, Lcom/shabakaty/downloader/b45;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/shabakaty/downloader/c45;->e:Z

    return-void
.end method
