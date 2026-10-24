.class public final Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;
.super Lcom/facebook/drawee/view/SimpleDraweeView;
.source "NextPreviousEpisodeButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u0017\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0006R$\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00028\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R.\u0010\u001c\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00158\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "",
        "next",
        "Lcom/shabakaty/downloader/qv4;",
        "setIsNext",
        "(Ljava/lang/Boolean;)V",
        "hidden",
        "setInnerEpisodesHidden",
        "hasNext",
        "setHasNextEpisode",
        "hasPrevious",
        "setHasPreviousEpisode",
        "ready",
        "setPlayerReady",
        "value",
        "D",
        "Z",
        "setNext",
        "(Z)V",
        "isNext",
        "",
        "E",
        "Ljava/lang/String;",
        "getKind",
        "()Ljava/lang/String;",
        "setKind",
        "(Ljava/lang/String;)V",
        "kind",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic F:I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Ljava/lang/String;

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
    iput-boolean p2, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->z:Z

    .line 4
    iput-boolean p2, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->D:Z

    const-string p2, "1"

    .line 5
    iput-object p2, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->E:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f080231

    invoke-virtual {p2, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->r(I)V

    :goto_0
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->f()V

    const p2, 0x7f0802cd

    .line 10
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setNext(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->D:Z

    if-eq p1, v0, :cond_3

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->D:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f080231

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
    const v0, 0x7f08023a

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->r(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->f()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->E:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v3, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->D:Z

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->z:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->C:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->A:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    .line 3
    iget-boolean v3, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->z:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->C:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->B:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->z:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/lr;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/downloader/lr;-><init>(Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final setHasNextEpisode(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->A:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->A:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->f()V

    :cond_0
    return-void
.end method

.method public final setHasPreviousEpisode(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->B:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->B:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->f()V

    :cond_0
    return-void
.end method

.method public final setInnerEpisodesHidden(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->z:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->z:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->f()V

    :cond_0
    return-void
.end method

.method public final setIsNext(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->D:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->setNext(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->f()V

    :cond_0
    return-void
.end method

.method public final setKind(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->E:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->E:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->f()V

    :cond_0
    return-void
.end method

.method public final setPlayerReady(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->C:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->C:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->f()V

    :cond_0
    return-void
.end method
