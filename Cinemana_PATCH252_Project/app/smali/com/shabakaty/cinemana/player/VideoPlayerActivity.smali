.class public final Lcom/shabakaty/cinemana/player/VideoPlayerActivity;
.super Lcom/shabakaty/downloader/xi;
.source "VideoPlayerActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/e12$a;
.implements Lcom/shabakaty/downloader/p10;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xi<",
        "Lcom/shabakaty/downloader/d4;",
        "Lcom/shabakaty/downloader/p10;",
        "Lcom/shabakaty/downloader/q10;",
        ">;",
        "Lcom/shabakaty/downloader/e12$a;",
        "Lcom/shabakaty/downloader/p10;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00052\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/player/VideoPlayerActivity;",
        "Lcom/shabakaty/downloader/xi;",
        "Lcom/shabakaty/downloader/d4;",
        "Lcom/shabakaty/downloader/p10;",
        "Lcom/shabakaty/downloader/q10;",
        "Lcom/shabakaty/downloader/e12$a;",
        "<init>",
        "()V",
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
.field public static final synthetic A:I


# instance fields
.field public final v:Lcom/shabakaty/downloader/kf2;

.field public w:Lcom/shabakaty/downloader/s3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/s3<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:Z

.field public y:Lcom/shabakaty/downloader/y25;

.field public z:Lcom/shabakaty/downloader/mu0;


