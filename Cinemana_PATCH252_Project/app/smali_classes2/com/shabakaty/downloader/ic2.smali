.class public final Lcom/shabakaty/downloader/ic2;
.super Lcom/shabakaty/downloader/oc2;
.source "KClassImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/gc2;
.implements Lcom/shabakaty/downloader/rd2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ic2$a;,
        Lcom/shabakaty/downloader/ic2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/oc2;",
        "Lcom/shabakaty/downloader/gc2<",
        "TT;>;",
        "Lcom/shabakaty/downloader/rd2;"
    }
.end annotation


# static fields
.field public static final synthetic v:I


# instance fields
.field public final t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/cq3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$b<",
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>.a;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/oc2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/ic2$c;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ic2$c;-><init>(Lcom/shabakaty/downloader/ic2;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ic2;->u:Lcom/shabakaty/downloader/cq3$b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2;->u:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ic2$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ic2$a;->d:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/ic2$a;->k:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/vc0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ic2;->s()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/w20;->w:Lcom/shabakaty/downloader/w20;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->o()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "descriptor.constructors"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ic2;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/downloader/md0;->t(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/gc2;

    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->t(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object p1

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
    .locals 3
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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ic2;->t()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/mz2;->y:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ic2;->u()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Lcom/shabakaty/downloader/yh3;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultImpls"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->v(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ic2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ic2;->g(I)Lcom/shabakaty/downloader/yh3;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ic2;->s()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/xr0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/shabakaty/downloader/xr0;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 9
    sget-object v3, Lcom/shabakaty/downloader/ub2;->j:Lcom/shabakaty/downloader/pp1$f;

    const-string v4, "classLocalVariable"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p1}, Lcom/shabakaty/downloader/nh3;->m(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/shabakaty/downloader/vi3;

    if-nez v4, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    iget-object v3, p0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 11
    iget-object p1, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 12
    iget-object v5, p1, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 13
    iget-object v6, p1, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 14
    iget-object v7, v0, Lcom/shabakaty/downloader/xr0;->w:Lcom/shabakaty/downloader/gm;

    .line 15
    sget-object v8, Lcom/shabakaty/downloader/ic2$d;->r:Lcom/shabakaty/downloader/ic2$d;

    .line 16
    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/ty4;->d(Ljava/lang/Class;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/rq;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yh3;

    move-object v2, p1

    :goto_2
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/md0;->t(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;
    .locals 3
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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ic2;->t()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/mz2;->y:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ic2;->u()Lcom/shabakaty/downloader/mr2;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final r()Lcom/shabakaty/downloader/v20;
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ov3;->a:Lcom/shabakaty/downloader/ov3;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    const-string v1, "klass"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "klass.componentType"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ov3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->h:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/v20;

    sget-object v2, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/sf3;->s:Lcom/shabakaty/downloader/hw2;

    .line 9
    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/shabakaty/downloader/ov3;->b:Lcom/shabakaty/downloader/v20;

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v0}, Lcom/shabakaty/downloader/ov3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/sf3;

    move-result-object v1

    if-nez v1, :cond_4

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 13
    iget-boolean v1, v0, Lcom/shabakaty/downloader/v20;->c:Z

    if-nez v1, :cond_5

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    const-string v3, "classId.asSingleFqName()"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/e82;->f(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 15
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/v20;

    sget-object v2, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/sf3;->r:Lcom/shabakaty/downloader/hw2;

    .line 17
    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    :cond_5
    :goto_0
    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2;->u:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ic2$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ic2$a;->a()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ic2;->s()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ic2;->r()Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    const-string v2, "classId.packageFqName"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classId.relativeClassName.asString()"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2e

    const/16 v3, 0x24

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "class "

    .line 6
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/shabakaty/downloader/mr2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ic2;->s()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->Z()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    const-string v1, "descriptor.staticScope"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
