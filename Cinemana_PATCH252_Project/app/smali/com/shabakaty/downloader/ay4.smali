.class public final Lcom/shabakaty/downloader/ay4;
.super Lcom/shabakaty/downloader/af2;
.source "UserListDetailsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/by4;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/by4;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ay4;->r:Lcom/shabakaty/downloader/by4;

    iput-object p2, p0, Lcom/shabakaty/downloader/ay4;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ay4;->r:Lcom/shabakaty/downloader/by4;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    .line 4
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 6
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ay4;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ay4;->r:Lcom/shabakaty/downloader/by4;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/ay4;->r:Lcom/shabakaty/downloader/by4;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/ay4;->r:Lcom/shabakaty/downloader/by4;

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newValue"

    .line 16
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/tj;->a(Lcom/shabakaty/downloader/tj$a;)V

    .line 18
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/ay4;->r:Lcom/shabakaty/downloader/by4;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 20
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/ay4;->r:Lcom/shabakaty/downloader/by4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/cy4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/cy4;->d()V

    .line 22
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
