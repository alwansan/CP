.class public final Lcom/shabakaty/downloader/lx4$b;
.super Ljava/lang/Object;
.source "UserActions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/lx4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
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
    iput-object p1, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/sr4;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const/4 v1, 0x0

    const/4 v2, 0x1

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
    iget-boolean v0, v0, Lcom/shabakaty/downloader/q25;->r:Z

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/sr4$c;->a:Lcom/shabakaty/downloader/sr4$c;

    goto :goto_3

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 13
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    if-nez v0, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    iget-boolean v0, v0, Lcom/shabakaty/downloader/q25;->u:Z

    if-ne v0, v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/sr4$a;->a:Lcom/shabakaty/downloader/sr4$a;

    goto :goto_3

    .line 17
    :cond_9
    sget-object v0, Lcom/shabakaty/downloader/sr4$b;->a:Lcom/shabakaty/downloader/sr4$b;

    :goto_3
    return-object v0
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

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

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoDisLikesNumber:Ljava/lang/String;

    .line 7
    :goto_1
    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->B(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p1

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 13
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "<set-?>"

    .line 14
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoDisLikesNumber:Ljava/lang/String;

    :goto_3
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

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

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoLikesNumber:Ljava/lang/String;

    .line 7
    :goto_1
    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->B(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p1

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 13
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "<set-?>"

    .line 14
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->videoLikesNumber:Ljava/lang/String;

    :goto_3
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx4$b;->a()Lcom/shabakaty/downloader/sr4;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/sr4$a;->a:Lcom/shabakaty/downloader/sr4$a;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx4$b;->a()Lcom/shabakaty/downloader/sr4;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/sr4$c;->a:Lcom/shabakaty/downloader/sr4$c;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Lcom/shabakaty/downloader/f74;
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
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx4$b;->e()Z

    move-result v2

    const-string v3, "videoModel"

    if-eqz v2, :cond_2

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/lx4;->b:Lcom/shabakaty/downloader/ox4;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v5, "1"

    .line 13
    invoke-interface {v3, v4, v0, v5}, Lcom/shabakaty/downloader/k9;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 14
    iget-object v3, v1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v4, Lcom/shabakaty/downloader/hx;

    const/16 v5, 0xf

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/mx4;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v2, v4}, Lcom/shabakaty/downloader/mx4;-><init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/i25;I)V

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/f74;->g(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto/16 :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx4$b;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    iget-object v1, v1, Lcom/shabakaty/downloader/lx4;->b:Lcom/shabakaty/downloader/ox4;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v2, v1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/qm2;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;

    move-result-object v2

    .line 22
    iget-object v3, v1, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v4, v1, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v4}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 23
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v5, "0"

    .line 24
    invoke-interface {v3, v4, v0, v5}, Lcom/shabakaty/downloader/k9;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 25
    iget-object v3, v1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v4, Lcom/shabakaty/downloader/hx;

    const/16 v5, 0xd

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 26
    new-instance v3, Lcom/shabakaty/downloader/mx4;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v2, v4}, Lcom/shabakaty/downloader/mx4;-><init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/i25;I)V

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/f74;->g(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_3
    iget-object v1, v1, Lcom/shabakaty/downloader/lx4;->b:Lcom/shabakaty/downloader/ox4;

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v2, v1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/qm2;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;

    move-result-object v2

    .line 32
    iget-object v3, v1, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v4, v1, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v4}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 33
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v5, "-1"

    .line 34
    invoke-interface {v3, v4, v0, v5}, Lcom/shabakaty/downloader/k9;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 35
    iget-object v3, v1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v4, Lcom/shabakaty/downloader/hx;

    const/16 v5, 0xb

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 36
    new-instance v3, Lcom/shabakaty/downloader/mx4;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Lcom/shabakaty/downloader/mx4;-><init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/i25;I)V

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/f74;->g(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method public g()Lcom/shabakaty/downloader/f74;
    .locals 3
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
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

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

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    iput-boolean v2, v0, Lcom/shabakaty/downloader/q25;->r:Z

    .line 8
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx4$b;->a:Lcom/shabakaty/downloader/lx4;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/lx4;->a:Lcom/shabakaty/downloader/mj;

    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 12
    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    :goto_3
    if-nez v1, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    iput-boolean v2, v1, Lcom/shabakaty/downloader/q25;->u:Z

    .line 15
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx4$b;->f()Lcom/shabakaty/downloader/f74;

    move-result-object v0

    return-object v0
.end method
