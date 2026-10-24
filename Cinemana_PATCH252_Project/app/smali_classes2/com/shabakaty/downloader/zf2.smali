.class public final Lcom/shabakaty/downloader/zf2;
.super Ljava/lang/Object;
.source "LazyJavaPackageFragmentProvider.kt"

# interfaces
.implements Lcom/shabakaty/downloader/o93;


# instance fields
.field public final a:Lcom/shabakaty/downloader/bg2;

.field public final b:Lcom/shabakaty/downloader/gq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gq<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/yf2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y72;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/bg2;

    sget-object v1, Lcom/shabakaty/downloader/nt4$a;->a:Lcom/shabakaty/downloader/nt4$a;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/w02;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/w02;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-direct {v0, p1, v1, v2}, Lcom/shabakaty/downloader/bg2;-><init>(Lcom/shabakaty/downloader/y72;Lcom/shabakaty/downloader/nt4;Lcom/shabakaty/downloader/kf2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/zf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 5
    iget-object p1, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/md4;->b()Lcom/shabakaty/downloader/gq;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/zf2;->b:Lcom/shabakaty/downloader/gq;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/fi1;Ljava/util/Collection;)V
    .locals 0
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
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zf2;->d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/yf2;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/fi1;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->b:Lcom/shabakaty/downloader/u62;

    .line 4
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/u62;->b(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/s72;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lcom/shabakaty/downloader/fi1;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yf2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zf2;->d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/yf2;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/yf2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->b:Lcom/shabakaty/downloader/u62;

    .line 4
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/u62;->b(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/s72;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zf2;->b:Lcom/shabakaty/downloader/gq;

    new-instance v2, Lcom/shabakaty/downloader/zf2$a;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/downloader/zf2$a;-><init>(Lcom/shabakaty/downloader/zf2;Lcom/shabakaty/downloader/s72;)V

    check-cast v1, Lcom/shabakaty/downloader/yj2$d;

    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/yj2$d;->c(Ljava/lang/Object;Lcom/shabakaty/downloader/rm1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yf2;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    const-string v1, "LazyJavaPackageFragmentProvider of module "

    .line 4
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zf2;->d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/yf2;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/yf2;->B:Lcom/shabakaty/downloader/d03;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_1
    return-object p1
.end method
