.class public final Lcom/shabakaty/downloader/xf4;
.super Lcom/shabakaty/downloader/af2;
.source "SubscriptionsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/String;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yf4;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yf4;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xf4;->r:Lcom/shabakaty/downloader/yf4;

    iput-object p2, p0, Lcom/shabakaty/downloader/xf4;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/xf4;->r:Lcom/shabakaty/downloader/yf4;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    .line 5
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/xf4;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/xf4;->r:Lcom/shabakaty/downloader/yf4;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/xf4;->r:Lcom/shabakaty/downloader/yf4;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    .line 13
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

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/xf4;->r:Lcom/shabakaty/downloader/yf4;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newValue"

    .line 17
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/tj;->a(Lcom/shabakaty/downloader/tj$a;)V

    .line 19
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/xf4;->r:Lcom/shabakaty/downloader/yf4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/wf4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/wf4;->d()V

    .line 20
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