# direct methods
.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d0026

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity$a;-><init>(Lcom/shabakaty/cinemana/player/VideoPlayerActivity;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->v:Lcom/shabakaty/downloader/kf2;

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/t43;->f(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->a(Lcom/shabakaty/downloader/t43;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/j25;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/j25;-><init>(Lcom/shabakaty/cinemana/player/VideoPlayerActivity;I)V

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v3, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/shabakaty/downloader/t43;->d(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/n5;->v:Lcom/shabakaty/downloader/n5;

    sget-object v4, Lcom/shabakaty/downloader/uh0;->t:Lcom/shabakaty/downloader/uh0;

    .line 8
    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/shabakaty/downloader/t43;->h(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->z:Lcom/shabakaty/downloader/mu0;

    return-void
.end method


# virtual methods
.method public final E1(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->m0()Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getScaleListener()Lcom/shabakaty/downloader/is3;

    move-result-object v0

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/is3;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/q10;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->G:Lcom/shabakaty/downloader/xv2;

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->q0()Lcom/shabakaty/downloader/p00;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/p00;->e0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f080177

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->r(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->v0()Lcom/shabakaty/downloader/n10;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/n10;->O:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/q10;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->G:Lcom/shabakaty/downloader/xv2;

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->q0()Lcom/shabakaty/downloader/p00;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/p00;->e0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f080178

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->r(I)V

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->v0()Lcom/shabakaty/downloader/n10;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/n10;->O:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q10;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q10;->t()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    :goto_2
    return-void
.end method

.method public final I1()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->x:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/d4;

    iget-object v0, v0, Lcom/shabakaty/downloader/d4;->N:Landroid/widget/ProgressBar;

    const-string v1, "binding.playerProgressBar"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/d4;

    iget-object v0, v0, Lcom/shabakaty/downloader/d4;->O:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.playerRetryButton"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ad3;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-direct {v0, v1, v1}, Lcom/shabakaty/downloader/ad3;-><init>(FF)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/q10;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/q10;->k:Lcom/shabakaty/downloader/s64;

    .line 10
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/s64;->q0(Lcom/shabakaty/downloader/ad3;)V

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->m0()Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->z()V

    return-void
.end method

.method public L0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->p0()Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->C()V

    return-void
.end method

.method public final R1()V
    .locals 3

    const-string v0, "*/*"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->w:Lcom/shabakaty/downloader/s3;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/s3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/h3;)V

    :goto_0
    return-void
.end method

.method public U1(Lcom/shabakaty/downloader/b41;)V
    .locals 2

    const-string v0, "episodeItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q10;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/q10;->C:Lcom/shabakaty/downloader/xv2;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->m0()Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/b41;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->t(Lcom/shabakaty/downloader/b41;I)V

    return-void
.end method

.method public final X1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/d4;

    iget-object v0, v0, Lcom/shabakaty/downloader/d4;->N:Landroid/widget/ProgressBar;

    const-string v1, "binding.playerProgressBar"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->q0()Lcom/shabakaty/downloader/p00;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/p00;->f0:Landroid/widget/TextView;

    const-string v1, "controllerBinding.videoTitle"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final Y1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0xc000400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1707

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public ca1OnCreateBase(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->Y1()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/q10;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoModelArg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/q10;

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->i1()Lcom/shabakaty/downloader/y25;

    move-result-object v0

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/s10;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lcom/shabakaty/downloader/s10;-><init>(Lcom/shabakaty/downloader/y25;Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->I1()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->onPlayer(Ljava/lang/Object;)V

    return-void
.end method

.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/q10;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/q10;

    return-object v0
.end method

.method public final i1()Lcom/shabakaty/downloader/y25;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->y:Lcom/shabakaty/downloader/y25;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "videoUtils"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k0()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->x:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->x:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->m0()Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->B()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->p0()Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getSettingsBottomSheetController()Lcom/shabakaty/downloader/ed3;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    iput-object v3, v2, Lcom/shabakaty/downloader/ed3;->d:Lcom/shabakaty/downloader/sd3;

    .line 7
    iget-object v2, v1, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->u:Lcom/shabakaty/downloader/mu0;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v2

    xor-int/2addr v2, v0

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v1, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->u:Lcom/shabakaty/downloader/mu0;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->m0()Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getPlaybackEventsHandler()Lcom/shabakaty/downloader/wc3;

    move-result-object v0

    .line 10
    iput-object v3, v0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/wc3;->D:Lcom/shabakaty/downloader/mu0;

    if-nez v0, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v1

    if-nez v1, :cond_5

    .line 13
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 14
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 15
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    if-nez v1, :cond_7

    .line 17
    const-class v1, Lcom/shabakaty/downloader/q5;

    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v2, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    if-nez v2, :cond_6

    .line 20
    new-instance v2, Lcom/shabakaty/downloader/q5;

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/q5;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/nn0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_6
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 22
    :cond_7
    :goto_4
    sget-object v0, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    if-nez v0, :cond_8

    goto :goto_5

    .line 23
    :cond_8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q5;->b()V

    .line 24
    :goto_5
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->z:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    :cond_9
    return-void
.end method

.method public final m0()Lcom/shabakaty/cinemana/player/CinemanaPlayerView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/d4;

    iget-object v0, v0, Lcom/shabakaty/downloader/d4;->M:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    const-string v1, "binding.cinemenaPlayerView"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public o()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->I1()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/xi;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onActivityResult(Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    const-string v1, "subtitle_style_settings"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/q;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/q;->Y()Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->k0()V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->E1(I)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "applicationContext.resources"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uj2$b;->a()Lcom/shabakaty/downloader/uj2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uj2;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/shabakaty/downloader/r9;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/r9;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->ca1OnCreateBase(Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->landscape(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->k0()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->stopEpisodePolling(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/xi;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->pause(Ljava/lang/Object;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->v0()Lcom/shabakaty/downloader/n10;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/n10;->O:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/shabakaty/downloader/ji1;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 1
    array-length p1, p3

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, p2

    if-eqz p1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->R1()V

    :cond_1
    return-void

    .line 3
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ji1;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 70

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/q10;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/q10;->k:Lcom/shabakaty/downloader/s64;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/s64;->C()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/q10;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/q10;->k:Lcom/shabakaty/downloader/s64;

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/s64;->C()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/q10;

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/q10;

    .line 8
    iget-object v2, v2, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    .line 9
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v2, :cond_0

    new-instance v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const-wide/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, -0x1

    const v69, 0x7fffffff

    invoke-direct/range {v3 .. v69}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/q25;Ljava/util/List;Lcom/shabakaty/cinemana/domain/models/local/Quality;Ljava/lang/String;ZII)V

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/q10;

    .line 11
    iget-object v3, v3, Lcom/shabakaty/downloader/q10;->k:Lcom/shabakaty/downloader/s64;

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/s64;->C()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/q10;->v(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;J)Lcom/shabakaty/downloader/e92;

    .line 13
    :cond_1
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->x:Z

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->I1()V

    .line 15
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->v0()Lcom/shabakaty/downloader/n10;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/n10;->O:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 16
    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Landroid/view/View;

    instance-of v2, v1, Landroid/opengl/GLSurfaceView;

    if-eqz v2, :cond_3

    .line 17
    check-cast v1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 18
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->z:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x2

    .line 19
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/t43;->f(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/t43;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/shabakaty/downloader/uv3;->a(Lcom/shabakaty/downloader/t43;)Lcom/shabakaty/downloader/t43;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/shabakaty/downloader/j25;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/j25;-><init>(Lcom/shabakaty/cinemana/player/VideoPlayerActivity;I)V

    .line 22
    sget-object v3, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v4, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/shabakaty/downloader/t43;->d(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/t43;

    move-result-object v1

    .line 23
    sget-object v2, Lcom/shabakaty/downloader/k25;->r:Lcom/shabakaty/downloader/k25;

    sget-object v5, Lcom/shabakaty/downloader/o5;->u:Lcom/shabakaty/downloader/o5;

    .line 24
    invoke-virtual {v1, v2, v5, v4, v3}, Lcom/shabakaty/downloader/t43;->h(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->z:Lcom/shabakaty/downloader/mu0;

    .line 26
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->p0()Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getSettingsBottomSheetController()Lcom/shabakaty/downloader/ed3;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->p0()Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iput-object v2, v1, Lcom/shabakaty/downloader/ed3;->d:Lcom/shabakaty/downloader/sd3;

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->p0()Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->A()V

    .line 29
    invoke-super/range {p0 .. p0}, Lcom/shabakaty/downloader/ji1;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/p3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/p3;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/SubtitleImportCallback;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/SubtitleImportCallback;-><init>(Lcom/shabakaty/cinemana/player/VideoPlayerActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lcom/shabakaty/downloader/o3;Lcom/shabakaty/downloader/n3;)Lcom/shabakaty/downloader/s3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->w:Lcom/shabakaty/downloader/s3;

    .line 3
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStart()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q10;

    iget-object v1, v0, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->installObserver(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q10;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/q10;->k:Lcom/shabakaty/downloader/s64;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s64;->z(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->stopEpisodePolling(Ljava/lang/Object;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q10;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/q10;->k:Lcom/shabakaty/downloader/s64;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s64;->z(Z)V

    .line 4
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStop()V

    return-void
.end method

.method public final p0()Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->v0()Lcom/shabakaty/downloader/n10;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/n10;->N:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    const-string v1, "playerViewBinding.controllerView"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public final q0()Lcom/shabakaty/downloader/p00;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->v0()Lcom/shabakaty/downloader/n10;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/n10;->N:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getBinding()Lcom/shabakaty/downloader/p00;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public setRequestedOrientation(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->E1(I)V

    return-void
.end method

.method public final u0()Landroid/widget/Toast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->v:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    return-object v0
.end method

.method public final v0()Lcom/shabakaty/downloader/n10;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/d4;

    iget-object v0, v0, Lcom/shabakaty/downloader/d4;->M:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getBinding()Lcom/shabakaty/downloader/n10;

    move-result-object v0

    return-object v0
.end method

.method public z0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->b(Lcom/shabakaty/downloader/vj;Ljava/lang/String;)V

    return-void
.end method
