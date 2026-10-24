.class public final Lcom/shabakaty/cinemana/ui/splash/SplashActivity$b;
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

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity$b;->r:Lcom/shabakaty/cinemana/ui/splash/SplashActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/splash/SplashActivity$b;->r:Lcom/shabakaty/cinemana/ui/splash/SplashActivity;

    sget v1, Lcom/shabakaty/cinemana/ui/splash/SplashActivity;->x:I

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ka4;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/ka4;->f:Lcom/shabakaty/downloader/ff3;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/ff3;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "key_service_is_down"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/ka4;->g:Lcom/shabakaty/downloader/ou1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ou1;->a()Lcom/shabakaty/downloader/f74;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/ia4;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/ia4;-><init>(Lcom/shabakaty/downloader/ka4;)V

    .line 6
    sget-object v3, Lcom/shabakaty/downloader/ja4;->r:Lcom/shabakaty/downloader/ja4;

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka4;->l()V

    .line 9
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
