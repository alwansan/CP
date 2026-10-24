.class public final Lcom/shabakaty/downloader/zu1;
.super Lcom/shabakaty/downloader/yx2;
.source "HomeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/yx2<",
        "Lcom/shabakaty/downloader/eu1;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lcom/shabakaty/downloader/vu1;

.field public final j:Lcom/shabakaty/usermanagement/UserManagement;

.field public final k:Lcom/shabakaty/downloader/ff3;

.field public final l:Lcom/shabakaty/downloader/sx4;

.field public final m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/shabakaty/downloader/n24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vu1;Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/sx4;Ljava/lang/ref/WeakReference;Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/al2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vu1;",
            "Lcom/shabakaty/usermanagement/UserManagement;",
            "Lcom/shabakaty/downloader/ff3;",
            "Lcom/shabakaty/downloader/sx4;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/shabakaty/downloader/n24;",
            "Lcom/shabakaty/downloader/al2;",
            ")V"
        }
    .end annotation

    const-string v0, "homeRepository"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManagement"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsManager"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoUseCases"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weakContext"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginStateObserver"

    invoke-static {p7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p7}, Lcom/shabakaty/downloader/yx2;-><init>(Lcom/shabakaty/downloader/al2;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zu1;->i:Lcom/shabakaty/downloader/vu1;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/zu1;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/zu1;->k:Lcom/shabakaty/downloader/ff3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/zu1;->l:Lcom/shabakaty/downloader/sx4;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/zu1;->m:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/zu1;->n:Lcom/shabakaty/downloader/n24;

    .line 8
    invoke-static {p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object p1

    new-instance p4, Lcom/shabakaty/downloader/av1;

    const/4 p7, 0x0

    invoke-direct {p4, p0, p7}, Lcom/shabakaty/downloader/av1;-><init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p5, 0x3

    const/4 p6, 0x0

    invoke-static/range {p1 .. p6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 9
    invoke-static {p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/zu1$a;

    invoke-direct {v3, p0, p7}, Lcom/shabakaty/downloader/zu1$a;-><init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method


# virtual methods
.method public l()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/av1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/shabakaty/downloader/av1;-><init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/eu1;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/kx2;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/eu1;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/kx2;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public onCleared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zu1;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/xk;->onCleared()V

    return-void
.end method
