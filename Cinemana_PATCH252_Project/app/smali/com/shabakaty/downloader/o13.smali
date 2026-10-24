.class public final Lcom/shabakaty/downloader/o13;
.super Lcom/shabakaty/downloader/xk;
.source "NotificationsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/l13;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Lcom/shabakaty/downloader/m13;

.field public g:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m13;)V
    .locals 1

    const-string v0, "notificationsUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/o13;->f:Lcom/shabakaty/downloader/m13;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/mj;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/o13;->g:Lcom/shabakaty/downloader/mj;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/o13;->l()V

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o13;->g:Lcom/shabakaty/downloader/mj;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/zi2;->j(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/o13;->f:Lcom/shabakaty/downloader/m13;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/m13;->a:Lcom/shabakaty/downloader/k9;

    const-string v2, "32"

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/k9;->q(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/m13;->b:Lcom/shabakaty/downloader/qm2;

    new-instance v2, Lcom/shabakaty/downloader/hx;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/o13$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/o13$a;-><init>(Lcom/shabakaty/downloader/o13;)V

    new-instance v2, Lcom/shabakaty/downloader/o13$b;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/o13$b;-><init>(Lcom/shabakaty/downloader/o13;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method
