.class public final Lcom/shabakaty/downloader/fh3;
.super Lcom/shabakaty/downloader/cl2;
.source "ProfileViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/cl2<",
        "Lcom/shabakaty/downloader/dh3;",
        ">;"
    }
.end annotation


# instance fields
.field public h:Lcom/shabakaty/usermanagement/UserManagement;

.field public final i:Lcom/shabakaty/downloader/ff3;

.field public final j:Lcom/shabakaty/downloader/sx4;

.field public final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/shabakaty/downloader/n24;

.field public m:Lcom/shabakaty/downloader/u43;

.field public n:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/sx4;Ljava/lang/ref/WeakReference;Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/pc;Lcom/shabakaty/downloader/al2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/usermanagement/UserManagement;",
            "Lcom/shabakaty/downloader/ff3;",
            "Lcom/shabakaty/downloader/sx4;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/shabakaty/downloader/n24;",
            "Lcom/shabakaty/downloader/pc;",
            "Lcom/shabakaty/downloader/al2;",
            ")V"
        }
    .end annotation

    const-string v0, "userManagement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsManager"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoUseCases"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weakContext"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationScope"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "loginStateObserver"

    invoke-static {p7, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p7}, Lcom/shabakaty/downloader/cl2;-><init>(Lcom/shabakaty/downloader/al2;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fh3;->h:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/fh3;->i:Lcom/shabakaty/downloader/ff3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/fh3;->j:Lcom/shabakaty/downloader/sx4;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/fh3;->k:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/fh3;->l:Lcom/shabakaty/downloader/n24;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/u43;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/u43;-><init>(Z)V

    iput-object p2, p0, Lcom/shabakaty/downloader/fh3;->m:Lcom/shabakaty/downloader/u43;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    iget-object p2, p0, Lcom/shabakaty/downloader/fh3;->h:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/fh3;->n:Lcom/shabakaty/downloader/xv2;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    const-string p2, "Guest"

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/fh3;->o:Lcom/shabakaty/downloader/xv2;

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/fh3;->p:Lcom/shabakaty/downloader/xv2;

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fh3;->r()V

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/fh3;->q:Lcom/shabakaty/downloader/xv2;

    return-void
.end method

.method public static final p(Lcom/shabakaty/downloader/fh3;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/gh3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/gh3;

    iget v1, v0, Lcom/shabakaty/downloader/gh3;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/gh3;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/gh3;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/gh3;-><init>(Lcom/shabakaty/downloader/fh3;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/gh3;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/gh3;->x:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget-object p0, v0, Lcom/shabakaty/downloader/gh3;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/fh3;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const-wide/16 v5, 0x3e8

    .line 6
    iput-object p0, v0, Lcom/shabakaty/downloader/gh3;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/gh3;->x:I

    invoke-static {v5, v6, v0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/fh3;->l:Lcom/shabakaty/downloader/n24;

    .line 8
    iget-object v4, p1, Lcom/shabakaty/downloader/n24;->d:Lcom/shabakaty/downloader/pc;

    new-instance v7, Lcom/shabakaty/downloader/o24;

    const/4 v2, 0x0

    invoke-direct {v7, p1, v2}, Lcom/shabakaty/downloader/o24;-><init>(Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ud0;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 9
    iget-object p0, p0, Lcom/shabakaty/downloader/fh3;->l:Lcom/shabakaty/downloader/n24;

    iput-object v2, v0, Lcom/shabakaty/downloader/gh3;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/gh3;->x:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/n24;->k(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    :goto_2
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_3
    return-object v1
.end method


# virtual methods
.method public l()V
    .locals 0
    # No device registration against a server account.
    return-void
.end method

.method public n(Lcom/shabakaty/usermanagement/utils/LoginState;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fh3;->r()V

    return-void
.end method

.method public o(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fh3;->r()V

    return-void
.end method

.method public onCleared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fh3;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/xk;->onCleared()V

    return-void
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fh3;->h:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public final r()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->i(Lcom/shabakaty/downloader/xv2;)V

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/fh3$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/fh3$a;-><init>(Lcom/shabakaty/downloader/fh3;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method
