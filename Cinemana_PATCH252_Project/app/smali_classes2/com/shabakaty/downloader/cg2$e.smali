.class public final Lcom/shabakaty/downloader/cg2$e;
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
        "Lcom/shabakaty/downloader/yh3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/cg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cg2$e;->r:Lcom/shabakaty/downloader/cg2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hw2;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2$e;->r:Lcom/shabakaty/downloader/cg2;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/cg2;->c:Lcom/shabakaty/downloader/cg2;

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/cg2;->g:Lcom/shabakaty/downloader/rr2;

    .line 6
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yh3;

    goto/16 :goto_5

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/cg2;->e:Lcom/shabakaty/downloader/d03;

    .line 8
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xm0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xm0;->d(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/f72;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/f72;->K()Z

    move-result v1

    if-nez v1, :cond_c

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/cg2$e;->r:Lcom/shabakaty/downloader/cg2;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {p1}, Lcom/shabakaty/downloader/n72;->q()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/lit8 v8, v2, 0x1

    .line 13
    iget-object v2, v1, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/nh3;->I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;

    move-result-object v5

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/cg2;->q()Lcom/shabakaty/downloader/qm0;

    move-result-object v4

    sget-object v6, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/n72;->g()Lcom/shabakaty/downloader/y45;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/vd5;->A(Lcom/shabakaty/downloader/y45;)Lcom/shabakaty/downloader/mr0;

    move-result-object v7

    invoke-interface {p1}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v9

    .line 15
    iget-object v2, v1, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 16
    iget-object v2, v2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 18
    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v10

    .line 19
    invoke-interface {p1}, Lcom/shabakaty/downloader/n72;->q()Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/shabakaty/downloader/n72;->W()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 20
    :goto_0
    invoke-static/range {v4 .. v11}, Lcom/shabakaty/downloader/u72;->Z0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Z)Lcom/shabakaty/downloader/u72;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v0, v0, v0, v0}, Lcom/shabakaty/downloader/zh3;->W0(Lcom/shabakaty/downloader/bi3;Lcom/shabakaty/downloader/fi3;Lcom/shabakaty/downloader/na1;Lcom/shabakaty/downloader/na1;)V

    .line 22
    iget-object v4, v1, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 23
    iget-object v4, v4, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 24
    invoke-interface {p1}, Lcom/shabakaty/downloader/f72;->b()Lcom/shabakaty/downloader/g82;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v7, 0x3

    invoke-static {v6, v12, v0, v7}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    .line 25
    invoke-static {v4}, Lcom/shabakaty/downloader/zd2;->K(Lcom/shabakaty/downloader/qe2;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/shabakaty/downloader/zd2;->M(Lcom/shabakaty/downloader/qe2;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 26
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/n72;->q()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/shabakaty/downloader/n72;->W()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    .line 27
    invoke-interface {p1}, Lcom/shabakaty/downloader/f72;->U()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    .line 28
    invoke-static {v4}, Lcom/shabakaty/downloader/eu4;->j(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    const-string v5, "makeNotNullable(propertyType)"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :cond_5
    sget-object v5, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/cg2;->p()Lcom/shabakaty/downloader/ao3;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/shabakaty/downloader/zh3;->Y0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;)V

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    sget v5, Lcom/shabakaty/downloader/gr0;->a:I

    if-eqz v4, :cond_b

    .line 31
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wz4;->r0()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v4}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    invoke-static {v4}, Lcom/shabakaty/downloader/eu4;->b(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 33
    :cond_7
    invoke-static {v2}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    .line 34
    invoke-static {v4}, Lcom/shabakaty/downloader/zd2;->K(Lcom/shabakaty/downloader/qe2;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zd2;->w()Lcom/shabakaty/downloader/b74;

    move-result-object v6

    check-cast v5, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {v5, v6, v4}, Lcom/shabakaty/downloader/fz2;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "Number"

    .line 35
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/zd2;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/q20;

    move-result-object v6

    .line 36
    invoke-interface {v6}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/shabakaty/downloader/fz2;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lcom/shabakaty/downloader/fz2;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/shabakaty/downloader/kw4;->a:Lcom/shabakaty/downloader/kw4;

    invoke-static {v4}, Lcom/shabakaty/downloader/kw4;->a(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, 0x0

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 37
    iget-object v0, v1, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 39
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 40
    new-instance v3, Lcom/shabakaty/downloader/dg2;

    invoke-direct {v3, v1, p1, v2}, Lcom/shabakaty/downloader/dg2;-><init>(Lcom/shabakaty/downloader/cg2;Lcom/shabakaty/downloader/f72;Lcom/shabakaty/downloader/zh3;)V

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/md4;->d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;

    move-result-object p1

    .line 41
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/wz4;->T0(Lcom/shabakaty/downloader/w13;)V

    .line 42
    :cond_a
    iget-object p1, v1, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 43
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 44
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->g:Lcom/shabakaty/downloader/x72;

    .line 45
    check-cast p1, Lcom/shabakaty/downloader/x72$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    goto :goto_5

    :cond_b
    const/16 p1, 0x40

    .line 46
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->a(I)V

    throw v0

    :cond_c
    move-object p1, v0

    :goto_5
    return-object p1
.end method
