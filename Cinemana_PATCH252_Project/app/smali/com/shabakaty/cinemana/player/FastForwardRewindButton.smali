.class public final Lcom/shabakaty/cinemana/player/FastForwardRewindButton;
.super Lcom/facebook/drawee/view/SimpleDraweeView;
.source "FastForwardRewindButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006R$\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00028\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/player/FastForwardRewindButton;",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "",
        "forward",
        "Lcom/shabakaty/downloader/qv4;",
        "setIsFastForward",
        "(Ljava/lang/Boolean;)V",
        "hidden",
        "setInnerEpisodesHidden",
        "ready",
        "setPlayerReady",
        "value",
        "B",
        "Z",
        "setForward",
        "(Z)V",
        "isForward",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->z:Z

    .line 4
    iput-boolean p2, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->B:Z

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f080174

    invoke-virtual {p2, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->r(I)V

    :goto_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->g()V

    const p2, 0x7f0802cd

    .line 9
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic f(Lcom/shabakaty/cinemana/player/FastForwardRewindButton;)V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->setVisibility$lambda-0(Lcom/shabakaty/cinemana/player/FastForwardRewindButton;)V

    return-void
.end method

.method private final setForward(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->B:Z

    if-eq p1, v0, :cond_3

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->B:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f080174

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->r(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f08023f

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->r(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->g()V

    :cond_3
    return-void
.end method

.method private static final setVisibility$lambda-0(Lcom/shabakaty/cinemana/player/FastForwardRewindButton;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->A:Z

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x3e99999a    # 0.3f

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/rr;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/cinemana/player/FastForwardRewindButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final setInnerEpisodesHidden(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->z:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->z:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->g()V

    :cond_0
    return-void
.end method

.method public final setIsFastForward(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->B:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->setForward(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->g()V

    :cond_0
    return-void
.end method

.method public final setPlayerReady(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->A:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->A:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/FastForwardRewindButton;->g()V

    :cond_0
    return-void
.end method
