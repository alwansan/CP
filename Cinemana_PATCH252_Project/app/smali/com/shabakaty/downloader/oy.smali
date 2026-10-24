.class public Lcom/shabakaty/downloader/oy;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# instance fields
.field public a:Z

.field public b:Landroid/graphics/Matrix;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/graphics/Matrix;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lcom/shabakaty/downloader/ny$e;

.field public final synthetic g:Lcom/shabakaty/downloader/ny$d;

.field public final synthetic h:Lcom/shabakaty/downloader/ny;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ny;ZLandroid/graphics/Matrix;Landroid/view/View;Lcom/shabakaty/downloader/ny$e;Lcom/shabakaty/downloader/ny$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/oy;->h:Lcom/shabakaty/downloader/ny;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/oy;->c:Z

    iput-object p3, p0, Lcom/shabakaty/downloader/oy;->d:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    iput-object p5, p0, Lcom/shabakaty/downloader/oy;->f:Lcom/shabakaty/downloader/ny$e;

    iput-object p6, p0, Lcom/shabakaty/downloader/oy;->g:Lcom/shabakaty/downloader/ny$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/oy;->b:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/oy;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/oy;->a:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/oy;->c:Z

    const v1, 0x7f0a04d0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->h:Lcom/shabakaty/downloader/ny;

    iget-boolean p1, p1, Lcom/shabakaty/downloader/ny;->Q:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->d:Landroid/graphics/Matrix;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/oy;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/shabakaty/downloader/oy;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->f:Lcom/shabakaty/downloader/ny$e;

    iget-object v1, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ny$e;->a(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    const v1, 0x7f0a0335

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/g45;->a:Lcom/shabakaty/downloader/p45;

    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/p45;->f(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->f:Lcom/shabakaty/downloader/ny$e;

    iget-object v0, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ny$e;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->g:Lcom/shabakaty/downloader/ny$d;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/ny$d;->a:Landroid/graphics/Matrix;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/oy;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/shabakaty/downloader/oy;->b:Landroid/graphics/Matrix;

    const v1, 0x7f0a04d0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->f:Lcom/shabakaty/downloader/ny$e;

    iget-object v0, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ny$e;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/oy;->e:Landroid/view/View;

    invoke-static {p1}, Lcom/shabakaty/downloader/ny;->M(Landroid/view/View;)V

    return-void
.end method
