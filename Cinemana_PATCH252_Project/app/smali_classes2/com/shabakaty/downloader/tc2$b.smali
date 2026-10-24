.class public final Lcom/shabakaty/downloader/tc2$b;
.super Lcom/shabakaty/downloader/af2;
.source "KFunctionImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/tc2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/er<",
        "+",
        "Ljava/lang/reflect/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tc2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tc2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v3, Lcom/shabakaty/downloader/o8$a;->r:Lcom/shabakaty/downloader/o8$a;

    sget-object v0, Lcom/shabakaty/downloader/ov3;->a:Lcom/shabakaty/downloader/ov3;

    iget-object v0, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ov3;->d(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/mb2$e;

    const-string v2, "desc"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    .line 4
    iget-object v6, v1, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/mb2$e;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/mb2$e;->a:Lcom/shabakaty/downloader/nb2$b;

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/nb2$b;->a:Ljava/lang/String;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/nb2$b;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->b()Lcom/shabakaty/downloader/er;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/er;->c()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    xor-int/lit8 v11, v1, 0x1

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 10
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<init>"

    .line 11
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_1

    .line 13
    invoke-interface {v6}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v6, v1, v0, v2}, Lcom/shabakaty/downloader/oc2;->c(Ljava/util/List;Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {v6}, Lcom/shabakaty/downloader/oc2;->i()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "$default"

    .line 16
    invoke-static {v3, v8}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/oc2;->l(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 19
    invoke-virtual/range {v6 .. v11}, Lcom/shabakaty/downloader/oc2;->m(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_3

    .line 20
    :cond_2
    instance-of v1, v0, Lcom/shabakaty/downloader/mb2$d;

    const/16 v6, 0xa

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ac2;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 24
    invoke-interface {v0}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    .line 25
    iget-object v0, v0, Lcom/shabakaty/downloader/ac2;->r:Lcom/shabakaty/downloader/cq3$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "_parameters()"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 28
    check-cast v4, Lcom/shabakaty/downloader/cd2;

    .line 29
    invoke-interface {v4}, Lcom/shabakaty/downloader/cd2;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/shabakaty/downloader/o8$b;->s:Lcom/shabakaty/downloader/o8$b;

    const/4 v5, 0x0

    const/16 v6, 0x10

    new-instance v7, Lcom/shabakaty/downloader/o8;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/o8;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/shabakaty/downloader/o8$a;Lcom/shabakaty/downloader/o8$b;Ljava/util/List;I)V

    goto/16 :goto_7

    .line 30
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    .line 31
    iget-object v1, v1, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 32
    check-cast v0, Lcom/shabakaty/downloader/mb2$d;

    .line 33
    iget-object v0, v0, Lcom/shabakaty/downloader/mb2$d;->a:Lcom/shabakaty/downloader/nb2$b;

    .line 34
    iget-object v0, v0, Lcom/shabakaty/downloader/nb2$b;->b:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {v1}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v1, v3, v0, v5}, Lcom/shabakaty/downloader/oc2;->c(Ljava/util/List;Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/oc2;->o(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_3

    .line 40
    :cond_5
    instance-of v1, v0, Lcom/shabakaty/downloader/mb2$a;

    if-eqz v1, :cond_7

    .line 41
    check-cast v0, Lcom/shabakaty/downloader/mb2$a;

    .line 42
    iget-object v5, v0, Lcom/shabakaty/downloader/mb2$a;->a:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    .line 44
    iget-object v0, v0, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 45
    invoke-interface {v0}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v1

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/reflect/Method;

    .line 49
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/shabakaty/downloader/o8$b;->r:Lcom/shabakaty/downloader/o8$b;

    new-instance v7, Lcom/shabakaty/downloader/o8;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/o8;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/shabakaty/downloader/o8$a;Lcom/shabakaty/downloader/o8$b;Ljava/util/List;)V

    goto/16 :goto_7

    :cond_7
    :goto_2
    move-object v0, v4

    .line 50
    :goto_3
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_8

    .line 51
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/tc2;->h(Lcom/shabakaty/downloader/tc2;Ljava/lang/reflect/Constructor;Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/fr;

    move-result-object v0

    goto :goto_5

    .line 52
    :cond_8
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_b

    .line 53
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v1

    .line 54
    sget-object v2, Lcom/shabakaty/downloader/ty4;->a:Lcom/shabakaty/downloader/fi1;

    .line 55
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 56
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/q20;

    invoke-interface {v1}, Lcom/shabakaty/downloader/q20;->F()Z

    move-result v1

    if-nez v1, :cond_a

    .line 57
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    check-cast v0, Ljava/lang/reflect/Method;

    .line 58
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/shabakaty/downloader/fr$g$b;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/fr$g$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_4

    :cond_9
    new-instance v1, Lcom/shabakaty/downloader/fr$g$e;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/fr$g$e;-><init>(Ljava/lang/reflect/Method;)V

    :goto_4
    move-object v0, v1

    goto :goto_5

    .line 59
    :cond_a
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/tc2;->i(Lcom/shabakaty/downloader/tc2;Ljava/lang/reflect/Method;)Lcom/shabakaty/downloader/fr$g;

    move-result-object v0

    goto :goto_5

    :cond_b
    move-object v0, v4

    :goto_5
    if-nez v0, :cond_c

    goto :goto_6

    .line 60
    :cond_c
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$b;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/shabakaty/downloader/z02;->e(Lcom/shabakaty/downloader/er;Lcom/shabakaty/downloader/tq;Z)Lcom/shabakaty/downloader/er;

    move-result-object v4

    :goto_6
    move-object v7, v4

    :goto_7
    return-object v7
.end method
