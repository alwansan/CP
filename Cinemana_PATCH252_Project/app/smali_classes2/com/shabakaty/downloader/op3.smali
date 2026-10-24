.class public abstract Lcom/shabakaty/downloader/op3;
.super Lcom/shabakaty/downloader/kp3;
.source "ReflectJavaMember.kt"

# interfaces
.implements Lcom/shabakaty/downloader/uo3;
.implements Lcom/shabakaty/downloader/qp3;
.implements Lcom/shabakaty/downloader/k72;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kp3;-><init>()V

    return-void
.end method


# virtual methods
.method public H()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->X()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public V()Lcom/shabakaty/downloader/q62;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fp3;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->X()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "member.declaringClass"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fp3;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public W()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public abstract X()Ljava/lang/reflect/Member;
.end method

.method public final Y([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "[[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/t82;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/f62;->a:Lcom/shabakaty/downloader/f62;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->X()Ljava/lang/reflect/Member;

    move-result-object v2

    const-string v3, "member"

    .line 3
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/f62;->b:Lcom/shabakaty/downloader/f62$a;

    if-nez v3, :cond_1

    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v3, Lcom/shabakaty/downloader/f62;->b:Lcom/shabakaty/downloader/f62$a;

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f62;->a(Ljava/lang/reflect/Member;)Lcom/shabakaty/downloader/f62$a;

    move-result-object v3

    .line 7
    sput-object v3, Lcom/shabakaty/downloader/f62;->b:Lcom/shabakaty/downloader/f62$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v1, v3, Lcom/shabakaty/downloader/f62$a;->a:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, v3, Lcom/shabakaty/downloader/f62$a;->b:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    :goto_1
    move-object v2, v4

    goto :goto_3

    :cond_3
    new-array v6, v5, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    array-length v6, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    .line 15
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    array-length v3, p1

    sub-int/2addr v1, v3

    .line 16
    :goto_4
    array-length v3, p1

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v3, :cond_d

    add-int/lit8 v7, v6, 0x1

    .line 17
    aget-object v8, p1, v6

    const-string v9, "type"

    .line 18
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v9, v8, Ljava/lang/Class;

    if-eqz v9, :cond_6

    move-object v10, v8

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v8, Lcom/shabakaty/downloader/sp3;

    invoke-direct {v8, v10}, Lcom/shabakaty/downloader/sp3;-><init>(Ljava/lang/Class;)V

    goto :goto_8

    .line 20
    :cond_6
    instance-of v10, v8, Ljava/lang/reflect/GenericArrayType;

    if-nez v10, :cond_9

    if-eqz v9, :cond_7

    move-object v9, v8

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    .line 21
    :cond_7
    instance-of v9, v8, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_8

    new-instance v9, Lcom/shabakaty/downloader/xp3;

    check-cast v8, Ljava/lang/reflect/WildcardType;

    invoke-direct {v9, v8}, Lcom/shabakaty/downloader/xp3;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_7

    .line 22
    :cond_8
    new-instance v9, Lcom/shabakaty/downloader/ip3;

    invoke-direct {v9, v8}, Lcom/shabakaty/downloader/ip3;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_7

    .line 23
    :cond_9
    :goto_6
    new-instance v9, Lcom/shabakaty/downloader/wo3;

    invoke-direct {v9, v8}, Lcom/shabakaty/downloader/wo3;-><init>(Ljava/lang/reflect/Type;)V

    :goto_7
    move-object v8, v9

    :goto_8
    if-nez v2, :cond_a

    move-object v9, v4

    goto :goto_9

    :cond_a
    add-int v9, v6, v1

    .line 24
    invoke-static {v2, v9}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_c

    :goto_9
    if-eqz p3, :cond_b

    .line 25
    invoke-static {p1}, Lcom/shabakaty/downloader/id;->S([Ljava/lang/Object;)I

    move-result v10

    if-ne v6, v10, :cond_b

    const/4 v10, 0x1

    goto :goto_a

    :cond_b
    const/4 v10, 0x0

    .line 26
    :goto_a
    new-instance v11, Lcom/shabakaty/downloader/wp3;

    aget-object v6, p2, v6

    invoke-direct {v11, v8, v6, v9, v10}, Lcom/shabakaty/downloader/wp3;-><init>(Lcom/shabakaty/downloader/up3;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v7

    goto :goto_5

    .line 27
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No parameter with index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2b

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " type="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/op3;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->X()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/op3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/op3;->X()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Lcom/shabakaty/downloader/y45;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/qp3$a;->a(Lcom/shabakaty/downloader/qp3;)Lcom/shabakaty/downloader/y45;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/shabakaty/downloader/hw2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->X()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/ca4;->b:Lcom/shabakaty/downloader/hw2;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->X()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/uo3$a;->c(Lcom/shabakaty/downloader/uo3;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/g62;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/uo3$a;->a(Lcom/shabakaty/downloader/uo3;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/ro3;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->X()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/uo3$a;->b(Lcom/shabakaty/downloader/uo3;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/op3;->X()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    return-object v0
.end method
