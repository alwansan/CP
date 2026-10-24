.class public Lcom/shabakaty/downloader/ab1$a;
.super Ljava/lang/Object;
.source "FillAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ab1;->d()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ab1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ab1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ab1$a;->a:Lcom/shabakaty/downloader/ab1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ab1$a;->a:Lcom/shabakaty/downloader/ab1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ANIMATION_COLOR"

    .line 3
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "ANIMATION_COLOR_REVERSE"

    .line 4
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "ANIMATION_RADIUS"

    .line 5
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "ANIMATION_RADIUS_REVERSE"

    .line 6
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "ANIMATION_STROKE"

    .line 7
    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "ANIMATION_STROKE_REVERSE"

    .line 8
    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    iget-object v6, v0, Lcom/shabakaty/downloader/ab1;->g:Lcom/shabakaty/downloader/bb1;

    .line 10
    iput v1, v6, Lcom/shabakaty/downloader/p50;->a:I

    .line 11
    iput v2, v6, Lcom/shabakaty/downloader/p50;->b:I

    .line 12
    iput v3, v6, Lcom/shabakaty/downloader/bb1;->c:I

    .line 13
    iput v4, v6, Lcom/shabakaty/downloader/bb1;->d:I

    .line 14
    iput v5, v6, Lcom/shabakaty/downloader/bb1;->e:I

    .line 15
    iput p1, v6, Lcom/shabakaty/downloader/bb1;->f:I

    .line 16
    iget-object p1, v0, Lcom/shabakaty/downloader/yi;->b:Lcom/shabakaty/downloader/lz4$a;

    if-eqz p1, :cond_0

    .line 17
    check-cast p1, Lcom/rd/a;

    invoke-virtual {p1, v6}, Lcom/rd/a;->b(Lcom/shabakaty/downloader/kz4;)V

    :cond_0
    return-void
.end method
