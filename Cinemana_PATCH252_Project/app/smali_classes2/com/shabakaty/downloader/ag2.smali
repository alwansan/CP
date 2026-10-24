.class public final Lcom/shabakaty/downloader/ag2;
.super Lcom/shabakaty/downloader/kg2;
.source "LazyJavaPackageScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ag2$b;,
        Lcom/shabakaty/downloader/ag2$a;
    }
.end annotation


# instance fields
.field public final n:Lcom/shabakaty/downloader/s72;

.field public final o:Lcom/shabakaty/downloader/yf2;

.field public final p:Lcom/shabakaty/downloader/w13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w13<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/ag2$a;",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;Lcom/shabakaty/downloader/yf2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/kg2;-><init>(Lcom/shabakaty/downloader/bg2;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ag2;->n:Lcom/shabakaty/downloader/s72;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/ag2;->o:Lcom/shabakaty/downloader/yf2;

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 6
    new-instance p3, Lcom/shabakaty/downloader/ag2$d;

    invoke-direct {p3, p1, p0}, Lcom/shabakaty/downloader/ag2$d;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/ag2;)V

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ag2;->p:Lcom/shabakaty/downloader/w13;

    .line 7
    iget-object p2, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 8
    iget-object p2, p2, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 9
    new-instance p3, Lcom/shabakaty/downloader/ag2$c;

    invoke-direct {p3, p0, p1}, Lcom/shabakaty/downloader/ag2$c;-><init>(Lcom/shabakaty/downloader/ag2;Lcom/shabakaty/downloader/bg2;)V

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ag2;->q:Lcom/shabakaty/downloader/rr2;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/ll2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qm0;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 2
    sget v0, Lcom/shabakaty/downloader/vq0;->l:I

    .line 3
    sget v1, Lcom/shabakaty/downloader/vq0;->e:I

    or-int/2addr v0, v1

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_2

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/cg2;->d:Lcom/shabakaty/downloader/d03;

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/qm0;

    .line 10
    instance-of v3, v2, Lcom/shabakaty/downloader/q20;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/shabakaty/downloader/q20;

    invoke-interface {v2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    const-string v3, "it.name"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ag2;->v(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vq0;->c:Lcom/shabakaty/downloader/vq0$a;

    .line 2
    sget v0, Lcom/shabakaty/downloader/vq0;->e:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vq0;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ag2;->p:Lcom/shabakaty/downloader/w13;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 5
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ag2;->n:Lcom/shabakaty/downloader/s72;

    if-nez p2, :cond_3

    .line 10
    sget-object p2, Lcom/shabakaty/downloader/eo1;->a:Lcom/shabakaty/downloader/tm1;

    .line 11
    :cond_3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/s72;->Q(Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/shabakaty/downloader/q62;

    .line 14
    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->k()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object p2
.end method

.method public i(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object p1
.end method

.method public k()Lcom/shabakaty/downloader/xm0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/xm0$a;->a:Lcom/shabakaty/downloader/xm0$a;

    return-object v0
.end method

.method public m(Ljava/util/Collection;Lcom/shabakaty/downloader/hw2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;",
            "Lcom/shabakaty/downloader/hw2;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public o(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vq0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object p1
.end method

.method public q()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag2;->o:Lcom/shabakaty/downloader/yf2;

    return-object v0
.end method

.method public final v(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ca4;->a:Lcom/shabakaty/downloader/ca4;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p1, Lcom/shabakaty/downloader/hw2;->s:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v0, 0x0

    if-nez v1, :cond_2

    return-object v0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ag2;->p:Lcom/shabakaty/downloader/w13;

    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez p2, :cond_3

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ag2;->q:Lcom/shabakaty/downloader/rr2;

    new-instance v1, Lcom/shabakaty/downloader/ag2$a;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/ag2$a;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q62;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/q20;

    return-object p1
.end method
