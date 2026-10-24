.class public final Lcom/shabakaty/downloader/ox4;
.super Ljava/lang/Object;
.source "UserActionsUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/k9;

.field public b:Lcom/shabakaty/usermanagement/UserManagement;

.field public final c:Lcom/shabakaty/downloader/g25;

.field public final d:Lcom/shabakaty/downloader/s25;

.field public e:Lcom/shabakaty/downloader/qm2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/g25;Lcom/shabakaty/downloader/s25;Lcom/shabakaty/downloader/qm2;)V
    .locals 1

    const-string v0, "apiServices"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManagement"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoModelDao"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStatusDao"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelMapper"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ox4;->c:Lcom/shabakaty/downloader/g25;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/ox4$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ox4$a;

    iget v1, v0, Lcom/shabakaty/downloader/ox4$a;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ox4$a;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ox4$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ox4$a;-><init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4$a;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ox4$a;->x:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/ox4$a;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ox4;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    iput-object p0, v0, Lcom/shabakaty/downloader/ox4$a;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/ox4$a;->x:I

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p1, v2, Lcom/shabakaty/downloader/ox4;->c:Lcom/shabakaty/downloader/g25;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/shabakaty/downloader/ox4$a;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/ox4$a;->x:I

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/g25;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public final b()Lcom/shabakaty/downloader/f74;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    invoke-interface {v0}, Lcom/shabakaty/downloader/k9;->p()Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v2, Lcom/shabakaty/downloader/hx;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/shabakaty/downloader/i25;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/s25;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ox4;->c:Lcom/shabakaty/downloader/g25;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/cj;->f(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    new-instance v13, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    .line 6
    iget-object v3, p1, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v12, 0x1fc

    move-object v1, v13

    move-object v2, v3

    .line 7
    invoke-direct/range {v1 .. v12}, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;JI)V

    invoke-interface {v0, v13}, Lcom/shabakaty/downloader/cj;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "videoNb"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/s25;->D(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final e(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/f74;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qm2;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v2, p0, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v3, "3"

    .line 4
    invoke-interface {v1, v2, p1, v3}, Lcom/shabakaty/downloader/k9;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v2, Lcom/shabakaty/downloader/hx;

    const/16 v3, 0x10

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/v74;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/mx4;

    const/4 v2, 0x6

    invoke-direct {p1, p0, v0, v2}, Lcom/shabakaty/downloader/mx4;-><init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/i25;I)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/p74;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/p74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/f74;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qm2;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v2, p0, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v3, "2"

    .line 4
    invoke-interface {v1, v2, p1, v3}, Lcom/shabakaty/downloader/k9;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v2, Lcom/shabakaty/downloader/hx;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/v74;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/mx4;

    const/4 v2, 0x7

    invoke-direct {p1, p0, v0, v2}, Lcom/shabakaty/downloader/mx4;-><init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/i25;I)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/p74;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/p74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/f74;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qm2;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v2, p0, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v3, "1"

    .line 4
    invoke-interface {v1, v2, p1, v3}, Lcom/shabakaty/downloader/k9;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v2, Lcom/shabakaty/downloader/hx;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/v74;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/mx4;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v2}, Lcom/shabakaty/downloader/mx4;-><init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/i25;I)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/p74;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/p74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;",
            ">;)",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ku1;->t:Lcom/shabakaty/downloader/ku1;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/v74;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/nx4;->s:Lcom/shabakaty/downloader/nx4;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/n74;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/n74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    return-object v0
.end method
