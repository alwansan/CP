.class public final Lcom/shabakaty/downloader/by4;
.super Lcom/shabakaty/downloader/xk;
.source "UserListDetailsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/cy4;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/ox4;

.field public g:Z

.field public h:I

.field public i:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ox4;)V
    .locals 1

    const-string v0, "userActionsUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/by4;->f:Lcom/shabakaty/downloader/ox4;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    const-string v0, "0"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/by4;->i:Lcom/shabakaty/downloader/xv2;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/mj;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/by4;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->e(Lcom/shabakaty/downloader/xv2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/zi2;->j(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/by4;->f:Lcom/shabakaty/downloader/ox4;

    iget v1, p0, Lcom/shabakaty/downloader/by4;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/by4;->i:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "3"

    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pageNumber"

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "kind"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v4, v0, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v4}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4, v2}, Lcom/shabakaty/downloader/k9;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v2, Lcom/shabakaty/downloader/hx;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/ay3;->b:Lcom/shabakaty/downloader/wx3;

    .line 9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f74;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/yx4;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/yx4;-><init>(Lcom/shabakaty/downloader/by4;)V

    new-instance v2, Lcom/shabakaty/downloader/zx4;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/zx4;-><init>(Lcom/shabakaty/downloader/by4;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    :cond_1
    return-void
.end method
