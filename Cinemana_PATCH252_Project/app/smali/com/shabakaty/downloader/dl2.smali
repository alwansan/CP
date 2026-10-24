.class public final Lcom/shabakaty/downloader/dl2;
.super Lcom/shabakaty/downloader/cl2;
.source "LoginViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/cl2<",
        "Lcom/shabakaty/downloader/yk2;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lcom/shabakaty/usermanagement/UserManagement;

.field public final i:Lcom/shabakaty/downloader/ox4;

.field public j:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

.field public final k:Lcom/shabakaty/downloader/dl2$d;

.field public final l:Lcom/shabakaty/downloader/kf2;

.field public final m:Lcom/shabakaty/downloader/dl2$b;

.field public final n:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public final t:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/al2;)V
    .locals 1

    const-string v0, "userManagement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userActionsUseCases"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginStateObserver"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/cl2;-><init>(Lcom/shabakaty/downloader/al2;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/dl2;->h:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/dl2;->i:Lcom/shabakaty/downloader/ox4;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/dl2$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/dl2$c;-><init>(Lcom/shabakaty/downloader/dl2;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/dl2;->j:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/dl2$d;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/dl2$d;-><init>(Lcom/shabakaty/downloader/dl2;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/dl2;->k:Lcom/shabakaty/downloader/dl2$d;

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/dl2$a;->r:Lcom/shabakaty/downloader/dl2$a;

    invoke-static {p2}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/dl2;->l:Lcom/shabakaty/downloader/kf2;

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/dl2;->j:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

    if-nez p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lcom/shabakaty/usermanagement/UserManagement;->setLoginCallback(Lcom/shabakaty/usermanagement/callbacks/LoginCallback;)V

    .line 9
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/dl2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/dl2$b;-><init>(Lcom/shabakaty/downloader/dl2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/dl2;->m:Lcom/shabakaty/downloader/dl2$b;

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dl2;->n:Lcom/shabakaty/downloader/xv2;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dl2;->o:Lcom/shabakaty/downloader/xv2;

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/dl2;->p:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/dl2;->q:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/dl2;->r:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/dl2;->s:Ljava/lang/String;

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dl2;->t:Lcom/shabakaty/downloader/xv2;

    return-void
.end method


# virtual methods
.method public l()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/el2;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/shabakaty/downloader/el2;-><init>(Lcom/shabakaty/downloader/dl2;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dl2;->t:Lcom/shabakaty/downloader/xv2;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yk2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/yk2;->j1()V

    return-void
.end method

.method public o(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dl2;->r()V

    return-void
.end method

.method public onCleared()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/xk;->onCleared()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/dl2;->j:Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dl2;->n:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/yk2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/yk2;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dl2;->o:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/yk2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/yk2;->m1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/dl2;->n:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

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
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/downloader/dl2;->o:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_6

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/dl2;->t:Lcom/shabakaty/downloader/xv2;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/dl2;->h:Lcom/shabakaty/usermanagement/UserManagement;

    iget-object v1, p0, Lcom/shabakaty/downloader/dl2;->n:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    iget-object v3, p0, Lcom/shabakaty/downloader/dl2;->o:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/usermanagement/UserManagement;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yk2;

    const v1, 0x7f12004b

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/vj;->q(I)V

    :goto_3
    return-void
.end method

.method public final q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dl2;->t:Lcom/shabakaty/downloader/xv2;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dl2;->t:Lcom/shabakaty/downloader/xv2;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yk2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/yk2;->G0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
