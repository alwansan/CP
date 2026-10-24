.class public final Lcom/shabakaty/downloader/ia4;
.super Lcom/shabakaty/downloader/af2;
.source "SplashViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ka4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ka4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ia4;->r:Lcom/shabakaty/downloader/ka4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;

    const-string v0, "key_service_is_down"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->serviceStatus:Lcom/shabakaty/downloader/q14;

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ia4;->r:Lcom/shabakaty/downloader/ka4;

    .line 4
    instance-of v3, p1, Lcom/shabakaty/downloader/q14$b;

    if-eqz v3, :cond_2

    .line 5
    iget-object p1, v2, Lcom/shabakaty/downloader/ka4;->f:Lcom/shabakaty/downloader/ff3;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/ff3;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka4;->l()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/fa4;

    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/fa4;->z1(Lcom/shabakaty/downloader/q14;)V

    .line 9
    :goto_0
    sget-object v2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-nez v2, :cond_3

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/ia4;->r:Lcom/shabakaty/downloader/ka4;

    .line 11
    iget-object v2, p1, Lcom/shabakaty/downloader/ka4;->f:Lcom/shabakaty/downloader/ff3;

    .line 12
    iget-object v2, v2, Lcom/shabakaty/downloader/ff3;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka4;->l()V

    .line 14
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
