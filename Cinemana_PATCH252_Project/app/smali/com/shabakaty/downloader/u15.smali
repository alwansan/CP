.class public Lcom/shabakaty/downloader/u15;
.super Lcom/shabakaty/downloader/cl2;
.source "VideoInfoViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/cl2<",
        "Lcom/shabakaty/downloader/j15;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/kf2;

.field public B:Ljava/lang/String;

.field public h:Lcom/shabakaty/downloader/q15;

.field public i:Lcom/shabakaty/downloader/ox4;

.field public j:Lcom/shabakaty/usermanagement/UserManagement;

.field public final k:Lcom/shabakaty/downloader/jw0;

.field public final l:Lcom/shabakaty/downloader/p5;

.field public final m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:Lcom/google/android/material/appbar/AppBarLayout$c;

.field public p:I

.field public q:D

.field public r:F

.field public s:F

.field public final t:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final v:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public w:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/hd0;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/shabakaty/downloader/u43;

.field public y:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lcom/shabakaty/downloader/l91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l91;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q15;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/jw0;Lcom/shabakaty/downloader/p5;Ljava/lang/ref/WeakReference;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/al2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q15;",
            "Lcom/shabakaty/downloader/ox4;",
            "Lcom/shabakaty/usermanagement/UserManagement;",
            "Lcom/shabakaty/downloader/jw0;",
            "Lcom/shabakaty/downloader/p5;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/shabakaty/downloader/ff3;",
            "Lcom/shabakaty/downloader/n24;",
            "Lcom/shabakaty/downloader/al2;",
            ")V"
        }
    .end annotation

    const-string v0, "videoInfoUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userActionsUseCases"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManagement"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadsDao"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weakContext"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsManager"

    invoke-static {p7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "settings"

    invoke-static {p8, p7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "loginStateObserver"

    invoke-static {p9, p7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p9}, Lcom/shabakaty/downloader/cl2;-><init>(Lcom/shabakaty/downloader/al2;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/u15;->h:Lcom/shabakaty/downloader/q15;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/u15;->i:Lcom/shabakaty/downloader/ox4;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/u15;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/u15;->k:Lcom/shabakaty/downloader/jw0;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/u15;->l:Lcom/shabakaty/downloader/p5;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/u15;->m:Ljava/lang/ref/WeakReference;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/u15;->n:Lcom/shabakaty/downloader/xv2;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/mj;

    const/4 p2, 0x0

    .line 10
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 12
    new-instance p3, Lcom/shabakaty/downloader/mj;

    .line 13
    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p3, p0, Lcom/shabakaty/downloader/u15;->u:Lcom/shabakaty/downloader/mj;

    .line 15
    new-instance p3, Lcom/shabakaty/downloader/mj;

    .line 16
    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 17
    iput-object p3, p0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 18
    new-instance p3, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p3}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p3, p0, Lcom/shabakaty/downloader/u15;->w:Lcom/shabakaty/downloader/xv2;

    .line 19
    new-instance p3, Lcom/shabakaty/downloader/u43;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/shabakaty/downloader/u43;-><init>(Z)V

    iput-object p3, p0, Lcom/shabakaty/downloader/u15;->x:Lcom/shabakaty/downloader/u43;

    .line 20
    new-instance p3, Lcom/shabakaty/downloader/mj;

    .line 21
    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-object p3, p0, Lcom/shabakaty/downloader/u15;->y:Lcom/shabakaty/downloader/mj;

    .line 23
    new-instance p2, Lcom/shabakaty/downloader/l91;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/l91;-><init>(Lcom/shabakaty/downloader/u15;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/u15;->z:Lcom/shabakaty/downloader/l91;

    .line 24
    new-instance p2, Lcom/shabakaty/downloader/u15$b;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/u15$b;-><init>(Lcom/shabakaty/downloader/u15;)V

    invoke-static {p2}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/u15;->A:Lcom/shabakaty/downloader/kf2;

    .line 25
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 27
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    :goto_0
    const-string p1, "0"

    .line 28
    iput-object p1, p0, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    return-void
.end method

.method public static synthetic r(Lcom/shabakaty/downloader/u15;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/u15;->q(Z)V

    return-void
.end method


# virtual methods
.method public n(Lcom/shabakaty/usermanagement/utils/LoginState;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->e(Lcom/shabakaty/downloader/xv2;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1}, Lcom/shabakaty/downloader/u15;->r(Lcom/shabakaty/downloader/u15;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCleared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u15;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/xk;->onCleared()V

    return-void
.end method

.method public final p()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/u15;->h:Lcom/shabakaty/downloader/q15;

    iget-object v2, v0, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/q15;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/u15;->h:Lcom/shabakaty/downloader/q15;

    iget-object v3, v0, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/q15;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/u15;->h:Lcom/shabakaty/downloader/q15;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "videoModel"

    .line 4
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v5, v3, Lcom/shabakaty/downloader/q15;->b:Lcom/shabakaty/downloader/s25;

    .line 6
    iget-object v6, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 7
    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/s25;->z(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v5

    .line 8
    iget-object v6, v3, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    new-instance v7, Lcom/shabakaty/downloader/hx;

    const/16 v8, 0x17

    invoke-direct {v7, v6, v8}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v5, v7}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v5

    .line 9
    new-instance v15, Lcom/shabakaty/downloader/q25;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x7f

    move-object v6, v15

    move-object/from16 v17, v2

    move-object v2, v15

    move/from16 v15, v16

    invoke-direct/range {v6 .. v15}, Lcom/shabakaty/downloader/q25;-><init>(ZZZZZLjava/lang/String;JI)V

    .line 10
    new-instance v6, Lcom/shabakaty/downloader/z74;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v2}, Lcom/shabakaty/downloader/z74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;Ljava/lang/Object;)V

    .line 11
    iget-object v2, v3, Lcom/shabakaty/downloader/q15;->a:Lcom/shabakaty/downloader/k9;

    .line 12
    iget-object v5, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 13
    invoke-interface {v2, v5}, Lcom/shabakaty/downloader/k9;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 14
    iget-object v5, v3, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    new-instance v8, Lcom/shabakaty/downloader/hx;

    const/16 v9, 0x18

    invoke-direct {v8, v5, v9}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 15
    new-instance v5, Lcom/shabakaty/downloader/o15;

    invoke-direct {v5, v4, v3}, Lcom/shabakaty/downloader/o15;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/q15;)V

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/f74;->e(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 16
    iget-object v3, v3, Lcom/shabakaty/downloader/q15;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v3}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v6, v2

    .line 17
    :cond_0
    invoke-static {v6}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 18
    iget-object v3, v0, Lcom/shabakaty/downloader/u15;->z:Lcom/shabakaty/downloader/l91;

    const-string v4, "f is null"

    .line 19
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    new-instance v4, Lcom/shabakaty/downloader/do1$b;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/do1$b;-><init>(Lcom/shabakaty/downloader/l91;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/shabakaty/downloader/h84;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v1, 0x1

    aput-object v17, v3, v1

    const/4 v6, 0x2

    aput-object v2, v3, v6

    .line 21
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/f74;->o(Lcom/shabakaty/downloader/in1;[Lcom/shabakaty/downloader/h84;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 22
    iget-object v3, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v3, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    iget-object v7, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->qualities:Ljava/util/List;

    :goto_0
    if-eqz v7, :cond_3

    .line 24
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    const-wide/16 v3, 0x12c

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0x1

    .line 25
    :goto_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Lcom/shabakaty/downloader/f74;->d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 26
    new-instance v2, Lcom/shabakaty/downloader/r15;

    invoke-direct {v2, v0, v5}, Lcom/shabakaty/downloader/r15;-><init>(Lcom/shabakaty/downloader/u15;I)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f74;->e(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 27
    new-instance v2, Lcom/shabakaty/downloader/s15;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/s15;-><init>(Lcom/shabakaty/downloader/u15;)V

    new-instance v3, Lcom/shabakaty/downloader/t15;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/t15;-><init>(Lcom/shabakaty/downloader/u15;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public final q(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const-string v1, "0"

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 5
    :goto_0
    iput-object v1, p0, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->e(Lcom/shabakaty/downloader/xv2;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/zi2;->j(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;I)V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, v1

    goto :goto_1

    .line 9
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    :goto_1
    const-string v2, "1"

    .line 10
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    goto :goto_5

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_8

    goto :goto_3

    .line 12
    :cond_8
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 13
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    :goto_3
    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->o(Ljava/lang/String;)V

    .line 14
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u15;->w()V

    goto :goto_6

    .line 15
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u15;->p()V

    :cond_b
    :goto_6
    return-void
.end method

.method public final s(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/u15;->h:Lcom/shabakaty/downloader/q15;

    if-nez p1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-nez p1, :cond_3

    :goto_2
    const-string p1, ""

    .line 4
    :cond_3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/q15;->a:Lcom/shabakaty/downloader/k9;

    const-string v3, "cacheable-for-authorized, max-age=900"

    .line 6
    invoke-interface {v2, p1, v3}, Lcom/shabakaty/downloader/k9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/lu1;->t:Lcom/shabakaty/downloader/lu1;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget v3, Lcom/shabakaty/downloader/qf1;->r:I

    const-string v4, "bufferSize"

    .line 10
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/n43;->a(ILjava/lang/String;)I

    .line 11
    new-instance v4, Lcom/shabakaty/downloader/dg1;

    invoke-direct {v4, p1, v2, v3}, Lcom/shabakaty/downloader/dg1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;I)V

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/gu1;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/gu1;-><init>(Lcom/shabakaty/downloader/q15;)V

    invoke-virtual {v4, p1}, Lcom/shabakaty/downloader/qf1;->e(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/bh1;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/bh1;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 14
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/ay3;->b:Lcom/shabakaty/downloader/wx3;

    .line 16
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/shabakaty/downloader/uv3;->b(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/r15;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/r15;-><init>(Lcom/shabakaty/downloader/u15;I)V

    .line 19
    new-instance v1, Lcom/shabakaty/downloader/m74;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/m74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/xk;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;

    :cond_4
    return-void
.end method

.method public final t(Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    if-nez p2, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    const-string v3, "ar"

    .line 4
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->extention:Ljava/lang/String;

    .line 6
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 7
    :goto_1
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    if-nez v0, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    iget-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-nez p1, :cond_6

    :goto_2
    const-string p1, ""

    :cond_6
    return-object p1
.end method

.method public final u()Lcom/shabakaty/downloader/lx4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u15;->A:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lx4;

    return-object v0
.end method

.method public final v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    :goto_0
    return-object v0
.end method

.method public final w()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    :goto_0
    const-string v1, "2"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/u15;->j:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rootSeries:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/u15;->i:Lcom/shabakaty/downloader/ox4;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rootEpisode"

    .line 7
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, v1, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/k9;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/jb4;

    invoke-direct {v3, v1, v0}, Lcom/shabakaty/downloader/jb4;-><init>(Lcom/shabakaty/downloader/ox4;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ju1;->t:Lcom/shabakaty/downloader/ju1;

    .line 10
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/u15$a;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/u15$a;-><init>(Lcom/shabakaty/downloader/u15;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u15;->p()V

    :goto_1
    return-void
.end method
