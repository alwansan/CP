.class public final Lcom/shabakaty/downloader/bd2;
.super Lcom/shabakaty/downloader/oc2;
.source "KPackageImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bd2$a;
    }
.end annotation


# instance fields
.field public final t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/cq3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$b<",
            "Lcom/shabakaty/downloader/bd2$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p2, "jClass"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/oc2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/bd2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/bd2$b;-><init>(Lcom/shabakaty/downloader/bd2;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->b(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$b;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/bd2;->u:Lcom/shabakaty/downloader/cq3$b;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/vc0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/bd2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/bd2;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    .line 5
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/xn1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bd2;->r()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/mz2;->y:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Lcom/shabakaty/downloader/yh3;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2;->u:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/bd2$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bd2$a;->f:Lcom/shabakaty/downloader/cq3$b;

    sget-object v1, Lcom/shabakaty/downloader/bd2$a;->g:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/fr4;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/fr4;->r:Ljava/lang/Object;

    .line 6
    move-object v4, v1

    check-cast v4, Lcom/shabakaty/downloader/pb2;

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/fr4;->s:Ljava/lang/Object;

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/ti3;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/fr4;->t:Ljava/lang/Object;

    .line 10
    move-object v6, v0

    check-cast v6, Lcom/shabakaty/downloader/ob2;

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/ub2;->n:Lcom/shabakaty/downloader/pp1$f;

    const-string v2, "packageLocalVariable"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/nh3;->m(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/shabakaty/downloader/vi3;

    if-nez v3, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    .line 13
    new-instance v5, Lcom/shabakaty/downloader/bu4;

    .line 14
    iget-object p1, v1, Lcom/shabakaty/downloader/ti3;->x:Lcom/shabakaty/downloader/bj3;

    const-string v0, "packageProto.typeTable"

    .line 15
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p1}, Lcom/shabakaty/downloader/bu4;-><init>(Lcom/shabakaty/downloader/bj3;)V

    .line 16
    sget-object v7, Lcom/shabakaty/downloader/bd2$c;->r:Lcom/shabakaty/downloader/bd2$c;

    .line 17
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/ty4;->d(Ljava/lang/Class;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/rq;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yh3;

    :goto_1
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2;->u:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/bd2$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bd2$a;->e:Lcom/shabakaty/downloader/cq3$b;

    sget-object v1, Lcom/shabakaty/downloader/bd2$a;->g:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method public j(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bd2;->r()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/mz2;->y:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final r()Lcom/shabakaty/downloader/mr2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2;->u:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/bd2$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bd2$a;->d:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/bd2$a;->g:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-scope>(...)"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2;->t:Ljava/lang/Class;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    const-string v1, "file class "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
