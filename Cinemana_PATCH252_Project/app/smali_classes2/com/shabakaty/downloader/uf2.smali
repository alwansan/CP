.class public final Lcom/shabakaty/downloader/uf2;
.super Lcom/shabakaty/downloader/r20;
.source "LazyJavaClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/t62;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/uf2$a;
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/q20;

.field public final B:Lcom/shabakaty/downloader/bg2;

.field public final C:Lcom/shabakaty/downloader/kf2;

.field public final D:Lcom/shabakaty/downloader/w20;

.field public final E:Lcom/shabakaty/downloader/eu2;

.field public final F:Lcom/shabakaty/downloader/y45;

.field public final G:Z

.field public final H:Lcom/shabakaty/downloader/uf2$a;

.field public final I:Lcom/shabakaty/downloader/wf2;

.field public final J:Lcom/shabakaty/downloader/py3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/py3<",
            "Lcom/shabakaty/downloader/wf2;",
            ">;"
        }
    .end annotation
.end field

.field public final K:Lcom/shabakaty/downloader/d12;

.field public final L:Lcom/shabakaty/downloader/gg2;

.field public final M:Lcom/shabakaty/downloader/d9;

.field public final N:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final y:Lcom/shabakaty/downloader/bg2;

.field public final z:Lcom/shabakaty/downloader/q62;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "equals"

    const-string v1, "hashCode"

    const-string v2, "getClass"

    const-string v3, "wait"

    const-string v4, "notify"

    const-string v5, "notifyAll"

    const-string v6, "toString"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->t([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/q20;)V
    .locals 8

    sget-object v0, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    const-string v1, "outerContext"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "containingDeclaration"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jClass"

    invoke-static {p3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 2
    iget-object v3, v1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 3
    invoke-interface {p3}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 6
    invoke-interface {v1, p3}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/r20;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Z)V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/uf2;->y:Lcom/shabakaty/downloader/bg2;

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/uf2;->z:Lcom/shabakaty/downloader/q62;

    .line 10
    iput-object p4, p0, Lcom/shabakaty/downloader/uf2;->A:Lcom/shabakaty/downloader/q20;

    const/4 p2, 0x0

    const/4 v1, 0x4

    .line 11
    invoke-static {p1, p0, p3, p2, v1}, Lcom/shabakaty/downloader/od0;->a(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/z20;Lcom/shabakaty/downloader/n82;II)Lcom/shabakaty/downloader/bg2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 12
    iget-object v1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->g:Lcom/shabakaty/downloader/x72;

    .line 14
    check-cast v1, Lcom/shabakaty/downloader/x72$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->k()I

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/uf2$c;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/uf2$c;-><init>(Lcom/shabakaty/downloader/uf2;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/uf2;->C:Lcom/shabakaty/downloader/kf2;

    .line 17
    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/w20;->v:Lcom/shabakaty/downloader/w20;

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->M()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/shabakaty/downloader/w20;->t:Lcom/shabakaty/downloader/w20;

    goto :goto_0

    .line 20
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/w20;->r:Lcom/shabakaty/downloader/w20;

    .line 21
    :goto_0
    iput-object v1, p0, Lcom/shabakaty/downloader/uf2;->D:Lcom/shabakaty/downloader/w20;

    .line 22
    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->u()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_8

    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->I()Z

    move-result v1

    .line 24
    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->I()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p3}, Lcom/shabakaty/downloader/n72;->N()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->M()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 25
    :goto_2
    invoke-interface {p3}, Lcom/shabakaty/downloader/n72;->q()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v1, :cond_6

    .line 26
    sget-object v0, Lcom/shabakaty/downloader/eu2;->s:Lcom/shabakaty/downloader/eu2;

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    .line 27
    sget-object v0, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    .line 28
    sget-object v0, Lcom/shabakaty/downloader/eu2;->t:Lcom/shabakaty/downloader/eu2;

    .line 29
    :cond_8
    :goto_3
    iput-object v0, p0, Lcom/shabakaty/downloader/uf2;->E:Lcom/shabakaty/downloader/eu2;

    .line 30
    invoke-interface {p3}, Lcom/shabakaty/downloader/n72;->g()Lcom/shabakaty/downloader/y45;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/uf2;->F:Lcom/shabakaty/downloader/y45;

    .line 31
    invoke-interface {p3}, Lcom/shabakaty/downloader/q62;->l()Lcom/shabakaty/downloader/q62;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Lcom/shabakaty/downloader/n72;->W()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/uf2;->G:Z

    .line 32
    new-instance v0, Lcom/shabakaty/downloader/uf2$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/uf2$a;-><init>(Lcom/shabakaty/downloader/uf2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/uf2;->H:Lcom/shabakaty/downloader/uf2$a;

    .line 33
    new-instance v0, Lcom/shabakaty/downloader/wf2;

    if-eqz p4, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/wf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q62;ZLcom/shabakaty/downloader/wf2;)V

    .line 35
    iput-object v0, p0, Lcom/shabakaty/downloader/uf2;->I:Lcom/shabakaty/downloader/wf2;

    .line 36
    sget-object p2, Lcom/shabakaty/downloader/py3;->e:Lcom/shabakaty/downloader/py3$a;

    .line 37
    iget-object p4, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 38
    iget-object v1, p4, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 39
    iget-object p4, p4, Lcom/shabakaty/downloader/y72;->u:Lcom/shabakaty/downloader/ez2;

    .line 40
    invoke-interface {p4}, Lcom/shabakaty/downloader/ez2;->b()Lcom/shabakaty/downloader/ve2;

    move-result-object p4

    new-instance v2, Lcom/shabakaty/downloader/uf2$d;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/uf2$d;-><init>(Lcom/shabakaty/downloader/uf2;)V

    invoke-virtual {p2, p0, v1, p4, v2}, Lcom/shabakaty/downloader/py3$a;->a(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ve2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/py3;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/uf2;->J:Lcom/shabakaty/downloader/py3;

    .line 41
    new-instance p2, Lcom/shabakaty/downloader/d12;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/d12;-><init>(Lcom/shabakaty/downloader/mr2;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/uf2;->K:Lcom/shabakaty/downloader/d12;

    .line 42
    new-instance p2, Lcom/shabakaty/downloader/gg2;

    invoke-direct {p2, p1, p3, p0}, Lcom/shabakaty/downloader/gg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/uf2;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/uf2;->L:Lcom/shabakaty/downloader/gg2;

    .line 43
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/nh3;->I(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;)Lcom/shabakaty/downloader/d9;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/uf2;->M:Lcom/shabakaty/downloader/d9;

    .line 44
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 45
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 46
    new-instance p2, Lcom/shabakaty/downloader/uf2$b;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/uf2$b;-><init>(Lcom/shabakaty/downloader/uf2;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/uf2;->N:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->N:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public C()Lcom/shabakaty/downloader/a12;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/a12<",
            "Lcom/shabakaty/downloader/b74;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J0()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->K:Lcom/shabakaty/downloader/d12;

    return-object v0
.end method

.method public bridge synthetic M0()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uf2;->T0()Lcom/shabakaty/downloader/wf2;

    move-result-object v0

    return-object v0
.end method

.method public N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->J:Lcom/shabakaty/downloader/py3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/py3;->a(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/wf2;

    return-object p1
.end method

.method public Q()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->E:Lcom/shabakaty/downloader/eu2;

    sget-object v1, Lcom/shabakaty/downloader/eu2;->s:Lcom/shabakaty/downloader/eu2;

    if-ne v0, v1, :cond_2

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/uf2;->z:Lcom/shabakaty/downloader/q62;

    invoke-interface {v1}, Lcom/shabakaty/downloader/q62;->T()Ljava/util/Collection;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lcom/shabakaty/downloader/y62;

    .line 7
    iget-object v5, p0, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 8
    iget-object v5, v5, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 9
    invoke-virtual {v5, v4, v0}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v4

    instance-of v5, v4, Lcom/shabakaty/downloader/q20;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/shabakaty/downloader/q20;

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    sget-object v2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_3
    return-object v2
.end method

.method public Q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public R()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uf2;->G:Z

    return v0
.end method

.method public T0()Lcom/shabakaty/downloader/wf2;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/p;->M0()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wf2;

    return-object v0
.end method

.method public Y()Lcom/shabakaty/downloader/l20;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Z()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->L:Lcom/shabakaty/downloader/gg2;

    return-object v0
.end method

.method public b0()Lcom/shabakaty/downloader/q20;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->F:Lcom/shabakaty/downloader/y45;

    sget-object v1, Lcom/shabakaty/downloader/lr0;->a:Lcom/shabakaty/downloader/mr0;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->z:Lcom/shabakaty/downloader/q62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->l()Lcom/shabakaty/downloader/q62;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/c72;->a:Lcom/shabakaty/downloader/mr0;

    const-string v1, "{\n            JavaDescri\u2026KAGE_VISIBILITY\n        }"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->F:Lcom/shabakaty/downloader/y45;

    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->A(Lcom/shabakaty/downloader/y45;)Lcom/shabakaty/downloader/mr0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public m()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->H:Lcom/shabakaty/downloader/uf2$a;

    return-object v0
.end method

.method public n()Lcom/shabakaty/downloader/eu2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->E:Lcom/shabakaty/downloader/eu2;

    return-object v0
.end method

.method public o()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->I:Lcom/shabakaty/downloader/wf2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/wf2;->q:Lcom/shabakaty/downloader/d03;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v0

    const-string v1, "Lazy Java class "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/shabakaty/downloader/w20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->D:Lcom/shabakaty/downloader/w20;

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf2;->M:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
