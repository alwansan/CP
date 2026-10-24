.class public final Lcom/shabakaty/downloader/qu2;
.super Lcom/shabakaty/downloader/rm0;
.source "ModuleDescriptorImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/nu2;


# instance fields
.field public final A:Lcom/shabakaty/downloader/qr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qr2<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/t93;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Lcom/shabakaty/downloader/kf2;

.field public final t:Lcom/shabakaty/downloader/md4;

.field public final u:Lcom/shabakaty/downloader/zd2;

.field public final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/j61;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lcom/shabakaty/downloader/u93;

.field public x:Lcom/shabakaty/downloader/lu2;

.field public y:Lcom/shabakaty/downloader/m93;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/zd2;Ljava/util/Map;Lcom/shabakaty/downloader/hw2;I)V
    .locals 0

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_0

    .line 1
    sget-object p4, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string p5, "capabilities"

    .line 2
    invoke-static {p4, p5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget p5, Lcom/shabakaty/downloader/d9;->a:I

    sget-object p5, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-direct {p0, p5, p1}, Lcom/shabakaty/downloader/rm0;-><init>(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/qu2;->t:Lcom/shabakaty/downloader/md4;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/qu2;->u:Lcom/shabakaty/downloader/zd2;

    .line 6
    iget-boolean p3, p1, Lcom/shabakaty/downloader/hw2;->s:Z

    if-eqz p3, :cond_2

    .line 7
    iput-object p4, p0, Lcom/shabakaty/downloader/qu2;->v:Ljava/util/Map;

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/u93;->a:Lcom/shabakaty/downloader/u93$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/u93$a;->b:Lcom/shabakaty/downloader/j61;

    .line 10
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qu2;->X(Lcom/shabakaty/downloader/j61;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u93;

    if-nez p1, :cond_1

    sget-object p1, Lcom/shabakaty/downloader/u93$b;->b:Lcom/shabakaty/downloader/u93$b;

    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/qu2;->w:Lcom/shabakaty/downloader/u93;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/shabakaty/downloader/qu2;->z:Z

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/pu2;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/pu2;-><init>(Lcom/shabakaty/downloader/qu2;)V

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/md4;->h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qu2;->A:Lcom/shabakaty/downloader/qr2;

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/ou2;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ou2;-><init>(Lcom/shabakaty/downloader/qu2;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qu2;->B:Lcom/shabakaty/downloader/kf2;

    return-void

    .line 14
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Module name must be special: "

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public D0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/nu2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qu2;->x:Lcom/shabakaty/downloader/lu2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shabakaty/downloader/lu2;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Dependencies of module "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qu2;->S0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " were not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final S0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hw2;->r:Ljava/lang/String;

    const-string v1, "name.toString()"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final T0()Lcom/shabakaty/downloader/m93;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qu2;->w0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qu2;->B:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g90;

    return-object v0
.end method

.method public final varargs U0([Lcom/shabakaty/downloader/qu2;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/id;->c0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/mu2;

    sget-object v2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {v1, p1, v0, v2, v0}, Lcom/shabakaty/downloader/mu2;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/qu2;->x:Lcom/shabakaty/downloader/lu2;

    return-void
.end method

.method public X(Lcom/shabakaty/downloader/j61;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/j61;",
            ")TT;"
        }
    .end annotation

    const-string v0, "capability"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qu2;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/shabakaty/downloader/qm0;
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public h0(Lcom/shabakaty/downloader/nu2;)Z
    .locals 2

    const-string v0, "targetModule"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qu2;->x:Lcom/shabakaty/downloader/lu2;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/shabakaty/downloader/lu2;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/m50;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qu2;->D0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->D0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/um0<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->k(Lcom/shabakaty/downloader/nu2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r()Lcom/shabakaty/downloader/zd2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qu2;->u:Lcom/shabakaty/downloader/zd2;

    return-object v0
.end method

.method public t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qu2;->w0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qu2;->A:Lcom/shabakaty/downloader/qr2;

    check-cast v0, Lcom/shabakaty/downloader/yj2$m;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yj2$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t93;

    return-object p1
.end method

.method public v(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;
    .locals 1
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

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qu2;->w0()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qu2;->T0()Lcom/shabakaty/downloader/m93;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/g90;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/g90;->v(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public w0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qu2;->z:Z

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/p32;->a:Lcom/shabakaty/downloader/j61;

    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/p32;->a:Lcom/shabakaty/downloader/j61;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/nu2;->X(Lcom/shabakaty/downloader/j61;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q32;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/q32;->a(Lcom/shabakaty/downloader/nu2;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/o32;

    const-string v1, "Accessing invalid module descriptor "

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/o32;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
