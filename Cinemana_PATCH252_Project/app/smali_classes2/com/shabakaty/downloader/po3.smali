.class public final Lcom/shabakaty/downloader/po3;
.super Ljava/lang/Object;
.source "ReflectKotlinClass.kt"


# direct methods
.method public static final a(Ljava/lang/Class;)Lcom/shabakaty/downloader/x20;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/shabakaty/downloader/x20;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "currentClass.componentType"

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance p0, Lcom/shabakaty/downloader/x20;

    sget-object v1, Lcom/shabakaty/downloader/tb4$a;->e:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/shabakaty/downloader/x20;-><init>(Lcom/shabakaty/downloader/v20;I)V

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/sb2;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/sb2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/sb2;->n()Lcom/shabakaty/downloader/sf3;

    move-result-object p0

    const-string v1, "get(currentClass.name).primitiveType"

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v0, :cond_2

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/x20;

    .line 8
    iget-object p0, p0, Lcom/shabakaty/downloader/sf3;->u:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/fi1;

    .line 9
    invoke-static {p0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/x20;-><init>(Lcom/shabakaty/downloader/v20;I)V

    return-object v1

    .line 10
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/x20;

    .line 11
    iget-object p0, p0, Lcom/shabakaty/downloader/sf3;->t:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/fi1;

    .line 12
    invoke-static {p0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/x20;-><init>(Lcom/shabakaty/downloader/v20;I)V

    return-object v1

    .line 13
    :cond_3
    invoke-static {p0}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object p0

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    const-string v3, "javaClassId.asSingleFqName()"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/e82;->f(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v1

    .line 15
    :goto_1
    new-instance v1, Lcom/shabakaty/downloader/x20;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/x20;-><init>(Lcom/shabakaty/downloader/v20;I)V

    return-object v1
.end method

.method public static final b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/he2$a;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    const-string v0, "annotationType.declaredMethods"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_d

    aget-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    :try_start_0
    new-array v4, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 5
    const-class v6, Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Lcom/shabakaty/downloader/po3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/x20;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Lcom/shabakaty/downloader/he2$a;->f(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/x20;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v6, Lcom/shabakaty/downloader/aq3;->a:Ljava/util/Set;

    .line 8
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-interface {p0, v3, v4}, Lcom/shabakaty/downloader/he2$a;->d(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v6, Lcom/shabakaty/downloader/qo3;->a:Ljava/util/List;

    .line 11
    const-class v6, Ljava/lang/Enum;

    .line 12
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    :goto_1
    const-string v6, "if (clazz.isEnum) clazz else clazz.enclosingClass"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v5

    .line 14
    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-interface {p0, v3, v5, v4}, Lcom/shabakaty/downloader/he2$a;->e(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    goto :goto_0

    :cond_3
    const-class v6, Ljava/lang/annotation/Annotation;

    .line 15
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 16
    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    const-string v6, "clazz.interfaces"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/id;->Z([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-string v6, "annotationClass"

    .line 17
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v6

    invoke-interface {p0, v3, v6}, Lcom/shabakaty/downloader/he2$a;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2$a;

    move-result-object v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    .line 18
    :cond_4
    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-static {v3, v4, v5}, Lcom/shabakaty/downloader/po3;->b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 19
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 20
    invoke-interface {p0, v3}, Lcom/shabakaty/downloader/he2$a;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/he2$b;

    move-result-object v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 21
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 22
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 23
    invoke-static {v5}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v5

    .line 24
    check-cast v4, [Ljava/lang/Object;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_b

    aget-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    const-string v9, "null cannot be cast to non-null type kotlin.Enum<*>"

    .line 25
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Ljava/lang/Enum;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Lcom/shabakaty/downloader/he2$b;->c(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    goto :goto_2

    .line 26
    :cond_7
    const-class v6, Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    const-string v8, "null cannot be cast to non-null type java.lang.Class<*>"

    .line 27
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Ljava/lang/Class;

    invoke-static {v7}, Lcom/shabakaty/downloader/po3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/x20;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/shabakaty/downloader/he2$b;->e(Lcom/shabakaty/downloader/x20;)V

    goto :goto_3

    :cond_8
    const-class v6, Ljava/lang/annotation/Annotation;

    .line 28
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_a

    check-cast v4, [Ljava/lang/Object;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_b

    aget-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    .line 29
    invoke-static {v5}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/shabakaty/downloader/he2$b;->d(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2$a;

    move-result-object v9

    if-nez v9, :cond_9

    goto :goto_4

    :cond_9
    const-string v10, "null cannot be cast to non-null type kotlin.Annotation"

    .line 30
    invoke-static {v8, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Ljava/lang/annotation/Annotation;

    invoke-static {v9, v8, v5}, Lcom/shabakaty/downloader/po3;->b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_4

    .line 31
    :cond_a
    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    .line 32
    invoke-interface {v3, v7}, Lcom/shabakaty/downloader/he2$b;->b(Ljava/lang/Object;)V

    goto :goto_5

    .line 33
    :cond_b
    invoke-interface {v3}, Lcom/shabakaty/downloader/he2$b;->a()V

    goto/16 :goto_0

    .line 34
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported annotation argument value ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    nop

    goto/16 :goto_0

    .line 35
    :cond_d
    invoke-interface {p0}, Lcom/shabakaty/downloader/he2$a;->a()V

    return-void
.end method
