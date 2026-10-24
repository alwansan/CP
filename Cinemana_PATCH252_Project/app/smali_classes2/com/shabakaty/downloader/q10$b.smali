.class public final Lcom/shabakaty/downloader/q10$b;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$addToHistory$1$1"
    f = "CinemanaVideoPlayerViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/q10;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/downloader/q10;

.field public final synthetic w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q10;",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/q10$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/q10$b;->v:Lcom/shabakaty/downloader/q10;

    iput-object p2, p0, Lcom/shabakaty/downloader/q10$b;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/q10$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/q10$b;->v:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/q10$b;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/q10$b;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/q10$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/q10$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/q10$b;->v:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/q10$b;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/q10$b;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/q10$b;->v:Lcom/shabakaty/downloader/q10;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->q:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/q10$b;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/q10$b;->v:Lcom/shabakaty/downloader/q10;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->n:Lcom/shabakaty/downloader/ox4;

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/q10$b;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ox4;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/q10$b;->v:Lcom/shabakaty/downloader/q10;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->q:Ljava/util/List;

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/q10$b;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/shabakaty/downloader/q10$b;->v:Lcom/shabakaty/downloader/q10;

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->n:Lcom/shabakaty/downloader/ox4;

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/q10$b;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v1, "videoModel"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v2, p1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/qm2;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/i25;

    move-result-object v2

    .line 21
    iget-object v3, p1, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v3}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 22
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 24
    iget-object p1, p1, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 25
    iget-object v0, v2, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 26
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    .line 28
    iget-object v3, p1, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v3}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 29
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v4, "1"

    .line 30
    invoke-interface {v1, v3, v0, v4}, Lcom/shabakaty/downloader/k9;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 31
    iget-object v1, p1, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v3, Lcom/shabakaty/downloader/hx;

    const/16 v4, 0x8

    invoke-direct {v3, v1, v4}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Lcom/shabakaty/downloader/v74;

    invoke-direct {v1, v0, v3}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 33
    new-instance v0, Lcom/shabakaty/downloader/mx4;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v2, v3}, Lcom/shabakaty/downloader/mx4;-><init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/i25;I)V

    .line 34
    new-instance v2, Lcom/shabakaty/downloader/p74;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/p74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 35
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/q10$b;->v:Lcom/shabakaty/downloader/q10;

    sget-object v1, Lcom/shabakaty/downloader/q10$b$a;->r:Lcom/shabakaty/downloader/q10$b$a;

    sget-object v2, Lcom/shabakaty/downloader/q10$b$b;->r:Lcom/shabakaty/downloader/q10$b$b;

    .line 37
    invoke-virtual {v0, p1, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    .line 38
    :cond_2
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
