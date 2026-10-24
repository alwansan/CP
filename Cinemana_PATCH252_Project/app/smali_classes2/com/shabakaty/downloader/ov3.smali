.class public final Lcom/shabakaty/downloader/ov3;
.super Ljava/lang/Object;
.source "RuntimeTypeMapper.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/ov3;

.field public static final b:Lcom/shabakaty/downloader/v20;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "java.lang.Void"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ov3;->b:Lcom/shabakaty/downloader/v20;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lcom/shabakaty/downloader/sf3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/shabakaty/downloader/sf3;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/sb2;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/sb2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/sb2;->n()Lcom/shabakaty/downloader/sf3;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2$e;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mb2$e;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/nb2$b;

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/x94;->a(Lcom/shabakaty/downloader/tq;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4
    instance-of v2, p0, Lcom/shabakaty/downloader/ai3;

    const-string v3, "descriptor.propertyIfAccessor.name.asString()"

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->l(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/sa2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_0
    instance-of v2, p0, Lcom/shabakaty/downloader/fi3;

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->l(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/sa2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "descriptor.name.asString()"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7
    invoke-static {p0, v4, v4, v3}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/shabakaty/downloader/nb2$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mb2$e;-><init>(Lcom/shabakaty/downloader/nb2$b;)V

    return-object v0
.end method

.method public static final c(Lcom/shabakaty/downloader/yh3;)Lcom/shabakaty/downloader/tb2;
    .locals 7

    const-string v0, "possiblyOverriddenProperty"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->z(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/yh3;

    invoke-interface {p0}, Lcom/shabakaty/downloader/yh3;->a()Lcom/shabakaty/downloader/yh3;

    move-result-object v1

    const-string p0, "unwrapFakeOverride(possi\u2026rriddenProperty).original"

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p0, v1, Lcom/shabakaty/downloader/hs0;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 3
    move-object p0, v1

    check-cast p0, Lcom/shabakaty/downloader/hs0;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/hs0;->R:Lcom/shabakaty/downloader/vi3;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/ub2;->d:Lcom/shabakaty/downloader/pp1$f;

    const-string v4, "propertySignature"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/nh3;->l(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ub2$d;

    if-eqz v3, :cond_a

    .line 6
    new-instance v6, Lcom/shabakaty/downloader/tb2$c;

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/hs0;->S:Lcom/shabakaty/downloader/jw2;

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/hs0;->T:Lcom/shabakaty/downloader/bu4;

    move-object v0, v6

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tb2$c;-><init>(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/ub2$d;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;)V

    return-object v6

    .line 10
    :cond_0
    instance-of p0, v1, Lcom/shabakaty/downloader/u72;

    if-eqz p0, :cond_a

    .line 11
    move-object p0, v1

    check-cast p0, Lcom/shabakaty/downloader/u72;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object p0

    instance-of v2, p0, Lcom/shabakaty/downloader/b82;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/shabakaty/downloader/b82;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    move-object p0, v0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/b82;->b()Lcom/shabakaty/downloader/d72;

    move-result-object p0

    .line 12
    :goto_1
    instance-of v2, p0, Lcom/shabakaty/downloader/mp3;

    if-eqz v2, :cond_3

    new-instance v0, Lcom/shabakaty/downloader/tb2$a;

    check-cast p0, Lcom/shabakaty/downloader/mp3;

    .line 13
    iget-object p0, p0, Lcom/shabakaty/downloader/mp3;->a:Ljava/lang/reflect/Field;

    .line 14
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/tb2$a;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_7

    .line 15
    :cond_3
    instance-of v2, p0, Lcom/shabakaty/downloader/pp3;

    if-eqz v2, :cond_9

    new-instance v2, Lcom/shabakaty/downloader/tb2$b;

    .line 16
    check-cast p0, Lcom/shabakaty/downloader/pp3;

    .line 17
    iget-object p0, p0, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    .line 18
    invoke-interface {v1}, Lcom/shabakaty/downloader/yh3;->i0()Lcom/shabakaty/downloader/fi3;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v0

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v1

    :goto_2
    instance-of v3, v1, Lcom/shabakaty/downloader/b82;

    if-eqz v3, :cond_5

    check-cast v1, Lcom/shabakaty/downloader/b82;

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    if-nez v1, :cond_6

    move-object v1, v0

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Lcom/shabakaty/downloader/b82;->b()Lcom/shabakaty/downloader/d72;

    move-result-object v1

    :goto_4
    instance-of v3, v1, Lcom/shabakaty/downloader/pp3;

    if-eqz v3, :cond_7

    check-cast v1, Lcom/shabakaty/downloader/pp3;

    goto :goto_5

    :cond_7
    move-object v1, v0

    :goto_5
    if-nez v1, :cond_8

    goto :goto_6

    .line 19
    :cond_8
    iget-object v0, v1, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    .line 20
    :goto_6
    invoke-direct {v2, p0, v0}, Lcom/shabakaty/downloader/tb2$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object v0, v2

    :goto_7
    return-object v0

    .line 21
    :cond_9
    new-instance v0, Lcom/shabakaty/downloader/me2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect resolution sequence for Java field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (source = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_a
    invoke-interface {v1}, Lcom/shabakaty/downloader/yh3;->p()Lcom/shabakaty/downloader/ai3;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/shabakaty/downloader/ov3;->b(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2$e;

    move-result-object p0

    .line 23
    invoke-interface {v1}, Lcom/shabakaty/downloader/yh3;->i0()Lcom/shabakaty/downloader/fi3;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    invoke-static {v1}, Lcom/shabakaty/downloader/ov3;->b(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2$e;

    move-result-object v0

    .line 24
    :goto_8
    new-instance v1, Lcom/shabakaty/downloader/tb2$d;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/tb2$d;-><init>(Lcom/shabakaty/downloader/mb2$e;Lcom/shabakaty/downloader/mb2$e;)V

    return-object v1
.end method

.method public static final d(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2;
    .locals 7

    const-string v0, "possiblySubstitutedFunction"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->z(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xn1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/xn1;->a()Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    const-string v1, "unwrapFakeOverride(possi\u2026titutedFunction).original"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/ur0;

    if-eqz v1, :cond_5

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/ur0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/cs0;->K()Lcom/shabakaty/downloader/es2;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/shabakaty/downloader/qi3;

    if-eqz v3, :cond_1

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    move-object v4, v2

    check-cast v4, Lcom/shabakaty/downloader/qi3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/cs0;->k0()Lcom/shabakaty/downloader/jw2;

    move-result-object v5

    invoke-interface {v1}, Lcom/shabakaty/downloader/cs0;->a0()Lcom/shabakaty/downloader/bu4;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/shabakaty/downloader/vb2;->c(Lcom/shabakaty/downloader/qi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/nb2$b;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/mb2$e;

    invoke-direct {p0, v3}, Lcom/shabakaty/downloader/mb2$e;-><init>(Lcom/shabakaty/downloader/nb2$b;)V

    return-object p0

    .line 7
    :cond_1
    :goto_0
    instance-of v3, v2, Lcom/shabakaty/downloader/li3;

    if-eqz v3, :cond_4

    .line 8
    sget-object v3, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    check-cast v2, Lcom/shabakaty/downloader/li3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/cs0;->k0()Lcom/shabakaty/downloader/jw2;

    move-result-object v4

    invoke-interface {v1}, Lcom/shabakaty/downloader/cs0;->a0()Lcom/shabakaty/downloader/bu4;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v1}, Lcom/shabakaty/downloader/vb2;->a(Lcom/shabakaty/downloader/li3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;)Lcom/shabakaty/downloader/nb2$b;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p0

    const-string v0, "possiblySubstitutedFunction.containingDeclaration"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/downloader/b12;->b(Lcom/shabakaty/downloader/qm0;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    new-instance p0, Lcom/shabakaty/downloader/mb2$e;

    invoke-direct {p0, v1}, Lcom/shabakaty/downloader/mb2$e;-><init>(Lcom/shabakaty/downloader/nb2$b;)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance p0, Lcom/shabakaty/downloader/mb2$d;

    invoke-direct {p0, v1}, Lcom/shabakaty/downloader/mb2$d;-><init>(Lcom/shabakaty/downloader/nb2$b;)V

    :goto_1
    return-object p0

    .line 12
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/shabakaty/downloader/ov3;->b(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2$e;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    instance-of p0, v0, Lcom/shabakaty/downloader/m72;

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    .line 14
    move-object p0, v0

    check-cast p0, Lcom/shabakaty/downloader/m72;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object p0

    instance-of v2, p0, Lcom/shabakaty/downloader/b82;

    if-eqz v2, :cond_6

    check-cast p0, Lcom/shabakaty/downloader/b82;

    goto :goto_3

    :cond_6
    move-object p0, v1

    :goto_3
    if-nez p0, :cond_7

    move-object p0, v1

    goto :goto_4

    :cond_7
    invoke-interface {p0}, Lcom/shabakaty/downloader/b82;->b()Lcom/shabakaty/downloader/d72;

    move-result-object p0

    :goto_4
    instance-of v2, p0, Lcom/shabakaty/downloader/pp3;

    if-eqz v2, :cond_8

    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/pp3;

    :cond_8
    if-eqz v1, :cond_9

    .line 15
    iget-object p0, v1, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/mb2$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/mb2$c;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    .line 17
    :cond_9
    new-instance p0, Lcom/shabakaty/downloader/me2;

    const-string v1, "Incorrect resolution sequence for Java method "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_a
    instance-of p0, v0, Lcom/shabakaty/downloader/r62;

    const/16 v2, 0x29

    const-string v3, " ("

    if-eqz p0, :cond_f

    .line 19
    move-object p0, v0

    check-cast p0, Lcom/shabakaty/downloader/r62;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/tm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object p0

    instance-of v4, p0, Lcom/shabakaty/downloader/b82;

    if-eqz v4, :cond_b

    check-cast p0, Lcom/shabakaty/downloader/b82;

    goto :goto_5

    :cond_b
    move-object p0, v1

    :goto_5
    if-nez p0, :cond_c

    goto :goto_6

    :cond_c
    invoke-interface {p0}, Lcom/shabakaty/downloader/b82;->b()Lcom/shabakaty/downloader/d72;

    move-result-object v1

    .line 20
    :goto_6
    instance-of p0, v1, Lcom/shabakaty/downloader/jp3;

    if-eqz p0, :cond_d

    .line 21
    new-instance p0, Lcom/shabakaty/downloader/mb2$b;

    check-cast v1, Lcom/shabakaty/downloader/jp3;

    .line 22
    iget-object v0, v1, Lcom/shabakaty/downloader/jp3;->a:Ljava/lang/reflect/Constructor;

    .line 23
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/mb2$b;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_7

    .line 24
    :cond_d
    instance-of p0, v1, Lcom/shabakaty/downloader/fp3;

    if-eqz p0, :cond_e

    move-object p0, v1

    check-cast p0, Lcom/shabakaty/downloader/fp3;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp3;->u()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/mb2$a;

    .line 26
    iget-object p0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    .line 27
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/mb2$a;-><init>(Ljava/lang/Class;)V

    move-object p0, v0

    :goto_7
    return-object p0

    .line 28
    :cond_e
    new-instance p0, Lcom/shabakaty/downloader/me2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect resolution sequence for Java constructor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_f
    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    sget-object v1, Lcom/shabakaty/downloader/tb4;->b:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/hw2;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_10

    invoke-static {v0}, Lcom/shabakaty/downloader/tq0;->i(Lcom/shabakaty/downloader/xn1;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_8

    :cond_10
    const/4 p0, 0x0

    :goto_8
    if-nez p0, :cond_14

    .line 30
    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    sget-object v4, Lcom/shabakaty/downloader/tb4;->a:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/hw2;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {v0}, Lcom/shabakaty/downloader/tq0;->i(Lcom/shabakaty/downloader/xn1;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_9

    :cond_11
    const/4 p0, 0x0

    :goto_9
    if-eqz p0, :cond_12

    goto :goto_a

    .line 31
    :cond_12
    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    sget-object v4, Lcom/shabakaty/downloader/z30;->e:Lcom/shabakaty/downloader/z30;

    .line 32
    sget-object v4, Lcom/shabakaty/downloader/z30;->f:Lcom/shabakaty/downloader/hw2;

    .line 33
    invoke-static {p0, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_a
    if-eqz v1, :cond_15

    .line 34
    invoke-static {v0}, Lcom/shabakaty/downloader/ov3;->b(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2$e;

    move-result-object p0

    return-object p0

    .line 35
    :cond_15
    new-instance p0, Lcom/shabakaty/downloader/me2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown origin of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p0
.end method
