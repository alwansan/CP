.class public Lcom/shabakaty/downloader/fk$b;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/fk;->d(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fk;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/fk$b;->a:Lcom/shabakaty/downloader/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fk$b;->a:Lcom/shabakaty/downloader/fk;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/fk;->B:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/jo4;

    const v2, 0x3f99999a    # 1.2f

    .line 5
    iput v2, v1, Lcom/shabakaty/downloader/jo4;->d0:F

    .line 6
    iput p1, v1, Lcom/shabakaty/downloader/jo4;->b0:F

    .line 7
    iput p1, v1, Lcom/shabakaty/downloader/jo4;->c0:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e428f5c    # 0.19f

    .line 8
    invoke-static {v2, v3, v4, v3, p1}, Lcom/shabakaty/downloader/f8;->b(FFFFF)F

    move-result v2

    iput v2, v1, Lcom/shabakaty/downloader/jo4;->e0:F

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sn2;->invalidateSelf()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/fk$b;->a:Lcom/shabakaty/downloader/fk;

    sget-object v0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
