.class public final Lcom/shabakaty/downloader/tc2;
.super Lcom/shabakaty/downloader/ac2;
.source "KFunctionImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tn1;
.implements Lcom/shabakaty/downloader/sc2;
.implements Lcom/shabakaty/downloader/rm1;
.implements Lcom/shabakaty/downloader/tm1;
.implements Lcom/shabakaty/downloader/sm1;
.implements Lcom/shabakaty/downloader/um1;
.implements Lcom/shabakaty/downloader/vm1;
.implements Lcom/shabakaty/downloader/wm1;
.implements Lcom/shabakaty/downloader/xm1;
.implements Lcom/shabakaty/downloader/ym1;
.implements Lcom/shabakaty/downloader/zm1;
.implements Lcom/shabakaty/downloader/an1;
.implements Lcom/shabakaty/downloader/bn1;
.implements Lcom/shabakaty/downloader/cn1;
.implements Lcom/shabakaty/downloader/hn1;
.implements Lcom/shabakaty/downloader/en1;
.implements Lcom/shabakaty/downloader/fn1;
.implements Lcom/shabakaty/downloader/gn1;
.implements Lcom/shabakaty/downloader/jn1;
.implements Lcom/shabakaty/downloader/ln1;
.implements Lcom/shabakaty/downloader/mn1;
.implements Lcom/shabakaty/downloader/nn1;
.implements Lcom/shabakaty/downloader/on1;
.implements Lcom/shabakaty/downloader/pn1;
.implements Lcom/shabakaty/downloader/qn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ac2<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/shabakaty/downloader/tn1<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/shabakaty/downloader/sc2<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic x:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final s:Lcom/shabakaty/downloader/oc2;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/Object;

.field public final v:Lcom/shabakaty/downloader/cq3$a;

.field public final w:Lcom/shabakaty/downloader/cq3$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/tc2;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "caller"

    const-string v5, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "defaultCaller"

    const-string v4, "getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/tc2;->x:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/xn1;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ov3;->a:Lcom/shabakaty/downloader/ov3;

    invoke-static {p2}, Lcom/shabakaty/downloader/ov3;->d(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mb2;->a()Ljava/lang/String;

    move-result-object v4

    .line 10
    sget-object v6, Lcom/shabakaty/downloader/uq;->NO_RECEIVER:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/tc2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ac2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/tc2;->t:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/shabakaty/downloader/tc2;->u:Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/tc2$c;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/tc2$c;-><init>(Lcom/shabakaty/downloader/tc2;Ljava/lang/String;)V

    invoke-static {p4, p1}, Lcom/shabakaty/downloader/cq3;->d(Ljava/lang/Object;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tc2;->v:Lcom/shabakaty/downloader/cq3$a;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/tc2$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/tc2$a;-><init>(Lcom/shabakaty/downloader/tc2;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->b(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$b;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tc2;->w:Lcom/shabakaty/downloader/cq3$b;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/tc2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/tc2$b;-><init>(Lcom/shabakaty/downloader/tc2;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->b(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$b;

    return-void
.end method

.method public static final h(Lcom/shabakaty/downloader/tc2;Ljava/lang/reflect/Constructor;Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/fr;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/l20;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/shabakaty/downloader/l20;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p2}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/lr0;->e(Lcom/shabakaty/downloader/mr0;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-interface {p2}, Lcom/shabakaty/downloader/vc0;->I()Lcom/shabakaty/downloader/q20;

    move-result-object v1

    const-string v2, "constructorDescriptor.constructedClass"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/b12;->b(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-interface {p2}, Lcom/shabakaty/downloader/vc0;->I()Lcom/shabakaty/downloader/q20;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/gr0;->v(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-interface {p2}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p2

    const-string v1, "constructorDescriptor.valueParameters"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/sz4;

    .line 9
    invoke-interface {v1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    const-string v2, "it.type"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/nh3;->H(Lcom/shabakaty/downloader/qe2;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_7
    :goto_1
    if-eqz v0, :cond_9

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->g()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/fr$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->j()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/shabakaty/downloader/fr$a;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_8
    new-instance p2, Lcom/shabakaty/downloader/fr$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/fr$b;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_2

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->g()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/fr$c;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->j()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/shabakaty/downloader/fr$c;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_a
    new-instance p2, Lcom/shabakaty/downloader/fr$d;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/fr$d;-><init>(Ljava/lang/reflect/Constructor;)V

    :goto_2
    return-object p2
.end method

.method public static final i(Lcom/shabakaty/downloader/tc2;Ljava/lang/reflect/Method;)Lcom/shabakaty/downloader/fr$g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/fr$g$c;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->j()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/fr$g$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/fr$g$f;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fr$g$f;-><init>(Ljava/lang/reflect/Method;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/er;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/er<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2;->w:Lcom/shabakaty/downloader/cq3$b;

    sget-object v1, Lcom/shabakaty/downloader/tc2;->x:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-caller>(...)"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/er;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/oc2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lcom/shabakaty/downloader/tq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/ty4;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/tc2;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    iget-object v2, p1, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/tc2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/tc2;->t:Ljava/lang/String;

    iget-object v2, p1, Lcom/shabakaty/downloader/tc2;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/tc2;->u:Ljava/lang/Object;

    iget-object p1, p1, Lcom/shabakaty/downloader/tc2;->u:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/uq;->NO_RECEIVER:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getArity()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->b()Lcom/shabakaty/downloader/er;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->i(Lcom/shabakaty/downloader/er;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor.name.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/downloader/tc2;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "this"

    .line 3
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2;->u:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/tq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/shabakaty/downloader/xn1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2;->v:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/tc2;->x:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-descriptor>(...)"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/xn1;

    return-object v0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hq3;->a:Lcom/shabakaty/downloader/hq3;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hq3;->c(Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
