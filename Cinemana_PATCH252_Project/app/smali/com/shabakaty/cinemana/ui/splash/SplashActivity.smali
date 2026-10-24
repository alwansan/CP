.class public final Lcom/shabakaty/cinemana/ui/splash/SplashActivity;
.super Lcom/shabakaty/downloader/xi;
.source "SplashActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/fa4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xi<",
        "Lcom/shabakaty/downloader/z3;",
        "Lcom/shabakaty/downloader/fa4;",
        "Lcom/shabakaty/downloader/ka4;",
        ">;",
        "Lcom/shabakaty/downloader/fa4;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/splash/SplashActivity;",
        "Lcom/shabakaty/downloader/xi;",
        "Lcom/shabakaty/downloader/z3;",
        "Lcom/shabakaty/downloader/fa4;",
        "Lcom/shabakaty/downloader/ka4;",
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
.field public static final synthetic x:I


# instance fields
.field public v:Ljava/lang/String;

.field public w:Lcom/shabakaty/downloader/gy2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0024

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/z3;

    iget-object v0, v0, Lcom/shabakaty/downloader/z3;->N:Landroid/widget/TextView;

    const-string v1, "binding.notEarthlinkTxt"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/z3;

    iget-object v0, v0, Lcom/shabakaty/downloader/z3;->O:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "binding.retryButton"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    return-void
.end method

.method public G1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public U()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    const-string v2, "android.intent.action.VIEW"

    .line 3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    const-string v5, "/video"

    invoke-static {v3, v5, v2, v4}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_3
    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity;->v:Ljava/lang/String;

    .line 5
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity;->v:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity;->v:Ljava/lang/String;

    const-string v2, "VideoIDArg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/ka4;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/ka4;

    return-object v0
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/z3;

    iget-object v0, v0, Lcom/shabakaty/downloader/z3;->N:Landroid/widget/TextView;

    const-string v1, "binding.notEarthlinkTxt"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ka4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka4;->m()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 4
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/t65;->a(Landroid/view/Window;Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x700

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 8
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/y65;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/y65;-><init>(Landroid/view/Window;Landroid/view/View;)V

    const/4 v2, 0x7

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/y65;->a:Lcom/shabakaty/downloader/y65$e;

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/y65$e;->a(I)V

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/y65;->a:Lcom/shabakaty/downloader/y65$e;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/y65$e;->b(I)V

    .line 11
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/StorageAccess;->gateOnCreate(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    check-cast p1, Lcom/shabakaty/downloader/z3;

    iget-object p1, p1, Lcom/shabakaty/downloader/z3;->N:Landroid/widget/TextView;

    const-string v0, "binding.notEarthlinkTxt"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 14
    new-instance p1, Lcom/shabakaty/cinemana/ui/splash/SplashActivity$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/ui/splash/SplashActivity$a;-><init>(Lcom/shabakaty/cinemana/ui/splash/SplashActivity;)V

    const-string v0, "start_animation"

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/he0;->r(Ljava/lang/String;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/f73;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ui/splash/SplashActivity$b;-><init>(Lcom/shabakaty/cinemana/ui/splash/SplashActivity;)V

    const-string v1, "operation"

    .line 16
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-boolean p1, p1, Lcom/shabakaty/downloader/f73;->a:Z

    if-eqz p1, :cond_2

    .line 18
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity;->w:Lcom/shabakaty/downloader/gy2;

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 21
    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/gy2;->b(Z)V

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/gy2;->b(Z)V

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/iy2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/iy2;-><init>(Lcom/shabakaty/downloader/gy2;)V

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    const-string v2, "https://share.shabakaty.cc/whatismyip"

    .line 25
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 26
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    .line 27
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v1

    .line 28
    iget-object v2, p1, Lcom/shabakaty/downloader/gy2;->e:Lcom/shabakaty/downloader/a63;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/wq;)V

    .line 29
    new-instance v0, Lcom/shabakaty/downloader/hy2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/hy2;-><init>(Lcom/shabakaty/downloader/gy2;)V

    .line 30
    new-instance v1, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    const-string v2, "https://api.ipify.org/?format=json"

    .line 31
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    .line 32
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    .line 33
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v1

    .line 34
    iget-object p1, p1, Lcom/shabakaty/downloader/gy2;->e:Lcom/shabakaty/downloader/a63;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/wq;)V

    return-void

    :cond_3
    const-string p1, "networkInformation"

    .line 35
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/xi;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x1138

    if-ne p1, v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v1, p3, v0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/shabakaty/downloader/xi;->onResume()V

    return-void
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

.method public r()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public z1(Lcom/shabakaty/downloader/q14;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/yc4;->a(Landroid/content/Context;Lcom/shabakaty/downloader/q14;)Landroid/content/Intent;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
