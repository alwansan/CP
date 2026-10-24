.class public Lcom/facebook/drawee/view/DraweeTransition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DraweeTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/view/DraweeTransition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/drawee/view/GenericDraweeView;

.field public final synthetic b:Lcom/facebook/drawee/view/DraweeTransition;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/view/DraweeTransition;Lcom/facebook/drawee/view/GenericDraweeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->b:Lcom/facebook/drawee/view/DraweeTransition;

    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->a:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->a:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->b:Lcom/facebook/drawee/view/DraweeTransition;

    .line 2
    iget-object v0, v0, Lcom/facebook/drawee/view/DraweeTransition;->s:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 3
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->o(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->b:Lcom/facebook/drawee/view/DraweeTransition;

    .line 5
    iget-object p1, p1, Lcom/facebook/drawee/view/DraweeTransition;->u:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->a:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->b:Lcom/facebook/drawee/view/DraweeTransition;

    .line 7
    iget-object v0, v0, Lcom/facebook/drawee/view/DraweeTransition;->u:Landroid/graphics/PointF;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->m(I)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->q(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
