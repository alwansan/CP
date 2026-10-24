.class public final Lcom/shabakaty/downloader/lx4$c;
.super Ljava/lang/Object;
.source "UserActions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/lx4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/lx4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lx4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lx4$c;->a:Lcom/shabakaty/downloader/lx4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$c;->a:Lcom/shabakaty/downloader/lx4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    if-nez v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, v0, Lcom/shabakaty/downloader/q25;->w:Ljava/lang/String;

    if-nez v0, :cond_3

    :goto_0
    const-string v0, "false"

    :cond_3
    const-string v1, "1"

    .line 8
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/shabakaty/downloader/f74;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$c;->a:Lcom/shabakaty/downloader/lx4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/lx4$c;->a:Lcom/shabakaty/downloader/lx4;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx4$c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/lx4;->b:Lcom/shabakaty/downloader/ox4;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "videoModel"

    .line 9
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v2, v1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/qm2;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;

    move-result-object v2

    .line 11
    iget-object v3, v1, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v4, v1, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v4}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v5, "2"

    .line 13
    invoke-interface {v3, v4, v0, v5}, Lcom/shabakaty/downloader/k9;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 14
    iget-object v3, v1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v4, Lcom/shabakaty/downloader/hx;

    const/16 v5, 0xe

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/mx4;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v2, v4}, Lcom/shabakaty/downloader/mx4;-><init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/i25;I)V

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/f74;->g(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_2
    iget-object v1, v1, Lcom/shabakaty/downloader/lx4;->b:Lcom/shabakaty/downloader/ox4;

    .line 18
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ox4;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$c;->a:Lcom/shabakaty/downloader/lx4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/q25;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
