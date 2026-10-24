.class public final Lcom/shabakaty/downloader/mu3;
.super Ljava/lang/Object;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mu3$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ju3;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/p4;

.field public final f:Lcom/shabakaty/downloader/ku3;

.field public final g:Lcom/shabakaty/downloader/mq;

.field public final h:Lcom/shabakaty/downloader/o51;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p4;Lcom/shabakaty/downloader/ku3;Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/o51;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mu3;->e:Lcom/shabakaty/downloader/p4;

    iput-object p2, p0, Lcom/shabakaty/downloader/mu3;->f:Lcom/shabakaty/downloader/ku3;

    iput-object p3, p0, Lcom/shabakaty/downloader/mu3;->g:Lcom/shabakaty/downloader/mq;

    iput-object p4, p0, Lcom/shabakaty/downloader/mu3;->h:Lcom/shabakaty/downloader/o51;

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    iput-object p2, p0, Lcom/shabakaty/downloader/mu3;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/mu3;->c:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/mu3;->d:Ljava/util/List;

    .line 5
    iget-object p2, p1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/p4;->j:Ljava/net/Proxy;

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/nu3;

    invoke-direct {p3, p0, p1, p2}, Lcom/shabakaty/downloader/nu3;-><init>(Lcom/shabakaty/downloader/mu3;Ljava/net/Proxy;Lcom/shabakaty/downloader/qw1;)V

    const-string p1, "url"

    .line 8
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3}, Lcom/shabakaty/downloader/nu3;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/mu3;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/shabakaty/downloader/mu3;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mu3;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/mu3;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/mu3;->b:I

    iget-object v1, p0, Lcom/shabakaty/downloader/mu3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
