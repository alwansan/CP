.class public final Lcom/shabakaty/downloader/pp3;
.super Lcom/shabakaty/downloader/op3;
.source "ReflectJavaMethod.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l72;


# instance fields
.field public final a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/op3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public R()Z
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp3;->Z()Lcom/shabakaty/downloader/h62;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X()Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public Z()Lcom/shabakaty/downloader/h62;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "value"

    .line 3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/qo3;->a:Ljava/util/List;

    const-string v3, "<this>"

    .line 5
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Ljava/lang/Enum;

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/lp3;

    check-cast v0, Ljava/lang/Enum;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/lp3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Enum;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 8
    :cond_1
    instance-of v2, v0, Ljava/lang/annotation/Annotation;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/shabakaty/downloader/to3;

    check-cast v0, Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/to3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/shabakaty/downloader/vo3;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/vo3;-><init>(Lcom/shabakaty/downloader/hw2;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_3
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/shabakaty/downloader/hp3;

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/hp3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Class;)V

    goto :goto_0

    .line 11
    :cond_4
    new-instance v2, Lcom/shabakaty/downloader/np3;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/np3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method public h()Lcom/shabakaty/downloader/g82;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericReturnType"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/sp3;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/sp3;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 5
    :cond_0
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/shabakaty/downloader/xp3;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/xp3;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/ip3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ip3;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/wo3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/wo3;-><init>(Ljava/lang/reflect/Type;)V

    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/t82;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericParameterTypes"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "member.parameterAnnotations"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/op3;->Y([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/shabakaty/downloader/pp3;->a:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const-string v1, "member.typeParameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 4
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 5
    new-instance v5, Lcom/shabakaty/downloader/vp3;

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/vp3;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
