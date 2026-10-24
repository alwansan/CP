.class public abstract Lcom/shabakaty/downloader/m;
.super Lcom/shabakaty/downloader/z0;
.source "AbstractChannel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/py;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/m$e;,
        Lcom/shabakaty/downloader/m$a;,
        Lcom/shabakaty/downloader/m$b;,
        Lcom/shabakaty/downloader/m$c;,
        Lcom/shabakaty/downloader/m$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/z0<",
        "TE;>;",
        "Lcom/shabakaty/downloader/py<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/z0;-><init>(Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/z0;->s(Ljava/lang/Throwable;)Z

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/m;->t(Z)V

    return-void
.end method

.method public final iterator()Lcom/shabakaty/downloader/xy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/xy<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/m$a;-><init>(Lcom/shabakaty/downloader/m;)V

    return-object v0
.end method

.method public l()Lcom/shabakaty/downloader/zn3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/zn3<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/z0;->l()Lcom/shabakaty/downloader/zn3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/f40;

    :cond_0
    return-object v0
.end method

.method public final m(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pz4<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    instance-of v1, p1, Lcom/shabakaty/downloader/m$g;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/m$g;

    iget v2, v1, Lcom/shabakaty/downloader/m$g;->v:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/shabakaty/downloader/m$g;->v:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/m$g;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/m$g;-><init>(Lcom/shabakaty/downloader/m;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v1, Lcom/shabakaty/downloader/m$g;->u:Ljava/lang/Object;

    .line 1
    iget v2, v1, Lcom/shabakaty/downloader/m$g;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m;->v()Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    if-eq p1, v2, :cond_4

    .line 6
    instance-of v0, p1, Lcom/shabakaty/downloader/f40;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/shabakaty/downloader/f40;

    iget-object p1, p1, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/pz4$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/pz4$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_3
    return-object p1

    .line 8
    :cond_4
    iput v3, v1, Lcom/shabakaty/downloader/m$g;->v:I

    .line 9
    invoke-static {v1}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/he0;->l(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/gv;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    const/4 v2, 0x2

    if-nez v1, :cond_5

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/m$b;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/m$b;-><init>(Lcom/shabakaty/downloader/fv;I)V

    goto :goto_1

    .line 12
    :cond_5
    new-instance v1, Lcom/shabakaty/downloader/m$c;

    iget-object v3, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    invoke-direct {v1, p1, v2, v3}, Lcom/shabakaty/downloader/m$c;-><init>(Lcom/shabakaty/downloader/fv;ILcom/shabakaty/downloader/tm1;)V

    .line 13
    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/m;->o(Lcom/shabakaty/downloader/xn3;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/m$e;

    invoke-direct {v2, p0, v1}, Lcom/shabakaty/downloader/m$e;-><init>(Lcom/shabakaty/downloader/m;Lcom/shabakaty/downloader/xn3;)V

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    goto :goto_3

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m;->v()Ljava/lang/Object;

    move-result-object v3

    .line 16
    instance-of v4, v3, Lcom/shabakaty/downloader/f40;

    if-eqz v4, :cond_8

    .line 17
    check-cast v3, Lcom/shabakaty/downloader/f40;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/m$b;->x(Lcom/shabakaty/downloader/f40;)V

    goto :goto_3

    .line 18
    :cond_8
    sget-object v4, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    if-eq v3, v4, :cond_6

    .line 19
    iget v4, v1, Lcom/shabakaty/downloader/m$b;->v:I

    if-eq v4, v2, :cond_9

    move-object v2, v3

    goto :goto_2

    .line 20
    :cond_9
    new-instance v2, Lcom/shabakaty/downloader/pz4;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/pz4;-><init>(Ljava/lang/Object;)V

    .line 21
    :goto_2
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/xn3;->w(Ljava/lang/Object;)Lcom/shabakaty/downloader/tm1;

    move-result-object v1

    .line 22
    iget v3, p1, Lcom/shabakaty/downloader/du0;->t:I

    invoke-virtual {p1, v2, v3, v1}, Lcom/shabakaty/downloader/gv;->D(Ljava/lang/Object;ILcom/shabakaty/downloader/tm1;)V

    .line 23
    :goto_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 24
    :cond_a
    :goto_4
    check-cast p1, Lcom/shabakaty/downloader/pz4;

    .line 25
    iget-object p1, p1, Lcom/shabakaty/downloader/pz4;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public o(Lcom/shabakaty/downloader/xn3;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xn3<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/shabakaty/downloader/g04;

    xor-int/2addr v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/ck2;->g(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/m$f;

    invoke-direct {v2, p1, p1, p0}, Lcom/shabakaty/downloader/m$f;-><init>(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/m;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v3

    .line 9
    instance-of v4, v3, Lcom/shabakaty/downloader/g04;

    xor-int/2addr v4, v1

    if-nez v4, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v3, p1, v0, v2}, Lcom/shabakaty/downloader/ck2;->v(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2$a;)I

    move-result v3

    if-eq v3, v1, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x0

    :cond_5
    :goto_2
    return v1
.end method

.method public abstract p()Z
.end method

.method public abstract q()Z
.end method

.method public r()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->r:Lcom/shabakaty/downloader/ak2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->m()Lcom/shabakaty/downloader/ck2;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/f40;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/f40;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/z0;->g(Lcom/shabakaty/downloader/f40;)V

    move-object v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->e()Lcom/shabakaty/downloader/f40;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/shabakaty/downloader/ak2;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/m;->u(Ljava/lang/Object;Lcom/shabakaty/downloader/f40;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ck2;->t()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ck2;->l()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.Removed"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/jr3;

    iget-object v2, v2, Lcom/shabakaty/downloader/jr3;->a:Lcom/shabakaty/downloader/ck2;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/ck2;->i(Lcom/shabakaty/downloader/u73;)Lcom/shabakaty/downloader/ck2;

    goto :goto_0

    .line 7
    :cond_1
    check-cast v2, Lcom/shabakaty/downloader/g04;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/c12;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot happen"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Ljava/lang/Object;Lcom/shabakaty/downloader/f40;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/f40<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    check-cast p1, Lcom/shabakaty/downloader/g04;

    .line 2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/g04;->y(Lcom/shabakaty/downloader/f40;)V

    goto :goto_1

    .line 3
    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/g04;

    .line 6
    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/g04;->y(Lcom/shabakaty/downloader/f40;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public v()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->n()Lcom/shabakaty/downloader/g04;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/g04;->z(Lcom/shabakaty/downloader/ck2$b;)Lcom/shabakaty/downloader/j61;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/g04;->w()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/g04;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/g04;->A()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    return-object v0
.end method
