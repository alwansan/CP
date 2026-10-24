.class public final Lcom/shabakaty/downloader/al2;
.super Ljava/lang/Object;
.source "LoginStateObserver.kt"


# instance fields
.field public final a:Lcom/shabakaty/usermanagement/UserManagement;

.field public b:Lcom/shabakaty/downloader/mu0;

.field public final c:Lcom/shabakaty/downloader/vj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/vj3<",
            "Lcom/shabakaty/usermanagement/utils/LoginState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;)V
    .locals 1

    const-string v0, "userManagement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/al2;->a:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/vj3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vj3;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/al2;->c:Lcom/shabakaty/downloader/vj3;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/al2;->a()Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/al2;->b(Lcom/shabakaty/downloader/qf1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/qf1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/qf1<",
            "Lcom/shabakaty/usermanagement/utils/LoginState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/al2;->a:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->observeLoginState()Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->f(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/shabakaty/downloader/qf1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "Lcom/shabakaty/usermanagement/utils/LoginState;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zk2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/zk2;-><init>(Lcom/shabakaty/downloader/al2;I)V

    new-instance v1, Lcom/shabakaty/downloader/zk2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/zk2;-><init>(Lcom/shabakaty/downloader/al2;I)V

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    sget-object v3, Lcom/shabakaty/downloader/jg1;->r:Lcom/shabakaty/downloader/jg1;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/qf1;->g(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/al2;->b:Lcom/shabakaty/downloader/mu0;

    return-void
.end method
