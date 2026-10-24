.class public final Lcom/shabakaty/downloader/tc2$a;
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

    iput-object p1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v3, Lcom/shabakaty/downloader/o8$a;->s:Lcom/shabakaty/downloader/o8$a;

    sget-object v0, Lcom/shabakaty/downloader/ov3;->a:Lcom/shabakaty/downloader/ov3;

    iget-object v0, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ov3;->d(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/mb2$d;

    const/16 v2, 0xa

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ac2;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/ac2;->r:Lcom/shabakaty/downloader/cq3$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "_parameters()"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lcom/shabakaty/downloader/cd2;

    .line 11
    invoke-interface {v2}, Lcom/shabakaty/downloader/cd2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/shabakaty/downloader/o8$b;->s:Lcom/shabakaty/downloader/o8$b;

    const/4 v6, 0x0

    const/16 v7, 0x10

    new-instance v8, Lcom/shabakaty/downloader/o8;

    move-object v0, v8

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/o8;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/shabakaty/downloader/o8$a;Lcom/shabakaty/downloader/o8$b;Ljava/util/List;I)V

    goto/16 :goto_5

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 14
    check-cast v0, Lcom/shabakaty/downloader/mb2$d;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/mb2$d;->a:Lcom/shabakaty/downloader/nb2$b;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/nb2$b;->b:Ljava/lang/String;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "desc"

    .line 18
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v1}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/oc2;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/oc2;->o(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_2
    instance-of v1, v0, Lcom/shabakaty/downloader/mb2$e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    .line 21
    iget-object v1, v1, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 22
    check-cast v0, Lcom/shabakaty/downloader/mb2$e;

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/mb2$e;->a:Lcom/shabakaty/downloader/nb2$b;

    .line 24
    iget-object v2, v0, Lcom/shabakaty/downloader/nb2$b;->a:Ljava/lang/String;

    .line 25
    iget-object v0, v0, Lcom/shabakaty/downloader/nb2$b;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/oc2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 27
    :cond_3
    instance-of v1, v0, Lcom/shabakaty/downloader/mb2$c;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/shabakaty/downloader/mb2$c;

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/mb2$c;->a:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 29
    :cond_4
    instance-of v1, v0, Lcom/shabakaty/downloader/mb2$b;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/shabakaty/downloader/mb2$b;

    .line 30
    iget-object v0, v0, Lcom/shabakaty/downloader/mb2$b;->a:Ljava/lang/reflect/Constructor;

    .line 31
    :goto_1
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_5

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/tc2;->h(Lcom/shabakaty/downloader/tc2;Ljava/lang/reflect/Constructor;Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/fr;

    move-result-object v0

    goto :goto_3

    .line 33
    :cond_5
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_a

    .line 34
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 35
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    .line 36
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/shabakaty/downloader/fr$g$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/fr$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/shabakaty/downloader/fr$g$d;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/fr$g$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 37
    :cond_7
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v1

    .line 38
    sget-object v2, Lcom/shabakaty/downloader/ty4;->a:Lcom/shabakaty/downloader/fi1;

    .line 39
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 40
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    .line 41
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/shabakaty/downloader/fr$g$b;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/fr$g$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_2

    :cond_8
    new-instance v1, Lcom/shabakaty/downloader/fr$g$e;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/fr$g$e;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 42
    :cond_9
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/tc2;->i(Lcom/shabakaty/downloader/tc2;Ljava/lang/reflect/Method;)Lcom/shabakaty/downloader/fr$g;

    move-result-object v0

    .line 43
    :goto_3
    iget-object v1, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v1

    const/4 v2, 0x0

    .line 44
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/z02;->e(Lcom/shabakaty/downloader/er;Lcom/shabakaty/downloader/tq;Z)Lcom/shabakaty/downloader/er;

    move-result-object v8

    goto :goto_5

    .line 45
    :cond_a
    new-instance v1, Lcom/shabakaty/downloader/me2;

    const-string v2, "Could not compute caller for function: "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (member = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_b
    instance-of v1, v0, Lcom/shabakaty/downloader/mb2$a;

    if-eqz v1, :cond_d

    .line 47
    check-cast v0, Lcom/shabakaty/downloader/mb2$a;

    .line 48
    iget-object v5, v0, Lcom/shabakaty/downloader/mb2$a;->a:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2$a;->r:Lcom/shabakaty/downloader/tc2;

    .line 50
    iget-object v0, v0, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 51
    invoke-interface {v0}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v1

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/reflect/Method;

    .line 55
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    sget-object v6, Lcom/shabakaty/downloader/o8$b;->r:Lcom/shabakaty/downloader/o8$b;

    new-instance v8, Lcom/shabakaty/downloader/o8;

    move-object v0, v8

    move-object v2, v4

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/o8;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/shabakaty/downloader/o8$a;Lcom/shabakaty/downloader/o8$b;Ljava/util/List;)V

    :goto_5
    return-object v8

    :cond_d
    new-instance v0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw v0
.end method
