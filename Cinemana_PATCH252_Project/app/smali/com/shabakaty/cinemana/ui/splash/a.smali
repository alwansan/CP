.class public final Lcom/shabakaty/cinemana/ui/splash/a;
.super Ljava/lang/Object;
.source "SplashActivity.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/ui/splash/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/splash/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/splash/a;->a:Lcom/shabakaty/cinemana/ui/splash/SplashActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/splash/a;->a:Lcom/shabakaty/cinemana/ui/splash/SplashActivity;

    sget v0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity;->x:I

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ka4;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka4;->l()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
