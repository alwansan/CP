.class public Lcom/shabakaty/downloader/bp;
.super Ljava/lang/Object;
.source "IOStreams.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/kd2$a;Z)Lcom/shabakaty/downloader/er;
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oc2;->r:Lcom/shabakaty/downloader/oc2$a;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/oc2;->s:Lcom/shabakaty/downloader/mq3;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/kd2;->u:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/mq3;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Lcom/shabakaty/downloader/fn4;->a:Lcom/shabakaty/downloader/fn4;

    goto/16 :goto_6

    .line 7
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ov3;->a:Lcom/shabakaty/downloader/ov3;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ov3;->c(Lcom/shabakaty/downloader/yh3;)Lcom/shabakaty/downloader/tb2;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/shabakaty/downloader/tb2$c;

    if-eqz v1, :cond_e

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/tb2$c;

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/tb2$c;->c:Lcom/shabakaty/downloader/ub2$d;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ub2$d;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ub2$d;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    iget-object v1, v1, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v2

    .line 16
    iget-object v2, v2, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    .line 17
    iget-object v3, v0, Lcom/shabakaty/downloader/tb2$c;->d:Lcom/shabakaty/downloader/jw2;

    .line 18
    iget v4, v1, Lcom/shabakaty/downloader/ub2$c;->t:I

    .line 19
    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/tb2$c;->d:Lcom/shabakaty/downloader/jw2;

    .line 21
    iget v1, v1, Lcom/shabakaty/downloader/ub2$c;->u:I

    .line 22
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {v2, v3, v0}, Lcom/shabakaty/downloader/oc2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_8

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/b12;->d(Lcom/shabakaty/downloader/uz4;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/lr0;->d:Lcom/shabakaty/downloader/mr0;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->B(Lcom/shabakaty/downloader/qm0;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z02;->h(Ljava/lang/Class;Lcom/shabakaty/downloader/tq;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/shabakaty/downloader/f32$a;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->l(Lcom/shabakaty/downloader/kd2$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/f32$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 28
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/f32$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/f32$b;-><init>(Ljava/lang/reflect/Method;)V

    goto/16 :goto_4

    .line 29
    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/me2;

    const-string v0, "Underlying property of inline class "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should have a field"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/shabakaty/downloader/kd2;->w:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_7

    .line 32
    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/bp;->g(Lcom/shabakaty/downloader/kd2$a;ZLjava/lang/reflect/Field;)Lcom/shabakaty/downloader/fr;

    move-result-object v0

    goto/16 :goto_4

    .line 33
    :cond_7
    new-instance p1, Lcom/shabakaty/downloader/me2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object p0

    const-string v0, "No accessors or field is found for property "

    invoke-static {v0, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_8
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/shabakaty/downloader/fr$g$a;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->l(Lcom/shabakaty/downloader/kd2$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/shabakaty/downloader/fr$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_9
    new-instance p1, Lcom/shabakaty/downloader/fr$g$d;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/fr$g$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_2
    move-object v0, p1

    goto/16 :goto_4

    .line 37
    :cond_a
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p1

    .line 38
    sget-object v0, Lcom/shabakaty/downloader/ty4;->a:Lcom/shabakaty/downloader/fi1;

    .line 39
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 40
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/shabakaty/downloader/fr$g$b;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/fr$g$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 41
    :cond_b
    new-instance p1, Lcom/shabakaty/downloader/fr$g$e;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/fr$g$e;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 42
    :cond_c
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lcom/shabakaty/downloader/fr$g$c;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->l(Lcom/shabakaty/downloader/kd2$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/shabakaty/downloader/fr$g$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_2

    .line 43
    :cond_d
    new-instance p1, Lcom/shabakaty/downloader/fr$g$f;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/fr$g$f;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 44
    :cond_e
    instance-of v1, v0, Lcom/shabakaty/downloader/tb2$a;

    if-eqz v1, :cond_f

    .line 45
    check-cast v0, Lcom/shabakaty/downloader/tb2$a;

    .line 46
    iget-object v0, v0, Lcom/shabakaty/downloader/tb2$a;->a:Ljava/lang/reflect/Field;

    .line 47
    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/bp;->g(Lcom/shabakaty/downloader/kd2$a;ZLjava/lang/reflect/Field;)Lcom/shabakaty/downloader/fr;

    move-result-object v0

    goto :goto_4

    .line 48
    :cond_f
    instance-of v1, v0, Lcom/shabakaty/downloader/tb2$b;

    if-eqz v1, :cond_13

    if-eqz p1, :cond_10

    .line 49
    check-cast v0, Lcom/shabakaty/downloader/tb2$b;

    .line 50
    iget-object p1, v0, Lcom/shabakaty/downloader/tb2$b;->a:Ljava/lang/reflect/Method;

    goto :goto_3

    .line 51
    :cond_10
    check-cast v0, Lcom/shabakaty/downloader/tb2$b;

    .line 52
    iget-object p1, v0, Lcom/shabakaty/downloader/tb2$b;->b:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_12

    .line 53
    :goto_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/shabakaty/downloader/fr$g$a;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->l(Lcom/shabakaty/downloader/kd2$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/fr$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_4

    .line 54
    :cond_11
    new-instance v0, Lcom/shabakaty/downloader/fr$g$d;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fr$g$d;-><init>(Ljava/lang/reflect/Method;)V

    .line 55
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->h()Lcom/shabakaty/downloader/vh3;

    move-result-object p0

    const/4 p1, 0x0

    .line 56
    invoke-static {v0, p0, p1}, Lcom/shabakaty/downloader/z02;->e(Lcom/shabakaty/downloader/er;Lcom/shabakaty/downloader/tq;Z)Lcom/shabakaty/downloader/er;

    move-result-object p0

    goto :goto_6

    .line 57
    :cond_12
    new-instance p0, Lcom/shabakaty/downloader/me2;

    .line 58
    iget-object p1, v0, Lcom/shabakaty/downloader/tb2$b;->a:Ljava/lang/reflect/Method;

    const-string v0, "No source found for setter of Java method property: "

    .line 59
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_13
    instance-of v1, v0, Lcom/shabakaty/downloader/tb2$d;

    if-eqz v1, :cond_18

    if-eqz p1, :cond_14

    .line 62
    check-cast v0, Lcom/shabakaty/downloader/tb2$d;

    .line 63
    iget-object p1, v0, Lcom/shabakaty/downloader/tb2$d;->a:Lcom/shabakaty/downloader/mb2$e;

    goto :goto_5

    .line 64
    :cond_14
    check-cast v0, Lcom/shabakaty/downloader/tb2$d;

    .line 65
    iget-object p1, v0, Lcom/shabakaty/downloader/tb2$d;->b:Lcom/shabakaty/downloader/mb2$e;

    if-eqz p1, :cond_17

    .line 66
    :goto_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    .line 67
    iget-object v0, v0, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    .line 68
    iget-object p1, p1, Lcom/shabakaty/downloader/mb2$e;->a:Lcom/shabakaty/downloader/nb2$b;

    .line 69
    iget-object v1, p1, Lcom/shabakaty/downloader/nb2$b;->a:Ljava/lang/String;

    .line 70
    iget-object p1, p1, Lcom/shabakaty/downloader/nb2$b;->b:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/oc2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 72
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 73
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/shabakaty/downloader/fr$g$a;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->l(Lcom/shabakaty/downloader/kd2$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/fr$g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_6

    .line 74
    :cond_15
    new-instance p0, Lcom/shabakaty/downloader/fr$g$d;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/fr$g$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_6
    return-object p0

    .line 75
    :cond_16
    new-instance p1, Lcom/shabakaty/downloader/me2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object p0

    const-string v0, "No accessor found for property "

    invoke-static {v0, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_17
    new-instance p1, Lcom/shabakaty/downloader/me2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object p0

    const-string v0, "No setter found for property "

    invoke-static {v0, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_18
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0
.end method

.method public static final b(Ljava/lang/Appendable;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Appendable;",
            "TT;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    .line 2
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    :goto_0
    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 3
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public static c(Lcom/shabakaty/downloader/me0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/e92;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static d(Lcom/shabakaty/downloader/me0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    sget-object p2, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {p0, p2}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/e92;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/e92;->p()Lcom/shabakaty/downloader/l04;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/l04;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/e92;

    .line 3
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e(Lcom/shabakaty/downloader/e92;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/e92;->p()Lcom/shabakaty/downloader/l04;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/l04;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/e92;

    .line 3
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final f(Lcom/shabakaty/downloader/me0;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/e92;

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/e92;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/e92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final g(Lcom/shabakaty/downloader/kd2$a;ZLjava/lang/reflect/Field;)Lcom/shabakaty/downloader/fr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kd2$a<",
            "**>;Z",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/shabakaty/downloader/fr<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Lcom/shabakaty/downloader/gr0;->p(Lcom/shabakaty/downloader/qm0;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/gr0;->s(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/w20;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/gr0;->m(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    :cond_1
    instance-of v1, v0, Lcom/shabakaty/downloader/hs0;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/shabakaty/downloader/hs0;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/hs0;->R:Lcom/shabakaty/downloader/vi3;

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/vb2;->d(Lcom/shabakaty/downloader/vi3;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_a

    .line 10
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/ty4;->a:Lcom/shabakaty/downloader/fi1;

    .line 13
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/shabakaty/downloader/fr$e$b;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/fr$e$b;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_4

    .line 15
    :cond_5
    new-instance p0, Lcom/shabakaty/downloader/fr$e$d;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/fr$e$d;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_4

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/shabakaty/downloader/fr$f$b;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->h(Lcom/shabakaty/downloader/kd2$a;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/shabakaty/downloader/fr$f$b;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3

    .line 17
    :cond_7
    new-instance p1, Lcom/shabakaty/downloader/fr$f$d;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->h(Lcom/shabakaty/downloader/kd2$a;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/shabakaty/downloader/fr$f$d;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_9

    .line 18
    new-instance p0, Lcom/shabakaty/downloader/fr$e$e;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/fr$e$e;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_4

    .line 19
    :cond_9
    new-instance p1, Lcom/shabakaty/downloader/fr$f$e;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->h(Lcom/shabakaty/downloader/kd2$a;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/shabakaty/downloader/fr$f$e;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3

    :cond_a
    :goto_2
    if-eqz p1, :cond_c

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/shabakaty/downloader/fr$e$a;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->l(Lcom/shabakaty/downloader/kd2$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/shabakaty/downloader/fr$e$a;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_b
    new-instance p0, Lcom/shabakaty/downloader/fr$e$c;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/fr$e$c;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_4

    .line 22
    :cond_c
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lcom/shabakaty/downloader/fr$f$a;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->h(Lcom/shabakaty/downloader/kd2$a;)Z

    move-result v0

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->l(Lcom/shabakaty/downloader/kd2$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Lcom/shabakaty/downloader/fr$f$a;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    goto :goto_3

    .line 23
    :cond_d
    new-instance p1, Lcom/shabakaty/downloader/fr$f$c;

    invoke-static {p0}, Lcom/shabakaty/downloader/bp;->h(Lcom/shabakaty/downloader/kd2$a;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/shabakaty/downloader/fr$f$c;-><init>(Ljava/lang/reflect/Field;Z)V

    :goto_3
    move-object p0, p1

    :goto_4
    return-object p0
.end method

.method public static final h(Lcom/shabakaty/downloader/kd2$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kd2$a<",
            "**>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final i(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array p2, p2, [B

    .line 2
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, p2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 4
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static final j(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/ws4;
    .locals 3

    const-string v0, "from"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->B()Ljava/util/List;

    move-result-object p0

    const-string v0, "from.declaredTypeParameters"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/shabakaty/downloader/kt4;

    .line 6
    invoke-interface {v2}, Lcom/shabakaty/downloader/kt4;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->B()Ljava/util/List;

    move-result-object p0

    const-string p1, "to.declaredTypeParameters"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Lcom/shabakaty/downloader/kt4;

    .line 11
    invoke-interface {v1}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    const-string v2, "it.defaultType"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/hu4;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/m50;->D0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/shabakaty/downloader/vm2;->u(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "map"

    .line 14
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/shabakaty/downloader/vs4;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/vs4;-><init>(Ljava/util/Map;Z)V

    return-object p1
.end method

.method public static final k(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/shabakaty/downloader/mr2;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/mr2;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/mr2;->f()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static final l(Lcom/shabakaty/downloader/kd2$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kd2$a<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object p0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->v:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/shabakaty/downloader/z02;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/tq;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Lcom/shabakaty/downloader/qi3;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final n(Lcom/shabakaty/downloader/vi3;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vi3;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/vi3;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final o(Lcom/shabakaty/downloader/qe2;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p0

    instance-of p0, p0, Lcom/shabakaty/downloader/t11;

    return p0
.end method

.method public static final p(Lcom/shabakaty/downloader/yh3;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/yh3;->p()Lcom/shabakaty/downloader/ai3;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final q([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/q02;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/q02;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final r(Lcom/shabakaty/downloader/yi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;
    .locals 2

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget p0, p0, Lcom/shabakaty/downloader/yi3;->E:I

    .line 5
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final s(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;
    .locals 1

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget p0, p0, Lcom/shabakaty/downloader/qi3;->B:I

    .line 5
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final t(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;
    .locals 2

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    const-string p1, "returnType"

    .line 3
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget p0, p0, Lcom/shabakaty/downloader/qi3;->y:I

    .line 6
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Function"

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final u(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;
    .locals 2

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vi3;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/vi3;->x:Lcom/shabakaty/downloader/yi3;

    const-string p1, "returnType"

    .line 3
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget p0, p0, Lcom/shabakaty/downloader/vi3;->y:I

    .line 6
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No returnType in ProtoBuf.Property"

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final v(Lcom/shabakaty/downloader/cj3;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/yi3;
    .locals 2

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cj3;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    const-string p1, "type"

    .line 3
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget p0, p0, Lcom/shabakaty/downloader/cj3;->x:I

    .line 6
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/bu4;->a(I)Lcom/shabakaty/downloader/yi3;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No type in ProtoBuf.ValueParameter"

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
