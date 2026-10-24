.class public abstract Lcom/shabakaty/downloader/x;
.super Ljava/lang/Object;
.source "AbstractDeserializedPackageFragmentProvider.kt"

# interfaces
.implements Lcom/shabakaty/downloader/o93;


# instance fields
.field public final a:Lcom/shabakaty/downloader/md4;

.field public final b:Lcom/shabakaty/downloader/ke2;

.field public final c:Lcom/shabakaty/downloader/nu2;

.field public d:Lcom/shabakaty/downloader/or0;

.field public final e:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/k93;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ke2;Lcom/shabakaty/downloader/nu2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/x;->a:Lcom/shabakaty/downloader/md4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/x;->b:Lcom/shabakaty/downloader/ke2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/x;->c:Lcom/shabakaty/downloader/nu2;

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/x$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/x$a;-><init>(Lcom/shabakaty/downloader/x;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/x;->e:Lcom/shabakaty/downloader/rr2;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/fi1;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/k93;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x;->e:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/fi1;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x;->e:Lcom/shabakaty/downloader/rr2;

    check-cast v0, Lcom/shabakaty/downloader/yj2$l;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yj2$l;->s:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v3, Lcom/shabakaty/downloader/yj2$n;->s:Lcom/shabakaty/downloader/yj2$n;

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/x;->e:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/k93;

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/x;->d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/es0;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c(Lcom/shabakaty/downloader/fi1;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/k93;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x;->e:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/es0;
.end method

.method public v(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object p1
.end method
