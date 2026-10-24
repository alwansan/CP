.class public final Lcom/shabakaty/downloader/fp3;
.super Lcom/shabakaty/downloader/kp3;
.source "ReflectJavaClass.kt"

# interfaces
.implements Lcom/shabakaty/downloader/uo3;
.implements Lcom/shabakaty/downloader/qp3;
.implements Lcom/shabakaty/downloader/q62;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kp3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public G()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "klass.declaredFields"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/id;->O([Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/zo3;->r:Lcom/shabakaty/downloader/zo3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->D(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/ap3;->r:Lcom/shabakaty/downloader/ap3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->G(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/t04;->J(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    const-string v1, "clazz"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/e62;->a:Lcom/shabakaty/downloader/e62$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 4
    const-class v1, Ljava/lang/Class;

    .line 5
    :try_start_0
    new-instance v4, Lcom/shabakaty/downloader/e62$a;

    const-string v5, "isSealed"

    new-array v6, v3, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getPermittedSubclasses"

    new-array v7, v3, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "isRecord"

    new-array v8, v3, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "getRecordComponents"

    new-array v9, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 10
    invoke-direct {v4, v5, v6, v7, v1}, Lcom/shabakaty/downloader/e62$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    .line 11
    :catch_0
    new-instance v1, Lcom/shabakaty/downloader/e62$a;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/shabakaty/downloader/e62$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 12
    :goto_0
    sput-object v1, Lcom/shabakaty/downloader/e62;->a:Lcom/shabakaty/downloader/e62$a;

    .line 13
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/e62$a;->a:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_2
    return v3
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp3;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public P()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    const-string v1, "klass.declaredClasses"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/id;->O([Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/bp3;->r:Lcom/shabakaty/downloader/bp3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->D(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/cp3;->r:Lcom/shabakaty/downloader/cp3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->H(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/t04;->J(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public S()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "klass.declaredMethods"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/id;->O([Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/dp3;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/dp3;-><init>(Lcom/shabakaty/downloader/fp3;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->C(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/ep3;->r:Lcom/shabakaty/downloader/ep3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->G(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/t04;->J(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public T()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/y62;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    const-string v1, "clazz"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/e62;->a:Lcom/shabakaty/downloader/e62$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 4
    const-class v1, Ljava/lang/Class;

    .line 5
    :try_start_0
    new-instance v4, Lcom/shabakaty/downloader/e62$a;

    const-string v5, "isSealed"

    new-array v6, v3, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getPermittedSubclasses"

    new-array v7, v3, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "isRecord"

    new-array v8, v3, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "getRecordComponents"

    new-array v9, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 10
    invoke-direct {v4, v5, v6, v7, v1}, Lcom/shabakaty/downloader/e62$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    .line 11
    :catch_0
    new-instance v1, Lcom/shabakaty/downloader/e62$a;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/shabakaty/downloader/e62$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 12
    :goto_0
    sput-object v1, Lcom/shabakaty/downloader/e62;->a:Lcom/shabakaty/downloader/e62$a;

    .line 13
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/e62$a;->b:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Ljava/lang/Class;

    :goto_1
    if-nez v2, :cond_2

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_3

    .line 16
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    array-length v1, v2

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 18
    new-instance v5, Lcom/shabakaty/downloader/ip3;

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/ip3;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method

.method public W()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp3;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public a()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/y62;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/yo;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/yo;-><init>(I)V

    iget-object v2, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 3
    :goto_0
    iget-object v2, v1, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v2, "klass.genericInterfaces"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/yo;->j(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yo;->u()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/reflect/Type;

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/ip3;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/ip3;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public e()Lcom/shabakaty/downloader/fi1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    const-string v1, "klass.classId.asSingleFqName()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/fp3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    check-cast p1, Lcom/shabakaty/downloader/fp3;

    iget-object p1, p1, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lcom/shabakaty/downloader/q62;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/fp3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/fp3;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public m()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/w72;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    const-string v1, "clazz"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/e62;->a:Lcom/shabakaty/downloader/e62$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 4
    const-class v1, Ljava/lang/Class;

    .line 5
    :try_start_0
    new-instance v4, Lcom/shabakaty/downloader/e62$a;

    const-string v5, "isSealed"

    new-array v6, v3, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getPermittedSubclasses"

    new-array v7, v3, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "isRecord"

    new-array v8, v3, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "getRecordComponents"

    new-array v9, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 10
    invoke-direct {v4, v5, v6, v7, v1}, Lcom/shabakaty/downloader/e62$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    .line 11
    :catch_0
    new-instance v1, Lcom/shabakaty/downloader/e62$a;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/shabakaty/downloader/e62$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 12
    :goto_0
    sput-object v1, Lcom/shabakaty/downloader/e62;->a:Lcom/shabakaty/downloader/e62$a;

    .line 13
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/e62$a;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    :goto_1
    if-nez v2, :cond_2

    new-array v2, v3, [Ljava/lang/Object;

    .line 15
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    array-length v1, v2

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 17
    new-instance v5, Lcom/shabakaty/downloader/tp3;

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/tp3;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/uo3$a;->c(Lcom/shabakaty/downloader/uo3;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public o()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v1, "klass.declaredConstructors"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/id;->O([Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/xo3;->r:Lcom/shabakaty/downloader/xo3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->D(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/yo3;->r:Lcom/shabakaty/downloader/yo3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->G(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/t04;->J(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp3;->H()I

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

.method public t()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vp3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const-string v1, "klass.typeParameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/vp3;

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/vp3;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/shabakaty/downloader/fp3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    const-string v1, "clazz"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/e62;->a:Lcom/shabakaty/downloader/e62$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 4
    const-class v1, Ljava/lang/Class;

    .line 5
    :try_start_0
    new-instance v4, Lcom/shabakaty/downloader/e62$a;

    const-string v5, "isSealed"

    new-array v6, v3, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getPermittedSubclasses"

    new-array v7, v3, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "isRecord"

    new-array v8, v3, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "getRecordComponents"

    new-array v9, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 10
    invoke-direct {v4, v5, v6, v7, v1}, Lcom/shabakaty/downloader/e62$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    .line 11
    :catch_0
    new-instance v1, Lcom/shabakaty/downloader/e62$a;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/shabakaty/downloader/e62$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 12
    :goto_0
    sput-object v1, Lcom/shabakaty/downloader/e62;->a:Lcom/shabakaty/downloader/e62$a;

    .line 13
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/e62$a;->c:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_2
    return v3
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    iget-object v0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    return-object v0
.end method
