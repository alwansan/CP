.class public final Lcom/shabakaty/downloader/cg2$f;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/cg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/cg2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/hw2;",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/t64;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/cg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cg2$f;->r:Lcom/shabakaty/downloader/cg2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hw2;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2$f;->r:Lcom/shabakaty/downloader/cg2;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/cg2;->c:Lcom/shabakaty/downloader/cg2;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/cg2;->f:Lcom/shabakaty/downloader/qr2;

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/cg2$f;->r:Lcom/shabakaty/downloader/cg2;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 10
    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/xm0;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/xm0;->c(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/l72;

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/cg2$f;->r:Lcom/shabakaty/downloader/cg2;

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/cg2;->t(Lcom/shabakaty/downloader/l72;)Lcom/shabakaty/downloader/m72;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/cg2$f;->r:Lcom/shabakaty/downloader/cg2;

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/cg2;->r(Lcom/shabakaty/downloader/m72;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/shabakaty/downloader/cg2$f;->r:Lcom/shabakaty/downloader/cg2;

    .line 14
    iget-object v3, v3, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 15
    iget-object v3, v3, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 16
    iget-object v3, v3, Lcom/shabakaty/downloader/y72;->g:Lcom/shabakaty/downloader/x72;

    .line 17
    check-cast v3, Lcom/shabakaty/downloader/x72$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/cg2$f;->r:Lcom/shabakaty/downloader/cg2;

    invoke-virtual {v1, v0, p1}, Lcom/shabakaty/downloader/cg2;->j(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method
