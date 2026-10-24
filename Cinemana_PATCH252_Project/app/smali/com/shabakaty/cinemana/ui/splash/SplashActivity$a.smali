.class public final Lcom/shabakaty/cinemana/ui/splash/SplashActivity$a;
.super Lcom/shabakaty/downloader/af2;
.source "SplashActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/splash/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/splash/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/splash/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity$a;->r:Lcom/shabakaty/cinemana/ui/splash/SplashActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    new-instance v1, Lcom/shabakaty/cinemana/ui/splash/a;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity$a;->r:Lcom/shabakaty/cinemana/ui/splash/SplashActivity;

    invoke-direct {v1, v2}, Lcom/shabakaty/cinemana/ui/splash/a;-><init>(Lcom/shabakaty/cinemana/ui/splash/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity$a;->r:Lcom/shabakaty/cinemana/ui/splash/SplashActivity;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/z3;

    .line 7
    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
