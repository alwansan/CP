.class public final Lcom/shabakaty/downloader/mb4;
.super Lcom/shabakaty/downloader/cl2;
.source "StaffInfoViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/cl2<",
        "Lcom/shabakaty/downloader/ib4;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lcom/shabakaty/downloader/kb4;

.field public i:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kb4;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/al2;)V
    .locals 1

    const-string v0, "staffInfoUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsManager"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "loginStateObserver"

    invoke-static {p3, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/cl2;-><init>(Lcom/shabakaty/downloader/al2;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mb4;->h:Lcom/shabakaty/downloader/kb4;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/mj;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/mb4$c;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/mb4$c;-><init>(Lcom/shabakaty/downloader/mb4;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/mb4;->j:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public n(Lcom/shabakaty/usermanagement/utils/LoginState;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mb4;->p()V

    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mb4;->h:Lcom/shabakaty/downloader/kb4;

    iget-object v1, p0, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tj;

    const-string v2, ""

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->nb:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 5
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "staffNb"

    .line 6
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/kb4;->d:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/kb4;->d:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/downloader/kb4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v3, v0, Lcom/shabakaty/downloader/kb4;->b:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object v3

    .line 10
    iget-object v3, v3, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 11
    invoke-interface {v1, v2, v3}, Lcom/shabakaty/downloader/k9;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/jb4;

    invoke-direct {v3, v0, v2}, Lcom/shabakaty/downloader/jb4;-><init>(Lcom/shabakaty/downloader/kb4;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/mb4$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/mb4$a;-><init>(Lcom/shabakaty/downloader/mb4;)V

    new-instance v2, Lcom/shabakaty/downloader/mb4$b;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/mb4$b;-><init>(Lcom/shabakaty/downloader/mb4;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method
