.class public final Lcom/shabakaty/downloader/ip3;
.super Lcom/shabakaty/downloader/up3;
.source "ReflectJavaClassifierType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/y62;


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Lcom/shabakaty/downloader/x62;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/up3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ip3;->a:Ljava/lang/reflect/Type;

    .line 2
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/fp3;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fp3;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/shabakaty/downloader/vp3;

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/vp3;-><init>(Ljava/lang/reflect/TypeVariable;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/shabakaty/downloader/fp3;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fp3;-><init>(Ljava/lang/Class;)V

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/ip3;->b:Lcom/shabakaty/downloader/x62;

    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a classifier type ("

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ip3;->a:Ljava/lang/reflect/Type;

    .line 2
    instance-of v1, v0, Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const-string v1, "getTypeParameters()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v3

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public B()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ip3;->a:Ljava/lang/reflect/Type;

    const-string v2, "Type not found: "

    .line 3
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public J()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/g82;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ip3;->a:Ljava/lang/reflect/Type;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/qo3;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/reflect/Type;

    const-string v3, "type"

    .line 6
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Lcom/shabakaty/downloader/sp3;

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/sp3;-><init>(Ljava/lang/Class;)V

    goto :goto_3

    .line 8
    :cond_0
    instance-of v4, v2, Ljava/lang/reflect/GenericArrayType;

    if-nez v4, :cond_3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/shabakaty/downloader/xp3;

    check-cast v2, Ljava/lang/reflect/WildcardType;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/xp3;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_2

    .line 10
    :cond_2
    new-instance v3, Lcom/shabakaty/downloader/ip3;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/ip3;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_2

    .line 11
    :cond_3
    :goto_1
    new-instance v3, Lcom/shabakaty/downloader/wo3;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/wo3;-><init>(Ljava/lang/reflect/Type;)V

    :goto_2
    move-object v2, v3

    .line 12
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public X()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ip3;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public d()Lcom/shabakaty/downloader/x62;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ip3;->b:Lcom/shabakaty/downloader/x62;

    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/g62;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ip3;->a:Ljava/lang/reflect/Type;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/g62;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method
