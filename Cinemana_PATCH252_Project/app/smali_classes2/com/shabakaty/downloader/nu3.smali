.class public final Lcom/shabakaty/downloader/nu3;
.super Lcom/shabakaty/downloader/af2;
.source "RouteSelector.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Ljava/net/Proxy;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mu3;

.field public final synthetic s:Ljava/net/Proxy;

.field public final synthetic t:Lcom/shabakaty/downloader/qw1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mu3;Ljava/net/Proxy;Lcom/shabakaty/downloader/qw1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/nu3;->r:Lcom/shabakaty/downloader/mu3;

    iput-object p2, p0, Lcom/shabakaty/downloader/nu3;->s:Ljava/net/Proxy;

    iput-object p3, p0, Lcom/shabakaty/downloader/nu3;->t:Lcom/shabakaty/downloader/qw1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nu3;->s:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nu3;->t:Lcom/shabakaty/downloader/qw1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qw1;->j()Ljava/net/URI;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-array v0, v2, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/nu3;->r:Lcom/shabakaty/downloader/mu3;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/mu3;->e:Lcom/shabakaty/downloader/p4;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/p4;->k:Ljava/net/ProxySelector;

    .line 7
    invoke-virtual {v1, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    new-array v0, v2, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9
    :cond_4
    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nu3;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
